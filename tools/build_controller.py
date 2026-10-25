#!/usr/bin/env python3
"""Generate the D-Two Controller: one patch per panel plus the main window.

  D-Two_Controller.maxpat   ports, channel, preset, sync; tabs over the panels
  D-Two_<Panel>.maxpat      one bpatcher per tab, from PARAMS in tools/dtwo.py
  dtwo.js                   the MIDI engine (tools/js/dtwo_core.js + table)

Panels talk to the engine only through two names:
  s dtwo_out   "<key> <value>" from a control, value in display units
  r dtwo_in    "<key> <value>" from the engine; sets the control silently

Run:  python3 tools/build_controller.py
"""

from dtwo import PANELS, ROOT, by_panel, write_js
from maxpat import Patch
from ui import midi_engine

PANEL_W, PANEL_H = 700, 330
TOP = 70  # height of the Controller's header


def cell_size(prm):
    ui = prm["ui"]
    if ui == "dial":
        return 64, 72
    if ui == "toggle":
        return 110, 26
    if ui == "tab":
        return max(110, 46 * len(prm["items"]) + 8), 46
    return 110, 46  # menu


def layout(params):
    """Flow layout: dials, then menus and tabs, then toggles, each from a new
    row. Returns {key: (x, y, w, h)}."""
    order = [("dial",), ("menu", "tab"), ("toggle",)]
    pos, y = {}, 8
    for kinds in order:
        group = [q for q in params if q["ui"] in kinds]
        if not group:
            continue
        x, row_h = 8, 0
        for q in group:
            w, h = cell_size(q)
            if x + w > PANEL_W - 8:
                x, y, row_h = 8, y + row_h + 6, 0
            pos[q["key"]] = (x, y, w, h)
            x += w + 6
            row_h = max(row_h, h)
        y += row_h + 14
    assert y <= PANEL_H + 14, ("panel too tall", y)
    return pos


def build_panel(panel):
    params = by_panel(panel)
    p = Patch(f"D-Two_{panel}", (PANEL_W, PANEL_H), ROOT,
              rect=(150.0, 150.0, 120.0 * len(params) + 200, 520.0))
    pos = layout(params)

    recv = p.obj("r dtwo_in", 0, [""], [16, 16, 70, 22])
    keys = [q["key"] for q in params]
    route = p.obj("route " + " ".join(keys), 1, [""] * (len(keys) + 1),
                  [16, 50, 110 * len(keys), 22])
    p.line(recv, 0, route)
    snd = p.obj("s dtwo_out", 1, [], [16, 300, 75, 22])

    for i, q in enumerate(params):
        x = 16 + 110 * i
        px, py, w, h = pos[q["key"]]
        prect = [x, 120, 44, 48]
        if q["ui"] == "dial":
            lo, hi = q["lo"] - q["bias"], q["hi"] - q["bias"]
            init = min(max(0, lo), hi)
            c = p.live_dial(q["name"], q["short"], lo, hi, init, q["units"],
                            prect, [px + 10, py, 44, 48 + 16])
        elif q["ui"] == "toggle":
            c = p.live_toggle(q["name"], q["short"], prect,
                              [px, py + 4, 15, 15])
            p.comment(q["short"], [x, 170, 90, 20], pres=[px + 18, py, 90, 20])
        elif q["ui"] == "tab":
            c = p.live_tab(q["name"], q["short"], q["items"], prect,
                           [px, py + 20, w - 8, 20])
            p.comment(q["short"], [x, 170, 90, 20], pres=[px, py, w, 20])
        else:
            c = p.live_menu(q["name"], q["short"], q["items"], prect,
                            [px, py + 20, w - 16, 18])
            p.comment(q["short"], [x, 170, 90, 20], pres=[px, py, w, 20])

        # Device -> control: "set" moves it without sending anything back.
        st = p.obj("prepend set", 1, [""], [x, 85, 75, 22])
        p.line(route, i, st)
        p.line(st, 0, c)
        # Control -> engine.
        pre = p.obj(f"prepend {q['key']}", 1, [""], [x, 260, 100, 22])
        p.line(c, 0, pre)
        p.line(pre, 0, snd)

    return p.write()


