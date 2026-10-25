{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 450.0, 111.0, 1368.0, 929.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 518.9, 344.28, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 470.59, 285.88, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "hidden": 1,
                    "id": "dyn_panel",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "D-Two_Dynamics.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 1394.0, 20.0, 700.0, 350.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 13.0, 89.0, 700.0, 350.0 ],
                    "varname": "dyn_panel",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "midiinfo",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 254.0, 415.0, 70.0, 22.0 ],
                    "text": "midiinfo"
                }
            },
            {
                "box": {
                    "id": "route",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 254.0, 445.0, 100.0, 22.0 ],
                    "text": "route output"
                }
            },
            {
                "box": {
                    "id": "iter",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 254.0, 475.0, 60.0, 22.0 ],
                    "text": "iter"
                }
            },
            {
                "box": {
                    "id": "tclear",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "clear", "" ],
                    "patching_rect": [ 254.0, 505.0, 70.0, 22.0 ],
                    "text": "t clear s"
                }
            },
            {
                "box": {
                    "id": "append",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 334.0, 505.0, 80.0, 22.0 ],
                    "text": "append $1"
                }
            },
            {
                "box": {
                    "allowdrag": 0,
                    "id": "midiports",
                    "items": "<empty>",
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 140.0, 97.0, 120.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 13.0, 9.0, 120.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "refresh_bang",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 334.0, 415.0, 22.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 248.0, 9.0, 20.0, 20.0 ]
                }
            },
            {
                "box": {
                    "id": "loadbang",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 140.0, 415.0, 60.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "channelnum",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 280.0, 97.0, 40.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 153.0, 9.0, 40.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "chanlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 330.0, 97.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 203.0, 9.0, 60.0, 20.0 ],
                    "text": "MIDI Ch"
                }
            },
            {
                "box": {
                    "id": "s_chan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 299.0, 135.0, 100.0, 22.0 ],
                    "text": "s midi_channel"
                }
            },
            {
                "box": {
                    "id": "s_port",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 200.0, 135.0, 80.0, 22.0 ],
                    "text": "s midi_port"
                }
            },
            {
                "box": {
                    "id": "tab",
                    "maxclass": "tab",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 140.0, 180.0, 400.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 13.0, 49.0, 400.0, 30.0 ],
                    "tabs": [ "System", "Delay", "Spatial", "Chorus", "Dynamics" ]
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "hidden": 1,
                    "id": "sys_panel",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "D-Two_System.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 95.0, 584.0, 723.0, 561.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 13.0, 89.0, 700.0, 350.0 ],
                    "varname": "sys_panel",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "hidden": 1,
                    "id": "delay_panel",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "D-Two_Delay.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 869.0, 391.0, 700.0, 350.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 13.0, 89.0, 700.0, 350.0 ],
                    "varname": "delay_panel",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "spatial_panel",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "D-Two_Spatial.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 923.0, 777.0, 700.0, 350.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 13.0, 89.0, 700.0, 350.0 ],
                    "varname": "spatial_panel",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "hidden": 1,
                    "id": "chorus_panel",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "D-Two_Chorus.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 1670.0, 415.0, 700.0, 350.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 13.0, 89.0, 700.0, 350.0 ],
                    "varname": "chorus_panel",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "router",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 6,
                    "outlettype": [ "", "", "", "", "", "" ],
                    "patching_rect": [ 617.0, 24.0, 100.0, 22.0 ],
                    "text": "route 0 1 2 3 4"
                }
            },
            {
                "box": {
                    "id": "msg_sys",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 639.0, 93.0, 1003.0, 22.0 ],
                    "text": "script sendbox sys_panel hidden 0, script sendbox delay_panel hidden 1, script sendbox spatial_panel hidden 1, script sendbox chorus_panel hidden 1, script sendbox dyn_panel hidden 1"
                }
            },
            {
                "box": {
                    "id": "msg_delay",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 644.0, 157.0, 1003.0, 22.0 ],
                    "text": "script sendbox sys_panel hidden 1, script sendbox delay_panel hidden 0, script sendbox spatial_panel hidden 1, script sendbox chorus_panel hidden 1, script sendbox dyn_panel hidden 1"
                }
            },
            {
                "box": {
                    "id": "msg_spatial",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 643.0, 215.0, 1003.0, 22.0 ],
                    "text": "script sendbox sys_panel hidden 1, script sendbox delay_panel hidden 1, script sendbox spatial_panel hidden 0, script sendbox chorus_panel hidden 1, script sendbox dyn_panel hidden 1"
                }
            },
            {
                "box": {
                    "id": "msg_chorus",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 648.0, 270.0, 1003.0, 22.0 ],
                    "text": "script sendbox sys_panel hidden 1, script sendbox delay_panel hidden 1, script sendbox spatial_panel hidden 1, script sendbox chorus_panel hidden 0, script sendbox dyn_panel hidden 1"
                }
            },
            {
                "box": {
                    "id": "msg_dyn",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 648.0, 327.0, 1003.0, 22.0 ],
                    "text": "script sendbox sys_panel hidden 1, script sendbox delay_panel hidden 1, script sendbox spatial_panel hidden 1, script sendbox chorus_panel hidden 1, script sendbox dyn_panel hidden 0"
                }
            },
            {
                "box": {
                    "id": "thispatcher",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 560.0, 460.0, 80.0, 22.0 ],
                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                    "text": "thispatcher"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "midiports", 0 ],
                    "source": [ "append", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "s_chan", 0 ],
                    "source": [ "channelnum", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tclear", 0 ],
                    "source": [ "iter", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midiinfo", 0 ],
                    "source": [ "loadbang", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "route", 0 ],
                    "source": [ "midiinfo", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "s_port", 0 ],
                    "source": [ "midiports", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "thispatcher", 0 ],
                    "source": [ "msg_chorus", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "thispatcher", 0 ],
                    "source": [ "msg_delay", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "thispatcher", 0 ],
                    "source": [ "msg_dyn", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "thispatcher", 0 ],
                    "source": [ "msg_spatial", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "thispatcher", 0 ],
                    "source": [ "msg_sys", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tab", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midiinfo", 0 ],
                    "source": [ "refresh_bang", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "iter", 0 ],
                    "source": [ "route", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "msg_chorus", 0 ],
                    "source": [ "router", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "msg_delay", 0 ],
                    "source": [ "router", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "msg_dyn", 0 ],
                    "source": [ "router", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "msg_spatial", 0 ],
                    "source": [ "router", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "msg_sys", 0 ],
                    "source": [ "router", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "router", 0 ],
                    "source": [ "tab", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "append", 0 ],
                    "source": [ "tclear", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midiports", 0 ],
                    "source": [ "tclear", 0 ]
                }
            }
        ],
        "parameters": {
            "chorus_panel::choamt": [ "Chorus Amount", "Amount", 0 ],
            "chorus_panel::chodepth": [ "Chorus Depth", "Depth", 0 ],
            "chorus_panel::chofb": [ "Chorus Feedback", "Feedback", 0 ],
            "chorus_panel::chospeed": [ "Chorus Speed", "Speed", 0 ],
            "chorus_panel::chotime": [ "Chorus Time", "Time", 0 ],
            "chorus_panel::obj-13": [ "live.tab[1]", "live.tab[1]", 0 ],
            "chorus_panel::obj-16": [ "live.tab[2]", "live.tab[2]", 0 ],
            "chorus_panel::obj-5": [ "live.toggle[4]", "live.toggle[4]", 0 ],
            "chorus_panel::obj-6": [ "live.toggle[5]", "live.toggle[4]", 0 ],
            "delay_panel::delay": [ "Delay", "Delay", 0 ],
            "delay_panel::fblevel": [ "Feedback Level", "Feedback", 0 ],
            "delay_panel::fxlevel": [ "FX Level", "FX", 0 ],
            "delay_panel::obj-1": [ "live.toggle[1]", "live.toggle[1]", 0 ],
            "delay_panel::obj-6": [ "live.toggle[2]", "live.toggle[2]", 0 ],
            "delay_panel::obj-7": [ "live.toggle[3]", "live.toggle[3]", 0 ],
            "delay_panel::obj-8": [ "Delay[1]", "Delay", 0 ],
            "delay_panel::shuffle": [ "live.dial[9]", "Shuffle", 0 ],
            "dyn_panel::damping": [ "live.dial[2]", "Damping", 0 ],
            "dyn_panel::release": [ "live.dial[1]", "Release", 0 ],
            "dyn_panel::revthresh": [ "live.dial[3]", "Reverse Threshold", 0 ],
            "dyn_panel::thresh": [ "live.dial", "Threshold", 0 ],
            "spatial_panel::fbhi": [ "FB High Cut", "FB High Cut", 0 ],
            "spatial_panel::fblow": [ "FB Low Cut", "FB Low Cut", 0 ],
            "spatial_panel::hicut": [ "High Cut", "High Cut", 0 ],
            "spatial_panel::locut": [ "Low Cut", "Low Cut", 0 ],
            "spatial_panel::obj-10": [ "live.tab", "live.tab", 0 ],
            "spatial_panel::spoff": [ "SpatialOffset", "Offset", 0 ],
            "sys_panel::digin": [ "Digital In", "Dig In", 0 ],
            "sys_panel::inlevel": [ "In Level", "IN", 0 ],
            "sys_panel::mix": [ "live.dial[14]", "Mix", 0 ],
            "sys_panel::obj-17": [ "live.toggle", "live.toggle", 0 ],
            "sys_panel::obj-3": [ "live.toggle[6]", "live.toggle[1]", 0 ],
            "sys_panel::obj-5": [ "live.toggle[9]", "Spatial", 0 ],
            "sys_panel::outlevel": [ "Out Level", "Out", 0 ],
            "sys_panel::rev_offset": [ "Reverse Offset", "Offset", 0 ],
            "parameter_overrides": {
                "chorus_panel::choamt": {
                    "parameter_invisible": 0,
                    "parameter_longname": "Chorus Amount",
                    "parameter_modmode": 0,
                    "parameter_range": [ 0, 127 ],
                    "parameter_shortname": "Amount",
                    "parameter_type": 1,
                    "parameter_unitstyle": 0
                },
                "chorus_panel::chodepth": {
                    "parameter_invisible": 0,
                    "parameter_longname": "Chorus Depth",
                    "parameter_modmode": 0,
                    "parameter_range": [ 0, 127 ],
                    "parameter_shortname": "Depth",
                    "parameter_type": 1,
                    "parameter_unitstyle": 0
                },
                "chorus_panel::chofb": {
                    "parameter_invisible": 0,
                    "parameter_longname": "Chorus Feedback",
                    "parameter_modmode": 0,
                    "parameter_range": [ 0, 127 ],
                    "parameter_shortname": "Feedback",
                    "parameter_type": 1,
                    "parameter_unitstyle": 0
                },
                "chorus_panel::chospeed": {
                    "parameter_initial": 0.0,
                    "parameter_initial_enable": 0,
                    "parameter_invisible": 0,
                    "parameter_longname": "Chorus Speed",
                    "parameter_modmode": 0,
                    "parameter_range": [ 0, 127 ],
                    "parameter_shortname": "Speed",
                    "parameter_type": 1,
                    "parameter_unitstyle": 0
                },
                "chorus_panel::chotime": {
                    "parameter_invisible": 0,
                    "parameter_longname": "Chorus Time",
                    "parameter_modmode": 0,
                    "parameter_range": [ 0, 127 ],
                    "parameter_shortname": "Time",
                    "parameter_type": 1,
                    "parameter_unitstyle": 0
                },
                "chorus_panel::obj-13": {
                    "parameter_invisible": 0,
                    "parameter_longname": "live.tab[1]",
                    "parameter_modmode": 0,
                    "parameter_range": [ "0", "90", "180" ],
                    "parameter_shortname": "live.tab[1]",
                    "parameter_type": 2,
                    "parameter_unitstyle": 9
                },
                "chorus_panel::obj-16": {
                    "parameter_invisible": 0,
                    "parameter_longname": "live.tab[2]",
                    "parameter_modmode": 0,
                    "parameter_range": [ "Triangle", "Sine" ],
                    "parameter_shortname": "live.tab[2]",
                    "parameter_type": 2,
                    "parameter_unitstyle": 9
                },
                "chorus_panel::obj-5": {
                    "parameter_longname": "live.toggle[4]",
                    "parameter_shortname": "live.toggle[4]"
                },
                "chorus_panel::obj-6": {
                    "parameter_longname": "live.toggle[5]"
                },
                "delay_panel::delay": {
                    "parameter_invisible": 0,
                    "parameter_longname": "Delay",
                    "parameter_modmode": 0,
                    "parameter_range": [ 0, 127 ],
                    "parameter_shortname": "Delay",
                    "parameter_type": 1,
                    "parameter_unitstyle": 0
                },
                "delay_panel::fblevel": {
                    "parameter_invisible": 0,
                    "parameter_longname": "Feedback Level",
                    "parameter_modmode": 0,
                    "parameter_range": [ 0, 127 ],
                    "parameter_shortname": "Feedback",
                    "parameter_type": 1,
                    "parameter_unitstyle": 0
                },
                "delay_panel::fxlevel": {
                    "parameter_invisible": 0,
                    "parameter_longname": "FX Level",
                    "parameter_modmode": 0,
                    "parameter_range": [ 0, 127 ],
                    "parameter_shortname": "FX",
                    "parameter_type": 1,
                    "parameter_unitstyle": 0
                },
                "delay_panel::obj-1": {
                    "parameter_longname": "live.toggle[1]",
                    "parameter_shortname": "live.toggle[1]"
                },
                "delay_panel::obj-6": {
                    "parameter_longname": "live.toggle[2]",
                    "parameter_shortname": "live.toggle[2]"
                },
                "delay_panel::obj-7": {
                    "parameter_longname": "live.toggle[3]",
                    "parameter_shortname": "live.toggle[3]"
                },
                "delay_panel::shuffle": {
                    "parameter_invisible": 0,
                    "parameter_longname": "live.dial[9]",
                    "parameter_modmode": 0,
                    "parameter_range": [ 0, 127 ],
                    "parameter_type": 1,
                    "parameter_unitstyle": 0
                },
                "dyn_panel::revthresh": {
                    "parameter_longname": "live.dial[3]"
                },
                "spatial_panel::fbhi": {
                    "parameter_invisible": 0,
                    "parameter_longname": "FB High Cut",
                    "parameter_modmode": 0,
                    "parameter_range": [ 0, 127 ],
                    "parameter_shortname": "FB High Cut",
                    "parameter_type": 1,
                    "parameter_unitstyle": 0
                },
                "spatial_panel::fblow": {
                    "parameter_invisible": 0,
                    "parameter_longname": "FB Low Cut",
                    "parameter_modmode": 0,
                    "parameter_range": [ 0, 127 ],
                    "parameter_shortname": "FB Low Cut",
                    "parameter_type": 1,
                    "parameter_unitstyle": 0
                },
                "spatial_panel::hicut": {
                    "parameter_invisible": 0,
                    "parameter_longname": "High Cut",
                    "parameter_modmode": 0,
                    "parameter_range": [ 0, 127 ],
                    "parameter_shortname": "High Cut",
                    "parameter_type": 1,
                    "parameter_unitstyle": 0
                },
                "spatial_panel::locut": {
                    "parameter_invisible": 0,
                    "parameter_longname": "Low Cut",
                    "parameter_modmode": 0,
                    "parameter_range": [ 0, 127 ],
                    "parameter_shortname": "Low Cut",
                    "parameter_type": 1,
                    "parameter_unitstyle": 0
                },
                "spatial_panel::obj-10": {
                    "parameter_invisible": 0,
                    "parameter_longname": "live.tab",
                    "parameter_modmode": 0,
                    "parameter_range": [ "off", "left", "right" ],
                    "parameter_shortname": "live.tab",
                    "parameter_type": 2,
                    "parameter_unitstyle": 9
                },
                "spatial_panel::spoff": {
                    "parameter_invisible": 0,
                    "parameter_longname": "SpatialOffset",
                    "parameter_modmode": 0,
                    "parameter_range": [ 0, 127 ],
                    "parameter_shortname": "Offset",
                    "parameter_type": 1,
                    "parameter_unitstyle": 0
                },
                "sys_panel::digin": {
                    "parameter_initial": 0.0,
                    "parameter_initial_enable": 0,
                    "parameter_longname": "Digital In",
                    "parameter_shortname": "Dig In"
                },
                "sys_panel::inlevel": {
                    "parameter_longname": "In Level",
                    "parameter_shortname": "IN"
                },
                "sys_panel::mix": {
                    "parameter_longname": "live.dial[14]"
                },
                "sys_panel::obj-17": {
                    "parameter_longname": "live.toggle"
                },
                "sys_panel::obj-3": {
                    "parameter_longname": "live.toggle[6]"
                },
                "sys_panel::outlevel": {
                    "parameter_longname": "Out Level",
                    "parameter_shortname": "Out"
                },
                "sys_panel::rev_offset": {
                    "parameter_longname": "Reverse Offset",
                    "parameter_shortname": "Offset"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}