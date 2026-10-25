{
 "patcher": {
  "fileversion": 1,
  "appversion": {
   "major": 9,
   "minor": 0,
   "revision": 0,
   "architecture": "x64",
   "modernui": 1
  },
  "classnamespace": "box",
  "rect": [
   80.0,
   80.0,
   1400.0,
   900.0
  ],
  "openrect": [
   0.0,
   0.0,
   716.0,
   444.0
  ],
  "openinpresentation": 1,
  "default_fontsize": 12.0,
  "default_fontname": "Arial",
  "gridsize": [
   15.0,
   15.0
  ],
  "boxes": [
   {
    "box": {
     "maxclass": "newobj",
     "text": "js dtwo.js",
     "outlettype": [
      "",
      "",
      ""
     ],
     "patching_rect": [
      700,
      420,
      140,
      22
     ],
     "id": "obj-1",
     "numinlets": 2,
     "numoutlets": 3
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "midiin",
     "outlettype": [
      "int"
     ],
     "patching_rect": [
      900,
      360,
      50,
      22
     ],
     "id": "obj-2",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "midiout",
     "outlettype": [],
     "patching_rect": [
      700,
      500,
      55,
      22
     ],
     "id": "obj-3",
     "numinlets": 1,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Out",
     "patching_rect": [
      700,
      150,
      30,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      8,
      8,
      30,
      20
     ],
     "id": "obj-4",
     "numinlets": 1,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "umenu",
     "items": [],
     "outlettype": [
      "int",
      "",
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      700,
      220,
      150,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      36,
      8,
      150,
      22
     ],
     "id": "obj-5",
     "numinlets": 1,
     "numoutlets": 3
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "In",
     "patching_rect": [
      900,
      150,
      30,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      196,
      8,
      24,
      20
     ],
     "id": "obj-6",
     "numinlets": 1,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "umenu",
     "items": [],
     "outlettype": [
      "int",
      "",
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      900,
      220,
      150,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      220,
      8,
      150,
      22
     ],
     "id": "obj-7",
     "numinlets": 1,
     "numoutlets": 3
    }
   },
   {
    "box": {
     "maxclass": "button",
     "outlettype": [
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      640,
      150,
      22,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      378,
      8,
      22,
      22
     ],
     "id": "obj-8",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "loadbang",
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      640,
      120,
      60,
      22
     ],
     "id": "obj-9",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "midiinfo",
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      700,
      190,
      60,
      22
     ],
     "id": "obj-10",
     "numinlets": 2,
     "numoutlets": 2
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "midiinfo",
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      900,
      190,
      60,
      22
     ],
     "id": "obj-11",
     "numinlets": 2,
     "numoutlets": 2
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "1",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      900,
      160,
      30,
      22
     ],
     "id": "obj-12",
     "numinlets": 2,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend port",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      700,
      250,
      80,
      22
     ],
     "id": "obj-13",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend port",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      900,
      250,
      80,
      22
     ],
     "id": "obj-14",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Ch",
     "patching_rect": [
      1100,
      150,
      24,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      410,
      8,
      24,
      20
     ],
     "id": "obj-15",
     "numinlets": 1,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "number",
     "minimum": 1,
     "maximum": 16,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1100,
      220,
      40,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      432,
      8,
      40,
      22
     ],
     "id": "obj-16",
     "numinlets": 1,
     "numoutlets": 2
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "ID",
     "patching_rect": [
      1160,
      150,
      24,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      480,
      8,
      24,
      20
     ],
     "id": "obj-17",
     "numinlets": 1,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "number",
     "minimum": 0,
     "maximum": 127,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1160,
      220,
      40,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      502,
      8,
      40,
      22
     ],
     "id": "obj-18",
     "numinlets": 1,
     "numoutlets": 2
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "1",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1100,
      190,
      30,
      22
     ],
     "id": "obj-19",
     "numinlets": 2,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend channel",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1100,
      280,
      95,
      22
     ],
     "id": "obj-20",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend devid",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1200,
      280,
      90,
      22
     ],
     "id": "obj-21",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend set",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1000,
      460,
      75,
      22
     ],
     "id": "obj-22",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1000,
      500,
      300,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      8,
      38,
      300,
      22
     ],
     "id": "obj-23",
     "numinlets": 2,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "print dtwo",
     "outlettype": [],
     "patching_rect": [
      860,
      460,
      70,
      22
     ],
     "id": "obj-24",
     "numinlets": 1,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r dtwo_out",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      700,
      330,
      75,
      22
     ],
     "id": "obj-25",
     "numinlets": 0,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s dtwo_in",
     "outlettype": [],
     "patching_rect": [
      760,
      470,
      70,
      22
     ],
     "id": "obj-26",
     "numinlets": 1,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Preset",
     "patching_rect": [
      1000,
      260,
      50,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      318,
      38,
      46,
      20
     ],
     "id": "obj-27",
     "numinlets": 1,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "live.numbox",
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      1000,
      300,
      44,
      15
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_mmin": 1,
       "parameter_mmax": 150,
       "parameter_type": 1,
       "parameter_initial": [
        1
       ],
       "parameter_initial_enable": 0,
       "parameter_unitstyle": 0,
       "parameter_longname": "Preset",
       "parameter_shortname": "Preset"
      }
     },
     "varname": "Preset",
     "presentation": 1,
     "presentation_rect": [
      364,
      40,
      44,
      18
     ],
     "id": "obj-28",
     "numinlets": 1,
     "numoutlets": 2
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend preset",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1000,
      330,
      95,
      22
     ],
     "id": "obj-29",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "route preset",
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      900,
      470,
      80,
      22
     ],
     "id": "obj-30",
     "numinlets": 2,
     "numoutlets": 2
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend set",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      900,
      500,
      75,
      22
     ],
     "id": "obj-31",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "sync",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1100,
      300,
      40,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      418,
      38,
      40,
      22
     ],
     "id": "obj-32",
     "numinlets": 2,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "loadbang",
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      1100,
      240,
      60,
      22
     ],
     "id": "obj-33",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "delay 500",
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      1100,
      270,
      65,
      22
     ],
     "id": "obj-34",
     "numinlets": 2,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "auto",
     "patching_rect": [
      1160,
      260,
      40,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      488,
      38,
      40,
      20
     ],
     "id": "obj-35",
     "numinlets": 1,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "toggle",
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      1160,
      300,
      20,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      466,
      40,
      18,
      18
     ],
     "id": "obj-36",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "1",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1160,
      270,
      30,
      22
     ],
     "id": "obj-37",
     "numinlets": 2,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend autosync",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1160,
      330,
      105,
      22
     ],
     "id": "obj-38",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "tab",
     "tabs": [
      "System",
      "Delay",
      "Spatial",
      "Chorus",
      "Dynamics",
      "Rhythm"
     ],
     "outlettype": [
      "int",
      "",
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      16,
      60,
      480,
      30
     ],
     "presentation": 1,
     "presentation_rect": [
      8,
      70,
      480,
      26
     ],
     "id": "obj-39",
     "numinlets": 1,
     "numoutlets": 3
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      16,
      30,
      30,
      22
     ],
     "id": "obj-40",
     "numinlets": 2,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "loadbang",
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      16,
      4,
      60,
      22
     ],
     "id": "obj-41",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "route 0 1 2 3 4 5",
     "outlettype": [
      "",
      "",
      "",
      "",
      "",
      "",
      ""
     ],
     "patching_rect": [
      16,
      100,
      300,
      22
     ],
     "id": "obj-42",
     "numinlets": 1,
     "numoutlets": 7
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "thispatcher",
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      16,
      300,
      80,
      22
     ],
     "id": "obj-43",
     "numinlets": 1,
     "numoutlets": 2
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "script sendbox panel_system hidden 0, script sendbox panel_delay hidden 1, script sendbox panel_spatial hidden 1, script sendbox panel_chorus hidden 1, script sendbox panel_dynamics hidden 1, script sendbox panel_rhythm hidden 1",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      16,
      140,
      600,
      22
     ],
     "id": "obj-44",
     "numinlets": 2,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "script sendbox panel_system hidden 1, script sendbox panel_delay hidden 0, script sendbox panel_spatial hidden 1, script sendbox panel_chorus hidden 1, script sendbox panel_dynamics hidden 1, script sendbox panel_rhythm hidden 1",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      56,
      162,
      600,
      22
     ],
     "id": "obj-45",
     "numinlets": 2,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "script sendbox panel_system hidden 1, script sendbox panel_delay hidden 1, script sendbox panel_spatial hidden 0, script sendbox panel_chorus hidden 1, script sendbox panel_dynamics hidden 1, script sendbox panel_rhythm hidden 1",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      96,
      184,
      600,
      22
     ],
     "id": "obj-46",
     "numinlets": 2,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "script sendbox panel_system hidden 1, script sendbox panel_delay hidden 1, script sendbox panel_spatial hidden 1, script sendbox panel_chorus hidden 0, script sendbox panel_dynamics hidden 1, script sendbox panel_rhythm hidden 1",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      136,
      206,
      600,
      22
     ],
     "id": "obj-47",
     "numinlets": 2,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "script sendbox panel_system hidden 1, script sendbox panel_delay hidden 1, script sendbox panel_spatial hidden 1, script sendbox panel_chorus hidden 1, script sendbox panel_dynamics hidden 0, script sendbox panel_rhythm hidden 1",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      176,
      228,
      600,
      22
     ],
     "id": "obj-48",
     "numinlets": 2,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "script sendbox panel_system hidden 1, script sendbox panel_delay hidden 1, script sendbox panel_spatial hidden 1, script sendbox panel_chorus hidden 1, script sendbox panel_dynamics hidden 1, script sendbox panel_rhythm hidden 0",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      216,
      250,
      600,
      22
     ],
     "id": "obj-49",
     "numinlets": 2,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "bpatcher",
     "name": "D-Two_System.maxpat",
     "varname": "panel_system",
     "border": 0,
     "offset": [
      0.0,
      0.0
     ],
     "outlettype": [],
     "patching_rect": [
      16,
      480,
      700,
      330
     ],
     "viewvisibility": 1,
     "presentation": 1,
     "presentation_rect": [
      8,
      102,
      700,
      330
     ],
     "id": "obj-50",
     "numinlets": 0,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "bpatcher",
     "name": "D-Two_Delay.maxpat",
     "varname": "panel_delay",
     "border": 0,
     "offset": [
      0.0,
      0.0
     ],
     "outlettype": [],
     "patching_rect": [
      16,
      490,
      700,
      330
     ],
     "viewvisibility": 1,
     "presentation": 1,
     "presentation_rect": [
      8,
      102,
      700,
      330
     ],
     "id": "obj-51",
     "numinlets": 0,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "bpatcher",
     "name": "D-Two_Spatial.maxpat",
     "varname": "panel_spatial",
     "border": 0,
     "offset": [
      0.0,
      0.0
     ],
     "outlettype": [],
     "patching_rect": [
      16,
      500,
      700,
      330
     ],
     "viewvisibility": 1,
     "presentation": 1,
     "presentation_rect": [
      8,
      102,
      700,
      330
     ],
     "id": "obj-52",
     "numinlets": 0,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "bpatcher",
     "name": "D-Two_Chorus.maxpat",
     "varname": "panel_chorus",
     "border": 0,
     "offset": [
      0.0,
      0.0
     ],
     "outlettype": [],
     "patching_rect": [
      16,
      510,
      700,
      330
     ],
     "viewvisibility": 1,
     "presentation": 1,
     "presentation_rect": [
      8,
      102,
      700,
      330
     ],
     "id": "obj-53",
     "numinlets": 0,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "bpatcher",
     "name": "D-Two_Dynamics.maxpat",
     "varname": "panel_dynamics",
     "border": 0,
     "offset": [
      0.0,
      0.0
     ],
     "outlettype": [],
     "patching_rect": [
      16,
      520,
      700,
      330
     ],
     "viewvisibility": 1,
     "presentation": 1,
     "presentation_rect": [
      8,
      102,
      700,
      330
     ],
     "id": "obj-54",
     "numinlets": 0,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "bpatcher",
     "name": "D-Two_Rhythm.maxpat",
     "varname": "panel_rhythm",
     "border": 0,
     "offset": [
      0.0,
      0.0
     ],
     "outlettype": [],
     "patching_rect": [
      16,
      530,
      700,
      330
     ],
     "viewvisibility": 1,
     "presentation": 1,
     "presentation_rect": [
      8,
      102,
      700,
      330
     ],
     "id": "obj-55",
     "numinlets": 0,
     "numoutlets": 0
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-2",
      0
     ],
     "destination": [
      "obj-1",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-1",
      0
     ],
     "destination": [
      "obj-3",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-9",
      0
     ],
     "destination": [
      "obj-8",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      0
     ],
     "destination": [
      "obj-10",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      0
     ],
     "destination": [
      "obj-12",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-12",
      0
     ],
     "destination": [
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-10",
      0
     ],
     "destination": [
      "obj-5",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-11",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-5",
      1
     ],
     "destination": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-13",
      0
     ],
     "destination": [
      "obj-3",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      1
     ],
     "destination": [
      "obj-14",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-14",
      0
     ],
     "destination": [
      "obj-2",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-9",
      0
     ],
     "destination": [
      "obj-19",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-19",
      0
     ],
     "destination": [
      "obj-16",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-16",
      0
     ],
     "destination": [
      "obj-20",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-18",
      0
     ],
     "destination": [
      "obj-21",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-20",
      0
     ],
     "destination": [
      "obj-1",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-21",
      0
     ],
     "destination": [
      "obj-1",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-1",
      2
     ],
     "destination": [
      "obj-22",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-22",
      0
     ],
     "destination": [
      "obj-23",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-1",
      2
     ],
     "destination": [
      "obj-24",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-25",
      0
     ],
     "destination": [
      "obj-1",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-1",
      1
     ],
     "destination": [
      "obj-26",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-28",
      0
     ],
     "destination": [
      "obj-29",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      0
     ],
     "destination": [
      "obj-1",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-1",
      1
     ],
     "destination": [
      "obj-30",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-30",
      0
     ],
     "destination": [
      "obj-31",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-31",
      0
     ],
     "destination": [
      "obj-28",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-32",
      0
     ],
     "destination": [
      "obj-1",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-33",
      0
     ],
     "destination": [
      "obj-34",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-34",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-33",
      0
     ],
     "destination": [
      "obj-37",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-37",
      0
     ],
     "destination": [
      "obj-36",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-36",
      0
     ],
     "destination": [
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-38",
      0
     ],
     "destination": [
      "obj-1",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-41",
      0
     ],
     "destination": [
      "obj-40",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-40",
      0
     ],
     "destination": [
      "obj-39",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-39",
      0
     ],
     "destination": [
      "obj-42",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-42",
      0
     ],
     "destination": [
      "obj-44",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-44",
      0
     ],
     "destination": [
      "obj-43",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-42",
      1
     ],
     "destination": [
      "obj-45",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-45",
      0
     ],
     "destination": [
      "obj-43",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-42",
      2
     ],
     "destination": [
      "obj-46",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-46",
      0
     ],
     "destination": [
      "obj-43",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-42",
      3
     ],
     "destination": [
      "obj-47",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-47",
      0
     ],
     "destination": [
      "obj-43",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-42",
      4
     ],
     "destination": [
      "obj-48",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-48",
      0
     ],
     "destination": [
      "obj-43",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-42",
      5
     ],
     "destination": [
      "obj-49",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-49",
      0
     ],
     "destination": [
      "obj-43",
      0
     ]
    }
   }
  ],
  "dependency_cache": [],
  "autosave": 0
 }
}
