"""The D-Two's parameters, from TC's CC list (manual p.27) and SysEx spec v1.00.

Everything the builders generate comes from PARAMS. Each entry:

  key      message name inside the patches and dtwo.js
  name     Live parameter long name (unique across all panels)
  short    short name shown on the control
  panel    which tab it appears on
  cc       MIDI CC number, or None
  sysex    (kind, id) for Parameter Request/Data: kind 1 = system, 0 = algorithm;
           None if the spec gives no SysEx ID ("Only CC")
  lo, hi   the device's own value range, as in the spec
  ui       "dial", "toggle", "menu" or "tab"
  items    labels for menu/tab values lo..hi
  units    display suffix for dials
  bias     displayed value = device value - bias

Open questions the Phase 0 probe has to answer on hardware:

  * CC_MODE. Neither document says how a 7-bit CC covers a range like
    0..10000 or -100..100. "scaled" spreads lo..hi over 0..127; "offset" sends
    value - lo and clips at 127. The probe logs both predictions next to the
    real value for every knob turned on the unit.
  * CCs 52-56. The CC list (used here) and the SysEx rule "CC = 48 + ID"
    disagree. By name: Shuffle 52 vs 54, Quantize 53 vs 56, Track Tap 54 vs 55,
    Rhythm Decay (FB Style) 55 vs 52, Subdiv 56 vs 53.
  * Reverse Offset: the spec says 0..1, the manual says 0-200 ms. 0..200 here.
"""

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

CC_MODE = "scaled"

PANELS = ["System", "Delay", "Spatial", "Chorus", "Dynamics", "Rhythm"]

SYS, ALGO = 1, 0


def P(key, name, short, panel, cc, sysex, lo, hi, ui="dial", items=None,
      units="", bias=0, conflict=None):
    if items is not None:
        assert len(items) == hi - lo + 1, (key, items)
    return dict(key=key, name=name, short=short, panel=panel, cc=cc,
                sysex=sysex, lo=lo, hi=hi, ui=ui, items=items, units=units,
                bias=bias, conflict=conflict)


ONOFF = None  # toggles need no labels

REVERSE_STYLES = ["All", "1st", "1st Trg", "2nd", "2nd Trg", "Last",
                  "Last Trg", "Odd", "Odd Trg", "Even", "Even Trg"]
TAP_LEVELS = ["Mute", "-12dB", "-6dB", "-3dB", "0dB", "+3dB", "+6dB"]

