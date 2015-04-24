{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 143.0, 129.0, 875.0, 359.0 ],
		"bglocked" : 0,
		"defrect" : [ 143.0, 129.0, 875.0, 359.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 9.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 10.0, 10.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 8",
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"id" : "obj-42",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 507.0, 670.0, 32.5, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $i1 >= 8 then $i1 else -2",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-39",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 503.0, 648.0, 114.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $i1 < 8 then $i1 else -2",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-21",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 383.0, 649.0, 109.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t i i",
					"outlettype" : [ "int", "int" ],
					"fontname" : "Arial",
					"id" : "obj-19",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 391.0, 617.0, 32.5, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr pow(2\\, $i1)",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"presentation_rect" : [ 484.0, 697.0, 0.0, 0.0 ],
					"id" : "obj-18",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 484.0, 697.0, 78.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 0 0",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-6",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 406.0, 727.0, 45.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"id" : "obj-176",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 692.0, 70.0, 21.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-175",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 692.0, 113.0, 43.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-174",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 692.0, 95.0, 32.5, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p helppat",
					"fontname" : "Arial",
					"id" : "obj-170",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 692.0, 136.0, 48.0, 17.0 ],
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 44.0, 72.0, 992.0, 645.0 ],
						"bglocked" : 0,
						"defrect" : [ 44.0, 72.0, 992.0, 645.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "jweb",
									"textcolor" : [  ],
									"url" : "http://docs.monome.org/doku.php?id=app:mate",
									"outlettype" : [ "" ],
									"res_report" : 1,
									"fontname" : "Arial",
									"scrollbars" : 1,
									"presentation_rect" : [ 7.0, 26.0, 976.0, 610.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-33",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 35.0, 71.0, 948.0, 501.0 ],
									"numoutlets" : 1,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"outlettype" : [ "int", "", "" ],
									"fontname" : "Arial",
									"items" : [ "monome", ",", "monome - all discussions" ],
									"presentation_rect" : [ 794.0, 6.0, 185.0, 20.0 ],
									"id" : "obj-34",
									"fontsize" : 11.595187,
									"numinlets" : 1,
									"types" : [  ],
									"patching_rect" : [ 789.0, 603.0, 185.0, 20.0 ],
									"numoutlets" : 3,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "reload",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"presentation_rect" : [ 678.0, 6.0, 43.0, 18.0 ],
									"id" : "obj-35",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"patching_rect" : [ 281.0, 32.0, 43.0, 18.0 ],
									"numoutlets" : 1,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "forward",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"presentation_rect" : [ 61.0, 6.0, 49.0, 18.0 ],
									"id" : "obj-36",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"patching_rect" : [ 149.0, 32.0, 49.0, 18.0 ],
									"numoutlets" : 1,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "back",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"presentation_rect" : [ 15.0, 6.0, 35.0, 18.0 ],
									"id" : "obj-37",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"patching_rect" : [ 103.0, 32.0, 35.0, 18.0 ],
									"numoutlets" : 1,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "gethistory",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"presentation_rect" : [ 728.0, 6.0, 61.0, 18.0 ],
									"id" : "obj-27",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"patching_rect" : [ 428.0, 36.0, 61.0, 18.0 ],
									"numoutlets" : 1,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"align" : 0,
									"outlettype" : [ "", "", "int" ],
									"bgovercolor" : [ 0.698039, 0.698039, 0.341176, 0.0 ],
									"fontname" : "Arial",
									"border" : 0,
									"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
									"text" : "http://docs.monome.org/doku.php?id=app:mate",
									"presentation_rect" : [ 126.0, 6.0, 852.0, 20.0 ],
									"id" : "obj-38",
									"fontsize" : 11.595187,
									"numinlets" : 1,
									"truncate" : 2,
									"patching_rect" : [ 44.0, 603.0, 491.0, 20.0 ],
									"numoutlets" : 3,
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"hidden" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"numinlets" : 0,
									"patching_rect" : [ 340.0, 18.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 290.5, 52.0, 44.5, 52.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 158.5, 52.0, 44.5, 52.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 112.5, 52.0, 44.5, 52.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 437.5, 61.0, 44.5, 61.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"default_fontsize" : 9.0,
						"fontface" : 0,
						"fontsize" : 9.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "help",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"presentation_rect" : [ 743.0, 307.0, 33.0, 18.0 ],
					"id" : "obj-169",
					"fontsize" : 11.595187,
					"numinlets" : 2,
					"patching_rect" : [ 692.0, 43.333344, 32.5, 18.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "soundcyst 2008",
					"fontname" : "Arial",
					"presentation_rect" : [ 702.0, 50.0, 137.0, 27.0 ],
					"id" : "obj-168",
					"fontsize" : 18.0,
					"numinlets" : 1,
					"patching_rect" : [ 208.0, 22.0, 143.0, 27.0 ],
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "m.a.t.e.",
					"fontname" : "Arial",
					"presentation_rect" : [ 18.0, 29.0, 132.0, 48.0 ],
					"id" : "obj-167",
					"fontsize" : 36.0,
					"numinlets" : 1,
					"patching_rect" : [ 52.0, 23.0, 136.0, 48.0 ],
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~",
					"fontname" : "Arial",
					"id" : "obj-165",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 263.0, 705.0, 32.5, 17.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dac",
					"fontname" : "Arial",
					"presentation_rect" : [ 803.0, 307.0, 31.0, 20.0 ],
					"id" : "obj-164",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 127.0, 645.0, 52.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 782.0, 307.0, 20.0, 20.0 ],
					"id" : "obj-163",
					"numinlets" : 1,
					"patching_rect" : [ 100.0, 644.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "# beats",
					"fontname" : "Arial",
					"presentation_rect" : [ 245.0, 307.0, 63.0, 20.0 ],
					"id" : "obj-159",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 526.0, 442.0, 52.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial",
					"presentation_rect" : [ 192.0, 307.0, 50.0, 20.0 ],
					"id" : "obj-158",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 472.0, 442.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "write",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"presentation_rect" : [ 123.0, 307.0, 50.0, 18.0 ],
					"id" : "obj-156",
					"fontsize" : 11.595187,
					"numinlets" : 2,
					"patching_rect" : [ 567.0, 76.333344, 35.0, 18.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-155",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 406.0, 748.0, 51.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr pow(2\\, $i1)",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-154",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 401.0, 697.0, 78.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s [mate]led",
					"fontname" : "Arial",
					"id" : "obj-153",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 674.0, 712.0, 55.0, 17.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0 0 1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-152",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 673.0, 657.0, 32.5, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"id" : "obj-148",
					"numinlets" : 1,
					"patching_rect" : [ 673.0, 625.0, 20.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r [mate]press",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-145",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 671.0, 597.0, 63.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r [mate]play",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-146",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 610.0, 598.0, 58.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0 0 0",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-144",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 749.0, 622.0, 32.5, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r [mate]stop",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-142",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 747.0, 597.0, 58.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s [mate]stop",
					"fontname" : "Arial",
					"id" : "obj-141",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 805.0, 378.0, 60.0, 17.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 0",
					"outlettype" : [ "bang", "" ],
					"fontname" : "Arial",
					"id" : "obj-140",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 799.0, 352.0, 32.5, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1",
					"outlettype" : [ "bang", "" ],
					"fontname" : "Arial",
					"id" : "obj-138",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 356.0, 611.0, 32.5, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "== 1.",
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"id" : "obj-137",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 356.0, 589.0, 32.5, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s [mate]numbeats",
					"fontname" : "Arial",
					"id" : "obj-135",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 472.0, 492.0, 82.0, 17.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 8",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-134",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 472.0, 409.0, 57.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r [mate]numbeats",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-133",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 411.0, 560.0, 81.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r [mate]numbeats",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-132",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 345.0, 369.0, 81.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route 1 0",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-131",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 728.0, 334.0, 46.0, 17.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl rev",
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-130",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 728.0, 287.0, 32.5, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /mate/led",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-126",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 661.0, 447.0, 83.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r [mate]led",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-127",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 661.0, 421.0, 53.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-124",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 472.0, 469.0, 50.0, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-118",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 458.0, 609.0, 50.0, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /mate/led_row",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-114",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 757.0, 448.0, 103.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s [mate]led_row",
					"fontname" : "Arial",
					"id" : "obj-113",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 406.0, 773.0, 74.0, 17.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r [mate]led_row",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-110",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 757.0, 422.0, 73.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "udpsend localhost 8080",
					"fontname" : "Arial",
					"id" : "obj-109",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 703.0, 491.0, 106.0, 17.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 8.",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"id" : "obj-93",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 391.0, 587.0, 32.5, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number~",
					"outlettype" : [ "signal", "float" ],
					"mode" : 2,
					"sig" : 0.0,
					"fontname" : "Arial",
					"id" : "obj-91",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 354.0, 564.0, 56.0, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 0.",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"id" : "obj-85",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 342.0, 456.0, 32.5, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 1.",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"id" : "obj-84",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 331.0, 436.0, 32.5, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r [mate]press",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-83",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 362.0, 392.0, 63.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 8.",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"id" : "obj-82",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 320.0, 411.0, 32.5, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s [mate]press",
					"fontname" : "Arial",
					"id" : "obj-80",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 728.0, 363.0, 65.0, 17.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route 1",
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-74",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 728.0, 309.0, 39.0, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route /mate/press",
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"id" : "obj-64",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 728.0, 265.0, 81.0, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "udpreceive 8000",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-63",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 728.0, 241.0, 77.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r [mate]write",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-53",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 569.0, 49.0, 60.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "== 0",
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"id" : "obj-49",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 192.0, 415.0, 32.5, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-48",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 207.0, 440.0, 32.5, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "del 0",
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"id" : "obj-47",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 262.0, 459.0, 32.5, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "swap",
					"outlettype" : [ "int", "int" ],
					"fontname" : "Arial",
					"id" : "obj-44",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 300.0, 365.0, 32.5, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 0.",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"id" : "obj-41",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 300.0, 387.0, 32.5, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-40",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 298.0, 498.0, 32.5, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r [mate]stop",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-37",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 298.0, 475.0, 58.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r [mate]play",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-38",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 224.0, 378.0, 58.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "f",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"id" : "obj-27",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 237.0, 482.0, 32.5, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-54",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 586.0, 120.0, 32.5, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"presentation_rect" : [ 470.0, 307.0, 20.0, 20.0 ],
					"id" : "obj-29",
					"numinlets" : 1,
					"patching_rect" : [ 562.0, 159.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "float",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"id" : "obj-50",
					"fontsize" : 11.595187,
					"numinlets" : 2,
					"patching_rect" : [ 562.0, 183.0, 42.5, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "normalize",
					"fontname" : "Arial",
					"presentation_rect" : [ 412.0, 307.0, 63.0, 20.0 ],
					"id" : "obj-31",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 639.0, 160.0, 189.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"triscale" : 0.9,
					"presentation_rect" : [ 494.0, 307.0, 50.0, 20.0 ],
					"id" : "obj-51",
					"fontsize" : 11.595187,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 586.0, 159.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "normalize $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-52",
					"fontsize" : 11.595187,
					"numinlets" : 2,
					"patching_rect" : [ 562.0, 207.0, 77.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r [mate]read_mp3",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-36",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 565.0, 26.0, 82.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r [mate]read",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-35",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 502.0, 26.0, 59.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r [mate]loop_toggle",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-33",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 150.0, 356.0, 88.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"outlettype" : [ "int" ],
					"id" : "obj-32",
					"numinlets" : 1,
					"patching_rect" : [ 150.0, 384.0, 20.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "loop $1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-30",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 150.0, 465.0, 40.0, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-28",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 396.0, 459.0, 50.0, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sig~ 1",
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"id" : "obj-26",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 396.0, 483.0, 35.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set temp 2",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-25",
					"fontsize" : 11.595187,
					"numinlets" : 2,
					"patching_rect" : [ 286.0, 128.0, 65.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "crop",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"presentation_rect" : [ 346.0, 307.0, 34.0, 18.0 ],
					"id" : "obj-20",
					"fontsize" : 11.595187,
					"numinlets" : 2,
					"patching_rect" : [ 326.0, 174.0, 33.0, 18.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"hidden" : 1,
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"id" : "obj-34",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 278.0, 72.0, 56.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set temp 1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-67",
					"fontsize" : 11.595187,
					"numinlets" : 2,
					"patching_rect" : [ 277.0, 97.0, 65.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"id" : "obj-10",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 293.0, 565.0, 32.5, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*~",
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"id" : "obj-9",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 258.0, 566.0, 32.5, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend snap",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-22",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 157.0, 170.0, 79.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Arial",
					"items" : [ "none", ",", "grid", ",", "zero" ],
					"presentation_rect" : [ 659.0, 307.0, 68.0, 20.0 ],
					"id" : "obj-23",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"types" : [  ],
					"patching_rect" : [ 132.0, 145.0, 68.0, 20.0 ],
					"numoutlets" : 3,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend unit",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-12",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 157.0, 112.0, 73.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Arial",
					"items" : [ "ms", ",", "samples", ",", "phase", ",", "bpm" ],
					"presentation_rect" : [ 587.0, 307.0, 68.0, 20.0 ],
					"id" : "obj-24",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"types" : [  ],
					"patching_rect" : [ 132.0, 87.0, 68.0, 20.0 ],
					"numoutlets" : 3,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"movehorizontal" : 0,
					"rightvalue" : 0,
					"outlettype" : [ "int", "int" ],
					"imagemask" : 1,
					"topvalue" : 0,
					"presentation_rect" : [ 16.0, 78.0, 19.0, 76.0 ],
					"bottomvalue" : 3,
					"knobpict" : "wfknob.pct",
					"id" : "obj-11",
					"numinlets" : 2,
					"inactiveimage" : 0,
					"patching_rect" : [ 150.0, 244.0, 19.0, 76.0 ],
					"bkgndpict" : "wfmodes.pct",
					"numoutlets" : 2,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p wfkeys",
					"hidden" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-15",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 313.0, 54.0, 20.0 ],
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 40.0, 55.0, 194.0, 323.0 ],
						"bglocked" : 0,
						"defrect" : [ 40.0, 55.0, 194.0, 323.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "|",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"patching_rect" : [ 81.0, 110.571426, 32.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-1",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"patching_rect" : [ 81.0, 191.571426, 32.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-2",
									"fontsize" : 11.595187,
									"numinlets" : 1,
									"patching_rect" : [ 112.0, 231.571426, 59.0, 20.0 ],
									"numoutlets" : 4,
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", 0, "mode", "select", ";", "#T", 1, "mode", "loop", ";", "#T", 2, "mode", "move", ";", "#T", 3, "mode", "draw", ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "int" ],
									"id" : "obj-4",
									"numinlets" : 0,
									"patching_rect" : [ 18.0, 142.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : "waveform~ mode messages"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "<< 1",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"id" : "obj-5",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"patching_rect" : [ 96.0, 56.571426, 34.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"outlettype" : [ "", "int", "int" ],
									"fontname" : "Arial",
									"id" : "obj-6",
									"fontsize" : 11.595187,
									"numinlets" : 1,
									"patching_rect" : [ 81.0, 137.571426, 49.0, 20.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "select 0",
									"outlettype" : [ "bang", "" ],
									"fontname" : "Arial",
									"id" : "obj-7",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"patching_rect" : [ 81.0, 164.571426, 50.0, 20.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-8",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"patching_rect" : [ 81.0, 83.571426, 34.0, 20.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-9",
									"numinlets" : 1,
									"patching_rect" : [ 112.0, 264.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "modifiers 100",
									"outlettype" : [ "int", "int", "int", "int", "int" ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"fontsize" : 11.595187,
									"numinlets" : 1,
									"patching_rect" : [ 35.0, 29.0, 80.0, 20.0 ],
									"numoutlets" : 5
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 3 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 4 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r [mate]undo",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-8",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 245.0, 187.0, 61.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "undo",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-7",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 245.0, 210.0, 32.5, 15.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p keys",
					"fontname" : "Arial",
					"id" : "obj-5",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 572.0, 350.0, 37.0, 17.0 ],
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 60.0, 259.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 60.0, 259.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-30",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 463.0, 98.0, 16.0, 15.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial",
									"id" : "obj-28",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 435.0, 285.0, 50.0, 17.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-22",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 446.0, 97.0, 16.0, 15.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-21",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 432.0, 97.0, 16.0, 15.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 256",
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Arial",
									"id" : "obj-19",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 429.0, 72.0, 47.0, 17.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s [mate]crop",
									"fontname" : "Arial",
									"id" : "obj-18",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 407.0, 349.0, 60.0, 17.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s [mate]write",
									"fontname" : "Arial",
									"id" : "obj-15",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 394.0, 327.0, 62.0, 17.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s [mate]stop",
									"fontname" : "Arial",
									"id" : "obj-7",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 353.0, 358.0, 60.0, 17.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s [mate]play",
									"fontname" : "Arial",
									"id" : "obj-1",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 326.0, 321.0, 59.0, 17.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial",
									"id" : "obj-11",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 261.0, 59.0, 50.0, 17.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "space - play from most recent position, play from 0 if finished.\nl - toggle looping\ns - play from 0 always\napple-z - undo\napple-a - select all\nr - read (replace)\nm - read mp3\nn - normalize\nc - crop buffer\n",
									"linecount" : 10,
									"fontname" : "Arial",
									"id" : "obj-6",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 54.0, 42.0, 150.0, 110.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s [mate]read_mp3",
									"fontname" : "Arial",
									"id" : "obj-36",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 380.0, 422.0, 83.0, 17.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s [mate]read",
									"fontname" : "Arial",
									"id" : "obj-35",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 367.0, 388.0, 61.0, 17.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s [mate]loop_toggle",
									"fontname" : "Arial",
									"id" : "obj-4",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 340.0, 298.0, 89.0, 17.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s [mate]undo",
									"fontname" : "Arial",
									"id" : "obj-3",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 464.0, 232.0, 63.0, 17.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s [mate]select_all",
									"fontname" : "Arial",
									"id" : "obj-2",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 450.0, 206.0, 80.0, 17.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 49 37 1 15 46 13 8",
									"hidden" : 1,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
									"fontname" : "Arial",
									"id" : "obj-73",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 326.0, 250.0, 113.5, 17.0 ],
									"numoutlets" : 8
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 6",
									"hidden" : 1,
									"outlettype" : [ "bang", "bang", "" ],
									"fontname" : "Arial",
									"id" : "obj-25",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 448.0, 165.0, 46.0, 17.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"hidden" : 1,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 394.0, 134.0, 36.0, 17.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "key",
									"hidden" : 1,
									"outlettype" : [ "int", "int", "int", "int" ],
									"fontname" : "Arial",
									"id" : "obj-8",
									"fontsize" : 9.0,
									"numinlets" : 0,
									"patching_rect" : [ 380.0, 39.0, 59.5, 17.0 ],
									"numoutlets" : 4
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 5 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 4 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 3 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 2 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 6 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 2 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 1 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-73", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 7 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 2 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial",
						"default_fontsize" : 9.0,
						"fontface" : 0,
						"fontsize" : 9.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r [mate]select_all",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-4",
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 406.0, 183.0, 79.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0 -1 0 -1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-13",
					"fontsize" : 11.595187,
					"numinlets" : 2,
					"patching_rect" : [ 406.0, 209.0, 52.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "import",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"presentation_rect" : [ 68.0, 307.0, 50.0, 18.0 ],
					"id" : "obj-16",
					"fontsize" : 11.595187,
					"numinlets" : 2,
					"patching_rect" : [ 502.0, 74.333344, 43.0, 18.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "replace",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"presentation_rect" : [ 15.0, 307.0, 49.0, 18.0 ],
					"id" : "obj-65",
					"fontsize" : 11.595187,
					"numinlets" : 2,
					"patching_rect" : [ 502.0, 53.0, 47.0, 18.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "buffer~ temp 1000 2",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-66",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 428.0, 121.333344, 115.0, 20.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "buffer~ temp 1000 2",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial",
					"id" : "obj-3",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 810.0, 52.0, 91.0, 17.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "groove~ temp 2",
					"outlettype" : [ "signal", "signal", "signal" ],
					"fontname" : "Arial",
					"id" : "obj-2",
					"fontsize" : 9.0,
					"numinlets" : 3,
					"patching_rect" : [ 260.0, 541.0, 73.0, 17.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "waveform~",
					"textcolor" : [  ],
					"selectioncolor" : [ 0.564706, 0.0, 0.0, 0.329412 ],
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"setmode" : 3,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"waveformcolor" : [ 0.07451, 0.0, 0.376471, 1.0 ],
					"presentation_rect" : [ 34.0, 78.0, 799.0, 120.0 ],
					"id" : "obj-1",
					"buffername" : "temp",
					"numinlets" : 5,
					"patching_rect" : [ 169.0, 244.0, 294.0, 76.0 ],
					"labelbgcolor" : [ 0.745098, 0.694118, 0.807843, 1.0 ],
					"numoutlets" : 6,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "waveform~",
					"textcolor" : [  ],
					"selectioncolor" : [ 0.564706, 0.0, 0.0, 0.329412 ],
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"setmode" : 1,
					"chanoffset" : 2,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"waveformcolor" : [ 0.07451, 0.0, 0.376471, 1.0 ],
					"presentation_rect" : [ 34.0, 186.0, 799.0, 120.0 ],
					"id" : "obj-14",
					"buffername" : "temp",
					"numinlets" : 5,
					"patching_rect" : [ 280.0, 256.0, 294.0, 76.0 ],
					"labelbgcolor" : [ 0.745098, 0.694118, 0.807843, 1.0 ],
					"numoutlets" : 6,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"outlettype" : [ "" ],
					"floatoutput" : 1,
					"presentation_rect" : [ 15.0, 152.0, 20.0, 154.0 ],
					"id" : "obj-17",
					"size" : 2.0,
					"numinlets" : 1,
					"patching_rect" : [ 233.0, 587.0, 18.0, 45.0 ],
					"numoutlets" : 1,
					"presentation" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-154", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-154", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-155", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-50", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-1", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 3 ],
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 5 ],
					"destination" : [ "obj-14", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 2 ],
					"destination" : [ "obj-27", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 2 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 3 ],
					"destination" : [ "obj-44", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 2 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 1 ],
					"destination" : [ "obj-41", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-47", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-48", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 2 ],
					"destination" : [ "obj-85", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-110", 0 ],
					"destination" : [ "obj-114", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-114", 0 ],
					"destination" : [ "obj-109", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 1 ],
					"destination" : [ "obj-93", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 0 ],
					"destination" : [ "obj-126", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 0 ],
					"destination" : [ "obj-109", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-130", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-130", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-132", 0 ],
					"destination" : [ "obj-82", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-84", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-133", 0 ],
					"destination" : [ "obj-93", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-124", 0 ],
					"destination" : [ "obj-135", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 1 ],
					"destination" : [ "obj-137", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-137", 0 ],
					"destination" : [ "obj-138", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-138", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 1 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-140", 0 ],
					"destination" : [ "obj-141", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-142", 0 ],
					"destination" : [ "obj-144", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-145", 0 ],
					"destination" : [ "obj-148", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-146", 0 ],
					"destination" : [ "obj-148", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-148", 0 ],
					"destination" : [ "obj-152", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-144", 0 ],
					"destination" : [ "obj-153", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-152", 0 ],
					"destination" : [ "obj-153", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-155", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-156", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-156", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-158", 0 ],
					"destination" : [ "obj-124", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-134", 0 ],
					"destination" : [ "obj-158", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-163", 0 ],
					"destination" : [ "obj-165", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-165", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-165", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-174", 0 ],
					"destination" : [ "obj-175", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-169", 0 ],
					"destination" : [ "obj-176", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-176", 0 ],
					"destination" : [ "obj-174", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-175", 0 ],
					"destination" : [ "obj-170", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
