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
        "rect": [ 538.0, 249.0, 708.0, 780.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "id": "pingstyle",
                    "maxclass": "number",
                    "maximum": 2,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 20.0, 20.0, 40.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 20.0, 40.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "ping_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 86.0, 21.0, 112.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 70.0, 20.0, 71.0, 20.0 ],
                    "text": "Ping Style "
                }
            },
            {
                "box": {
                    "id": "ping_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 200.0, 20.0, 80.0, 22.0 ],
                    "text": "ctlout 73"
                }
            },
            {
                "box": {
                    "id": "thresh",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 20.0, 60.0, 40.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 60.0, 40.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.dial",
                            "parameter_modmode": 0,
                            "parameter_shortname": "Threshold",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "live.dial"
                }
            },
            {
                "box": {
                    "id": "thresh_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 86.0, 71.0, 104.0, 20.0 ],
                    "text": "Threshold"
                }
            },
            {
                "box": {
                    "id": "thresh_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 200.0, 70.0, 80.0, 22.0 ],
                    "text": "ctlout 74"
                }
            },
            {
                "box": {
                    "id": "release",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 20.0, 110.0, 40.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 110.0, 40.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.dial[1]",
                            "parameter_modmode": 0,
                            "parameter_shortname": "Release",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "live.dial[1]"
                }
            },
            {
                "box": {
                    "id": "release_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 87.0, 120.0, 102.0, 20.0 ],
                    "text": "Release"
                }
            },
            {
                "box": {
                    "id": "release_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 200.0, 120.0, 80.0, 22.0 ],
                    "text": "ctlout 75"
                }
            },
            {
                "box": {
                    "id": "damping",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 20.0, 160.0, 40.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 160.0, 40.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.dial[2]",
                            "parameter_modmode": 0,
                            "parameter_shortname": "Damping",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "live.dial[2]"
                }
            },
            {
                "box": {
                    "id": "damp_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 81.0, 171.0, 101.0, 20.0 ],
                    "text": "Damping "
                }
            },
            {
                "box": {
                    "id": "damp_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 200.0, 170.0, 80.0, 22.0 ],
                    "text": "ctlout 76"
                }
            },
            {
                "box": {
                    "id": "revthresh",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 320.0, 20.0, 40.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 85.5, 60.0, 40.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "ReverseThreshold",
                            "parameter_mmax": 5.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Reverse Threshold",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "live.dial[3]"
                }
            },
            {
                "box": {
                    "id": "revthresh_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 535.0, 30.0, 80.0, 22.0 ],
                    "text": "ctlout 77"
                }
            },
            {
                "box": {
                    "id": "revstyle",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 320.0, 70.0, 40.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 85.5, 110.0, 40.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "revstyle_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 378.0, 71.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 83.0, 138.0, 45.0, 20.0 ],
                    "text": "Style"
                }
            },
            {
                "box": {
                    "id": "revstyle_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 535.0, 70.0, 80.0, 22.0 ],
                    "text": "ctlout 78"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "damp_out", 0 ],
                    "source": [ "damping", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ping_out", 0 ],
                    "source": [ "pingstyle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "release_out", 0 ],
                    "source": [ "release", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "revstyle_out", 0 ],
                    "source": [ "revstyle", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "revthresh_out", 0 ],
                    "source": [ "revthresh", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "thresh_out", 0 ],
                    "source": [ "thresh", 0 ]
                }
            }
        ],
        "parameters": {
            "damping": [ "live.dial[2]", "Damping", 0 ],
            "release": [ "live.dial[1]", "Release", 0 ],
            "revthresh": [ "ReverseThreshold", "Reverse Threshold", 0 ],
            "thresh": [ "live.dial", "Threshold", 0 ],
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}