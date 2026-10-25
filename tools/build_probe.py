#!/usr/bin/env python3
"""Generate the Phase 0 probe: phase0/D-Two_Probe.maxpat.

The probe answers what the documents don't, before the controller is trusted:
  1. How a 7-bit CC maps onto each parameter's range (CC_MODE).
  2. Which CC each of Shuffle/Quantize/Track Tap/Rhythm Decay/Subdiv really is.
  3. Whether the unit answers Parameter, Preset and Rhythm requests, and
     whether Parameter Data sent to it changes a value.

It runs dtwo.js in probe mode, which logs every byte in and out. Turning a
knob on the unit makes it send a CC; the probe then reads the same parameter
over SysEx and logs both, with what "scaled" and "offset" would predict.

Run:  python3 tools/build_probe.py
"""

from dtwo import PARAMS, ROOT, write_js
from maxpat import Patch
from ui import midi_engine

OUT = ROOT / "phase0"


def build():
    p = Patch("D-Two_Probe", (560, 330), OUT, rect=(100.0, 100.0, 1300.0, 820.0))
    js, _ = midi_engine(p, "probe", status_pres=[8, 300, 544, 22], x=700, y=460)

    p.comment("D-Two Phase 0 probe", [16, 10, 200, 20], pres=[8, 40, 300, 20],
              bold=True)

    def row(y, label):
        p.comment(label, [16, y * 2, 200, 20], pres=[8, y, 130, 20])

    # One-click requests.
    row(68, "Requests")
    for i, (text, w) in enumerate((("sync", 40), ("presetrequest 0", 105),
                                   ("rhythmrequest", 95))):
        x = [140, 186, 297][i]
        m = p.msg(text, [16 + 130 * i, 150, w, 22], pres=[x, 68, w, 22])
        p.line(m, 0, js)

    # Fields + a send button: [pack] fires on its left inlet, so each button
    # bangs a [t b] that outputs the stored values.
    def sender(y, label, fields, verb):
        row(y, label)
        n = len(fields)
        pk = p.obj("pack " + " ".join("0" * n), n, [""],
                   [16, y * 2 + 60, 30 + 30 * n, 22])
        x = 140
        nums = []
        for i, (name, lo, hi) in enumerate(fields):
            p.comment(name, [16 + 70 * i, y * 2 + 2, 60, 20],
                      pres=[x, y, 36, 20])
            nb = p.number(lo, hi, [16 + 70 * i, y * 2 + 30, 50, 22],
                          pres=[x + 36, y, 50, 22])
            nums.append(nb)
            x += 92
        # Cold inlets get every field; the button resends the left one.
        for i, nb in enumerate(nums[1:], 1):
            p.line(nb, 0, pk, i)
        keep = p.obj("i", 2, ["int"], [16, y * 2 + 90, 30, 22])
        p.line(nums[0], 0, keep, 1)
        go = p.button([16 + 70 * n, y * 2 + 30, 22, 22], pres=[x, y, 22, 22])
        p.line(go, 0, keep)
        p.line(keep, 0, pk)
        pre = p.obj(f"prepend {verb}", 1, [""], [16, y * 2 + 120, 120, 22])
        p.line(pk, 0, pre)
        p.line(pre, 0, js)

    sender(100, "Param request", [("kind", 0, 1), ("id", 0, 127)],
           "paramrequest")
    sender(130, "Param data (set?)",
           [("kind", 0, 1), ("id", 0, 127), ("value", -8192, 8191)],
           "paramdata")
    sender(160, "Send CC", [("cc", 0, 127), ("value", 0, 127)], "rawcc")

    # Sweep: pick a parameter, then step its CC 0..127, reading each back.
    row(190, "Sweep CC 0-127")
    menu = p.umenu([16, 420, 150, 22], pres=[140, 190, 150, 22])
    keys = [q["key"] for q in PARAMS if q["cc"] is not None and q["sysex"]]
    # umenu stores its items comma-separated: a , b , c
    p.boxes[-1]["box"]["items"] = sum(([k, ","] for k in keys), [])[:-1]
    reg = p.obj("zl reg", 2, ["", ""], [16, 480, 50, 22])
    p.line(menu, 1, reg, 1)
    go = p.button([180, 420, 22, 22], pres=[296, 190, 22, 22])
    p.line(go, 0, reg)
    sw = p.obj("prepend sweep", 1, [""], [16, 510, 95, 22])
    p.line(reg, 0, sw)
    p.line(sw, 0, js)

    # Log.
    row(230, "Log")
    for i, text in enumerate(("writelog", "clear")):
        m = p.msg(text, [300 + 80 * i, 420, 60, 22],
                  pres=[140 + 70 * i, 230, 60, 22])
        p.line(m, 0, js)
    p.comment("writelog saves phase0/dtwo_probe_log.txt; the Max console "
              "shows every line", [300, 460, 400, 20],
              pres=[8, 260, 544, 20])

    return p.write()


if __name__ == "__main__":
    for f in (write_js(), build()):
        print(f.relative_to(ROOT), f.stat().st_size)
