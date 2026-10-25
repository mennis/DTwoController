// Run dtwo.js outside Max with stubbed js globals and check the bytes.
//   node tests/test_dtwo.js

"use strict";
const fs = require("fs");
const path = require("path");
const vm = require("vm");
const assert = require("assert");

const SRC = fs.readFileSync(path.join(__dirname, "..", "dtwo.js"), "utf8");

function load(args) {
    const out = { midi: [], ui: [], log: [] };
    const tasks = [];
    function Task(fn, obj) {
        this.fn = fn; this.obj = obj; this.at = null; tasks.push(this);
    }
    Task.prototype.schedule = function (ms) { this.at = ms; };
    Task.prototype.cancel = function () { this.at = null; };
    Task.prototype.repeat = function (n) { this.at = 0; this.left = n; };
    const ctx = {
        jsarguments: ["dtwo.js"].concat(args || []),
        inlet: 0,
        messagename: "",
        outlet(n, ...v) {
            if (n === 0) out.midi.push(v[0]);
            else if (n === 1) out.ui.push(v.join(" "));
            else out.log.push(v.join(" "));
        },
        post() {},
        arrayfromargs: (a) => Array.prototype.slice.call(a),
        Task,
        Math,
        String,
    };
    vm.createContext(ctx);
    vm.runInContext(SRC, ctx);
    const js = {
        out,
        // A message into inlet 0, the way Max calls the handler.
        send(name, ...a) {
            ctx.inlet = 0;
            ctx.messagename = name;
            const f = ctx[name];
            if (typeof f === "function" && name !== "anything") f.apply(ctx, a);
            else ctx.anything.apply(ctx, a);
        },
        // Raw MIDI into inlet 1.
        rx(bytes) {
            ctx.inlet = 1;
            for (const b of bytes) ctx.msg_int(b);
        },
        // Fire every scheduled Task once (in creation order).
        tick() {
            for (const t of tasks) {
                if (t.at === null) continue;
                if (t.left !== undefined) { if (--t.left <= 0) t.at = null; }
                else t.at = null;
                t.fn.call(t.obj);
            }
        },
        take() { const m = out.midi; out.midi = []; return m; },
        ctx,
    };
    return js;
}

const hex = (a) => a.map((b) => b.toString(16).padStart(2, "0")).join(" ");
let n = 0;
function test(name, fn) { fn(); n++; console.log("ok  " + name); }

test("control -> CC, scaled, on the chosen channel", () => {
    const js = load();
    js.send("channel", 3);
    js.send("threshold", -30);           // -60..0: (30/60)*127 = 63.5 -> 64
    assert.strictEqual(hex(js.take()), "b2 4a 40");
    js.send("bypass", 1);
    assert.strictEqual(hex(js.take()), "b2 14 7f");
    js.send("delay", 10000);
    assert.strictEqual(hex(js.take()), "b2 30 7f");
    js.send("chofeedback", 0);           // -100..100 midpoint -> 64
    assert.strictEqual(hex(js.take()), "b2 43 40");
});

test("bias: Spatial Offset shows -200..200 and sends 0..400", () => {
    const js = load();
    js.send("spoffset", -200);
    assert.strictEqual(hex(js.take()), "b0 3a 00");
    js.send("spoffset", 200);
    assert.strictEqual(hex(js.take()), "b0 3a 7f");
});

test("a dial drag that doesn't change the CC sends nothing", () => {
    const js = load();
    js.send("delay", 1000);
    const first = js.take();
    js.send("delay", 1010);              // same 7-bit step
    assert.deepStrictEqual(js.take(), []);
    assert.strictEqual(first.length, 3);
});

test("incoming CC on our channel updates the UI, others are ignored", () => {
    const js = load();
    js.send("channel", 1);
    js.rx([0xB0, 19, 127]);              // mix 100 %
    js.rx([18, 0]);                      // running status: out level -100
    js.rx([0xB1, 19, 0]);                // channel 2: ignored
    assert.deepStrictEqual(js.out.ui, ["mixlevel 100", "outlevel -100"]);
    js.send("mixlevel", 100);            // echo of the same value: no resend
    assert.deepStrictEqual(js.take(), []);
});

test("clock bytes inside a CC don't break it", () => {
    const js = load();
    js.rx([0xB0, 0xF8, 74, 0xF8, 0]);
    assert.deepStrictEqual(js.out.ui, ["threshold -60"]);
});

test("preset -> CC 32 bank then Program Change", () => {
    const js = load();
    js.send("autosync", 0);
    js.send("preset", 1);
    assert.strictEqual(hex(js.take()), "b0 20 00 c0 00");
    js.send("preset", 50);
    assert.strictEqual(hex(js.take()), "b0 20 00 c0 31");
    js.send("preset", 51);
    assert.strictEqual(hex(js.take()), "b0 20 01 c0 00");
    js.send("preset", 150);
    assert.strictEqual(hex(js.take()), "b0 20 01 c0 63");
});