PARAMS = [
    # --- System (CC 16 + CC-Id)
    P("inlevel", "In Level", "In", "System", 16, (SYS, 7), -5, 7, units="dB"),
    P("diginlevel", "Digital In Level", "Dig In", "System", 17, (SYS, 6),
      -100, 6, units="dB"),
    P("outlevel", "Out Level", "Out", "System", 18, (SYS, 5), -100, 0,
      units="dB"),
    P("mixlevel", "Mix", "Mix", "System", 19, (SYS, 8), 0, 100, units="%"),
    P("bypass", "Bypass", "Bypass", "System", 20, (SYS, 9), 0, 1, ui="toggle"),
    P("reverseoffset", "Reverse Offset", "Rev Offset", "System", 21,
      (SYS, 23), 0, 200, units="ms",
      conflict="spec range 0..1, manual 0-200 ms"),
    # Effect on/off switches: CC only.
    P("spatial", "Spatial On", "Spatial", "System", 22, None, 0, 1, ui="toggle"),
    P("filter", "Filter On", "Filter", "System", 23, None, 0, 1, ui="toggle"),
    P("chorus", "Chorus On", "Chorus", "System", 24, None, 0, 1, ui="toggle"),
    P("reverse", "Reverse On", "Reverse", "System", 25, None, 0, 1,
      ui="toggle"),
    P("dynamic", "Dynamic On", "Dynamic", "System", 26, None, 0, 1,
      ui="toggle"),
    P("pingpong", "PingPong On", "PingPong", "System", 27, None, 0, 1,
      ui="toggle"),
    P("rhythm", "Rhythm On", "Rhythm", "System", 28, None, 0, 1, ui="toggle"),

    # --- Delay (CC 48..57)
    P("delay", "Delay Time", "Delay", "Delay", 48, (ALGO, 0), 0, 10000,
      units="ms"),
    P("fblevel", "Feedback Level", "Feedback", "Delay", 50, (ALGO, 2), 0, 100,
      units="%"),
    P("fbrepeats", "Feedback Repeats", "Repeats", "Delay", 51, (ALGO, 3), 0,
      10, ui="menu", items=["-"] + [str(i) for i in range(1, 11)]),
    P("shuffle", "Shuffle", "Shuffle", "Delay", 52, (ALGO, 6), 0, 100,
      units="%", conflict="CC 54 by the SysEx rule"),
    P("quantize", "Quantize", "Quantize", "Delay", 53, (ALGO, 8), 0, 1,
      ui="toggle", conflict="CC 56 by the SysEx rule"),
    P("tracktap", "Track Tap", "Track Tap", "Delay", 54, (ALGO, 7), 0, 1,
      ui="toggle", conflict="CC 55 by the SysEx rule"),
    P("rhythmdecay", "Rhythm Decay", "Rhy Decay", "Delay", 55, (ALGO, 4), 0,
      1, ui="tab", items=["Normal", "Step"],
      conflict="CC 52 by the SysEx rule (MIDI_FBSTYLE)"),
    P("subdiv", "Subdivision", "Subdiv", "Delay", 56, (ALGO, 5), 0, 12,
      conflict="CC 53 by the SysEx rule"),
    P("fxlevel", "FX Level", "FX Level", "Delay", 57, (ALGO, 9), 0, 100,
      units="%"),

    # --- Spatial and filters (CC 58..63)
    P("spoffset", "Spatial Offset", "Offset L", "Spatial", 58, (ALGO, 10), 0,
      400, units="ms", bias=200),
    P("spphaserev", "Spatial Phase Reverse", "Phase Rev", "Spatial", 59,
      (ALGO, 11), 0, 3, ui="tab", items=["Off", "L", "R", "L&R"]),
    P("fbhicut", "FB High Cut", "FB Hi Cut", "Spatial", 60, (ALGO, 12), 0, 60),
    P("fblocut", "FB Low Cut", "FB Lo Cut", "Spatial", 61, (ALGO, 13), 0, 60),
    P("hicut", "High Cut", "Hi Cut", "Spatial", 62, (ALGO, 14), 0, 60),
    P("locut", "Low Cut", "Lo Cut", "Spatial", 63, (ALGO, 15), 0, 60),

    # --- Chorus (CC 64..72)
    P("chospeed", "Chorus Speed", "Speed", "Chorus", 64, (ALGO, 16), 0, 208),
    P("chodepth", "Chorus Depth", "Depth", "Chorus", 65, (ALGO, 17), 0, 100,
      units="%"),
    P("choamount", "Chorus Amount", "Amount", "Chorus", 66, (ALGO, 18), 0, 100,
      units="%"),
    P("chofeedback", "Chorus Feedback", "Feedback", "Chorus", 67, (ALGO, 19),
      -100, 100),
    P("chotime", "Chorus Time", "Time", "Chorus", 68, (ALGO, 20), 0, 500,
      units="x0.1ms"),
    P("chogolden", "Chorus Golden Ratio", "Golden", "Chorus", 69, (ALGO, 21),
      0, 1, ui="toggle"),
    P("chophrev", "Chorus Phase Reverse", "Ph Rev", "Chorus", 70, (ALGO, 22),
      0, 1, ui="toggle"),
    P("cholfocurve", "Chorus LFO Curve", "LFO Curve", "Chorus", 71, (ALGO, 23),
      0, 1, ui="tab", items=["Triangle", "Sine"],
      conflict="order kept from the original patch; manual lists Sine first"),
    P("cholfophase", "Chorus LFO Phase", "LFO Phase", "Chorus", 72,
      (ALGO, 24), 0, 2, ui="tab", items=["0", "90", "180"]),

    # --- PingPong, Dynamic, Reverse (CC 73..78)
    P("pingstyle", "PingPong Style", "Ping Style", "Dynamics", 73, (ALGO, 25),
      0, 2, ui="tab", items=["L-R", "L-C-R", "Dynamic"]),
    P("threshold", "Dynamic Threshold", "Threshold", "Dynamics", 74,
      (ALGO, 26), -60, 0, units="dB"),
    P("release", "Dynamic Release", "Release", "Dynamics", 75, (ALGO, 27), 11,
      26),
    P("damping", "Dynamic Damping", "Damping", "Dynamics", 76, (ALGO, 28),
      -60, 0, units="dB"),
    P("revthreshold", "Reverse Threshold", "Rev Thres", "Dynamics", 77,
      (ALGO, 29), 0, 5),
    P("revstyle", "Reverse Style", "Rev Style", "Dynamics", 78, (ALGO, 30), 0,
      10, ui="menu", items=REVERSE_STYLES),
]

# --- Rhythm taps (rhythm mode only): times CC 80-89, levels CC 90-99.
for i in range(10):
    PARAMS.append(P(f"tap{i + 1}time", f"Tap {i + 1} Time", f"Tap {i + 1}",
                    "Rhythm", 80 + i, (ALGO, 32 + i), 0, 10000, units="ms"))
for i in range(10):
    PARAMS.append(P(f"tap{i + 1}level", f"Tap {i + 1} Level", f"Lvl {i + 1}",
                    "Rhythm", 90 + i, (ALGO, 42 + i), 0, 6, ui="menu",
                    items=TAP_LEVELS))


def check():
    keys = [p["key"] for p in PARAMS]
    assert len(set(keys)) == len(keys)
    names = [p["name"] for p in PARAMS]
    assert len(set(names)) == len(names)
    ccs = [p["cc"] for p in PARAMS if p["cc"] is not None]
    assert len(set(ccs)) == len(ccs)
    ids = [p["sysex"] for p in PARAMS if p["sysex"]]
    assert len(set(ids)) == len(ids)
    for p in PARAMS:
        assert p["panel"] in PANELS, p


check()


def by_panel(panel):
    return [p for p in PARAMS if p["panel"] == panel]


def write_js():
    """dtwo.js = the parameter table + tools/js/dtwo_core.js."""
    table = [{k: p[k] for k in ("key", "cc", "sysex", "lo", "hi", "bias")}
             for p in PARAMS]
    core = (ROOT / "tools" / "js" / "dtwo_core.js").read_text()
    head = (
        "// GENERATED by tools/build_*.py from tools/dtwo.py and\n"
        "// tools/js/dtwo_core.js. Edit those, not this file.\n"
        f"var CC_MODE = {json.dumps(CC_MODE)};\n"
        f"var PARAMS = {json.dumps(table)};\n\n"
    )
    out = ROOT / "dtwo.js"
    out.write_text(head + core)
    return out