def build_main():
    w = PANEL_W + 16
    p = Patch("D-Two_Controller", (w, TOP + 36 + PANEL_H + 8), ROOT,
              rect=(80.0, 80.0, 1400.0, 900.0))
    js, _ = midi_engine(p, "", status_pres=[8, 38, 300, 22], x=700, y=420)

    # Controls -> engine; engine -> controls.
    r_out = p.obj("r dtwo_out", 0, [""], [700, 330, 75, 22])
    p.line(r_out, 0, js)
    s_in = p.obj("s dtwo_in", 1, [], [760, 470, 70, 22])
    p.line(js, 1, s_in)

    # Preset 1-150 (1-50 factory, 51-150 user). The engine reads the new
    # preset back after it sends the Program Change.
    p.comment("Preset", [1000, 260, 50, 20], pres=[318, 38, 46, 20])
    pre = p.live_numbox("Preset", "Preset", 1, 150, 1, [1000, 300, 44, 15],
                        [364, 40, 44, 18])
    pre_msg = p.obj("prepend preset", 1, [""], [1000, 330, 95, 22])
    p.line(pre, 0, pre_msg)
    p.line(pre_msg, 0, js)
    r_pre = p.obj("route preset", 2, ["", ""], [900, 470, 80, 22])
    p.line(js, 1, r_pre)
    pre_set = p.obj("prepend set", 1, [""], [900, 500, 75, 22])
    p.line(r_pre, 0, pre_set)
    p.line(pre_set, 0, pre)

    # Sync: read every parameter from the unit. Also once after opening.
    sync = p.msg("sync", [1100, 300, 40, 22], pres=[418, 38, 40, 22])
    p.line(sync, 0, js)
    lb = p.obj("loadbang", 1, ["bang"], [1100, 240, 60, 22])
    wait = p.obj("delay 500", 2, ["bang"], [1100, 270, 65, 22])
    p.line(lb, 0, wait)
    p.line(wait, 0, sync)
    p.comment("auto", [1160, 260, 40, 20], pres=[488, 38, 40, 20])
    auto = p.toggle([1160, 300, 20, 20], pres=[466, 40, 18, 18])
    one = p.msg("1", [1160, 270, 30, 22])
    p.line(lb, 0, one)
    p.line(one, 0, auto)
    auto_msg = p.obj("prepend autosync", 1, [""], [1160, 330, 105, 22])
    p.line(auto, 0, auto_msg)
    p.line(auto_msg, 0, js)

    # Tabs show one panel at a time.
    tab = p.tab(PANELS, [16, 60, 480, 30], pres=[8, TOP, 480, 26])
    first = p.msg("0", [16, 30, 30, 22])
    p.line(p.obj("loadbang", 1, ["bang"], [16, 4, 60, 22]), 0, first)
    p.line(first, 0, tab)
    router = p.obj("route " + " ".join(str(i) for i in range(len(PANELS))),
                   1, [""] * (len(PANELS) + 1), [16, 100, 300, 22])
    p.line(tab, 0, router)
    thisp = p.obj("thispatcher", 1, ["", ""], [16, 300, 80, 22])
    for i, shown in enumerate(PANELS):
        text = ", ".join(
            f"script sendbox panel_{q.lower()} hidden {0 if q == shown else 1}"
            for q in PANELS)
        m = p.msg(text, [16 + 40 * i, 140 + 22 * i, 600, 22])
        p.line(router, i, m)
        p.line(m, 0, thisp)

    for i, panel in enumerate(PANELS):
        p.bpatcher(f"D-Two_{panel}.maxpat", f"panel_{panel.lower()}",
                   [16, 480 + 10 * i, PANEL_W, PANEL_H],
                   [8, TOP + 32, PANEL_W, PANEL_H])
    return p.write()


def build():
    out = [write_js()]
    out += [build_panel(panel) for panel in PANELS]
    out.append(build_main())
    return out


if __name__ == "__main__":
    for f in build():
        print(f.relative_to(ROOT), f.stat().st_size)
