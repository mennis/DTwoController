"""Shared helpers for generating Max patches (.maxpat JSON).

Adapted from TritonController's tools/m4l.py, minus the .amxd wrapper: these
are plain Max patches, opened from the Max 9 Library.
"""

import json
from pathlib import Path


class Patch:
    def __init__(self, name, size, out_dir, rect=(100.0, 100.0, 1100.0, 800.0)):
        self.name = name
        self.out_dir = Path(out_dir)
        self.size = size  # presentation (width, height)
        self.rect = list(rect)
        self.boxes = []
        self.lines = []
        self.n = 0
        self.ports = {}  # id -> (numinlets, numoutlets)
        self.longnames = set()

    def _add(self, box, ins, outs):
        self.n += 1
        box["id"] = f"obj-{self.n}"
        box["numinlets"] = ins
        box["numoutlets"] = outs
        self.ports[box["id"]] = (ins, outs)
        self.boxes.append({"box": box})
        return box["id"]

    @staticmethod
    def _pres(box, pres):
        if pres:
            box.update(presentation=1, presentation_rect=pres)

    def obj(self, text, ins, outtypes, rect, pres=None):
        box = {"maxclass": "newobj", "text": text, "outlettype": outtypes,
               "patching_rect": rect}
        self._pres(box, pres)
        return self._add(box, ins, len(outtypes))

    def msg(self, text, rect, pres=None):
        box = {"maxclass": "message", "text": text, "outlettype": [""],
               "patching_rect": rect}
        self._pres(box, pres)
        return self._add(box, 2, 1)

    def comment(self, text, rect, pres=None, bold=False, size=None):
        box = {"maxclass": "comment", "text": text, "patching_rect": rect}
        if bold:
            box["fontface"] = 1
        if size:
            box["fontsize"] = size
        self._pres(box, pres)
        return self._add(box, 1, 0)

    def button(self, rect, pres=None):
        box = {"maxclass": "button", "outlettype": ["bang"],
               "parameter_enable": 0, "patching_rect": rect}
        self._pres(box, pres)
        return self._add(box, 1, 1)

    def toggle(self, rect, pres=None):
        box = {"maxclass": "toggle", "outlettype": ["int"],
               "parameter_enable": 0, "patching_rect": rect}
        self._pres(box, pres)
        return self._add(box, 1, 1)

    def number(self, lo, hi, rect, pres=None):
        box = {"maxclass": "number", "minimum": lo, "maximum": hi,
               "outlettype": ["", "bang"], "parameter_enable": 0,
               "patching_rect": rect}
        self._pres(box, pres)
        return self._add(box, 1, 2)

    def umenu(self, rect, pres=None):
        box = {"maxclass": "umenu", "items": [], "outlettype": ["int", "", ""],
               "parameter_enable": 0, "patching_rect": rect}
        self._pres(box, pres)
        return self._add(box, 1, 3)

    def tab(self, tabs, rect, pres=None):
        box = {"maxclass": "tab", "tabs": tabs, "outlettype": ["int", "", ""],
               "parameter_enable": 0, "patching_rect": rect}
        self._pres(box, pres)
        return self._add(box, 1, 3)

    def bpatcher(self, name, varname, rect, pres):
        box = {"maxclass": "bpatcher", "name": name, "varname": varname,
               "border": 0, "offset": [0.0, 0.0], "outlettype": [],
               "patching_rect": rect, "viewvisibility": 1}
        self._pres(box, pres)
        return self._add(box, 0, 0)

    # --- Live parameters: saved with the patch, automatable, show their name.

    def _live(self, maxclass, outtypes, ins, longname, shortname, rect, pres,
              **valueof):
        assert longname not in self.longnames, longname
        self.longnames.add(longname)
        valueof.update(parameter_longname=longname,
                       parameter_shortname=shortname)
        box = {"maxclass": maxclass, "outlettype": outtypes,
               "parameter_enable": 1, "patching_rect": rect,
               "saved_attribute_attributes": {"valueof": valueof},
               "varname": longname}
        self._pres(box, pres)
        return self._add(box, ins, len(outtypes))

    def live_dial(self, longname, shortname, lo, hi, init, units, rect, pres):
        style = dict(parameter_unitstyle=9, parameter_units=units) if units \
            else dict(parameter_unitstyle=0)
        return self._live(
            "live.dial", ["", "float"], 1, longname, shortname, rect, pres,
            parameter_mmin=lo, parameter_mmax=hi, parameter_type=1,
            parameter_initial=[init], parameter_initial_enable=0, **style)

    def live_toggle(self, longname, shortname, rect, pres):
        return self._live(
            "live.toggle", [""], 1, longname, shortname, rect, pres,
            parameter_enum=["off", "on"], parameter_mmax=1, parameter_type=2)

    def live_menu(self, longname, shortname, items, rect, pres):
        return self._live(
            "live.menu", ["", "", "float"], 1, longname, shortname, rect, pres,
            parameter_enum=items, parameter_mmax=len(items) - 1,
            parameter_type=2)

    def live_tab(self, longname, shortname, items, rect, pres):
        return self._live(
            "live.tab", ["", "", "float"], 1, longname, shortname, rect, pres,
            parameter_enum=items, parameter_mmax=len(items) - 1,
            parameter_type=2, parameter_unitstyle=9)

    def live_numbox(self, longname, shortname, lo, hi, init, rect, pres):
        return self._live(
            "live.numbox", ["", "float"], 1, longname, shortname, rect, pres,
            parameter_mmin=lo, parameter_mmax=hi, parameter_type=1,
            parameter_initial=[init], parameter_initial_enable=0,
            parameter_unitstyle=0)

    def line(self, src, outlet, dst, inlet=0):
        assert outlet < self.ports[src][1], (src, outlet)
        assert inlet < self.ports[dst][0], (dst, inlet)
        self.lines.append(
            {"patchline": {"source": [src, outlet], "destination": [dst, inlet]}}
        )

    def patcher(self):
        w, h = self.size
        return {
            "patcher": {
                "fileversion": 1,
                "appversion": {"major": 9, "minor": 0, "revision": 0,
                               "architecture": "x64", "modernui": 1},
                "classnamespace": "box",
                "rect": self.rect,
                "openrect": [0.0, 0.0, float(w), float(h)],
                "openinpresentation": 1,
                "default_fontsize": 12.0,
                "default_fontname": "Arial",
                "gridsize": [15.0, 15.0],
                "boxes": self.boxes,
                "lines": self.lines,
                "dependency_cache": [],
                "autosave": 0,
            }
        }

    def write(self):
        self.out_dir.mkdir(parents=True, exist_ok=True)
        path = self.out_dir / f"{self.name}.maxpat"
        path.write_text(json.dumps(self.patcher(), indent=1) + "\n")
        return path
