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
   150.0,
   150.0,
   1280.0,
   520.0
  ],
  "openrect": [
   0.0,
   0.0,
   700.0,
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
     "text": "r dtwo_in",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      16,
      16,
      70,
      22
     ],
     "id": "obj-1",
     "numinlets": 0,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "route delay fblevel fbrepeats shuffle quantize tracktap rhythmdecay subdiv fxlevel",
     "outlettype": [
      "",
      "",
      "",
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
      50,
      990,
      22
     ],
     "id": "obj-2",
     "numinlets": 1,
     "numoutlets": 10
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s dtwo_out",
     "outlettype": [],
     "patching_rect": [
      16,
      300,
      75,
      22
     ],
     "id": "obj-3",
     "numinlets": 1,
     "numoutlets": 0
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      16,
      120,
      44,
      48
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_mmin": 0,
       "parameter_mmax": 10000,
       "parameter_type": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 0,
       "parameter_unitstyle": 9,
       "parameter_units": "ms",
       "parameter_longname": "Delay Time",
       "parameter_shortname": "Delay"
      }
     },
     "varname": "Delay Time",
     "presentation": 1,
     "presentation_rect": [
      18,
      8,
      44,
      64
     ],
     "id": "obj-4",
     "numinlets": 1,
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
      16,
      85,
      75,
      22
     ],
     "id": "obj-5",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend delay",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      16,
      260,
      100,
      22
     ],
     "id": "obj-6",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      126,
      120,
      44,
      48
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_mmin": 0,
       "parameter_mmax": 100,
       "parameter_type": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 0,
       "parameter_unitstyle": 9,
       "parameter_units": "%",
       "parameter_longname": "Feedback Level",
       "parameter_shortname": "Feedback"
      }
     },
     "varname": "Feedback Level",
     "presentation": 1,
     "presentation_rect": [
      88,
      8,
      44,
      64
     ],
     "id": "obj-7",
     "numinlets": 1,
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
      126,
      85,
      75,
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
     "text": "prepend fblevel",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      126,
      260,
      100,
      22
     ],
     "id": "obj-9",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "live.menu",
     "outlettype": [
      "",
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      236,
      120,
      44,
      48
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_enum": [
        "-",
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
        "10"
       ],
       "parameter_mmax": 10,
       "parameter_type": 2,
       "parameter_longname": "Feedback Repeats",
       "parameter_shortname": "Repeats"
      }
     },
     "varname": "Feedback Repeats",
     "presentation": 1,
     "presentation_rect": [
      8,
      114,
      94,
      18
     ],
     "id": "obj-10",
     "numinlets": 1,
     "numoutlets": 3
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Repeats",
     "patching_rect": [
      236,
      170,
      90,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      8,
      94,
      110,
      20
     ],
     "id": "obj-11",
     "numinlets": 1,
     "numoutlets": 0
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
      236,
      85,
      75,
      22
     ],
     "id": "obj-12",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend fbrepeats",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      236,
      260,
      100,
      22
     ],
     "id": "obj-13",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      346,
      120,
      44,
      48
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_mmin": 0,
       "parameter_mmax": 100,
       "parameter_type": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 0,
       "parameter_unitstyle": 9,
       "parameter_units": "%",
       "parameter_longname": "Shuffle",
       "parameter_shortname": "Shuffle"
      }
     },
     "varname": "Shuffle",
     "presentation": 1,
     "presentation_rect": [
      158,
      8,
      44,
      64
     ],
     "id": "obj-14",
     "numinlets": 1,
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
      346,
      85,
      75,
      22
     ],
     "id": "obj-15",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend shuffle",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      346,
      260,
      100,
      22
     ],
     "id": "obj-16",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "live.toggle",
     "outlettype": [
      ""
     ],
     "parameter_enable": 1,
     "patching_rect": [
      456,
      120,
      44,
      48
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_enum": [
        "off",
        "on"
       ],
       "parameter_mmax": 1,
       "parameter_type": 2,
       "parameter_longname": "Quantize",
       "parameter_shortname": "Quantize"
      }
     },
     "varname": "Quantize",
     "presentation": 1,
     "presentation_rect": [
      8,
      158,
      15,
      15
     ],
     "id": "obj-17",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Quantize",
     "patching_rect": [
      456,
      170,
      90,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      26,
      154,
      90,
      20
     ],
     "id": "obj-18",
     "numinlets": 1,
     "numoutlets": 0
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
      456,
      85,
      75,
      22
     ],
     "id": "obj-19",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend quantize",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      456,
      260,
      100,
      22
     ],
     "id": "obj-20",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "live.toggle",
     "outlettype": [
      ""
     ],
     "parameter_enable": 1,
     "patching_rect": [
      566,
      120,
      44,
      48
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_enum": [
        "off",
        "on"
       ],
       "parameter_mmax": 1,
       "parameter_type": 2,
       "parameter_longname": "Track Tap",
       "parameter_shortname": "Track Tap"
      }
     },
     "varname": "Track Tap",
     "presentation": 1,
     "presentation_rect": [
      124,
      158,
      15,
      15
     ],
     "id": "obj-21",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Track Tap",
     "patching_rect": [
      566,
      170,
      90,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      142,
      154,
      90,
      20
     ],
     "id": "obj-22",
     "numinlets": 1,
     "numoutlets": 0
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
      566,
      85,
      75,
      22
     ],
     "id": "obj-23",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend tracktap",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      566,
      260,
      100,
      22
     ],
     "id": "obj-24",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "live.tab",
     "outlettype": [
      "",
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      676,
      120,
      44,
      48
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_enum": [
        "Normal",
        "Step"
       ],
       "parameter_mmax": 1,
       "parameter_type": 2,
       "parameter_unitstyle": 9,
       "parameter_longname": "Rhythm Decay",
       "parameter_shortname": "Rhy Decay"
      }
     },
     "varname": "Rhythm Decay",
     "presentation": 1,
     "presentation_rect": [
      124,
      114,
      102,
      20
     ],
     "id": "obj-25",
     "numinlets": 1,
     "numoutlets": 3
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Rhy Decay",
     "patching_rect": [
      676,
      170,
      90,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      124,
      94,
      110,
      20
     ],
     "id": "obj-26",
     "numinlets": 1,
     "numoutlets": 0
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
      676,
      85,
      75,
      22
     ],
     "id": "obj-27",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend rhythmdecay",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      676,
      260,
      100,
      22
     ],
     "id": "obj-28",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      786,
      120,
      44,
      48
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_mmin": 0,
       "parameter_mmax": 12,
       "parameter_type": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 0,
       "parameter_unitstyle": 0,
       "parameter_longname": "Subdivision",
       "parameter_shortname": "Subdiv"
      }
     },
     "varname": "Subdivision",
     "presentation": 1,
     "presentation_rect": [
      228,
      8,
      44,
      64
     ],
     "id": "obj-29",
     "numinlets": 1,
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
      786,
      85,
      75,
      22
     ],
     "id": "obj-30",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend subdiv",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      786,
      260,
      100,
      22
     ],
     "id": "obj-31",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "live.dial",
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      896,
      120,
      44,
      48
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_mmin": 0,
       "parameter_mmax": 100,
       "parameter_type": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 0,
       "parameter_unitstyle": 9,
       "parameter_units": "%",
       "parameter_longname": "FX Level",
       "parameter_shortname": "FX Level"
      }
     },
     "varname": "FX Level",
     "presentation": 1,
     "presentation_rect": [
      298,
      8,
      44,
      64
     ],
     "id": "obj-32",
     "numinlets": 1,
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
      896,
      85,
      75,
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
     "text": "prepend fxlevel",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      896,
      260,
      100,
      22
     ],
     "id": "obj-34",
     "numinlets": 1,
     "numoutlets": 1
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-1",
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
      "obj-2",
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
      "obj-5",
      0
     ],
     "destination": [
      "obj-4",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      0
     ],
     "destination": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-6",
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
      "obj-2",
      1
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
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      0
     ],
     "destination": [
      "obj-9",
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
      "obj-3",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      2
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
      "obj-10",
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
      "obj-2",
      3
     ],
     "destination": [
      "obj-15",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-15",
      0
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
      "obj-3",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      4
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
      "obj-17",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-17",
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
      "obj-20",
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
      "obj-2",
      5
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
      "obj-23",
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
      "obj-21",
      0
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
      "obj-24",
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
      "obj-2",
      6
     ],
     "destination": [
      "obj-27",
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
      "obj-25",
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
      "obj-28",
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
      "obj-3",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      7
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
      "obj-3",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      8
     ],
     "destination": [
      "obj-33",
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
      "obj-32",
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
      "obj-3",
      0
     ]
    }
   }
  ],
  "dependency_cache": [],
  "autosave": 0
 }
}
