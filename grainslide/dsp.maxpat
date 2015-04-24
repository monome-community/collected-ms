{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 41.0, 69.0, 640.0, 480.0 ],
		"bglocked" : 0,
		"defrect" : [ 41.0, 69.0, 640.0, 480.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 13.0, 9.0, 17.0, 17.0 ],
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 13.0, 57.0, 49.0, 17.0 ],
					"hidden" : 1,
					"fontname" : "Arial",
					"id" : "obj-6",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"patching_rect" : [ 13.0, 34.0, 32.0, 15.0 ],
					"hidden" : 1,
					"fontname" : "Arial",
					"id" : "obj-7",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p dsp",
					"patching_rect" : [ 13.0, 84.0, 35.0, 17.0 ],
					"hidden" : 1,
					"fontname" : "Arial",
					"id" : "obj-8",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 743.0, 129.0, 327.0, 530.0 ],
						"bglocked" : 0,
						"defrect" : [ 743.0, 129.0, 327.0, 530.0 ],
						"openrect" : [ 743.0, 129.0, 327.0, 530.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 80.0, 28.0, 15.0, 15.0 ],
									"hidden" : 1,
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"patching_rect" : [ 116.0, 107.0, 176.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"items" : "Unsupported"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus option 3",
									"patching_rect" : [ 321.0, 107.0, 85.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"patching_rect" : [ 10.0, 107.0, 89.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-4",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"menumode" : 2,
									"types" : [  ],
									"items" : "Playthrough Input"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus optionname 3",
									"patching_rect" : [ -98.0, 106.0, 109.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-5",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"patching_rect" : [ 116.0, 88.0, 176.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"items" : "Internal Speakers"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus option 2",
									"patching_rect" : [ 321.0, 88.0, 85.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-7",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"patching_rect" : [ 10.0, 88.0, 89.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-8",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"menumode" : 2,
									"types" : [  ],
									"items" : "Output Destination"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus optionname 2",
									"patching_rect" : [ -98.0, 87.0, 109.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-9",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "override $1",
									"patching_rect" : [ 441.0, 442.0, 62.0, 15.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-10",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Max Scheduler in Overdrive",
									"patching_rect" : [ 12.0, 310.0, 134.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-11",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Scheduler in Audio Interrupt",
									"patching_rect" : [ 12.0, 328.0, 135.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-12",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window size 100 100 410 615, window exec",
									"patching_rect" : [ 6.0, 499.0, 213.0, 15.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, savewindow 1, window exec",
									"patching_rect" : [ 5.0, 469.0, 239.0, 15.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-14",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"patching_rect" : [ 5.0, 562.0, 59.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-15",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "grow", "close", "zoom", "nofloat", "menu", "minimize", ";", "#Q", "window", "constrain", 50, 50, 32768, 32768, ";", "#Q", "window", "size", 743, 129, 1070, 659, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window exec",
									"patching_rect" : [ 6.0, 484.0, 158.0, 15.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-16",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rdsp driver setup",
									"linecount" : 2,
									"patching_rect" : [ 428.0, 562.0, 82.0, 25.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-17",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"varname" : "__asiopanelbutton__",
									"text" : "Audio Driver Setup",
									"patching_rect" : [ 43.0, 491.0, 102.0, 18.0 ],
									"fontname" : "Arial",
									"id" : "obj-18",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p revert",
									"patching_rect" : [ 394.0, 491.0, 45.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-19",
									"numinlets" : 3,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 40.0, 55.0, 677.0, 349.0 ],
										"bglocked" : 0,
										"defrect" : [ 40.0, 55.0, 677.0, 349.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 121.0, 222.0, 15.0, 15.0 ],
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script send __asiopanelbutton__ frgb 255 255 255",
													"patching_rect" : [ 135.0, 161.0, 239.0, 15.0 ],
													"fontname" : "Arial",
													"id" : "obj-2",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script send __asiopanelbutton__ frgb 0 0 0",
													"patching_rect" : [ 121.0, 143.0, 203.0, 15.0 ],
													"fontname" : "Arial",
													"id" : "obj-3",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"patching_rect" : [ 144.0, 55.0, 40.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-4",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bang",
													"linecount" : 2,
													"patching_rect" : [ 178.0, 186.0, 28.0, 25.0 ],
													"fontname" : "Arial",
													"id" : "obj-5",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1",
													"patching_rect" : [ 144.0, 77.0, 40.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-6",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "shadow 2, brgb 200 200 200",
													"patching_rect" : [ 75.0, 107.0, 140.0, 15.0 ],
													"fontname" : "Arial",
													"id" : "obj-7",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "shadow -2, brgb 140 140 140",
													"patching_rect" : [ 109.0, 125.0, 145.0, 15.0 ],
													"fontname" : "Arial",
													"id" : "obj-8",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 178.0, 222.0, 15.0, 15.0 ],
													"id" : "obj-9",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 144.0, 36.0, 15.0, 15.0 ],
													"id" : "obj-10",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 109.0, 36.0, 15.0, 15.0 ],
													"id" : "obj-11",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 75.0, 36.0, 15.0, 15.0 ],
													"id" : "obj-12",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 75.0, 222.0, 15.0, 15.0 ],
													"id" : "obj-13",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ubutton",
									"patching_rect" : [ 22.0, 488.0, 145.0, 22.0 ],
									"handoff" : "",
									"id" : "obj-20",
									"numinlets" : 1,
									"hilite" : 0,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "", "int" ],
									"dragtrack" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 22.0, 488.0, 145.0, 21.0 ],
									"id" : "obj-21",
									"border" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"shadow" : 2,
									"bgcolor" : [ 0.784314, 0.784314, 0.784314, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"varname" : "__iomappingsbutton__",
									"text" : "I/O Mappings",
									"patching_rect" : [ 198.0, 491.0, 74.0, 18.0 ],
									"fontname" : "Arial",
									"id" : "obj-22",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p revert",
									"patching_rect" : [ 482.0, 491.0, 45.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-23",
									"numinlets" : 3,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 40.0, 55.0, 677.0, 349.0 ],
										"bglocked" : 0,
										"defrect" : [ 40.0, 55.0, 677.0, 349.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 121.0, 222.0, 15.0, 15.0 ],
													"id" : "obj-1",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script send __iomappingsbutton__ frgb 255 255 255",
													"patching_rect" : [ 135.0, 161.0, 245.0, 15.0 ],
													"fontname" : "Arial",
													"id" : "obj-2",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "script send __iomappingsbutton__ frgb 0 0 0",
													"patching_rect" : [ 121.0, 143.0, 211.0, 15.0 ],
													"fontname" : "Arial",
													"id" : "obj-3",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"patching_rect" : [ 144.0, 55.0, 40.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-4",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bang",
													"linecount" : 2,
													"patching_rect" : [ 178.0, 186.0, 28.0, 25.0 ],
													"fontname" : "Arial",
													"id" : "obj-5",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1",
													"patching_rect" : [ 144.0, 77.0, 40.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-6",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "shadow 2, brgb 200 200 200",
													"patching_rect" : [ 75.0, 107.0, 140.0, 15.0 ],
													"fontname" : "Arial",
													"id" : "obj-7",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "shadow -2, brgb 140 140 140",
													"patching_rect" : [ 109.0, 125.0, 145.0, 15.0 ],
													"fontname" : "Arial",
													"id" : "obj-8",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 178.0, 222.0, 15.0, 15.0 ],
													"id" : "obj-9",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 144.0, 36.0, 15.0, 15.0 ],
													"id" : "obj-10",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 109.0, 36.0, 15.0, 15.0 ],
													"id" : "obj-11",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 75.0, 36.0, 15.0, 15.0 ],
													"id" : "obj-12",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 75.0, 222.0, 15.0, 15.0 ],
													"id" : "obj-13",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ubutton",
									"patching_rect" : [ 186.0, 488.0, 99.0, 22.0 ],
									"handoff" : "",
									"id" : "obj-24",
									"numinlets" : 1,
									"hilite" : 0,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "", "int" ],
									"dragtrack" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 4000",
									"patching_rect" : [ 402.0, 162.0, 62.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-25",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Override",
									"patching_rect" : [ 251.0, 461.0, 48.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-26",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"patching_rect" : [ 237.0, 459.0, 61.0, 18.0 ],
									"id" : "obj-27",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 185.0, 460.0, 15.0, 15.0 ],
									"id" : "obj-28",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"ignoreclick" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"patching_rect" : [ 516.0, 535.0, 45.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-29",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "open",
									"patching_rect" : [ 516.0, 517.0, 29.0, 15.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-30",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p iomap",
									"patching_rect" : [ 516.0, 568.0, 42.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-31",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 336.0, 61.0, 372.0, 377.0 ],
										"bglocked" : 0,
										"defrect" : [ 336.0, 61.0, 372.0, 377.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 0,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window flags grow, window exec",
													"patching_rect" : [ 126.0, 313.0, 158.0, 15.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-1",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window flags nogrow, savewindow 1, window exec",
													"patching_rect" : [ 95.0, 287.0, 239.0, 15.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-2",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 41.0, 197.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-3",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 9
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 41.0, 179.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-4",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 8
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 41.0, 161.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-5",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 7
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 41.0, 143.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-6",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 6
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 41.0, 125.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-7",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 5
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 41.0, 107.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-8",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 41.0, 89.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-9",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 41.0, 215.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-10",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 10
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 41.0, 233.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-11",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 11
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 41.0, 251.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-12",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 12
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 41.0, 269.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-13",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 13
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 41.0, 287.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-14",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 14
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 41.0, 305.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-15",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 15
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 41.0, 323.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-16",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 16
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 41.0, 71.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-17",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 41.0, 53.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-18",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p igrouplabel",
													"patching_rect" : [ 0.0, 486.0, 209.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-19",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 16,
													"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 90.0, 259.0, 899.0, 510.0 ],
														"bglocked" : 1,
														"defrect" : [ 90.0, 259.0, 899.0, 510.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack",
																	"patching_rect" : [ 92.0, 181.0, 28.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-1",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1",
																	"patching_rect" : [ 92.0, 137.0, 27.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1",
																	"patching_rect" : [ 62.0, 59.0, 27.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"patching_rect" : [ 121.0, 181.0, 35.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-4",
																	"triscale" : 0.9,
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"fontsize" : 9.0,
																	"numoutlets" : 2,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"outlettype" : [ "int", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"patching_rect" : [ 139.0, 159.0, 35.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-5",
																	"triscale" : 0.9,
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"fontsize" : 9.0,
																	"numoutlets" : 2,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"outlettype" : [ "int", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "* 16",
																	"patching_rect" : [ 62.0, 38.0, 30.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-6",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "Uzi 16",
																	"patching_rect" : [ 62.0, 115.0, 40.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-7",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "bang", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+",
																	"patching_rect" : [ 110.0, 158.0, 27.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-8",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"patching_rect" : [ 62.0, 88.0, 75.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"patching_rect" : [ 54.0, 172.0, 35.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-10",
																	"triscale" : 0.9,
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"fontsize" : 9.0,
																	"numoutlets" : 2,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"outlettype" : [ "int", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 662.0, 296.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-11",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 624.0, 271.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-12",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 586.0, 296.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-13",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 548.0, 271.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 510.0, 296.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-15",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 472.0, 271.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-16",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 434.0, 296.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 396.0, 271.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 358.0, 296.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-19",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 320.0, 271.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-20",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 282.0, 296.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-21",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 244.0, 271.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-22",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 206.0, 296.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-23",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 168.0, 271.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-24",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 130.0, 296.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-25",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 92.0, 271.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-26",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "spray 16",
																	"patching_rect" : [ 92.0, 215.0, 587.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-27",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 16,
																	"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 62.0, 18.0, 15.0, 15.0 ],
																	"id" : "obj-28",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"comment" : "1-16"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 662.0, 345.0, 15.0, 15.0 ],
																	"id" : "obj-29",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "16"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 624.0, 345.0, 15.0, 15.0 ],
																	"id" : "obj-30",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "15"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 586.0, 345.0, 15.0, 15.0 ],
																	"id" : "obj-31",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "14"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 548.0, 345.0, 15.0, 15.0 ],
																	"id" : "obj-32",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "13"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 510.0, 345.0, 15.0, 15.0 ],
																	"id" : "obj-33",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "12"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 472.0, 345.0, 15.0, 15.0 ],
																	"id" : "obj-34",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "11"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 434.0, 345.0, 15.0, 15.0 ],
																	"id" : "obj-35",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "10"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 396.0, 345.0, 15.0, 15.0 ],
																	"id" : "obj-36",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "9"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 358.0, 345.0, 15.0, 15.0 ],
																	"id" : "obj-37",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "8"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 320.0, 345.0, 15.0, 15.0 ],
																	"id" : "obj-38",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "7"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 282.0, 345.0, 15.0, 15.0 ],
																	"id" : "obj-39",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "6"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 244.0, 345.0, 15.0, 15.0 ],
																	"id" : "obj-40",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "5"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 206.0, 345.0, 15.0, 15.0 ],
																	"id" : "obj-41",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "4"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 168.0, 345.0, 15.0, 15.0 ],
																	"id" : "obj-42",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "3"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 130.0, 345.0, 15.0, 15.0 ],
																	"id" : "obj-43",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "2"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 92.0, 345.0, 15.0, 15.0 ],
																	"id" : "obj-44",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "1"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-8", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-1", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 2 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-28", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 1 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 2 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 3 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 4 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 5 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 6 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 7 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 8 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 9 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 10 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 11 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 12 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 13 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 14 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 15 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-44", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-43", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-42", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-41", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-40", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Arial",
														"default_fontsize" : 12.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p ogrouplabel",
													"patching_rect" : [ 204.0, 484.0, 209.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-20",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 16,
													"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 62.0, 302.0, 892.0, 472.0 ],
														"bglocked" : 1,
														"defrect" : [ 62.0, 302.0, 892.0, 472.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack",
																	"patching_rect" : [ 87.0, 203.0, 28.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-1",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1",
																	"patching_rect" : [ 87.0, 159.0, 27.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1",
																	"patching_rect" : [ 57.0, 81.0, 27.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"patching_rect" : [ 116.0, 203.0, 35.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-4",
																	"triscale" : 0.9,
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"fontsize" : 9.0,
																	"numoutlets" : 2,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"outlettype" : [ "int", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"patching_rect" : [ 134.0, 181.0, 35.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-5",
																	"triscale" : 0.9,
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"fontsize" : 9.0,
																	"numoutlets" : 2,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"outlettype" : [ "int", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "* 16",
																	"patching_rect" : [ 57.0, 60.0, 30.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-6",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "Uzi 16",
																	"patching_rect" : [ 57.0, 137.0, 40.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-7",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "bang", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+",
																	"patching_rect" : [ 105.0, 180.0, 27.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-8",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"patching_rect" : [ 57.0, 110.0, 75.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"patching_rect" : [ 49.0, 194.0, 35.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-10",
																	"triscale" : 0.9,
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"fontsize" : 9.0,
																	"numoutlets" : 2,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"outlettype" : [ "int", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 657.0, 282.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-11",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 619.0, 260.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-12",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 581.0, 282.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-13",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 543.0, 260.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 505.0, 282.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-15",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 467.0, 260.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-16",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 429.0, 282.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 391.0, 260.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 353.0, 282.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-19",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 315.0, 260.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-20",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 277.0, 282.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-21",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 239.0, 260.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-22",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 201.0, 282.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-23",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 163.0, 260.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-24",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 125.0, 282.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-25",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "setitem 0 $1",
																	"patching_rect" : [ 87.0, 260.0, 65.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-26",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "spray 16",
																	"patching_rect" : [ 87.0, 231.0, 585.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-27",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 16,
																	"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 57.0, 31.0, 15.0, 15.0 ],
																	"id" : "obj-28",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"comment" : "1-16"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 657.0, 315.0, 15.0, 15.0 ],
																	"id" : "obj-29",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "16"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 619.0, 315.0, 15.0, 15.0 ],
																	"id" : "obj-30",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "15"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 581.0, 315.0, 15.0, 15.0 ],
																	"id" : "obj-31",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "14"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 543.0, 315.0, 15.0, 15.0 ],
																	"id" : "obj-32",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "13"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 505.0, 315.0, 15.0, 15.0 ],
																	"id" : "obj-33",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "12"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 467.0, 315.0, 15.0, 15.0 ],
																	"id" : "obj-34",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "11"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 429.0, 315.0, 15.0, 15.0 ],
																	"id" : "obj-35",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "10"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 391.0, 315.0, 15.0, 15.0 ],
																	"id" : "obj-36",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "9"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 353.0, 315.0, 15.0, 15.0 ],
																	"id" : "obj-37",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "8"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 315.0, 315.0, 15.0, 15.0 ],
																	"id" : "obj-38",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "7"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 277.0, 315.0, 15.0, 15.0 ],
																	"id" : "obj-39",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "6"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 239.0, 315.0, 15.0, 15.0 ],
																	"id" : "obj-40",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "5"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 201.0, 315.0, 15.0, 15.0 ],
																	"id" : "obj-41",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "4"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 163.0, 315.0, 15.0, 15.0 ],
																	"id" : "obj-42",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "3"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 125.0, 315.0, 15.0, 15.0 ],
																	"id" : "obj-43",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "2"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 87.0, 315.0, 15.0, 15.0 ],
																	"id" : "obj-44",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "1"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-8", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-1", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 2 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-28", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 1 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 2 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 3 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 4 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 5 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 6 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 7 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 8 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 9 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 10 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 11 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 12 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 13 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 14 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 15 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-44", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-43", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-42", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-41", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-40", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Arial",
														"default_fontsize" : 12.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 225.0, 197.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-21",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 9
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 225.0, 179.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-22",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 8
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 225.0, 161.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-23",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 7
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 225.0, 143.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-24",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 6
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 225.0, 125.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-25",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 5
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 225.0, 107.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-26",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 4
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 225.0, 89.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-27",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 225.0, 215.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-28",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 10
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 225.0, 233.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-29",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 11
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 225.0, 251.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-30",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 12
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 225.0, 269.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-31",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 13
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 225.0, 287.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-32",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 14
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 225.0, 305.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-33",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 15
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 225.0, 323.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-34",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 16
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 225.0, 71.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-35",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p igroup",
													"patching_rect" : [ -14.0, 520.0, 209.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-36",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 16,
													"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 91.0, 406.0, 730.0, 338.0 ],
														"bglocked" : 1,
														"defrect" : [ 91.0, 406.0, 730.0, 338.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack",
																	"patching_rect" : [ 65.0, 183.0, 28.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-1",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1",
																	"patching_rect" : [ 65.0, 139.0, 27.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1",
																	"patching_rect" : [ 35.0, 61.0, 27.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"patching_rect" : [ 94.0, 183.0, 35.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-4",
																	"triscale" : 0.9,
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"fontsize" : 9.0,
																	"numoutlets" : 2,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"outlettype" : [ "int", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"patching_rect" : [ 112.0, 161.0, 35.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-5",
																	"triscale" : 0.9,
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"fontsize" : 9.0,
																	"numoutlets" : 2,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"outlettype" : [ "int", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "* 16",
																	"patching_rect" : [ 35.0, 40.0, 30.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-6",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 635.0, 237.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-7",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 597.0, 237.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-8",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 559.0, 237.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-9",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 521.0, 237.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-10",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 483.0, 237.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-11",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 445.0, 237.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-12",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 407.0, 237.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-13",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 369.0, 237.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 331.0, 237.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-15",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 293.0, 237.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-16",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 255.0, 237.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 217.0, 237.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 179.0, 237.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-19",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 141.0, 237.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-20",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 103.0, 237.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-21",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 65.0, 237.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-22",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "Uzi 16",
																	"patching_rect" : [ 35.0, 117.0, 40.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-23",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "bang", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+",
																	"patching_rect" : [ 83.0, 160.0, 27.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-24",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"patching_rect" : [ 35.0, 90.0, 75.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-25",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "spray 16",
																	"patching_rect" : [ 65.0, 208.0, 591.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-26",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 16,
																	"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 35.0, 19.0, 15.0, 15.0 ],
																	"id" : "obj-27",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"comment" : "1-16"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 635.0, 265.0, 15.0, 15.0 ],
																	"id" : "obj-28",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "16"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 597.0, 265.0, 15.0, 15.0 ],
																	"id" : "obj-29",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "15"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 559.0, 265.0, 15.0, 15.0 ],
																	"id" : "obj-30",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "14"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 521.0, 265.0, 15.0, 15.0 ],
																	"id" : "obj-31",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "13"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 483.0, 265.0, 15.0, 15.0 ],
																	"id" : "obj-32",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "12"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 445.0, 265.0, 15.0, 15.0 ],
																	"id" : "obj-33",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "11"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 407.0, 265.0, 15.0, 15.0 ],
																	"id" : "obj-34",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "10"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 369.0, 265.0, 15.0, 15.0 ],
																	"id" : "obj-35",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "9"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 331.0, 265.0, 15.0, 15.0 ],
																	"id" : "obj-36",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "8"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 293.0, 265.0, 15.0, 15.0 ],
																	"id" : "obj-37",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "7"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 255.0, 265.0, 15.0, 15.0 ],
																	"id" : "obj-38",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "6"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 217.0, 265.0, 15.0, 15.0 ],
																	"id" : "obj-39",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "5"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 179.0, 265.0, 15.0, 15.0 ],
																	"id" : "obj-40",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "4"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 141.0, 265.0, 15.0, 15.0 ],
																	"id" : "obj-41",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "3"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 103.0, 265.0, 15.0, 15.0 ],
																	"id" : "obj-42",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "2"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 65.0, 265.0, 15.0, 15.0 ],
																	"id" : "obj-43",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "1"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"patching_rect" : [ 27.0, 174.0, 35.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-44",
																	"triscale" : 0.9,
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"fontsize" : 9.0,
																	"numoutlets" : 2,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"outlettype" : [ "int", "bang" ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-28", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 13 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 14 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 15 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 1 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 2 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 3 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 4 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 5 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 6 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 7 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 8 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 9 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 10 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 11 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 12 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 1 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 1 ],
																	"destination" : [ "obj-24", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-1", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 2 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-43", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-42", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-41", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-44", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-40", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Arial",
														"default_fontsize" : 12.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 254.0, 23.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-37",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "1-16", ",", "17-32", ",", "33-48", ",", "49-64", ",", "65-80", ",", "81-96", ",", "97-112", ",", "113-128", ",", "129-144", ",", "145-160", ",", "161-176", ",", "177-192", ",", "193-208", ",", "209-224", ",", "225-240", ",", "241-256", ",", "257-272", ",", "273-288", ",", "289-304", ",", "305-320", ",", "321-336", ",", "337-352", ",", "353-368", ",", "369-384", ",", "385-400", ",", "401-416", ",", "417-432", ",", "433-448", ",", "449-464", ",", "465-480", ",", "481-496", ",", "497-512" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Chan Group",
													"linecount" : 2,
													"patching_rect" : [ 193.0, 25.0, 56.0, 27.0 ],
													"fontname" : "Arial",
													"id" : "obj-38",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 70.0, 23.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-39",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "1-16", ",", "17-32", ",", "33-48", ",", "49-64", ",", "65-80", ",", "81-96", ",", "97-112", ",", "113-128", ",", "129-144", ",", "145-160", ",", "161-176", ",", "177-192", ",", "193-208", ",", "209-224", ",", "225-240", ",", "241-256", ",", "257-272", ",", "273-288", ",", "289-304", ",", "305-320", ",", "321-336", ",", "337-352", ",", "353-368", ",", "369-384", ",", "385-400", ",", "401-416", ",", "417-432", ",", "433-448", ",", "449-464", ",", "465-480", ",", "481-496", ",", "497-512" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p ogroup",
													"patching_rect" : [ 528.0, 110.0, 196.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-40",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 16,
													"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 55.0, 322.0, 849.0, 346.0 ],
														"bglocked" : 1,
														"defrect" : [ 55.0, 322.0, 849.0, 346.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack",
																	"patching_rect" : [ 77.0, 183.0, 28.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-1",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 1",
																	"patching_rect" : [ 77.0, 139.0, 27.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-2",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1",
																	"patching_rect" : [ 47.0, 61.0, 27.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-3",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"patching_rect" : [ 106.0, 183.0, 35.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-4",
																	"triscale" : 0.9,
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"fontsize" : 9.0,
																	"numoutlets" : 2,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"outlettype" : [ "int", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"patching_rect" : [ 124.0, 161.0, 35.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-5",
																	"triscale" : 0.9,
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"fontsize" : 9.0,
																	"numoutlets" : 2,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"outlettype" : [ "int", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "* 16",
																	"patching_rect" : [ 47.0, 40.0, 30.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-6",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "Uzi 16",
																	"patching_rect" : [ 47.0, 117.0, 40.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-7",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 3,
																	"outlettype" : [ "bang", "bang", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+",
																	"patching_rect" : [ 95.0, 160.0, 27.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-8",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"patching_rect" : [ 47.0, 90.0, 75.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-9",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"patching_rect" : [ 39.0, 174.0, 35.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-10",
																	"triscale" : 0.9,
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"fontsize" : 9.0,
																	"numoutlets" : 2,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"outlettype" : [ "int", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 647.0, 236.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-11",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 609.0, 236.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-12",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 571.0, 236.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-13",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 533.0, 236.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 495.0, 236.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-15",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 457.0, 236.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-16",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 419.0, 236.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 381.0, 236.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-18",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 343.0, 236.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-19",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 305.0, 236.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-20",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 267.0, 236.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-21",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 229.0, 236.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-22",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 191.0, 236.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-23",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 153.0, 236.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-24",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 115.0, 236.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-25",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "set $1",
																	"patching_rect" : [ 77.0, 236.0, 35.0, 15.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-26",
																	"numinlets" : 2,
																	"fontsize" : 9.0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "spray 16",
																	"patching_rect" : [ 77.0, 209.0, 587.0, 17.0 ],
																	"fontname" : "Arial",
																	"id" : "obj-27",
																	"numinlets" : 1,
																	"fontsize" : 9.0,
																	"numoutlets" : 16,
																	"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 47.0, 20.0, 15.0, 15.0 ],
																	"id" : "obj-28",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"comment" : "1-16"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 647.0, 259.0, 15.0, 15.0 ],
																	"id" : "obj-29",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "16"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 609.0, 259.0, 15.0, 15.0 ],
																	"id" : "obj-30",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "15"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 571.0, 259.0, 15.0, 15.0 ],
																	"id" : "obj-31",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "14"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 533.0, 259.0, 15.0, 15.0 ],
																	"id" : "obj-32",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "13"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 495.0, 259.0, 15.0, 15.0 ],
																	"id" : "obj-33",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "12"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 457.0, 259.0, 15.0, 15.0 ],
																	"id" : "obj-34",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "11"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 419.0, 259.0, 15.0, 15.0 ],
																	"id" : "obj-35",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "10"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 381.0, 259.0, 15.0, 15.0 ],
																	"id" : "obj-36",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "9"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 343.0, 259.0, 15.0, 15.0 ],
																	"id" : "obj-37",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "8"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 305.0, 259.0, 15.0, 15.0 ],
																	"id" : "obj-38",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "7"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 267.0, 259.0, 15.0, 15.0 ],
																	"id" : "obj-39",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "6"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 229.0, 259.0, 15.0, 15.0 ],
																	"id" : "obj-40",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "5"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 191.0, 259.0, 15.0, 15.0 ],
																	"id" : "obj-41",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "4"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 153.0, 259.0, 15.0, 15.0 ],
																	"id" : "obj-42",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "3"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 115.0, 259.0, 15.0, 15.0 ],
																	"id" : "obj-43",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "2"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 77.0, 259.0, 15.0, 15.0 ],
																	"id" : "obj-44",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : "1"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-8", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 1 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-1", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 2 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-28", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 1 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 2 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 3 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 4 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 5 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 6 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 7 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 8 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 9 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 10 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 11 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 12 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 13 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 14 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 15 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-44", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-43", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-42", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-41", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-40", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-38", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Arial",
														"default_fontsize" : 12.0,
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 225.0, 53.0, 28.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-41",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"menumode" : 2,
													"types" : [  ],
													"items" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 537.0, 21.0, 15.0, 15.0 ],
													"hidden" : 1,
													"id" : "obj-42",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "thispatcher",
													"patching_rect" : [ 379.0, 446.0, 59.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-43",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"save" : [ "#N", "thispatcher", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus output 16",
													"patching_rect" : [ 409.0, 340.0, 92.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-44",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus output 15",
													"patching_rect" : [ 409.0, 320.0, 92.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-45",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus output 14",
													"patching_rect" : [ 409.0, 301.0, 92.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-46",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus output 13",
													"patching_rect" : [ 409.0, 282.0, 92.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-47",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus output 12",
													"patching_rect" : [ 409.0, 263.0, 92.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-48",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus output 11",
													"patching_rect" : [ 409.0, 244.0, 92.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-49",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus output 10",
													"patching_rect" : [ 409.0, 225.0, 92.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-50",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus output 9",
													"patching_rect" : [ 409.0, 206.0, 85.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-51",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus output 8",
													"patching_rect" : [ 409.0, 187.0, 85.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-52",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus output 7",
													"patching_rect" : [ 409.0, 168.0, 85.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-53",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus output 6",
													"patching_rect" : [ 409.0, 149.0, 85.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-54",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus output 5",
													"patching_rect" : [ 409.0, 130.0, 85.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-55",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus output 4",
													"patching_rect" : [ 409.0, 111.0, 85.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-56",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus output 3",
													"patching_rect" : [ 409.0, 92.0, 85.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-57",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus output 2",
													"patching_rect" : [ 409.0, 73.0, 85.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-58",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus output 1",
													"patching_rect" : [ 409.0, 54.0, 85.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-59",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus input 16",
													"patching_rect" : [ -86.0, 351.0, 85.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-60",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus input 15",
													"patching_rect" : [ -108.0, 331.0, 85.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-61",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus input 14",
													"patching_rect" : [ -108.0, 312.0, 85.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-62",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus input 13",
													"patching_rect" : [ -108.0, 293.0, 85.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-63",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus input 12",
													"patching_rect" : [ -108.0, 274.0, 85.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-64",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus input 11",
													"patching_rect" : [ -108.0, 255.0, 85.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-65",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus input 10",
													"patching_rect" : [ -108.0, 236.0, 85.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-66",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus input 9",
													"patching_rect" : [ -108.0, 217.0, 80.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-67",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus input 8",
													"patching_rect" : [ -108.0, 198.0, 80.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-68",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus input 7",
													"patching_rect" : [ -108.0, 179.0, 80.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-69",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus input 6",
													"patching_rect" : [ -108.0, 160.0, 80.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-70",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus input 5",
													"patching_rect" : [ -108.0, 141.0, 80.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-71",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus input 4",
													"patching_rect" : [ -108.0, 124.0, 80.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-72",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus input 3",
													"patching_rect" : [ -108.0, 105.0, 80.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-73",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus input 2",
													"patching_rect" : [ -108.0, 87.0, 80.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-74",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "adstatus input 1",
													"patching_rect" : [ -108.0, 69.0, 80.0, 17.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-75",
													"numinlets" : 2,
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"outlettype" : [ "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Output Mapping",
													"patching_rect" : [ 238.0, 8.0, 77.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-76",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 254.0, 323.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-77",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 254.0, 305.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-78",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 254.0, 287.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-79",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 254.0, 269.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-80",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 254.0, 251.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-81",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 254.0, 233.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-82",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 254.0, 215.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-83",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 254.0, 197.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-84",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 254.0, 179.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-85",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 254.0, 161.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-86",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 254.0, 143.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-87",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 254.0, 125.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-88",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 254.0, 107.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-89",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 254.0, 89.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-90",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 254.0, 71.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-91",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 254.0, 53.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-92",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 70.0, 323.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-93",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 70.0, 305.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-94",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 70.0, 287.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-95",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 70.0, 269.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-96",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 70.0, 251.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-97",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 70.0, 233.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-98",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 70.0, 215.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-99",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 70.0, 197.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-100",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 70.0, 179.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-101",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 70.0, 161.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-102",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 70.0, 143.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-103",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 70.0, 125.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-104",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 70.0, 107.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-105",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 70.0, 89.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-106",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 70.0, 71.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-107",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"patching_rect" : [ 70.0, 53.0, 100.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-108",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"outlettype" : [ "int", "", "" ],
													"types" : [  ],
													"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Input Mapping",
													"patching_rect" : [ 56.0, 7.0, 77.0, 17.0 ],
													"fontname" : "Arial",
													"id" : "obj-109",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Chan Group",
													"linecount" : 2,
													"patching_rect" : [ 9.0, 25.0, 56.0, 27.0 ],
													"fontname" : "Arial",
													"id" : "obj-110",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "dummy inlet for pcontrol",
													"linecount" : 2,
													"patching_rect" : [ 554.0, 16.0, 100.0, 27.0 ],
													"hidden" : 1,
													"fontname" : "Arial",
													"id" : "obj-111",
													"numinlets" : 1,
													"fontsize" : 9.0,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "panel",
													"patching_rect" : [ 188.0, 4.0, 180.0, 40.0 ],
													"id" : "obj-112",
													"rounded" : 0,
													"numinlets" : 1,
													"bordercolor" : [ 0.568627, 0.568627, 0.568627, 1.0 ],
													"numoutlets" : 0,
													"bgcolor" : [ 0.745098, 0.705882, 0.784314, 1.0 ],
													"background" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "panel",
													"patching_rect" : [ 4.0, 4.0, 180.0, 40.0 ],
													"id" : "obj-113",
													"rounded" : 0,
													"numinlets" : 1,
													"bordercolor" : [ 0.568627, 0.568627, 0.568627, 1.0 ],
													"numoutlets" : 0,
													"bgcolor" : [ 0.745098, 0.705882, 0.784314, 1.0 ],
													"background" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "panel",
													"patching_rect" : [ 188.0, 48.0, 60.0, 300.0 ],
													"id" : "obj-114",
													"rounded" : 0,
													"numinlets" : 1,
													"bordercolor" : [ 0.568627, 0.568627, 0.568627, 1.0 ],
													"numoutlets" : 0,
													"bgcolor" : [ 0.745098, 0.705882, 0.784314, 1.0 ],
													"background" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "panel",
													"patching_rect" : [ 4.0, 48.0, 60.0, 300.0 ],
													"id" : "obj-115",
													"rounded" : 0,
													"numinlets" : 1,
													"bordercolor" : [ 0.568627, 0.568627, 0.568627, 1.0 ],
													"numoutlets" : 0,
													"bgcolor" : [ 0.745098, 0.705882, 0.784314, 1.0 ],
													"background" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "panel",
													"patching_rect" : [ 188.0, 48.0, 180.0, 300.0 ],
													"id" : "obj-116",
													"rounded" : 0,
													"numinlets" : 1,
													"bordercolor" : [ 0.568627, 0.568627, 0.568627, 1.0 ],
													"numoutlets" : 0,
													"bgcolor" : [ 0.862745, 0.823529, 0.941176, 1.0 ],
													"background" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "panel",
													"patching_rect" : [ 4.0, 48.0, 180.0, 300.0 ],
													"id" : "obj-117",
													"rounded" : 0,
													"numinlets" : 1,
													"bordercolor" : [ 0.568627, 0.568627, 0.568627, 1.0 ],
													"numoutlets" : 0,
													"bgcolor" : [ 0.862745, 0.823529, 0.941176, 1.0 ],
													"background" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-99", 0 ],
													"destination" : [ "obj-66", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-98", 0 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-97", 0 ],
													"destination" : [ "obj-64", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-96", 0 ],
													"destination" : [ "obj-63", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-95", 0 ],
													"destination" : [ "obj-62", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-94", 0 ],
													"destination" : [ "obj-61", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-93", 0 ],
													"destination" : [ "obj-60", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-92", 0 ],
													"destination" : [ "obj-59", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-91", 0 ],
													"destination" : [ "obj-58", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-90", 0 ],
													"destination" : [ "obj-57", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-89", 0 ],
													"destination" : [ "obj-56", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-88", 0 ],
													"destination" : [ "obj-55", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-87", 0 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-86", 0 ],
													"destination" : [ "obj-53", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-85", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-84", 0 ],
													"destination" : [ "obj-51", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-83", 0 ],
													"destination" : [ "obj-50", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-82", 0 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-81", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-80", 0 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-79", 0 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-78", 0 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-77", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-75", 0 ],
													"destination" : [ "obj-108", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-74", 0 ],
													"destination" : [ "obj-107", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-73", 0 ],
													"destination" : [ "obj-106", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-72", 0 ],
													"destination" : [ "obj-105", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-71", 0 ],
													"destination" : [ "obj-104", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-70", 0 ],
													"destination" : [ "obj-103", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-69", 0 ],
													"destination" : [ "obj-102", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-68", 0 ],
													"destination" : [ "obj-101", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-67", 0 ],
													"destination" : [ "obj-100", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-66", 0 ],
													"destination" : [ "obj-99", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-65", 0 ],
													"destination" : [ "obj-98", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-64", 0 ],
													"destination" : [ "obj-97", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-63", 0 ],
													"destination" : [ "obj-96", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-95", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-61", 0 ],
													"destination" : [ "obj-94", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-60", 0 ],
													"destination" : [ "obj-93", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-59", 0 ],
													"destination" : [ "obj-92", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 0 ],
													"destination" : [ "obj-91", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-57", 0 ],
													"destination" : [ "obj-90", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-56", 0 ],
													"destination" : [ "obj-89", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-88", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-54", 0 ],
													"destination" : [ "obj-87", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-86", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-85", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 0 ],
													"destination" : [ "obj-84", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-83", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 0 ],
													"destination" : [ "obj-82", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-81", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-80", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 0 ],
													"destination" : [ "obj-79", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-78", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-77", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-59", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 1 ],
													"destination" : [ "obj-58", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 2 ],
													"destination" : [ "obj-57", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 3 ],
													"destination" : [ "obj-56", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 4 ],
													"destination" : [ "obj-55", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 5 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 6 ],
													"destination" : [ "obj-53", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 7 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 8 ],
													"destination" : [ "obj-51", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 9 ],
													"destination" : [ "obj-50", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 10 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 11 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 12 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 13 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 14 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 15 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 1,
													"midpoints" : [ 79.5, 51.0, -4.5, 450.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 1,
													"midpoints" : [ 79.5, 50.0, 221.0, 50.0, 221.0, 460.0, 9.5, 460.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 1,
													"midpoints" : [ 263.5, 50.0, 537.5, 50.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 1,
													"midpoints" : [ 263.5, 50.0, 209.0, 50.0, 209.0, 169.0, 213.5, 169.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-75", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 1 ],
													"destination" : [ "obj-74", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 2 ],
													"destination" : [ "obj-73", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 3 ],
													"destination" : [ "obj-72", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 4 ],
													"destination" : [ "obj-71", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 5 ],
													"destination" : [ "obj-70", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 6 ],
													"destination" : [ "obj-69", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 7 ],
													"destination" : [ "obj-68", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 8 ],
													"destination" : [ "obj-67", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 9 ],
													"destination" : [ "obj-66", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 10 ],
													"destination" : [ "obj-65", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 11 ],
													"destination" : [ "obj-64", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 12 ],
													"destination" : [ "obj-63", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 13 ],
													"destination" : [ "obj-62", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 14 ],
													"destination" : [ "obj-61", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 15 ],
													"destination" : [ "obj-60", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 1 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 15 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 14 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 13 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 12 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 11 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 10 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 9 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 2 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 3 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 4 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 5 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 6 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 7 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 8 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 2 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 3 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 4 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 5 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 6 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 7 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 8 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 1 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 15 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 14 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 13 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 12 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 11 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 10 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 9 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-108", 0 ],
													"destination" : [ "obj-75", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-107", 0 ],
													"destination" : [ "obj-74", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-106", 0 ],
													"destination" : [ "obj-73", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-105", 0 ],
													"destination" : [ "obj-72", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-104", 0 ],
													"destination" : [ "obj-71", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-103", 0 ],
													"destination" : [ "obj-70", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-102", 0 ],
													"destination" : [ "obj-69", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-101", 0 ],
													"destination" : [ "obj-68", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-100", 0 ],
													"destination" : [ "obj-67", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Override",
									"patching_rect" : [ 251.0, 308.0, 48.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-32",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"patching_rect" : [ 237.0, 306.0, 61.0, 18.0 ],
									"id" : "obj-33",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "override $1",
									"patching_rect" : [ 441.0, 291.0, 62.0, 15.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-34",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"patching_rect" : [ 172.0, 307.0, 49.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-35",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"items" : [ "Off", ",", "On" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus overdrive",
									"patching_rect" : [ 321.0, 307.0, 94.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-36",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "CPU Limit",
									"patching_rect" : [ 12.0, 461.0, 52.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-37",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 116.0, 460.0, 48.0, 17.0 ],
									"fontname" : "Arial",
									"triangle" : 0,
									"id" : "obj-38",
									"triscale" : 0.9,
									"numinlets" : 1,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"minimum" : 0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"mouseup" : 1,
									"outlettype" : [ "int", "bang" ],
									"maximum" : 100
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Override",
									"patching_rect" : [ 251.0, 442.0, 48.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-39",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"patching_rect" : [ 237.0, 440.0, 61.0, 18.0 ],
									"id" : "obj-40",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "override $1",
									"patching_rect" : [ 441.0, 423.0, 62.0, 15.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-41",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"patching_rect" : [ 116.0, 440.0, 51.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-42",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"items" : [ "Off", ",", "On" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus optimize",
									"patching_rect" : [ 321.0, 440.0, 85.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-43",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Optimize",
									"patching_rect" : [ 12.0, 442.0, 83.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-44",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Override",
									"patching_rect" : [ 251.0, 414.0, 48.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-45",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"patching_rect" : [ 237.0, 412.0, 61.0, 18.0 ],
									"id" : "obj-46",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Override",
									"patching_rect" : [ 251.0, 395.0, 48.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-47",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"patching_rect" : [ 237.0, 393.0, 61.0, 18.0 ],
									"id" : "obj-48",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "override $1",
									"patching_rect" : [ 441.0, 397.0, 62.0, 15.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-49",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"patching_rect" : [ 116.0, 412.0, 105.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-50",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus output 2",
									"patching_rect" : [ 321.0, 412.0, 85.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-51",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Output Channel 2",
									"patching_rect" : [ 12.0, 414.0, 83.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-52",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "override $1",
									"patching_rect" : [ 441.0, 377.0, 62.0, 15.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-53",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"patching_rect" : [ 116.0, 393.0, 105.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-54",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus output 1",
									"patching_rect" : [ 321.0, 393.0, 85.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-55",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Output Channel 1",
									"patching_rect" : [ 12.0, 395.0, 83.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-56",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Override",
									"patching_rect" : [ 251.0, 376.0, 48.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-57",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"patching_rect" : [ 237.0, 374.0, 61.0, 18.0 ],
									"id" : "obj-58",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Override",
									"patching_rect" : [ 251.0, 357.0, 48.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-59",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"patching_rect" : [ 237.0, 355.0, 61.0, 18.0 ],
									"id" : "obj-60",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "override $1",
									"patching_rect" : [ 441.0, 359.0, 62.0, 15.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-61",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"patching_rect" : [ 116.0, 374.0, 105.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-62",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus input 2",
									"patching_rect" : [ 321.0, 374.0, 80.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-63",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Input Channel 2",
									"patching_rect" : [ 12.0, 376.0, 75.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-64",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "override $1",
									"patching_rect" : [ 441.0, 339.0, 62.0, 15.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-65",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"patching_rect" : [ 116.0, 355.0, 105.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-66",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus input 1",
									"patching_rect" : [ 321.0, 355.0, 80.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-67",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Input Channel 1",
									"patching_rect" : [ 12.0, 357.0, 75.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-68",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Override",
									"patching_rect" : [ 251.0, 327.0, 48.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-69",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"patching_rect" : [ 237.0, 325.0, 61.0, 18.0 ],
									"id" : "obj-70",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "override $1",
									"patching_rect" : [ 441.0, 310.0, 62.0, 15.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-71",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"patching_rect" : [ 386.0, 140.0, 16.0, 15.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-72",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Poll",
									"patching_rect" : [ 209.0, 140.0, 32.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-73",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"patching_rect" : [ 194.0, 138.0, 42.0, 18.0 ],
									"id" : "obj-74",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 1 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Override",
									"patching_rect" : [ 251.0, 280.0, 48.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-75",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"patching_rect" : [ 237.0, 278.0, 61.0, 18.0 ],
									"id" : "obj-76",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Override",
									"patching_rect" : [ 251.0, 261.0, 48.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-77",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"patching_rect" : [ 237.0, 259.0, 61.0, 18.0 ],
									"id" : "obj-78",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Override",
									"patching_rect" : [ 251.0, 204.0, 48.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-79",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"patching_rect" : [ 237.0, 202.0, 61.0, 18.0 ],
									"id" : "obj-80",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"itemtype" : 1,
									"size" : 1,
									"values" : [ 0 ],
									"disabled" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"patching_rect" : [ 116.0, 69.0, 176.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-81",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"items" : "Internal microphone"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus option 1",
									"patching_rect" : [ 321.0, 69.0, 85.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-82",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"patching_rect" : [ 116.0, 50.0, 176.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-83",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"items" : [ "Built-in Microphone", ",", "Built-in Input", ",", "Soundflower (2ch)", ",", "Soundflower (16ch)" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus option 0",
									"patching_rect" : [ 321.0, 50.0, 85.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-84",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"patching_rect" : [ 172.0, 326.0, 49.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-85",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"items" : [ "Off", ",", "On" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus takeover",
									"patching_rect" : [ 321.0, 326.0, 89.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-86",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "override $1",
									"patching_rect" : [ 441.0, 263.0, 62.0, 15.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-87",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"patching_rect" : [ 116.0, 278.0, 72.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-88",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"items" : [ 1, ",", 2, ",", 4, ",", 8, ",", 16, ",", 32, ",", 64, ",", 128, ",", 256, ",", 512, ",", 1024, ",", 2048, ",", 4096 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus sigvs",
									"patching_rect" : [ 321.0, 278.0, 73.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-89",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Signal Vector Size",
									"patching_rect" : [ 12.0, 280.0, 90.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-90",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "override $1",
									"patching_rect" : [ 441.0, 244.0, 62.0, 15.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-91",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"patching_rect" : [ 116.0, 259.0, 72.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-92",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"items" : [ 16, ",", 32, ",", 64, ",", 128, ",", 256, ",", 512, ",", 1024, ",", 2048, ",", 4096 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus iovs",
									"patching_rect" : [ 321.0, 259.0, 68.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-93",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "I/O Vector Size",
									"patching_rect" : [ 12.0, 261.0, 78.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-94",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "override $1",
									"patching_rect" : [ 441.0, 190.0, 62.0, 15.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-95",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "CPU Utilization",
									"patching_rect" : [ 12.0, 140.0, 75.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-96",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"patching_rect" : [ 116.0, 203.0, 72.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-97",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"items" : [ 96000, ",", 48000, ",", 44100 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus sr",
									"patching_rect" : [ 321.0, 203.0, 59.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-98",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Sampling Rate",
									"patching_rect" : [ 12.0, 204.0, 71.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-99",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Input Channels",
									"patching_rect" : [ 12.0, 223.0, 72.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-100",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Output Channels",
									"patching_rect" : [ 12.0, 242.0, 79.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-101",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"patching_rect" : [ 116.0, 31.0, 176.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-102",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"items" : [ "None", ",", "CoreAudio", "Built-in Output", ",", "CoreAudio", "Soundflower (2ch)", ",", "CoreAudio", "Soundflower (16ch)", ",", "NonRealTime", ",", "ad_rewire", ",", "Live" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus driver",
									"patching_rect" : [ 321.0, 31.0, 78.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-103",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Driver",
									"patching_rect" : [ 12.0, 32.0, 58.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-104",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 118.0, 241.0, 48.0, 17.0 ],
									"fontname" : "Arial",
									"triangle" : 0,
									"id" : "obj-105",
									"triscale" : 0.9,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"numinlets" : 1,
									"cantchange" : 1,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus numoutputs",
									"patching_rect" : [ 321.0, 240.0, 100.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-106",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 118.0, 222.0, 48.0, 17.0 ],
									"fontname" : "Arial",
									"triangle" : 0,
									"id" : "obj-107",
									"triscale" : 0.9,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"numinlets" : 1,
									"cantchange" : 1,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus numinputs",
									"patching_rect" : [ 321.0, 222.0, 94.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-108",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus cpulimit",
									"patching_rect" : [ 321.0, 459.0, 85.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-109",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"patching_rect" : [ 10.0, 69.0, 89.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-110",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"menumode" : 2,
									"types" : [  ],
									"items" : "Input Source"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus optionname 1",
									"patching_rect" : [ -98.0, 68.0, 108.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-111",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus optionname 0",
									"patching_rect" : [ -98.0, 48.0, 108.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-112",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"patching_rect" : [ 402.0, 139.0, 46.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-113",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 250",
									"patching_rect" : [ 321.0, 140.0, 55.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-114",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 239.0, 139.0, 15.0, 15.0 ],
									"id" : "obj-115",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"patching_rect" : [ 117.0, 11.0, 49.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-116",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"types" : [  ],
									"items" : [ "Off", ",", "On" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 118.0, 177.0, 48.0, 17.0 ],
									"fontname" : "Arial",
									"triangle" : 0,
									"id" : "obj-117",
									"triscale" : 0.9,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"numinlets" : 1,
									"cantchange" : 1,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 118.0, 158.0, 48.0, 17.0 ],
									"fontname" : "Arial",
									"triangle" : 0,
									"id" : "obj-118",
									"triscale" : 0.9,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"numinlets" : 1,
									"cantchange" : 1,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus info",
									"patching_rect" : [ 183.0, 161.0, 65.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-119",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus switch",
									"patching_rect" : [ 321.0, 12.0, 79.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-120",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 118.0, 138.0, 48.0, 17.0 ],
									"fontname" : "Arial",
									"triangle" : 0,
									"id" : "obj-121",
									"triscale" : 0.9,
									"hbgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"numinlets" : 1,
									"cantchange" : 1,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus cpu",
									"patching_rect" : [ 321.0, 161.0, 64.0, 17.0 ],
									"hidden" : 1,
									"fontname" : "Arial",
									"id" : "obj-122",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Function Calls",
									"patching_rect" : [ 12.0, 159.0, 70.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-123",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Signals Used",
									"patching_rect" : [ 12.0, 178.0, 64.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-124",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"patching_rect" : [ 10.0, 50.0, 89.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-125",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"menumode" : 2,
									"types" : [  ],
									"items" : "Input Device"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Audio",
									"patching_rect" : [ 12.0, 13.0, 58.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-126",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "%",
									"patching_rect" : [ 166.0, 140.0, 17.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-127",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Hz",
									"patching_rect" : [ 190.0, 204.0, 19.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-128",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Update",
									"patching_rect" : [ 255.0, 140.0, 38.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-129",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "%",
									"patching_rect" : [ 165.0, 462.0, 17.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-130",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Over",
									"patching_rect" : [ 201.0, 462.0, 30.0, 17.0 ],
									"fontname" : "Arial",
									"id" : "obj-131",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 186.0, 488.0, 99.0, 21.0 ],
									"id" : "obj-132",
									"border" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"shadow" : 2,
									"bgcolor" : [ 0.784314, 0.784314, 0.784314, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 5.0, 199.0, 100.0, 100.0 ],
									"id" : "obj-133",
									"rounded" : 0,
									"border" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 5.0, 352.0, 100.0, 80.0 ],
									"id" : "obj-134",
									"rounded" : 0,
									"border" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 5.0, 436.0, 100.0, 45.0 ],
									"id" : "obj-135",
									"rounded" : 0,
									"border" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 5.0, 135.0, 100.0, 60.0 ],
									"id" : "obj-136",
									"rounded" : 0,
									"border" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 5.0, 303.0, 150.0, 45.0 ],
									"id" : "obj-137",
									"rounded" : 0,
									"border" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 5.0, 6.0, 100.0, 125.0 ],
									"id" : "obj-138",
									"rounded" : 0,
									"border" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 5.0, 6.0, 300.0, 125.0 ],
									"id" : "obj-139",
									"rounded" : 0,
									"border" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"bgcolor" : [ 0.235294, 0.901961, 0.901961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 5.0, 199.0, 300.0, 100.0 ],
									"id" : "obj-140",
									"rounded" : 0,
									"border" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"bgcolor" : [ 0.235294, 0.901961, 0.901961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 5.0, 352.0, 300.0, 80.0 ],
									"id" : "obj-141",
									"rounded" : 0,
									"border" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"bgcolor" : [ 0.235294, 0.901961, 0.901961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 5.0, 436.0, 300.0, 45.0 ],
									"id" : "obj-142",
									"rounded" : 0,
									"border" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"bgcolor" : [ 0.235294, 0.901961, 0.901961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 5.0, 135.0, 300.0, 60.0 ],
									"id" : "obj-143",
									"rounded" : 0,
									"border" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"bgcolor" : [ 0.235294, 0.901961, 0.901961, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 5.0, 303.0, 300.0, 45.0 ],
									"id" : "obj-144",
									"rounded" : 0,
									"border" : 1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"bgcolor" : [ 0.235294, 0.901961, 0.901961, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-98", 0 ],
									"destination" : [ "obj-97", 0 ],
									"hidden" : 1,
									"midpoints" : [ 330.5, 223.0, 256.0, 223.0, 226.0, 201.0, 125.5, 201.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 0 ],
									"destination" : [ "obj-98", 0 ],
									"hidden" : 1,
									"midpoints" : [ 125.5, 221.0, 230.0, 221.0, 256.0, 200.0, 330.5, 200.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-95", 0 ],
									"destination" : [ "obj-98", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 0 ],
									"destination" : [ "obj-92", 0 ],
									"hidden" : 1,
									"midpoints" : [ 330.5, 280.0, 259.0, 280.0, 229.0, 258.0, 125.5, 258.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-92", 0 ],
									"destination" : [ "obj-93", 0 ],
									"hidden" : 1,
									"midpoints" : [ 125.5, 278.0, 233.0, 278.0, 259.0, 257.0, 330.5, 257.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 0 ],
									"destination" : [ "obj-93", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-88", 0 ],
									"hidden" : 1,
									"midpoints" : [ 330.5, 299.0, 262.0, 299.0, 232.0, 277.0, 125.5, 277.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 0 ],
									"destination" : [ "obj-89", 0 ],
									"hidden" : 1,
									"midpoints" : [ 125.5, 297.0, 236.0, 297.0, 262.0, 276.0, 330.5, 276.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-87", 0 ],
									"destination" : [ "obj-89", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 1,
									"midpoints" : [ 330.5, 346.0, 283.0, 346.0, 253.0, 324.0, 181.5, 324.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-85", 0 ],
									"destination" : [ "obj-86", 0 ],
									"hidden" : 1,
									"midpoints" : [ 181.5, 344.0, 257.0, 344.0, 283.0, 323.0, 330.5, 323.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-83", 0 ],
									"hidden" : 1,
									"midpoints" : [ 330.5, 70.0, 282.0, 70.0, 252.0, 48.0, 125.5, 48.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-83", 0 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 1,
									"midpoints" : [ 125.5, 68.0, 256.0, 68.0, 282.0, 47.0, 330.5, 47.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-82", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 1,
									"midpoints" : [ 330.5, 89.0, 282.0, 89.0, 252.0, 67.0, 125.5, 67.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-82", 0 ],
									"hidden" : 1,
									"midpoints" : [ 125.5, 87.0, 256.0, 87.0, 282.0, 66.0, 330.5, 66.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-95", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-91", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-87", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-114", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-86", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [ 330.5, 108.0, 282.0, 108.0, 252.0, 86.0, 125.5, 86.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [ 330.5, 375.0, 259.0, 375.0, 229.0, 353.0, 125.5, 353.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 1,
									"midpoints" : [ 125.5, 373.0, 233.0, 373.0, 259.0, 352.0, 330.5, 352.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 1,
									"midpoints" : [ 330.5, 394.0, 262.0, 394.0, 232.0, 372.0, 125.5, 372.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 1,
									"midpoints" : [ 125.5, 392.0, 236.0, 392.0, 262.0, 371.0, 330.5, 371.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [ 125.5, 106.0, 256.0, 106.0, 282.0, 85.0, 330.5, 85.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 1,
									"midpoints" : [ 330.5, 413.0, 259.0, 413.0, 229.0, 391.0, 125.5, 391.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 1,
									"midpoints" : [ 125.5, 411.0, 233.0, 411.0, 259.0, 274.0, 330.5, 274.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 1,
									"midpoints" : [ 330.5, 432.0, 262.0, 432.0, 232.0, 410.0, 125.5, 410.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 1,
									"midpoints" : [ 125.5, 430.0, 236.0, 430.0, 262.0, 409.0, 330.5, 409.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 1,
									"midpoints" : [ 330.5, 460.0, 262.0, 460.0, 232.0, 438.0, 125.5, 438.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 1,
									"midpoints" : [ 125.5, 458.0, 236.0, 458.0, 262.0, 437.0, 330.5, 437.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-109", 0 ],
									"hidden" : 1,
									"midpoints" : [ 125.5, 457.0, 330.5, 457.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"midpoints" : [ 330.5, 327.0, 262.0, 327.0, 232.0, 305.0, 181.5, 305.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [ 181.5, 325.0, 236.0, 325.0, 262.0, 304.0, 330.5, 304.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [ 330.5, 127.0, 282.0, 127.0, 252.0, 105.0, 125.5, 105.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-86", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 1,
									"midpoints" : [ 195.5, 518.0, 442.0, 518.0, 474.0, 487.0, 491.5, 487.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 1,
									"midpoints" : [ 222.166672, 516.0, 441.0, 516.0, 473.0, 485.0, 504.5, 485.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 3 ],
									"destination" : [ "obj-23", 2 ],
									"hidden" : 1,
									"midpoints" : [ 275.5, 514.0, 441.0, 514.0, 471.0, 483.0, 517.5, 483.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 2 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-132", 0 ],
									"hidden" : 1,
									"midpoints" : [ 491.5, 513.0, 475.0, 513.0, 440.0, 484.0, 195.5, 484.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
									"midpoints" : [ 31.5, 518.0, 354.0, 518.0, 386.0, 487.0, 403.5, 487.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 1,
									"midpoints" : [ 73.5, 516.0, 353.0, 516.0, 385.0, 485.0, 416.5, 485.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 3 ],
									"destination" : [ "obj-19", 2 ],
									"hidden" : 1,
									"midpoints" : [ 157.5, 514.0, 353.0, 514.0, 383.0, 483.0, 429.5, 483.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [ 125.5, 125.0, 256.0, 125.0, 282.0, 104.0, 330.5, 104.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1,
									"midpoints" : [ 403.5, 513.0, 387.0, 513.0, 352.0, 484.0, 31.5, 484.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 2 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-122", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-120", 0 ],
									"destination" : [ "obj-116", 0 ],
									"hidden" : 1,
									"midpoints" : [ 330.5, 32.0, 250.0, 32.0, 220.0, 10.0, 126.5, 10.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-119", 1 ],
									"destination" : [ "obj-118", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-119", 0 ],
									"destination" : [ "obj-117", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-116", 0 ],
									"destination" : [ "obj-120", 0 ],
									"hidden" : 1,
									"midpoints" : [ 126.5, 30.0, 224.0, 30.0, 250.0, 9.0, 330.5, 9.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-115", 0 ],
									"destination" : [ "obj-122", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-114", 0 ],
									"destination" : [ "obj-122", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-113", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-113", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-125", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-111", 0 ],
									"destination" : [ "obj-110", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-109", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 1,
									"midpoints" : [ 330.5, 480.0, 191.0, 480.0, 163.0, 458.0, 125.5, 458.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-109", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 1,
									"midpoints" : [ 396.5, 487.0, 189.0, 487.0, 189.0, 459.0, 194.0, 459.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-108", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-106", 0 ],
									"destination" : [ "obj-105", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-103", 0 ],
									"destination" : [ "obj-102", 0 ],
									"hidden" : 1,
									"midpoints" : [ 330.5, 51.0, 252.0, 51.0, 222.0, 29.0, 125.5, 29.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-102", 0 ],
									"destination" : [ "obj-103", 0 ],
									"hidden" : 1,
									"midpoints" : [ 125.5, 49.0, 226.0, 49.0, 252.0, 28.0, 330.5, 28.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-109", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial"
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
