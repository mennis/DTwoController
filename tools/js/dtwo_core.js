// D-Two MIDI engine for Max's [js] (ES5). Prepended with CC_MODE and PARAMS.
//
//   [js dtwo.js]        controller: UI values -> CC, device -> UI, sync
//   [js dtwo.js probe]  Phase 0: same, plus logs every exchange for analysis
//
// inlet 0   messages: <key> <value>, preset n, channel n, devid n, sync,
//           autosync 0/1, and the probe messages below
// inlet 1   raw MIDI bytes from [midiin], one int at a time
// outlet 0  raw MIDI bytes for [midiout], one int at a time
// outlet 1  "<key> <value>" / "preset n" for the UI (values in display units)
// outlet 2  status / log lines

autowatch = 1;
inlets = 2;
outlets = 3;

var PROBE = typeof jsarguments !== "undefined" && jsarguments[1] === "probe";

var TC = [0x00, 0x20, 0x1F];
var MODEL = 0x45;
var T_PRESETREQ = 0x45, T_PRESET = 0x20, T_RHYTHMREQ = 0x46, T_RHYTHM = 0x21;
var T_PARAMREQ = 0x47, T_PARAM = 0x22;

var chan = 1;        // 1..16
var devId = 0;       // SysEx device ID, set on the unit (Setup > MIDI Sys-Ex ID)
var autoSync = 1;    // after a Program Change, read the new preset back
var REPLY_MS = 150;  // Parameter Request timeout

var byKey = {}, byCC = {}, bySysex = {};
for (var i = 0; i < PARAMS.length; i++) {
    var p = PARAMS[i];
    byKey[p.key] = p;
    if (p.cc !== null) byCC[p.cc] = p;
    if (p.sysex) bySysex[p.sysex[0] + ":" + p.sysex[1]] = p;
}

// ---------------------------------------------------------------- encoding

function clamp(v, lo, hi) { return v < lo ? lo : v > hi ? hi : v; }

function modeOf(p) { return p.mode || CC_MODE; }

function toCC(p, dev, mode) {
    dev = clamp(dev, p.lo, p.hi);
    if ((mode || modeOf(p)) === "offset") return clamp(dev - p.lo, 0, 127);
    if (p.hi === p.lo) return 0;
    return Math.round((dev - p.lo) * 127 / (p.hi - p.lo));
}

function fromCC(p, cc, mode) {
    if ((mode || modeOf(p)) === "offset") return clamp(cc + p.lo, p.lo, p.hi);
    return Math.round(p.lo + cc * (p.hi - p.lo) / 127);
}

function s14(msb, lsb) {
    var v = ((msb & 0x7F) << 7) | (lsb & 0x7F);
    return v >= 0x2000 ? v - 0x4000 : v;
}

function hex(bytes) {
    var s = [];
    for (var i = 0; i < bytes.length; i++) {
        var h = (bytes[i] & 0xFF).toString(16).toUpperCase();
        s.push(h.length < 2 ? "0" + h : h);
    }
    return s.join(" ");
}

// ---------------------------------------------------------------- output

function send(bytes) {
    for (var i = 0; i < bytes.length; i++) outlet(0, bytes[i]);
}

function sysex(type, data) {
    var m = [0xF0].concat(TC, [devId & 0x7F, MODEL, type], data || [], [0xF7]);
    if (PROBE) log("tx " + hex(m));
    send(m);
}

function log(s) {
    outlet(2, s);
    if (PROBE) logLines.push(s);
}

var lastSent = {};  // key -> last CC value, so drags don't repeat bytes

function setParam(key, ui) {
    var p = byKey[key];
    var dev = Math.round(ui) + p.bias;
    var cc = toCC(p, dev);
    if (lastSent[key] === cc) return;
    lastSent[key] = cc;
    send([0xB0 | (chan - 1), p.cc, cc]);
}

function toUI(p, dev) {
    lastSent[p.key] = toCC(p, dev);
    outlet(1, p.key, dev - p.bias);
}

// ---------------------------------------------------------------- messages

function anything() {
    var a = arrayfromargs(arguments);
    if (byKey[messagename]) setParam(messagename, a[0]);
    else log("unknown message: " + messagename);
}

function msg_int(v) {
    if (inlet === 1) midiByte(v);
}

function channel(n) { chan = clamp(n | 0, 1, 16); }
function devid(n) { devId = clamp(n | 0, 0, 127); }
function autosync(v) { autoSync = v ? 1 : 0; }