test("incoming bank + Program Change shows the preset number", () => {
    const js = load();
    js.send("autosync", 0);
    js.rx([0xB0, 32, 1, 0xC0, 4]);
    assert.deepStrictEqual(js.out.ui, ["preset 55"]);
});

test("sync requests each SysEx parameter in turn", () => {
    const js = load();
    js.send("devid", 5);
    js.send("sync");
    // First request: system kind 1, id 7 (In Level).
    assert.strictEqual(hex(js.take()), "f0 00 20 1f 05 45 47 01 07 f7");
    // Reply In Level = -5 (signed 14-bit 0x3FFB = 7F 7B).
    js.rx([0xF0, 0x00, 0x20, 0x1F, 0x05, 0x45, 0x22, 0x01, 0x07, 0x7F, 0x7B, 0xF7]);
    assert.deepStrictEqual(js.out.ui, ["inlevel -5"]);
    // The reply moves the queue on immediately: Digital In (sys 6).
    assert.strictEqual(hex(js.take()), "f0 00 20 1f 05 45 47 01 06 f7");
    // No reply: the timeout moves on.
    js.tick();
    assert.strictEqual(hex(js.take()), "f0 00 20 1f 05 45 47 01 05 f7");
});

test("sync finishes and reports how many answered", () => {
    const js = load();
    js.send("sync");
    for (let i = 0; i < 100; i++) js.tick();
    const last = js.out.log[js.out.log.length - 1];
    assert.match(last, /^sync 0\/\d+ answered$/);
});

test("Parameter Data for Spatial Offset applies the bias", () => {
    const js = load();
    // algo 10 = 300 -> shows +100 ms
    js.rx([0xF0, 0, 0x20, 0x1F, 0, 0x45, 0x22, 0x00, 0x0A, 0x02, 0x2C, 0xF7]);
    assert.deepStrictEqual(js.out.ui, ["spoffset 100"]);
});

test("SysEx from another maker is ignored", () => {
    const js = load();
    js.rx([0xF0, 0x41, 0x10, 0x42, 0x12, 0x00, 0x22, 0x00, 0x0A, 0x02, 0x2C, 0xF7]);
    assert.deepStrictEqual(js.out.ui, []);
});

test("probe: a knob turned on the unit triggers a read-back pair", () => {
    const js = load(["probe"]);
    js.rx([0xB0, 74, 64]);               // unit sends Threshold CC
    const req = js.take();
    assert.strictEqual(hex(req), "f0 00 20 1f 00 45 47 00 1a f7");
    // Unit answers -30 (0x3FE2 = 7F 62).
    js.rx([0xF0, 0, 0x20, 0x1F, 0, 0x45, 0x22, 0x00, 0x1A, 0x7F, 0x62, 0xF7]);
    const pair = js.out.log.find((l) => l.startsWith("pair"));
    assert.strictEqual(pair,
        "pair threshold cc=64 value=-30 scaled->-30 offset->0");
});

test("probe: paramdata and rawcc send what they say", () => {
    const js = load(["probe"]);
    js.send("paramdata", 0, 26, -30);
    assert.strictEqual(hex(js.take()), "f0 00 20 1f 00 45 22 00 1a 7f 62 f7");
    js.send("rawcc", 74, 10);
    assert.strictEqual(hex(js.take()), "b0 4a 0a");
});

test("probe: preset dump is decoded and checksum computed", () => {
    const js = load(["probe"]);
    const w = [1].concat(Array.from("Tape Echo           ").map((c) => c.charCodeAt(0)),
        [0b101], new Array(32).fill(0), new Array(20).fill(0));
    const bytes = [];
    for (const v of w) bytes.push((v >> 7) & 0x7F, v & 0x7F);
    let sum = 0;
    for (const b of bytes) sum += b;
    const ck = (-sum) & 0x3FFF;
    js.rx([0xF0, 0, 0x20, 0x1F, 0, 0x45, 0x20, 0, 9].concat(bytes,
        [(ck >> 7) & 0x7F, ck & 0x7F, 0xF7]));
    assert.ok(js.out.log.includes("preset 9 'Tape Echo           ' words=75"));
    assert.ok(js.out.log.includes("preset modifiers 101"));
    assert.ok(js.out.log.includes(`preset checksum given=${ck} computed=${ck}`));
});

test("probe: sweep steps a CC and reads back each value", () => {
    const js = load(["probe"]);
    js.send("sweep", "fblevel");
    js.tick();
    js.tick();
    assert.strictEqual(hex(js.take()),
        "b0 32 00 f0 00 20 1f 00 45 47 00 02 f7 b0 32 01 f0 00 20 1f 00 45 47 00 02 f7");
});

console.log(n + " tests passed");
