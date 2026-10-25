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
        "rect": [ 224.0, 206.0, 1000.0, 780.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 91.0, 136.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 143.0, 54.00000160932541, 20.0 ],
                    "text": "Repeats"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 20.0, 20.0, 40.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 20.0, 40.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "Delay[1]",
                            "parameter_modmode": 0,
                            "parameter_shortname": "Delay",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "live.dial[1]"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 124.0, 1.0, 117.0, 22.0 ],
                    "text": "scale 0 10000 0 127"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 325.0, 53.5, 15.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 81.33333575725555, 60.00000178813934, 15.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_longname": "live.toggle[3]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "TrackTap",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.toggle[2]"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 325.0, 83.5, 15.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 81.33333575725555, 90.00000268220901, 15.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_longname": "live.toggle[2]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "RhythmDecay",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.toggle[1]"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 386.5, 103.0, 37.0, 22.0 ],
                    "text": "* 127"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 356.5, 70.0, 37.0, 22.0 ],
                    "text": "* 127"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 372.0, 30.0, 37.0, 22.0 ],
                    "text": "* 127"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 322.5, 18.5, 15.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 81.33333575725555, 30.00000089406967, 15.0, 15.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_longname": "live.toggle[1]",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Quantize",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.toggle"
                }
            },
            {
                "box": {
                    "id": "delay",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 20.0, 20.0, 40.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 20.0, 40.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "Delay",
                            "parameter_modmode": 0,
                            "parameter_shortname": "Delay",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "live.dial"
                }
            },
            {
                "box": {
                    "id": "delay_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 84.0, 31.0, 150.0, 20.0 ],
                    "text": "Delay (CC48)"
                }
            },
            {
                "box": {
                    "id": "delay_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 200.0, 30.0, 80.0, 22.0 ],
                    "text": "ctlout 48"
                }
            },
            {
                "box": {
                    "id": "fblevel",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 20.0, 70.0, 40.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 70.0, 40.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "Feedback Level",
                            "parameter_modmode": 0,
                            "parameter_shortname": "Feedback",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "d_two_FeedbackLevel"
                }
            },
            {
                "box": {
                    "id": "fb_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 67.0, 81.0, 150.0, 20.0 ],
                    "text": "Feedback Level (CC50)"
                }
            },
            {
                "box": {
                    "id": "fblevel_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 200.0, 80.0, 80.0, 22.0 ],
                    "text": "ctlout 50"
                }
            },
            {
                "box": {
                    "fontname": "Seven Segment",
                    "id": "fbrepeats",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 20.0, 120.0, 39.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 120.0, 39.0, 21.0 ]
                }
            },
            {
                "box": {
                    "id": "fbr_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 76.0, 121.0, 150.0, 20.0 ],
                    "text": "FB Repeats (CC51)"
                }
            },
            {
                "box": {
                    "id": "fbr_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 200.0, 120.0, 80.0, 22.0 ],
                    "text": "ctlout 51"
                }
            },
            {
                "box": {
                    "id": "shuffle",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 20.0, 160.0, 40.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 19.333333909511566, 170.0000050663948, 40.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.dial[9]",
                            "parameter_modmode": 0,
                            "parameter_shortname": "Shuffle",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "live.dial[2]"
                }
            },
            {
                "box": {
                    "id": "shuf_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 76.0, 171.0, 150.0, 20.0 ],
                    "text": "Shuffle (CC52)"
                }
            },
            {
                "box": {
                    "id": "shuffle_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 200.0, 170.0, 80.0, 22.0 ],
                    "text": "ctlout 52"
                }
            },
            {
                "box": {
                    "id": "quant_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 372.0, 16.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 104.66666978597641, 27.333334147930145, 87.33333593606949, 20.0 ],
                    "text": "Quantize"
                }
            },
            {
                "box": {
                    "id": "quant_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 480.0, 20.0, 80.0, 22.0 ],
                    "text": "ctlout 53"
                }
            },
            {
                "box": {
                    "id": "ttap_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 372.0, 51.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 104.66666978597641, 57.33333504199982, 87.33333593606949, 20.0 ],
                    "text": "Track Tap"
                }
            },
            {
                "box": {
                    "id": "ttap_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 480.0, 50.0, 80.0, 22.0 ],
                    "text": "ctlout 54"
                }
            },
            {
                "box": {
                    "id": "rhdecay_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 372.0, 81.0, 93.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 104.66666978597641, 87.33333593606949, 87.33333593606949, 20.0 ],
                    "text": "Rhythm Decay"
                }
            },
            {
                "box": {
                    "id": "rhdecay_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 480.0, 80.0, 80.0, 22.0 ],
                    "text": "ctlout 55"
                }
            },
            {
                "box": {
                    "fontname": "Seven Segment",
                    "id": "subdiv",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 320.0, 120.0, 39.0, 21.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 81.33333575725555, 120.00000298023224, 39.0, 21.0 ]
                }
            },
            {
                "box": {
                    "id": "sub_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 372.0, 121.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 81.33333575725555, 143.0, 80.66666907072067, 20.0 ],
                    "text": "Subdivisions"
                }
            },
            {
                "box": {
                    "id": "sub_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 480.0, 120.0, 80.0, 22.0 ],
                    "text": "ctlout 56"
                }
            },
            {
                "box": {
                    "id": "fxlevel",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 320.0, 160.0, 40.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 80.83333575725555, 170.0000050663948, 40.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "FX Level",
                            "parameter_modmode": 0,
                            "parameter_shortname": "FX",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "d_two_FXLevel"
                }
            },
            {
                "box": {
                    "id": "fx_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 480.0, 170.0, 80.0, 22.0 ],
                    "text": "ctlout 57"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "delay", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fblevel_out", 0 ],
                    "source": [ "fblevel", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fbr_out", 0 ],
                    "source": [ "fbrepeats", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fx_out", 0 ],
                    "source": [ "fxlevel", 0 ]
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
                    "destination": [ "quant_out", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ttap_out", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "rhdecay_out", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "delay_out", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "shuffle_out", 0 ],
                    "source": [ "shuffle", 0 ]
                }
            }
        ],
        "parameters": {
            "delay": [ "Delay", "Delay", 0 ],
            "fblevel": [ "Feedback Level", "Feedback", 0 ],
            "fxlevel": [ "FX Level", "FX", 0 ],
            "obj-1": [ "live.toggle[1]", "Quantize", 0 ],
            "obj-6": [ "live.toggle[2]", "RhythmDecay", 0 ],
            "obj-7": [ "live.toggle[3]", "TrackTap", 0 ],
            "obj-8": [ "Delay[1]", "Delay", 0 ],
            "shuffle": [ "live.dial[9]", "Shuffle", 0 ],
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}