"""Pieces shared by the controller and the probe: MIDI ports and the engine."""


def midi_engine(p, js_args, status_pres, x=600, y=300):
    """[midiin] -> [js dtwo.js ...] -> [midiout], with port/channel/ID controls.

    Returns (js, status_box). Presentation row at the top:
      Out [menu]  In [menu]  (refresh)  Ch [n]  ID [n]
    """
    js = p.obj(f"js dtwo.js{' ' + js_args if js_args else ''}", 2,
               ["", "", ""], [x, y, 140, 22])
    mi = p.obj("midiin", 1, ["int"], [x + 200, y - 60, 50, 22])
    mo = p.obj("midiout", 1, [], [x, y + 80, 55, 22])
    p.line(mi, 0, js, 1)
    p.line(js, 0, mo)

    # Ports. midiinfo fills a umenu directly: bang lists outputs, an int
    # lists inputs. The menu's symbol outlet picks the port by name.
    p.comment("Out", [x, y - 270, 30, 20], pres=[8, 8, 30, 20])
    out_menu = p.umenu([x, y - 200, 150, 22], pres=[36, 8, 150, 22])
    p.comment("In", [x + 200, y - 270, 30, 20], pres=[196, 8, 24, 20])
    in_menu = p.umenu([x + 200, y - 200, 150, 22], pres=[220, 8, 150, 22])
    refresh = p.button([x - 60, y - 270, 22, 22], pres=[378, 8, 22, 22])
    lb = p.obj("loadbang", 1, ["bang"], [x - 60, y - 300, 60, 22])
    p.line(lb, 0, refresh)
    out_info = p.obj("midiinfo", 2, ["", ""], [x, y - 230, 60, 22])
    in_info = p.obj("midiinfo", 2, ["", ""], [x + 200, y - 230, 60, 22])
    one = p.msg("1", [x + 200, y - 260, 30, 22])
    p.line(refresh, 0, out_info)
    p.line(refresh, 0, one)
    p.line(one, 0, in_info)
    p.line(out_info, 0, out_menu)
    p.line(in_info, 0, in_menu)
    out_port = p.obj("prepend port", 1, [""], [x, y - 170, 80, 22])
    in_port = p.obj("prepend port", 1, [""], [x + 200, y - 170, 80, 22])
    p.line(out_menu, 1, out_port)
    p.line(out_port, 0, mo)
    p.line(in_menu, 1, in_port)
    p.line(in_port, 0, mi)

    # Channel 1-16 and SysEx device ID, both set on the unit in Setup.
    p.comment("Ch", [x + 400, y - 270, 24, 20], pres=[410, 8, 24, 20])
    ch = p.number(1, 16, [x + 400, y - 200, 40, 22], pres=[432, 8, 40, 22])
    p.comment("ID", [x + 460, y - 270, 24, 20], pres=[480, 8, 24, 20])
    dev = p.number(0, 127, [x + 460, y - 200, 40, 22], pres=[502, 8, 40, 22])
    init = p.msg("1", [x + 400, y - 230, 30, 22])
    p.line(lb, 0, init)
    p.line(init, 0, ch)
    ch_msg = p.obj("prepend channel", 1, [""], [x + 400, y - 140, 95, 22])
    dev_msg = p.obj("prepend devid", 1, [""], [x + 500, y - 140, 90, 22])
    p.line(ch, 0, ch_msg)
    p.line(dev, 0, dev_msg)
    p.line(ch_msg, 0, js)
    p.line(dev_msg, 0, js)

    # Last status line from the engine.
    shown = p.obj("prepend set", 1, [""], [x + 300, y + 40, 75, 22])
    p.line(js, 2, shown)
    status = p.msg("", [x + 300, y + 80, 300, 22], pres=status_pres)
    p.line(shown, 0, status)
    pr = p.obj("print dtwo", 1, [], [x + 160, y + 40, 70, 22])
    p.line(js, 2, pr)
    return js, status