// Presets 1-50 are the factory bank, 51-150 the user bank. With the unit's
// Setup > Program bank = External, CC 32 picks the bank (0 factory, 1 user).
function preset(n) {
    n = clamp(n | 0, 1, 150);
    var user = n > 50 ? 1 : 0;
    send([0xB0 | (chan - 1), 32, user, 0xC0 | (chan - 1), n - 1 - user * 50]);
    if (autoSync) syncLater();
}

// ---------------------------------------------------------------- sync

// Every parameter with a SysEx ID is read with a Parameter Request, one at a
// time: each waits for its Parameter Data or REPLY_MS, then the next goes.
var queue = [], waiting = null, done = 0, total = 0, answered = 0;
var timer = new Task(timeout, this);
var later = new Task(sync, this);

function sync() {
    queue = [];
    for (var i = 0; i < PARAMS.length; i++)
        if (PARAMS[i].sysex) queue.push(PARAMS[i]);
    total = queue.length;
    done = answered = 0;
    next();
}

function syncLater() {
    later.cancel();
    later.schedule(200);
}

function next() {
    timer.cancel();
    if (!queue.length) {
        waiting = null;
        if (total) log("sync " + answered + "/" + total + " answered");
        total = 0;
        if (PROBE) presetrequest(0);
        return;
    }
    waiting = queue.shift();
    done++;
    sysex(T_PARAMREQ, [waiting.sysex[0], waiting.sysex[1]]);
    timer.schedule(REPLY_MS);
}

function timeout() {
    if (PROBE && waiting) log("no reply for " + waiting.key);
    next();
}

// ---------------------------------------------------------------- input

var status = 0, data = [], sx = null;

function midiByte(b) {
    b &= 0xFF;
    if (b >= 0xF8) return;                    // clock and other real-time
    if (b === 0xF0) { sx = [b]; status = 0; return; }
    if (sx) {
        if (b < 0x80) { sx.push(b); return; }
        var m = sx.concat([b]);
        sx = null;
        if (b === 0xF7) { onSysex(m); return; }
        // any other status byte aborts the SysEx and is handled below
    }
    if (b >= 0xF0) { status = 0; return; }     // system common
    if (b & 0x80) { status = b; data = []; return; }
    if (!status) return;
    data.push(b);
    var hi = status & 0xF0, need = (hi === 0xC0 || hi === 0xD0) ? 1 : 2;
    if (data.length < need) return;
    var d = data;
    data = [];                                  // running status
    onChannel(status, d);
}

var inBank = 0;

function onChannel(st, d) {
    var ch = (st & 0x0F) + 1, hi = st & 0xF0;
    if (PROBE) log("rx ch" + ch + " " + hex([st].concat(d)));
    if (ch !== chan && !PROBE) return;
    if (hi === 0xB0) {
        if (d[0] === 32 || d[0] === 0) { inBank = d[1] ? 1 : 0; return; }
        var p = byCC[d[0]];
        if (!p) return;
        var dev = fromCC(p, d[1]);
        toUI(p, dev);
        if (PROBE) pairCC(p, d[1]);
    } else if (hi === 0xC0) {
        outlet(1, "preset", d[0] + 1 + inBank * 50);
        if (autoSync) syncLater();
    }
}

function onSysex(m) {
    if (m.length < 8 || m[1] !== TC[0] || m[2] !== TC[1] || m[3] !== TC[2] ||
            m[5] !== MODEL) {
        if (PROBE) log("rx sysex (not D-Two) " + hex(m));
        return;
    }
    var type = m[6], body = m.slice(7, m.length - 1);
    if (PROBE) log("rx " + hex(m));
    if (type === T_PARAM) onParam(body);
    else if (type === T_PRESET && PROBE) logPreset(body);
    else if (type === T_RHYTHM && PROBE) logWords("rhythm", body);
}

// Parameter Data: kind, id, then one or more MSB/LSB pairs for id, id+1, ...
function onParam(body) {
    var kind = body[0], id = body[1];
    for (var k = 0; 2 + 2 * k + 1 < body.length; k++) {
        var v = s14(body[2 + 2 * k], body[3 + 2 * k]);
        var p = bySysex[kind + ":" + (id + k)];
        if (PROBE) logParam(kind, id + k, v, p);
        if (p) toUI(p, clamp(v, p.lo, p.hi));
    }
    if (waiting && waiting.sysex[0] === kind && waiting.sysex[1] === id) {
        answered++;
        next();
    }
}

// ---------------------------------------------------------------- probe

var logLines = [];
var pending = {};  // "kind:id" -> CC value that prompted the request

