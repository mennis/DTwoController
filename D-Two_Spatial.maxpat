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
        "rect": [ 145.0, 248.0, 1000.0, 780.0 ],
        "openinpresentation": 1,
        "default_fontname": "Futura",
        "boxes": [
            {
                "box": {
                    "fontname": "Futura",
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 92.0, 101.0, 105.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 161.0, 3.0, 64.0, 22.0 ],
                    "style": "MP-M4L",
                    "text": "Feedback",
                    "textcolor": [ 0.7647058823529411, 0.7647058823529411, 0.7647058823529411, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "bubble_outlinecolor": [ 0.050980392156862744, 0.050980392156862744, 0.050980392156862744, 1.0 ],
                    "fontname": "Futura",
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 77.0, 86.0, 108.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 104.5, 3.0, 52.0, 22.0 ],
                    "style": "MP-M4L",
                    "text": "Spatial",
                    "textcolor": [ 0.7647058823529411, 0.7647058823529411, 0.7647058823529411, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "live.tab",
                    "num_lines_patching": 1,
                    "num_lines_presentation": 1,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 383.0, 132.0, 100.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.0, 81.0, 100.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "left", "right" ],
                            "parameter_longname": "live.tab",
                            "parameter_mmax": 2,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.tab",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.tab"
                }
            },
            {
                "box": {
                    "id": "spoff",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 20.0, 20.0, 40.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 26.0, 21.0, 40.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "SpatialOffset",
                            "parameter_modmode": 0,
                            "parameter_shortname": "Offset",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "live.dial"
                }
            },
            {
                "box": {
                    "id": "spoff_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 65.0, 31.0, 101.0, 20.0 ],
                    "text": "Spatial Offset"
                }
            },
            {
                "box": {
                    "id": "spoff_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 200.0, 30.0, 80.0, 22.0 ],
                    "text": "ctlout 58"
                }
            },
            {
                "box": {
                    "fontname": "Futura",
                    "id": "spphase_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 62.0, 71.0, 100.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 4.5, 109.0, 95.0, 22.0 ],
                    "style": "MP-M4L",
                    "text": "Phase Reverse",
                    "textcolor": [ 0.7647058823529411, 0.7647058823529411, 0.7647058823529411, 1.0 ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "spphase_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 200.0, 70.0, 80.0, 22.0 ],
                    "text": "ctlout 59"
                }
            },
            {
                "box": {
                    "id": "fbhi",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 322.0, 20.0, 40.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 169.0, 29.0, 40.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "FBHighCut",
                            "parameter_modmode": 0,
                            "parameter_shortname": "High Cut",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "live.dial[1]"
                }
            },
            {
                "box": {
                    "id": "fbhi_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 367.0, 31.0, 74.0, 20.0 ],
                    "text": "FB High Cut"
                }
            },
            {
                "box": {
                    "id": "fbhi_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 502.0, 30.0, 80.0, 22.0 ],
                    "text": "ctlout 60"
                }
            },
            {
                "box": {
                    "id": "fblow",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 322.0, 70.0, 40.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 169.0, 79.0, 40.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "FBLowCut",
                            "parameter_modmode": 0,
                            "parameter_shortname": "Low Cut",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "live.dial[2]"
                }
            },
            {
                "box": {
                    "id": "fblow_label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 367.0, 81.0, 74.0, 20.0 ],
                    "text": "FB Low Cut"
                }
            },
            {
                "box": {
                    "id": "fblow_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 502.0, 80.0, 80.0, 22.0 ],
                    "text": "ctlout 61"
                }
            },
            {
                "box": {
                    "id": "hicut",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 20.0, 108.0, 40.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 108.0, 29.0, 40.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "SpatialHighCut",
                            "parameter_modmode": 0,
                            "parameter_shortname": "High Cut",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "live.dial[3]"
                }
            },
            {
                "box": {
                    "id": "hicut_label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 66.0, 119.0, 67.0, 33.0 ],
                    "text": "Spatial High Cut"
                }
            },
            {
                "box": {
                    "id": "hicut_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 180.0, 118.0, 80.0, 22.0 ],
                    "text": "ctlout 62"
                }
            },
            {
                "box": {
                    "id": "locut",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 20.0, 158.0, 40.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 108.0, 79.0, 40.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "SpatialLowOut",
                            "parameter_modmode": 0,
                            "parameter_shortname": "Low Cut",
                            "parameter_type": 1,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "live.dial[4]"
                }
            },
            {
                "box": {
                    "id": "locut_label",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 56.0, 169.0, 77.0, 33.0 ],
                    "text": "Spatial Low Cut"
                }
            },
            {
                "box": {
                    "id": "locut_out",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 180.0, 168.0, 80.0, 22.0 ],
                    "text": "ctlout 63"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 515.0, 403.0, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 104.0, 3.0, 52.0, 128.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 500.0, 388.0, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 163.0, 3.0, 59.0, 128.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "fbhi_out", 0 ],
                    "source": [ "fbhi", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "fblow_out", 0 ],
                    "source": [ "fblow", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "hicut_out", 0 ],
                    "source": [ "hicut", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "locut_out", 0 ],
                    "source": [ "locut", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "spphase_out", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "spoff_out", 0 ],
                    "source": [ "spoff", 0 ]
                }
            }
        ],
        "parameters": {
            "fbhi": [ "FBHighCut", "High Cut", 0 ],
            "fblow": [ "FBLowCut", "Low Cut", 0 ],
            "hicut": [ "SpatialHighCut", "High Cut", 0 ],
            "locut": [ "SpatialLowOut", "Low Cut", 0 ],
            "obj-10": [ "live.tab", "live.tab", 0 ],
            "spoff": [ "SpatialOffset", "Offset", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "styles": [
            {
                "name": "MP-M4L",
                "default": {
                    "accentcolor": [ 0.411764705882353, 0.411764705882353, 0.411764705882353, 1.0 ],
                    "bgcolor": [ 0.098039215686275, 0.098039215686275, 0.098039215686275, 1.0 ],
                    "bgfillcolor": {
                        "color": [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0 ],
                        "color1": [ 0.376470588235294, 0.384313725490196, 0.4, 1.0 ],
                        "color2": [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 1.0 ],
                        "dynamiccolor": [ 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "live_contrast_frame", 1, 0.266666666666667, 0.266666666666667, 0.266666666666667, 1.0, "Control Border" ],
                        "type": "color"
                    },
                    "color": [ 0.333333333333333, 0.870588235294118, 0.964705882352941, 1.0 ],
                    "editing_bgcolor": [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
                    "elementcolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
                    "locked_bgcolor": [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
                    "patchlinecolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
                    "selectioncolor": [ 1.0, 0.694117647058824, 0.0, 1.0 ],
                    "stripecolor": [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 1.0 ],
                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            },
            {
                "name": "rnbohighcontrast",
                "default": {
                    "accentcolor": [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "bgfillcolor": {
                        "angle": 270.0,
                        "autogradient": 0.0,
                        "color": [ 0.0, 0.0, 0.0, 1.0 ],
                        "color1": [ 0.090196078431373, 0.090196078431373, 0.090196078431373, 1.0 ],
                        "color2": [ 0.156862745098039, 0.168627450980392, 0.164705882352941, 1.0 ],
                        "proportion": 0.5,
                        "type": "color"
                    },
                    "clearcolor": [ 1.0, 1.0, 1.0, 0.0 ],
                    "color": [ 1.0, 0.874509803921569, 0.141176470588235, 1.0 ],
                    "editing_bgcolor": [ 0.258823529411765, 0.258823529411765, 0.258823529411765, 1.0 ],
                    "elementcolor": [ 0.223386004567146, 0.254748553037643, 0.998085916042328, 1.0 ],
                    "fontsize": [ 13.0 ],
                    "locked_bgcolor": [ 0.258823529411765, 0.258823529411765, 0.258823529411765, 1.0 ],
                    "selectioncolor": [ 0.301960784313725, 0.694117647058824, 0.949019607843137, 1.0 ],
                    "stripecolor": [ 0.258823529411765, 0.258823529411765, 0.258823529411765, 1.0 ],
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                    "textcolor_inverse": [ 1.0, 1.0, 1.0, 1.0 ]
                },
                "parentstyle": "",
                "multi": 0
            }
        ]
    }
}