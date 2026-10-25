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
   920.0,
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
     "text": "route pingstyle threshold release damping revthreshold revstyle",
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
      50,
      660,
      22
     ],
     "id": "obj-2",
     "numinlets": 1,
     "numoutlets": 7
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
     "maxclass": "live.tab",
     "outlettype": [
      "",
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
       "parameter_enum": [
        "L-R",
        "L-C-R",
        "Dynamic"
       ],
       "parameter_mmax": 2,
       "parameter_type": 2,
       "parameter_unitstyle": 9,
       "parameter_longname": "PingPong Style",
       "parameter_shortname": "Ping Style"
      }
     },
     "varname": "PingPong Style",
     "presentation": 1,
     "presentation_rect": [
      8,
      114,
      138,
      20
     ],
     "id": "obj-4",
     "numinlets": 1,
     "numoutlets": 3
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Ping Style",
     "patching_rect": [
      16,
      170,
      90,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      8,
      94,
      146,
      20
     ],
     "id": "obj-5",
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
      16,
      85,
      75,
      22
     ],
     "id": "obj-6",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend pingstyle",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      16,
      260,
      100,
      22
     ],
     "id": "obj-7",
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
       "parameter_mmin": -60,
       "parameter_mmax": 0,
       "parameter_type": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 0,
       "parameter_unitstyle": 9,
       "parameter_units": "dB",
       "parameter_longname": "Dynamic Threshold",
       "parameter_shortname": "Threshold"
      }
     },
     "varname": "Dynamic Threshold",
     "presentation": 1,
     "presentation_rect": [
      18,
      8,
      44,
      64
     ],
     "id": "obj-8",
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
     "id": "obj-9",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend threshold",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      126,
      260,
      100,
      22
     ],
     "id": "obj-10",
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
       "parameter_mmin": 11,
       "parameter_mmax": 26,
       "parameter_type": 1,
       "parameter_initial": [
        11
       ],
       "parameter_initial_enable": 0,
       "parameter_unitstyle": 0,
       "parameter_longname": "Dynamic Release",
       "parameter_shortname": "Release"
      }
     },
     "varname": "Dynamic Release",
     "presentation": 1,
     "presentation_rect": [
      88,
      8,
      44,
      64
     ],
     "id": "obj-11",
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
     "id": "obj-12",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend release",
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
       "parameter_mmin": -60,
       "parameter_mmax": 0,
       "parameter_type": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 0,
       "parameter_unitstyle": 9,
       "parameter_units": "dB",
       "parameter_longname": "Dynamic Damping",
       "parameter_shortname": "Damping"
      }
     },
     "varname": "Dynamic Damping",
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
     "text": "prepend damping",
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
     "maxclass": "live.dial",
     "outlettype": [
      "",
      "float"
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
       "parameter_mmin": 0,
       "parameter_mmax": 5,
       "parameter_type": 1,
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 0,
       "parameter_unitstyle": 0,
       "parameter_longname": "Reverse Threshold",
       "parameter_shortname": "Rev Thres"
      }
     },
     "varname": "Reverse Threshold",
     "presentation": 1,
     "presentation_rect": [
      228,
      8,
      44,
      64
     ],
     "id": "obj-17",
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
     "text": "prepend revthreshold",
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
     "maxclass": "live.menu",
     "outlettype": [
      "",
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
       "parameter_enum": [
        "All",
        "1st",
        "1st Trg",
        "2nd",
        "2nd Trg",
        "Last",
        "Last Trg",
        "Odd",
        "Odd Trg",
        "Even",
        "Even Trg"
       ],
       "parameter_mmax": 10,
       "parameter_type": 2,
       "parameter_longname": "Reverse Style",
       "parameter_shortname": "Rev Style"
      }
     },
     "varname": "Reverse Style",
     "presentation": 1,
     "presentation_rect": [
      160,
      114,
      94,
      18
     ],
     "id": "obj-20",
     "numinlets": 1,
     "numoutlets": 3
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "Rev Style",
     "patching_rect": [
      566,
      170,
      90,
      20
     ],
     "presentation": 1,
     "presentation_rect": [
      160,
      94,
      110,
      20
     ],
     "id": "obj-21",
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
     "id": "obj-22",
     "numinlets": 1,
     "numoutlets": 1
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend revstyle",
     "outlettype": [
      ""
     ],
     "patching_rect": [
      566,
      260,
      100,
      22
     ],
     "id": "obj-23",
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
      "obj-10",
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