// Probe messages:
//   paramrequest kind id     send one Parameter Request
//   presetrequest n          request preset n (0 = edit buffer)
//   rhythmrequest            request the rhythm
//   rawcc cc value           send any CC on the current channel
//   paramdata kind id value  send Parameter Data, to see if SysEx can set
//   sweep key                send the key's CC 0..127 in steps, slowly
//   writelog                 write the log next to this patch
//   clear                    empty the log

function paramrequest(kind, id) { sysex(T_PARAMREQ, [kind & 0x7F, id & 0x7F]); }
function presetrequest(n) { n = n | 0; sysex(T_PRESETREQ, [(n >> 7) & 0x7F, n & 0x7F]); }
function rhythmrequest() { sysex(T_RHYTHMREQ, []); }

function rawcc(cc, v) {
    send([0xB0 | (chan - 1), cc & 0x7F, v & 0x7F]);
    if (PROBE) log("tx cc " + cc + " = " + v);
}

function paramdata(kind, id, v) {
    v = v & 0x3FFF;
    sysex(T_PARAM, [kind & 0x7F, id & 0x7F, (v >> 7) & 0x7F, v & 0x7F]);
}

// A knob on the unit moved: it sent a CC. Ask for the same parameter over
// SysEx and log the CC next to the true value and what each mode predicts.
function pairCC(p, cc) {
    if (!p.sysex) {
        log("pair " + p.key + " cc=" + cc + " (no SysEx ID; on/off only)");
        return;
    }
    pending[p.sysex[0] + ":" + p.sysex[1]] = cc;
    paramrequest(p.sysex[0], p.sysex[1]);
}

function logParam(kind, id, v, p) {
    var name = p ? p.key : (kind ? "sys" : "algo") + id;
    var k = kind + ":" + id;
    var line = "param " + name + " = " + v;
    if (k in pending && p) {
        var cc = pending[k];
        delete pending[k];
        line = "pair " + name + " cc=" + cc + " value=" + v +
            " scaled->" + fromCC(p, cc, "scaled") +
            " offset->" + fromCC(p, cc, "offset");
    }
    log(line);
}

function words(body) {
    var w = [];
    for (var i = 0; i + 1 < body.length; i += 2) w.push(s14(body[i], body[i + 1]));
    return w;
}

function logWords(what, body) { log(what + " " + words(body).join(" ")); }

// Preset Data: preset MSB/LSB, then 14-bit words: preset number, 20 name
// characters, algorithm modifiers, 32 parameters, 10 rhythm taps, 10 rhythm
// gains, checksum.
function logPreset(body) {
    var w = words(body.slice(2));
    var name = "";
    for (var i = 1; i <= 20 && i < w.length; i++)
        name += String.fromCharCode(w[i] & 0x7F);
    log("preset " + ((body[0] << 7) | body[1]) + " '" + name + "' words=" +
        w.length);
    if (w.length > 21) log("preset modifiers " + (w[21] & 0x3FFF).toString(2));
    log("preset params " + w.slice(22, 54).join(" "));
    log("preset rhythm " + w.slice(54, 74).join(" "));
    var sum = 0;
    for (var j = 2; j < body.length - 2; j++) sum += body[j];
    var given = ((body[body.length - 2] << 7) | body[body.length - 1]);
    log("preset checksum given=" + given + " computed=" + ((-sum) & 0x3FFF));
}

var sweepKey = null, sweepCC = 0;
var sweeper = new Task(sweepStep, this);

function sweep(key) {
    if (!byKey[key]) { log("sweep: unknown key " + key); return; }
    sweepKey = key;
    sweepCC = 0;
    sweeper.interval = 400;
    sweeper.repeat(128);
}

// Each step sends one CC value, then reads the parameter back over SysEx.
function sweepStep() {
    var p = byKey[sweepKey];
    send([0xB0 | (chan - 1), p.cc, sweepCC]);
    if (p.sysex) {
        pending[p.sysex[0] + ":" + p.sysex[1]] = sweepCC;
        paramrequest(p.sysex[0], p.sysex[1]);
    }
    sweepCC++;
}

// Not "save": Max calls a js function by that name whenever the patch saves.
function writelog() {
    var dir = this.patcher.filepath.replace(/[^\/]*$/, "");
    var path = dir + "dtwo_probe_log.txt";
    var f = new File(path, "write", "TEXT");
    if (!f.isopen) { log("save failed: " + path); return; }
    f.eof = 0;
    for (var i = 0; i < logLines.length; i++) f.writeline(logLines[i]);
    f.close();
    log("saved " + logLines.length + " lines to " + path);
}

function clear() { logLines = []; }
