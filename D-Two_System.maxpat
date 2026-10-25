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
        "rect": [ 439.0, 377.0, 714.0, 565.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 352.5, 143.5, 15.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 128.66667050123215, 110.66666996479034, 20.000000596046448, 20.66666728258133 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_longname": "live.toggle[9]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Spatial",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.toggle[2]"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 736.0, 238.0, 15.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_longname": "live.toggle[1]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.toggle[1]",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.toggle[1]"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 222.89, 442.86, 37.0, 22.0 ],
                    "text": "* 127"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 329.6666760444641, 50.0, 15.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 129.0, 24.0, 15.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_longname": "live.toggle",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.toggle",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.toggle"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 467.0000134706497, 50.0, 37.0, 22.0 ],
                    "text": "* 127"
                }
            },
            {
                "box": {
                    "id": "recv_chan",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 602.68, 481.19, 87.0, 22.0 ],
                    "text": "r midi_channel"
                }
            },
            {
                "box": {
                    "id": "inlevel",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 50.0, 50.0, 40.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 5.0, 8.0, 40.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "In Level",
                            "parameter_modmode": 0,
                            "parameter_shortname": "IN",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "live.dial"
                }
            },
            {
                "box": {
                    "id": "inlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 85.0, 50.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 55.0, 22.0, 35.0, 20.0 ],
                    "text": "IN"
                }
            },
            {
                "box": {
                    "id": "in_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 230.0, 60.0, 80.0, 22.0 ],
                    "text": "ctlout 16"
                }
            },
            {
                "box": {
                    "id": "digin",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 50.0, 100.0, 40.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 5.0, 58.0, 40.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ 0.0 ],
                            "parameter_longname": "Digital In",
                            "parameter_modmode": 0,
                            "parameter_shortname": "Dig In",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "live.dial[1]"
                }
            },
            {
                "box": {
                    "id": "diglabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 92.0, 114.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 55.0, 72.0, 51.0, 20.0 ],
                    "text": "DIG IN"
                }
            },
            {
                "box": {
                    "id": "dig_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 230.0, 110.0, 80.0, 22.0 ],
                    "text": "ctlout 17"
                }
            },
            {
                "box": {
                    "id": "outlevel",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 50.0, 150.0, 40.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 5.0, 108.0, 40.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "Out Level",
                            "parameter_modmode": 0,
                            "parameter_shortname": "Out",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "live.dial[2]"
                }
            },
            {
                "box": {
                    "id": "outlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 92.0, 170.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 55.0, 122.0, 51.0, 20.0 ],
                    "text": "OUT"
                }
            },
            {
                "box": {
                    "id": "out_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 230.0, 160.0, 80.0, 22.0 ],
                    "text": "ctlout 18"
                }
            },
            {
                "box": {
                    "id": "mix",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 50.0, 200.0, 40.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 5.0, 158.0, 40.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "Mix",
                            "parameter_modmode": 0,
                            "parameter_shortname": "Mix",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "live.dial[3]"
                }
            },
            {
                "box": {
                    "id": "mixlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 92.0, 214.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 55.0, 172.0, 51.0, 20.0 ],
                    "text": "MIX"
                }
            },
            {
                "box": {
                    "id": "mix_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 230.0, 210.0, 80.0, 22.0 ],
                    "text": "ctlout 19"
                }
            },
            {
                "box": {
                    "id": "bypasslabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 374.0, 51.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 156.0, 22.0, 120.0, 20.0 ],
                    "text": "Bypass"
                }
            },
            {
                "box": {
                    "id": "bypass_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 510.0, 50.0, 80.0, 22.0 ],
                    "text": "ctlout 20"
                }
            },
            {
                "box": {
                    "id": "rev_offset",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 352.0, 84.0, 40.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 118.66667079925537, 50.666668176651, 40.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "Reverse Offset",
                            "parameter_modmode": 0,
                            "parameter_shortname": "Offset",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "live.dial[4]"
                }
            },
            {
                "box": {
                    "id": "revlabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 394.0, 104.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 159.3333380818367, 64.66666859388351, 70.00000208616257, 20.0 ],
                    "text": "Reverse"
                }
            },
            {
                "box": {
                    "id": "rev_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 510.0, 100.0, 54.0, 22.0 ],
                    "text": "ctlout 21"
                }
            },
            {
                "box": {
                    "id": "spatial_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 374.0, 141.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 159.3333380818367, 109.33333659172058, 52.666668236255646, 20.0 ],
                    "text": "Spatial"
                }
            },
            {
                "box": {
                    "id": "spatial_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 510.0, 140.0, 80.0, 22.0 ],
                    "text": "ctlout 22"
                }
            },
            {
                "box": {
                    "id": "filter",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 350.0, 170.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 129.0, 138.0, 20.0, 20.0 ],
                    "varname": "live.toggle[3]"
                }
            },
            {
                "box": {
                    "id": "filter_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 378.0, 171.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 159.0, 138.0, 120.0, 20.0 ],
                    "text": "Filter"
                }
            },
            {
                "box": {
                    "id": "filter_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 510.0, 170.0, 80.0, 22.0 ],
                    "text": "ctlout 23"
                }
            },
            {
                "box": {
                    "id": "chorus",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 350.0, 200.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 129.0, 168.0, 20.0, 20.0 ],
                    "varname": "live.toggle[4]"
                }
            },
            {
                "box": {
                    "id": "chorus_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 378.0, 201.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 159.0, 168.0, 120.0, 20.0 ],
                    "text": "Chorus"
                }
            },
            {
                "box": {
                    "id": "chorus_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 510.0, 200.0, 80.0, 22.0 ],
                    "text": "ctlout 24"
                }
            },
            {
                "box": {
                    "id": "reverse",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 350.0, 230.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 129.0, 198.0, 20.0, 20.0 ],
                    "varname": "live.toggle[5]"
                }
            },
            {
                "box": {
                    "id": "reverse_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 374.0, 231.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 159.0, 198.0, 120.0, 20.0 ],
                    "text": "Reverse"
                }
            },
            {
                "box": {
                    "id": "reverse_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 510.0, 230.0, 80.0, 22.0 ],
                    "text": "ctlout 25"
                }
            },
            {
                "box": {
                    "id": "dynamic",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 350.0, 260.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 129.0, 228.0, 20.0, 20.0 ],
                    "varname": "live.toggle[6]"
                }
            },
            {
                "box": {
                    "id": "dynamic_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 374.0, 261.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 159.0, 228.0, 120.0, 20.0 ],
                    "text": "Dynamic"
                }
            },
            {
                "box": {
                    "id": "dynamic_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 510.0, 260.0, 80.0, 22.0 ],
                    "text": "ctlout 26"
                }
            },
            {
                "box": {
                    "id": "pingpong",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 350.0, 290.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 129.0, 258.0, 20.0, 20.0 ],
                    "varname": "live.toggle[7]"
                }
            },
            {
                "box": {
                    "id": "pingpong_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 374.0, 291.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 159.0, 258.0, 140.0, 20.0 ],
                    "text": "PingPong"
                }
            },
            {
                "box": {
                    "id": "pingpong_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 510.0, 290.0, 80.0, 22.0 ],
                    "text": "ctlout 27"
                }
            },
            {
                "box": {
                    "id": "rhythm",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 350.0, 320.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 129.0, 288.0, 20.0, 20.0 ],
                    "varname": "live.toggle[8]"
                }
            },
            {
                "box": {
                    "id": "rhythm_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 378.0, 321.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 159.0, 288.0, 140.0, 20.0 ],
                    "text": "Rhythm"
                }
            },
            {
                "box": {
                    "id": "rhythm_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 510.0, 320.0, 80.0, 22.0 ],
                    "text": "ctlout 28"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "chorus_out", 0 ],
                    "source": [ "chorus", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dig_out", 0 ],
                    "source": [ "digin", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dynamic_out", 0 ],
                    "source": [ "dynamic", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "filter_out", 0 ],
                    "source": [ "filter", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "in_out", 0 ],
                    "source": [ "inlevel", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mix_out", 0 ],
                    "source": [ "mix", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "spatial_out", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bypass_out", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "out_out", 0 ],
                    "source": [ "outlevel", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pingpong_out", 0 ],
                    "source": [ "pingpong", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "bypass_out", 2 ],
                    "order": 7,
                    "source": [ "recv_chan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "chorus_out", 2 ],
                    "order": 4,
                    "source": [ "recv_chan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dig_out", 2 ],
                    "order": 11,
                    "source": [ "recv_chan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dynamic_out", 2 ],
                    "order": 2,
                    "source": [ "recv_chan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "filter_out", 2 ],
                    "order": 5,
                    "source": [ "recv_chan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "in_out", 2 ],
                    "order": 12,
                    "source": [ "recv_chan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "mix_out", 2 ],
                    "order": 9,
                    "source": [ "recv_chan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "out_out", 2 ],
                    "order": 10,
                    "source": [ "recv_chan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pingpong_out", 2 ],
                    "order": 1,
                    "source": [ "recv_chan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rev_out", 2 ],
                    "order": 8,
                    "source": [ "recv_chan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "reverse_out", 2 ],
                    "order": 3,
                    "source": [ "recv_chan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rhythm_out", 2 ],
                    "order": 0,
                    "source": [ "recv_chan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "spatial_out", 2 ],
                    "order": 6,
                    "source": [ "recv_chan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rev_out", 0 ],
                    "source": [ "rev_offset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "reverse_out", 0 ],
                    "source": [ "reverse", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rhythm_out", 0 ],
                    "source": [ "rhythm", 0 ]
                }
            }
        ],
        "parameters": {
            "digin": [ "Digital In", "Dig In", 0 ],
            "inlevel": [ "In Level", "IN", 0 ],
            "mix": [ "Mix", "Mix", 0 ],
            "obj-17": [ "live.toggle", "live.toggle", 0 ],
            "obj-3": [ "live.toggle[1]", "live.toggle[1]", 0 ],
            "obj-5": [ "live.toggle[9]", "Spatial", 0 ],
            "outlevel": [ "Out Level", "Out", 0 ],
            "rev_offset": [ "Reverse Offset", "Offset", 0 ],
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}