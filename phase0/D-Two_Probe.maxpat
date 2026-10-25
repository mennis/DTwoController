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
   100.0,
   100.0,
   1300.0,
   820.0
  ],
  "openrect": [
   0.0,
   0.0,
   560.0,
   330.0
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
     "text": "js dtwo.js probe",
     "outlettype": [
      "",
      "",
      ""
     ],
     "patching_rect": [
      700,
      460,
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
      400,
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
      540,
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
      190,
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
      260,
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
      190,
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
      260,
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
      190,
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
      160,
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
      230,
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
      230,
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
      200,
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
      290,
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
      290,
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
      190,
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
      260,
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
      190,
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
      260,
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
      230,
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
      320,
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
      320,
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
      500,
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
      540,
      300,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      8,
      300,
      544,
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
      500,
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
     "maxclass": "comment",
     "text": "D-Two Phase 0 probe",
     "patching_rect": [
      16,
      10,
      200,
      20
     ],
     "fontface": 1,
     "presentation": 1,
     "presentation_rect": [
      8,
      40,
      300,
      20
     ],
     "id": "obj-25",
     "numinlets": 1,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Requests",
     "patching_rect": [
      16,
      136,
      200,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      8,
      68,
      130,
      20
     ],
     "id": "obj-26",
     "numinlets": 1,
     "numoutlets": 0
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
      16,
      150,
      40,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      140,
      68,
      40,
      22
     ],
     "id": "obj-27",
     "numinlets": 2,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "presetrequest 0",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      146,
      150,
      105,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      186,
      68,
      105,
      22
     ],
     "id": "obj-28",
     "numinlets": 2,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "rhythmrequest",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      276,
      150,
      95,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      297,
      68,
      95,
      22
     ],
     "id": "obj-29",
     "numinlets": 2,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Param request",
     "patching_rect": [
      16,
      200,
      200,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      8,
      100,
      130,
      20
     ],
     "id": "obj-30",
     "numinlets": 1,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "pack 0 0",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      16,
      260,
      90,
      22
     ],
     "id": "obj-31",
     "numinlets": 2,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "kind",
     "patching_rect": [
      16,
      202,
      60,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      140,
      100,
      36,
      20
     ],
     "id": "obj-32",
     "numinlets": 1,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "number",
     "minimum": 0,
     "maximum": 1,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      16,
      230,
      50,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      176,
      100,
      50,
      22
     ],
     "id": "obj-33",
     "numinlets": 1,
     "numoutlets": 2
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "id",
     "patching_rect": [
      86,
      202,
      60,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      232,
      100,
      36,
      20
     ],
     "id": "obj-34",
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
      86,
      230,
      50,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      268,
      100,
      50,
      22
     ],
     "id": "obj-35",
     "numinlets": 1,
     "numoutlets": 2
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "i",
     "outlettype": [
      "int"
     ],
     "patching_rect": [
      16,
      290,
      30,
      22
     ],
     "id": "obj-36",
     "numinlets": 2,
     "numoutlets": 1
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
      156,
      230,
      22,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      324,
      100,
      22,
      22
     ],
     "id": "obj-37",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend paramrequest",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      16,
      320,
      120,
      22
     ],
     "id": "obj-38",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Param data (set?)",
     "patching_rect": [
      16,
      260,
      200,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      8,
      130,
      130,
      20
     ],
     "id": "obj-39",
     "numinlets": 1,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "pack 0 0 0",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      16,
      320,
      120,
      22
     ],
     "id": "obj-40",
     "numinlets": 3,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "kind",
     "patching_rect": [
      16,
      262,
      60,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      140,
      130,
      36,
      20
     ],
     "id": "obj-41",
     "numinlets": 1,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "number",
     "minimum": 0,
     "maximum": 1,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      16,
      290,
      50,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      176,
      130,
      50,
      22
     ],
     "id": "obj-42",
     "numinlets": 1,
     "numoutlets": 2
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "id",
     "patching_rect": [
      86,
      262,
      60,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      232,
      130,
      36,
      20
     ],
     "id": "obj-43",
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
      86,
      290,
      50,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      268,
      130,
      50,
      22
     ],
     "id": "obj-44",
     "numinlets": 1,
     "numoutlets": 2
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "value",
     "patching_rect": [
      156,
      262,
      60,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      324,
      130,
      36,
      20
     ],
     "id": "obj-45",
     "numinlets": 1,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "number",
     "minimum": -8192,
     "maximum": 8191,
     "outlettype": [
      "",
      "bang"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      156,
      290,
      50,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      360,
      130,
      50,
      22
     ],
     "id": "obj-46",
     "numinlets": 1,
     "numoutlets": 2
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "i",
     "outlettype": [
      "int"
     ],
     "patching_rect": [
      16,
      350,
      30,
      22
     ],
     "id": "obj-47",
     "numinlets": 2,
     "numoutlets": 1
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
      226,
      290,
      22,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      416,
      130,
      22,
      22
     ],
     "id": "obj-48",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend paramdata",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      16,
      380,
      120,
      22
     ],
     "id": "obj-49",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Send CC",
     "patching_rect": [
      16,
      320,
      200,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      8,
      160,
      130,
      20
     ],
     "id": "obj-50",
     "numinlets": 1,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "pack 0 0",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      16,
      380,
      90,
      22
     ],
     "id": "obj-51",
     "numinlets": 2,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "cc",
     "patching_rect": [
      16,
      322,
      60,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      140,
      160,
      36,
      20
     ],
     "id": "obj-52",
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
      16,
      350,
      50,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      176,
      160,
      50,
      22
     ],
     "id": "obj-53",
     "numinlets": 1,
     "numoutlets": 2
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "value",
     "patching_rect": [
      86,
      322,
      60,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      232,
      160,
      36,
      20
     ],
     "id": "obj-54",
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
      86,
      350,
      50,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      268,
      160,
      50,
      22
     ],
     "id": "obj-55",
     "numinlets": 1,
     "numoutlets": 2
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "i",
     "outlettype": [
      "int"
     ],
     "patching_rect": [
      16,
      410,
      30,
      22
     ],
     "id": "obj-56",
     "numinlets": 2,
     "numoutlets": 1
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
      156,
      350,
      22,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      324,
      160,
      22,
      22
     ],
     "id": "obj-57",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend rawcc",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      16,
      440,
      120,
      22
     ],
     "id": "obj-58",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Sweep CC 0-127",
     "patching_rect": [
      16,
      380,
      200,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      8,
      190,
      130,
      20
     ],
     "id": "obj-59",
     "numinlets": 1,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "umenu",
     "items": [
      "inlevel",
      ",",
      "diginlevel",
      ",",
      "outlevel",
      ",",
      "mixlevel",
      ",",
      "bypass",
      ",",
      "reverseoffset",
      ",",
      "delay",
      ",",
      "fblevel",
      ",",
      "fbrepeats",
      ",",
      "shuffle",
      ",",
      "quantize",
      ",",
      "tracktap",
      ",",
      "rhythmdecay",
      ",",
      "subdiv",
      ",",
      "fxlevel",
      ",",
      "spoffset",
      ",",
      "spphaserev",
      ",",
      "fbhicut",
      ",",
      "fblocut",
      ",",
      "hicut",
      ",",
      "locut",
      ",",
      "chospeed",
      ",",
      "chodepth",
      ",",
      "choamount",
      ",",
      "chofeedback",
      ",",
      "chotime",
      ",",
      "chogolden",
      ",",
      "chophrev",
      ",",
      "cholfocurve",
      ",",
      "cholfophase",
      ",",
      "pingstyle",
      ",",
      "threshold",
      ",",
      "release",
      ",",
      "damping",
      ",",
      "revthreshold",
      ",",
      "revstyle",
      ",",
      "tap1time",
      ",",
      "tap2time",
      ",",
      "tap3time",
      ",",
      "tap4time",
      ",",
      "tap5time",
      ",",
      "tap6time",
      ",",
      "tap7time",
      ",",
      "tap8time",
      ",",
      "tap9time",
      ",",
      "tap10time",
      ",",
      "tap1level",
      ",",
      "tap2level",
      ",",
      "tap3level",
      ",",
      "tap4level",
      ",",
      "tap5level",
      ",",
      "tap6level",
      ",",
      "tap7level",
      ",",
      "tap8level",
      ",",
      "tap9level",
      ",",
      "tap10level"
     ],
     "outlettype": [
      "int",
      "",
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      16,
      420,
      150,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      140,
      190,
      150,
      22
     ],
     "id": "obj-60",
     "numinlets": 1,
     "numoutlets": 3
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "zl reg",
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      16,
      480,
      50,
      22
     ],
     "id": "obj-61",
     "numinlets": 2,
     "numoutlets": 2
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
      180,
      420,
      22,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      296,
      190,
      22,
      22
     ],
     "id": "obj-62",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend sweep",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      16,
      510,
      95,
      22
     ],
     "id": "obj-63",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Log",
     "patching_rect": [
      16,
      460,
      200,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      8,
      230,
      130,
      20
     ],
     "id": "obj-64",
     "numinlets": 1,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "writelog",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      300,
      420,
      60,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      140,
      230,
      60,
      22
     ],
     "id": "obj-65",
     "numinlets": 2,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "clear",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      380,
      420,
      60,
      22
     ],
     "presentation": 1,
     "presentation_rect": [
      210,
      230,
      60,
      22
     ],
     "id": "obj-66",
     "numinlets": 2,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "writelog saves phase0/dtwo_probe_log.txt; the Max console shows every line",
     "patching_rect": [
      300,
      460,
      400,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      8,
      260,
      544,
      20
     ],
     "id": "obj-67",
     "numinlets": 1,
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
      "obj-27",
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
      "obj-28",
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
      "obj-35",
      0
     ],
     "destination": [
      "obj-31",
      1
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
      "obj-36",
      1
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
      "obj-44",
      0
     ],
     "destination": [
      "obj-40",
      1
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
      "obj-40",
      2
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
      "obj-47",
      1
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
      "obj-1",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-55",
      0
     ],
     "destination": [
      "obj-51",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-53",
      0
     ],
     "destination": [
      "obj-56",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-57",
      0
     ],
     "destination": [
      "obj-56",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-56",
      0
     ],
     "destination": [
      "obj-51",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-51",
      0
     ],
     "destination": [
      "obj-58",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-58",
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
      "obj-60",
      1
     ],
     "destination": [
      "obj-61",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-62",
      0
     ],
     "destination": [
      "obj-61",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-61",
      0
     ],
     "destination": [
      "obj-63",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-63",
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
      "obj-65",
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
      "obj-66",
      0
     ],
     "destination": [
      "obj-1",
      0
     ]
    }
   }
  ],
  "dependency_cache": [],
  "autosave": 0
 }
}
