{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 666.0, 237.0, 661.0, 346.0 ],
		"bglocked" : 0,
		"defrect" : [ 666.0, 237.0, 661.0, 346.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 2,
		"toolbarvisible" : 0,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "James Drake",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-11",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 26.0,
					"patching_rect" : [ 485.0, 305.0, 170.0, 36.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "version 1.1",
					"numoutlets" : 0,
					"id" : "obj-14",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"patching_rect" : [ 15.0, 45.0, 67.0, 20.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "monomeslider",
					"numoutlets" : 0,
					"id" : "obj-9",
					"fontname" : "Arial",
					"fontsize" : 30.0,
					"patching_rect" : [ 15.0, 15.0, 197.0, 41.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p ledslider",
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"patching_rect" : [ 30.0, 210.0, 105.0, 20.0 ],
					"numinlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 264.0, 44.0, 871.0, 616.0 ],
						"bglocked" : 0,
						"defrect" : [ 264.0, 44.0, 871.0, 616.0 ],
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
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "zlclear",
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"ignoreclick" : 1,
									"patching_rect" : [ 15.0, 120.0, 45.0, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar funbuff",
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 375.0, 75.0, 74.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "zlclear",
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"ignoreclick" : 1,
									"patching_rect" : [ 210.0, 210.0, 45.0, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar funbuff 2",
									"numoutlets" : 2,
									"id" : "obj-39",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 480.0, 180.0, 94.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack",
									"numoutlets" : 2,
									"id" : "obj-34",
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 735.0, 90.0, 109.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0 0 0",
									"numoutlets" : 1,
									"id" : "obj-63",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 375.0, 285.0, 199.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$3",
									"numoutlets" : 1,
									"id" : "obj-64",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"ignoreclick" : 1,
									"patching_rect" : [ 555.0, 255.0, 32.5, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $i2 + $i5",
									"numoutlets" : 1,
									"id" : "obj-65",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 465.0, 255.0, 83.0, 20.0 ],
									"numinlets" : 5
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $i1 + $i4",
									"numoutlets" : 1,
									"id" : "obj-66",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 375.0, 255.0, 83.0, 20.0 ],
									"numinlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $i4 == 0 then $i1 $i2 $i3 $i5 $i6 else $i2 $i1 $i3 $i5 $i6",
									"numoutlets" : 1,
									"id" : "obj-35",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 375.0, 210.0, 469.0, 20.0 ],
									"numinlets" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $i1 * -1 + $i2 - 1",
									"numoutlets" : 1,
									"id" : "obj-31",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 375.0, 135.0, 124.0, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route bbc length style locate",
									"numoutlets" : 5,
									"id" : "obj-36",
									"outlettype" : [ "", "", "", "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 465.0, 60.0, 379.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $i2 == 1 ^ $i4 == 1 then $i1 $i3 else out2 $i1",
									"numoutlets" : 2,
									"id" : "obj-37",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 375.0, 105.0, 289.0, 20.0 ],
									"numinlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-28",
									"patching_rect" : [ 375.0, 315.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "funbuff",
									"text" : "funbuff",
									"numoutlets" : 3,
									"id" : "obj-26",
									"outlettype" : [ "int", "int", "bang" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 105.0, 570.0, 47.0, 20.0 ],
									"numinlets" : 2,
									"save" : [ "#N", "funbuff", 0, ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack",
									"numoutlets" : 1,
									"id" : "obj-25",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 105.0, 525.0, 79.0, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!=",
									"numoutlets" : 1,
									"id" : "obj-24",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 165.0, 495.0, 93.5, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route inv",
									"numoutlets" : 2,
									"id" : "obj-23",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 240.0, 465.0, 57.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0 0",
									"numoutlets" : 3,
									"id" : "obj-22",
									"outlettype" : [ "int", "int", "int" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 105.0, 465.0, 79.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend columns",
									"numoutlets" : 1,
									"id" : "obj-21",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 255.0, 390.0, 103.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route done length",
									"numoutlets" : 3,
									"id" : "obj-20",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 210.0, 180.0, 109.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak set 0 0 1",
									"numoutlets" : 1,
									"id" : "obj-19",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 120.0, 390.0, 110.0, 20.0 ],
									"numinlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "matrixcontrol @rows 1",
									"numoutlets" : 2,
									"id" : "obj-18",
									"outlettype" : [ "list", "list" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 105.0, 435.0, 130.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "iter",
									"numoutlets" : 1,
									"id" : "obj-17",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 150.0, 360.0, 27.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t dump b l clear",
									"numoutlets" : 4,
									"id" : "obj-16",
									"outlettype" : [ "dump", "bang", "", "clear" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 60.0, 330.0, 154.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl stream",
									"numoutlets" : 2,
									"id" : "obj-15",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 90.0, 285.0, 59.0, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 1",
									"numoutlets" : 1,
									"id" : "obj-14",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 90.0, 255.0, 32.5, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi",
									"numoutlets" : 3,
									"id" : "obj-13",
									"outlettype" : [ "bang", "bang", "int" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 60.0, 210.0, 49.0, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl change",
									"numoutlets" : 2,
									"id" : "obj-12",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 60.0, 165.0, 62.0, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"numoutlets" : 1,
									"id" : "obj-11",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 60.0, 120.0, 32.5, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl thin",
									"numoutlets" : 2,
									"id" : "obj-10",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 150.0, 285.0, 42.0, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl change",
									"numoutlets" : 2,
									"id" : "obj-9",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 150.0, 255.0, 62.0, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack",
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 150.0, 210.0, 34.0, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+",
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 165.0, 180.0, 33.5, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if ($i1 - $f2) != 0. then 1 else 0",
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 180.0, 135.0, 170.0, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route done mode",
									"numoutlets" : 3,
									"id" : "obj-4",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 15.0, 60.0, 109.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 2",
									"numoutlets" : 2,
									"id" : "obj-1",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 60.0, 90.0, 109.0, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-27",
									"outlettype" : [ "" ],
									"patching_rect" : [ 360.0, 15.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-29",
									"outlettype" : [ "" ],
									"patching_rect" : [ 150.0, 60.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 219.5, 240.0, 159.5, 240.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 369.5, 165.0, 219.5, 165.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 2 ],
									"destination" : [ "obj-35", 3 ],
									"hidden" : 0,
									"midpoints" : [ 654.5, 90.0, 675.0, 90.0, 675.0, 195.0, 654.5, 195.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 3 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 1 ],
									"destination" : [ "obj-37", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-37", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 2 ],
									"destination" : [ "obj-37", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [ 369.5, 45.0, 474.5, 45.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 1 ],
									"destination" : [ "obj-35", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [ 69.5, 555.0, 114.5, 555.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-63", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [ 384.5, 240.0, 564.5, 240.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 1 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 654.5, 165.0, 384.5, 165.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-35", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 1 ],
									"destination" : [ "obj-35", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-63", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [ 384.5, 240.0, 474.5, 240.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 159.5, 120.0, 174.5, 120.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 159.5, 120.0, 189.5, 120.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [ 159.5, 120.0, 340.5, 120.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 2 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 99.5, 315.0, 69.5, 315.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 159.5, 315.0, 69.5, 315.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 2 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 3 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 204.5, 375.0, 240.0, 375.0, 240.0, 420.0, 114.5, 420.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 129.5, 420.0, 114.5, 420.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 264.5, 420.0, 114.5, 420.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 369.5, 450.0, 249.5, 450.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 2 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-24", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [ 69.5, 195.0, 139.5, 195.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 369.5, 45.0, 24.5, 45.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 24.5, 150.0, 69.5, 150.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p pressslider",
					"hidden" : 1,
					"numoutlets" : 2,
					"id" : "obj-7",
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"patching_rect" : [ 30.0, 150.0, 79.0, 20.0 ],
					"numinlets" : 3,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 647.0, 83.0, 601.0, 751.0 ],
						"bglocked" : 0,
						"defrect" : [ 647.0, 83.0, 601.0, 751.0 ],
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
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend",
									"numoutlets" : 1,
									"id" : "obj-22",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 390.0, 660.0, 55.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"numoutlets" : 1,
									"id" : "obj-16",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 390.0, 600.0, 74.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "f",
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "float" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 300.0, 450.0, 33.5, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route style length",
									"numoutlets" : 3,
									"id" : "obj-40",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 390.0, 90.0, 102.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf send parent::parent::%s",
									"numoutlets" : 1,
									"id" : "obj-38",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 405.0, 540.0, 174.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pattrforward",
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 465.0, 705.0, 75.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "grab",
									"numoutlets" : 2,
									"id" : "obj-11",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 105.0, 570.0, 35.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "value",
									"numoutlets" : 2,
									"id" : "obj-39",
									"outlettype" : [ "float", "bang" ],
									"minimum" : 0.0,
									"fontname" : "Arial",
									"maximum" : 7.0,
									"fontsize" : 12.0,
									"ignoreclick" : 1,
									"patching_rect" : [ 315.0, 420.0, 186.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend max",
									"numoutlets" : 1,
									"id" : "obj-37",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 315.0, 570.0, 81.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 1",
									"numoutlets" : 1,
									"id" : "obj-36",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 315.0, 540.0, 36.5, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "i",
									"numoutlets" : 1,
									"id" : "obj-35",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 225.0, 570.0, 63.5, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route grain done init length inlet send",
									"numoutlets" : 7,
									"id" : "obj-33",
									"outlettype" : [ "", "", "", "", "", "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 180.0, 510.0, 289.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "line 0.",
									"numoutlets" : 3,
									"id" : "obj-32",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 150.0, 570.0, 49.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar value",
									"numoutlets" : 1,
									"id" : "obj-31",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 150.0, 615.0, 66.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack",
									"numoutlets" : 1,
									"id" : "obj-29",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 210.0, 450.0, 49.0, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route time",
									"numoutlets" : 2,
									"id" : "obj-27",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 240.0, 420.0, 64.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar in3",
									"numoutlets" : 1,
									"id" : "obj-28",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 240.0, 390.0, 53.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t i i b",
									"numoutlets" : 3,
									"id" : "obj-26",
									"outlettype" : [ "int", "int", "bang" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 120.0, 360.0, 199.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $i1 == $i2 then stop",
									"numoutlets" : 1,
									"id" : "obj-25",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 15.0, 390.0, 124.0, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numoutlets" : 1,
									"id" : "obj-24",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 15.0, 360.0, 94.0, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!= 1",
									"numoutlets" : 1,
									"id" : "obj-23",
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 15.0, 330.0, 32.5, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route slide",
									"numoutlets" : 2,
									"id" : "obj-21",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 15.0, 300.0, 66.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 0 1",
									"numoutlets" : 3,
									"id" : "obj-20",
									"outlettype" : [ "", "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 90.0, 330.0, 79.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack",
									"numoutlets" : 1,
									"id" : "obj-19",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 90.0, 300.0, 64.0, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $i1 * -1 + $i2 -1",
									"numoutlets" : 1,
									"id" : "obj-18",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 135.0, 255.0, 119.0, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route bbc style length",
									"numoutlets" : 4,
									"id" : "obj-17",
									"outlettype" : [ "", "", "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 225.0, 195.0, 289.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $i2 == 1 ^ $i3 == 1 then $i1 $i4 else out2 $i1",
									"numoutlets" : 2,
									"id" : "obj-15",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 135.0, 225.0, 289.0, 20.0 ],
									"numinlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $i2-$i3",
									"numoutlets" : 1,
									"id" : "obj-14",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 135.0, 195.0, 73.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$1",
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"ignoreclick" : 1,
									"patching_rect" : [ 90.0, 195.0, 32.5, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $i1 >= $i4 && $i1 < ($i4+$i6) && $i2 == $i5 then $i3 $i1 $i4",
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 90.0, 150.0, 361.0, 20.0 ],
									"numinlets" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack",
									"numoutlets" : 2,
									"id" : "obj-9",
									"outlettype" : [ "int", "int" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 270.0, 90.0, 79.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route locate",
									"numoutlets" : 2,
									"id" : "obj-8",
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 270.0, 60.0, 139.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "if $i6 == 0 then $i1 $i2 $i3 $i4 $i5 else $i2 $i1 $i3 $i5 $i4",
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"patching_rect" : [ 90.0, 120.0, 319.0, 20.0 ],
									"numinlets" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-5",
									"patching_rect" : [ 105.0, 660.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-4",
									"patching_rect" : [ 150.0, 660.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "in3",
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ],
									"patching_rect" : [ 270.0, 15.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ],
									"patching_rect" : [ 105.0, 540.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 90.0, 90.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 309.5, 480.0, 159.5, 480.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 2 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 130.5, 600.0, 159.5, 600.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 324.5, 600.0, 159.5, 600.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 234.5, 600.0, 159.5, 600.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 279.5, 45.0, 24.5, 45.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 279.5, 45.0, 504.0, 45.0, 504.0, 180.0, 234.5, 180.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 219.5, 480.0, 159.5, 480.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 24.5, 480.0, 159.5, 480.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 1 ],
									"destination" : [ "obj-10", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-7", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 414.5, 585.0, 474.5, 585.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-7", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-7", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 99.5, 180.0, 144.5, 180.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-15", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 2 ],
									"destination" : [ "obj-15", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [ 414.5, 285.0, 144.5, 285.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-24", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-29", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-32", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 3 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 2 ],
									"destination" : [ "obj-35", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 279.5, 45.0, 525.0, 45.0, 525.0, 495.0, 189.5, 495.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 5 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 4 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 369.5, 555.0, 399.5, 555.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 159.5, 645.0, 399.5, 645.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 399.5, 690.0, 474.5, 690.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"numoutlets" : 0,
					"id" : "obj-6",
					"patching_rect" : [ 90.0, 180.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hidden" : 1,
					"numoutlets" : 0,
					"id" : "obj-5",
					"patching_rect" : [ 30.0, 240.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 105.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"patching_rect" : [ 60.0, 105.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hidden" : 1,
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 105.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcherargs @init 0 @locate 0 0 @length 8 @bbc 0 @mode 1 @time 400 @grain 20 @slide 0 @style 0 @inv 0",
					"hidden" : 1,
					"numoutlets" : 2,
					"id" : "obj-1",
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"patching_rect" : [ 30.0, 75.0, 601.0, 20.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"id" : "obj-12",
					"bgcolor" : [ 0.866667, 0.768627, 0.47451, 1.0 ],
					"patching_rect" : [ 15.0, 45.0, 631.0, 241.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"id" : "obj-18",
					"bgcolor" : [ 0.866667, 0.768627, 0.47451, 1.0 ],
					"patching_rect" : [ 15.0, 300.0, 631.0, 31.0 ],
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 1,
					"midpoints" : [ 621.5, 135.0, 125.5, 135.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-8", 1 ],
					"hidden" : 1,
					"midpoints" : [ 99.5, 135.0, 125.5, 135.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-7", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-7", 2 ],
					"hidden" : 1,
					"midpoints" : [ 621.5, 135.0, 99.5, 135.0 ]
				}

			}
 ]
	}

}
