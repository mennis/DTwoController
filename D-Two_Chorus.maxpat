{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 150.0, 218.0, 998.0, 780.0 ],
		"openinpresentation" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 476.0, 196.0, 37.0, 22.0 ],
					"text" : "* 127"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "live.tab",
					"num_lines_patching" : 1,
					"num_lines_presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 349.5, 81.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 84.0, 84.0, 100.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "Triangle", "Sine" ],
							"parameter_longname" : "live.tab[2]",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "live.tab[2]",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"varname" : "live.tab[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Seven Segment",
					"fontsize" : 8.0,
					"id" : "obj-13",
					"maxclass" : "live.tab",
					"multiline" : 0,
					"num_lines_patching" : 1,
					"num_lines_presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 344.392280489206314, 106.077358245849609, 110.215439021587372, 16.574587225914001 ],
					"presentation" : 1,
					"presentation_rect" : [ 84.0, 110.0, 201.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "0", "90", "180" ],
							"parameter_longname" : "live.tab[1]",
							"parameter_mmax" : 2,
							"parameter_modmode" : 0,
							"parameter_shortname" : "live.tab[1]",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"varname" : "live.tab"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 356.0, 45.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 84.0, 54.0, 15.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "live.toggle[5]",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "live.toggle[4]",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 356.0, 20.0, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 84.0, 29.0, 15.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_longname" : "live.toggle[4]",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_shortname" : "live.toggle[4]",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.toggle"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 392.0, 50.0, 37.0, 22.0 ],
					"text" : "* 127"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 381.0, 19.0, 37.0, 22.0 ],
					"text" : "* 127"
				}

			}
, 			{
				"box" : 				{
					"id" : "chospeed",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 20.0, 20.0, 40.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 20.0, 40.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_longname" : "Chorus Speed",
							"parameter_modmode" : 0,
							"parameter_shortname" : "Speed",
							"parameter_type" : 1,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "live.dial"
				}

			}
, 			{
				"box" : 				{
					"id" : "chospeed_label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 64.0, 31.0, 150.0, 20.0 ],
					"text" : "Chorus Speed"
				}

			}
, 			{
				"box" : 				{
					"id" : "chospeed_out",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 30.0, 80.0, 22.0 ],
					"text" : "ctlout 64"
				}

			}
, 			{
				"box" : 				{
					"id" : "chodepth",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 20.0, 70.0, 40.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 70.0, 40.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "Chorus Depth",
							"parameter_modmode" : 0,
							"parameter_shortname" : "Depth",
							"parameter_type" : 1,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "live.dial[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "chodepth_label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 62.0, 81.0, 150.0, 20.0 ],
					"text" : "Chorus Depth"
				}

			}
, 			{
				"box" : 				{
					"id" : "chodepth_out",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 80.0, 80.0, 22.0 ],
					"text" : "ctlout 65"
				}

			}
, 			{
				"box" : 				{
					"id" : "choamt",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 20.0, 120.0, 40.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 120.0, 40.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "Chorus Amount",
							"parameter_modmode" : 0,
							"parameter_shortname" : "Amount",
							"parameter_type" : 1,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "live.dial[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "choamt_label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 62.0, 131.0, 150.0, 20.0 ],
					"text" : "Chorus Amount"
				}

			}
, 			{
				"box" : 				{
					"id" : "choamt_out",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 130.0, 80.0, 22.0 ],
					"text" : "ctlout 66"
				}

			}
, 			{
				"box" : 				{
					"id" : "chofb",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 20.0, 170.0, 40.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 170.0, 40.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "Chorus Feedback",
							"parameter_modmode" : 0,
							"parameter_shortname" : "Feedback",
							"parameter_type" : 1,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "live.dial[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "chofb_label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 62.0, 181.0, 150.0, 20.0 ],
					"text" : "Chorus Feedback"
				}

			}
, 			{
				"box" : 				{
					"id" : "chofb_out",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 180.0, 80.0, 22.0 ],
					"text" : "ctlout 67"
				}

			}
, 			{
				"box" : 				{
					"id" : "chotime",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 20.0, 220.0, 40.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.0, 220.0, 40.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "Chorus Time",
							"parameter_modmode" : 0,
							"parameter_shortname" : "Time",
							"parameter_type" : 1,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "live.dial[4]"
				}

			}
, 			{
				"box" : 				{
					"id" : "chotime_label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 62.0, 234.0, 150.0, 20.0 ],
					"text" : "Chorus Time"
				}

			}
, 			{
				"box" : 				{
					"id" : "chotime_out",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 230.0, 80.0, 22.0 ],
					"text" : "ctlout 68"
				}

			}
, 			{
				"box" : 				{
					"id" : "golden_label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 567.0, 21.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 101.0, 26.5, 160.0, 20.0 ],
					"text" : "Golden Ratio"
				}

			}
, 			{
				"box" : 				{
					"id" : "golden_out",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 20.0, 80.0, 22.0 ],
					"text" : "ctlout 69"
				}

			}
, 			{
				"box" : 				{
					"id" : "phrev_label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 567.0, 50.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 101.0, 51.5, 180.0, 20.0 ],
					"text" : "Phase Reverse"
				}

			}
, 			{
				"box" : 				{
					"id" : "phrev_out",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 50.0, 80.0, 22.0 ],
					"text" : "ctlout 70"
				}

			}
, 			{
				"box" : 				{
					"id" : "lfocurve_label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 567.0, 81.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 186.0, 84.0, 160.0, 20.0 ],
					"text" : "LFO Curve"
				}

			}
, 			{
				"box" : 				{
					"id" : "lfocurve_out",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 80.0, 80.0, 22.0 ],
					"text" : "ctlout 71"
				}

			}
, 			{
				"box" : 				{
					"id" : "lfophase_label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 572.0, 111.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 84.0, 132.0, 114.0, 20.0 ],
					"text" : "LFO Phase"
				}

			}
, 			{
				"box" : 				{
					"id" : "lfophase_out",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 110.0, 80.0, 22.0 ],
					"text" : "ctlout 72"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "choamt_out", 0 ],
					"source" : [ "choamt", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "chodepth_out", 0 ],
					"source" : [ "chodepth", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "chofb_out", 0 ],
					"source" : [ "chofb", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "chospeed_out", 0 ],
					"source" : [ "chospeed", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "chotime_out", 0 ],
					"source" : [ "chotime", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "golden_out", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "lfophase_out", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "phrev_out", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "lfocurve_out", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"originid" : "pat-158",
		"parameters" : 		{
			"choamt" : [ "Chorus Amount", "Amount", 0 ],
			"chodepth" : [ "Chorus Depth", "Depth", 0 ],
			"chofb" : [ "Chorus Feedback", "Feedback", 0 ],
			"chospeed" : [ "Chorus Speed", "Speed", 0 ],
			"chotime" : [ "Chorus Time", "Time", 0 ],
			"obj-13" : [ "live.tab[1]", "live.tab[1]", 0 ],
			"obj-16" : [ "live.tab[2]", "live.tab[2]", 0 ],
			"obj-5" : [ "live.toggle[4]", "live.toggle[4]", 0 ],
			"obj-6" : [ "live.toggle[5]", "live.toggle[4]", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
