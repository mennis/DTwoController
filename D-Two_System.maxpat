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
   1760.0,
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
     "text": "route inlevel diginlevel outlevel mixlevel bypass reverseoffset spatial filter chorus reverse dynamic pingpong rhythm",
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
      "",
      "",
      "",
      "",
      ""
     ],
     "patching_rect": [
      16,
      50,
      1430,
      22
     ],
     "id": "obj-2",
     "numinlets": 1,
     "numoutlets": 14
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
       "parameter_mmin": -5,
       "parameter_mmax": 7,
       "parameter_type": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 0,
       "parameter_unitstyle": 9,
       "parameter_units": "dB",
       "parameter_longname": "In Level",
       "parameter_shortname": "In"
      }
     },
     "varname": "In Level",
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
     "text": "prepend inlevel",
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
       "parameter_mmin": -100,
       "parameter_mmax": 6,
       "parameter_type": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 0,
       "parameter_unitstyle": 9,
       "parameter_units": "dB",
       "parameter_longname": "Digital In Level",
       "parameter_shortname": "Dig In"
      }
     },
     "varname": "Digital In Level",
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
     "text": "prepend diginlevel",
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
     "maxclass": "live.dial",
     "outlettype": [
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
       "parameter_mmin": -100,
       "parameter_mmax": 0,
       "parameter_type": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 0,
       "parameter_unitstyle": 9,
       "parameter_units": "dB",
       "parameter_longname": "Out Level",
       "parameter_shortname": "Out"
      }
     },
     "varname": "Out Level",
     "presentation": 1,
     "presentation_rect": [
      158,
      8,
      44,
      64
     ],
     "id": "obj-10",
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
      236,
      85,
      75,
      22
     ],
     "id": "obj-11",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend outlevel",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      236,
      260,
      100,
      22
     ],
     "id": "obj-12",
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
       "parameter_longname": "Mix",
       "parameter_shortname": "Mix"
      }
     },
     "varname": "Mix",
     "presentation": 1,
     "presentation_rect": [
      228,
      8,
      44,
      64
     ],
     "id": "obj-13",
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
     "id": "obj-14",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend mixlevel",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      346,
      260,
      100,
      22
     ],
     "id": "obj-15",
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
       "parameter_longname": "Bypass",
       "parameter_shortname": "Bypass"
      }
     },
     "varname": "Bypass",
     "presentation": 1,
     "presentation_rect": [
      8,
      98,
      15,
      15
     ],
     "id": "obj-16",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Bypass",
     "patching_rect": [
      456,
      170,
      90,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      26,
      94,
      90,
      20
     ],
     "id": "obj-17",
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
     "id": "obj-18",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend bypass",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      456,
      260,
      100,
      22
     ],
     "id": "obj-19",
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
      566,
      120,
      44,
      48
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_mmin": 0,
       "parameter_mmax": 200,
       "parameter_type": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 0,
       "parameter_unitstyle": 9,
       "parameter_units": "ms",
       "parameter_longname": "Reverse Offset",
       "parameter_shortname": "Rev Offset"
      }
     },
     "varname": "Reverse Offset",
     "presentation": 1,
     "presentation_rect": [
      298,
      8,
      44,
      64
     ],
     "id": "obj-20",
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
      566,
      85,
      75,
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
     "text": "prepend reverseoffset",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      566,
      260,
      100,
      22
     ],
     "id": "obj-22",
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
      676,
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
       "parameter_longname": "Spatial On",
       "parameter_shortname": "Spatial"
      }
     },
     "varname": "Spatial On",
     "presentation": 1,
     "presentation_rect": [
      124,
      98,
      15,
      15
     ],
     "id": "obj-23",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Spatial",
     "patching_rect": [
      676,
      170,
      90,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      142,
      94,
      90,
      20
     ],
     "id": "obj-24",
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
     "id": "obj-25",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend spatial",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      676,
      260,
      100,
      22
     ],
     "id": "obj-26",
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
      786,
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
       "parameter_longname": "Filter On",
       "parameter_shortname": "Filter"
      }
     },
     "varname": "Filter On",
     "presentation": 1,
     "presentation_rect": [
      240,
      98,
      15,
      15
     ],
     "id": "obj-27",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Filter",
     "patching_rect": [
      786,
      170,
      90,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      258,
      94,
      90,
      20
     ],
     "id": "obj-28",
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
      786,
      85,
      75,
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
     "text": "prepend filter",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      786,
      260,
      100,
      22
     ],
     "id": "obj-30",
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
      896,
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
       "parameter_longname": "Chorus On",
       "parameter_shortname": "Chorus"
      }
     },
     "varname": "Chorus On",
     "presentation": 1,
     "presentation_rect": [
      356,
      98,
      15,
      15
     ],
     "id": "obj-31",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Chorus",
     "patching_rect": [
      896,
      170,
      90,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      374,
      94,
      90,
      20
     ],
     "id": "obj-32",
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
     "text": "prepend chorus",
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
   },
   {
    "box": {
     "maxclass": "live.toggle",
     "outlettype": [
      ""
     ],
     "parameter_enable": 1,
     "patching_rect": [
      1006,
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
       "parameter_longname": "Reverse On",
       "parameter_shortname": "Reverse"
      }
     },
     "varname": "Reverse On",
     "presentation": 1,
     "presentation_rect": [
      472,
      98,
      15,
      15
     ],
     "id": "obj-35",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Reverse",
     "patching_rect": [
      1006,
      170,
      90,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      490,
      94,
      90,
      20
     ],
     "id": "obj-36",
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
      1006,
      85,
      75,
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
     "text": "prepend reverse",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1006,
      260,
      100,
      22
     ],
     "id": "obj-38",
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
      1116,
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
       "parameter_longname": "Dynamic On",
       "parameter_shortname": "Dynamic"
      }
     },
     "varname": "Dynamic On",
     "presentation": 1,
     "presentation_rect": [
      8,
      130,
      15,
      15
     ],
     "id": "obj-39",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Dynamic",
     "patching_rect": [
      1116,
      170,
      90,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      26,
      126,
      90,
      20
     ],
     "id": "obj-40",
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
      1116,
      85,
      75,
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
     "text": "prepend dynamic",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1116,
      260,
      100,
      22
     ],
     "id": "obj-42",
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
      1226,
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
       "parameter_longname": "PingPong On",
       "parameter_shortname": "PingPong"
      }
     },
     "varname": "PingPong On",
     "presentation": 1,
     "presentation_rect": [
      124,
      130,
      15,
      15
     ],
     "id": "obj-43",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "PingPong",
     "patching_rect": [
      1226,
      170,
      90,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      142,
      126,
      90,
      20
     ],
     "id": "obj-44",
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
      1226,
      85,
      75,
      22
     ],
     "id": "obj-45",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend pingpong",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1226,
      260,
      100,
      22
     ],
     "id": "obj-46",
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
      1336,
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
       "parameter_longname": "Rhythm On",
       "parameter_shortname": "Rhythm"
      }
     },
     "varname": "Rhythm On",
     "presentation": 1,
     "presentation_rect": [
      240,
      130,
      15,
      15
     ],
     "id": "obj-47",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Rhythm",
     "patching_rect": [
      1336,
      170,
      90,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      258,
      126,
      90,
      20
     ],
     "id": "obj-48",
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
      1336,
      85,
      75,
      22
     ],
     "id": "obj-49",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend rhythm",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1336,
      260,
      100,
      22
     ],
     "id": "obj-50",
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
      "obj-11",
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
      "obj-18",
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
      "obj-26",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-26",
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
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      9
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
      "obj-35",
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
      "obj-3",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      10
     ],
     "destination": [
      "obj-41",
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
      "obj-3",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      11
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
      "obj-43",
      0
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
      "obj-3",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      12
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
      "obj-50",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-50",
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
