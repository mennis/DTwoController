#!/usr/bin/env python3
"""Structural checks on the generated patches (no Max needed).

For every parameter: its control sends "<key> v" to [s dtwo_out], and the
[route] under [r dtwo_in] sets that same control. Live parameter names are
unique across everything the Controller loads, every bpatcher file exists,
and the tab's scripting names match the bpatchers' varnames.

Run:  python3 tests/check_patches.py
"""

import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "tools"))
from dtwo import PANELS, PARAMS, by_panel  # noqa: E402


def load(name):
    pat = json.loads((ROOT / name).read_text())["patcher"]
    boxes = {b["box"]["id"]: b["box"] for b in pat["boxes"]}
    out = {}
    for ln in pat["lines"]:
        (s, so), (d, di) = ln["patchline"]["source"], ln["patchline"]["destination"]
        out.setdefault((s, so), []).append((d, di))
    return boxes, out


def text(box):
    return box.get("text", "")


def find(boxes, t):
    hits = [i for i, b in boxes.items() if text(b) == t]
    assert len(hits) == 1, (t, hits)
    return hits[0]


def check_panel(panel):
    boxes, out = load(f"D-Two_{panel}.maxpat")
    params = by_panel(panel)
    route = find(boxes, "route " + " ".join(q["key"] for q in params))
    assert out[(find(boxes, "r dtwo_in"), 0)] == [(route, 0)]
    snd = find(boxes, "s dtwo_out")
    names = []
    for i, q in enumerate(params):
        (st, _), = out[(route, i)]
        assert text(boxes[st]) == "prepend set"
        (ctl, inlet), = out[(st, 0)]
        b = boxes[ctl]
        assert inlet == 0 and b["varname"] == q["name"], (q["key"], b)
        v = b["saved_attribute_attributes"]["valueof"]
        lo, hi = q["lo"] - q["bias"], q["hi"] - q["bias"]
        assert v.get("parameter_mmin", 0) == lo and v["parameter_mmax"] == hi, q
        assert v.get("parameter_initial_enable", 0) == 0, q  # no send on load
        (pre, _), = out[(ctl, 0)]
        assert text(boxes[pre]) == f"prepend {q['key']}"
        assert out[(pre, 0)] == [(snd, 0)]
        names.append(v["parameter_longname"])
    return names


def check_main():
    boxes, out = load("D-Two_Controller.maxpat")
    bps = {b["varname"]: b["name"] for b in boxes.values()
           if b["maxclass"] == "bpatcher"}
    assert sorted(bps.values()) == sorted(f"D-Two_{p}.maxpat" for p in PANELS)
    for f in bps.values():
        assert (ROOT / f).exists(), f
    scripted = set()
    for b in boxes.values():
        scripted |= set(re.findall(r"script sendbox (\S+) hidden", text(b)))
    assert scripted == set(bps), (scripted, set(bps))
    js = find(boxes, "js dtwo.js")
    assert (find(boxes, "r dtwo_out"), 0) in out and \
        (js, 0) in [d for d in out[(find(boxes, "r dtwo_out"), 0)]]
    assert (find(boxes, "s dtwo_in"), 0) in out[(js, 1)]
    mo = find(boxes, "midiout")
    assert (mo, 0) in out[(js, 0)]
    assert (js, 1) in out[(find(boxes, "midiin"), 0)]
    return ["Preset"]


def main():
    names = []
    for panel in PANELS:
        names += check_panel(panel)
    names += check_main()
    assert len(names) == len(set(names)), "duplicate Live parameter names"
    assert len(names) == len(PARAMS) + 1
    boxes, _ = load("phase0/D-Two_Probe.maxpat")
    find(boxes, "js dtwo.js probe")
    print(f"ok  {len(PANELS)} panels, {len(PARAMS)} parameters, controller, probe")


if __name__ == "__main__":
    main()
