{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 465.0, 50.0, 343.0, 106.0 ],
		"bgcolor" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
		"bglocked" : 1,
		"defrect" : [ 465.0, 50.0, 343.0, 106.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 9.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 0,
		"boxanimatetime" : 500,
		"imprint" : 1,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"title" : "Global Transport",
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "80",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 9.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 435.0, 300.0, 32.5, 15.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-67",
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"gradient" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "bang" ],
					"fontface" : 0,
					"fontsize" : 9.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.8, 0.84, 0.71, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 416.0, 261.0, 48.0, 17.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-49",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax showdoc maxtime.maxvig.xml",
					"linecount" : 2,
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 712.0, 98.0, 190.0, 31.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-66",
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"gradient" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"hint" : "Read about time values",
					"bgoveroncolor" : [ 1.0, 0.031373, 0.031373, 0.501961 ],
					"numoutlets" : 3,
					"hidden" : 0,
					"tosymbol" : 1,
					"mode" : 0,
					"spacing_x" : 4.0,
					"bgoncolor" : [ 0.352941, 0.352941, 0.501961, 0.74902 ],
					"outlettype" : [ "", "", "int" ],
					"truncate" : 1,
					"fontface" : 1,
					"rounded" : 10.0,
					"border" : 2,
					"underline" : 0,
					"fontsize" : 18.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"blinktime" : 150,
					"spacing_y" : 4.0,
					"text" : "?",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 299.0, 7.0, 28.0, 20.0 ],
					"align" : 1,
					"outputmode" : 0,
					"texton" : "",
					"fontlink" : 0,
					"borderoncolor" : [ 1.0, 0.666667, 0.666667, 0.698039 ],
					"background" : 0,
					"textovercolor" : [ 0.352941, 0.352941, 0.501961, 0.74902 ],
					"active" : 1,
					"textoveroncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.568627, 0.568627, 0.247059, 0.0 ],
					"patching_rect" : [ 712.0, 72.0, 59.0, 20.0 ],
					"bordercolor" : [ 0.788235, 0.788235, 0.858824, 0.0 ],
					"bgovercolor" : [ 0.568627, 0.568627, 0.690196, 0.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-64",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "round",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 9.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 607.0, 155.0, 34.0, 17.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-47",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"hidden" : 0,
					"blinkcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"outlettype" : [ "bang" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlinecolor" : [ 0.71328, 0.71328, 0.71328, 1.0 ],
					"background" : 0,
					"bgcolor" : [ 0.91328, 0.91328, 0.91328, 0.75 ],
					"patching_rect" : [ 607.0, 59.0, 18.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-77",
					"ignoreclick" : 0,
					"fgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"hint" : "Click to set tempo",
					"bgoveroncolor" : [ 1.0, 0.031373, 0.031373, 0.501961 ],
					"numoutlets" : 3,
					"hidden" : 0,
					"tosymbol" : 1,
					"mode" : 0,
					"spacing_x" : 4.0,
					"bgoncolor" : [ 0.27451, 0.258824, 0.415686, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"truncate" : 1,
					"fontface" : 1,
					"rounded" : 10.0,
					"border" : 2,
					"underline" : 0,
					"fontsize" : 10.0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"blinktime" : 150,
					"spacing_y" : 4.0,
					"text" : "Tap",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 146.0, 51.0, 28.0, 20.0 ],
					"align" : 1,
					"outputmode" : 0,
					"texton" : "",
					"fontlink" : 0,
					"borderoncolor" : [ 1.0, 0.666667, 0.666667, 0.698039 ],
					"background" : 0,
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"active" : 1,
					"textoveroncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"patching_rect" : [ 607.0, 35.0, 59.0, 20.0 ],
					"bordercolor" : [ 0.788235, 0.788235, 0.858824, 0.0 ],
					"bgovercolor" : [ 0.568627, 0.568627, 0.690196, 0.74902 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-69",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tap tempo",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 608.0, 13.0, 57.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-86",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $f1>=30 then $f1",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 607.0, 133.0, 94.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-78",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "!/ 60000.",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "float" ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 607.0, 111.0, 49.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-71",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "timer",
					"numoutlets" : 2,
					"hidden" : 0,
					"outlettype" : [ "float", "" ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 607.0, 89.0, 33.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-68",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"prototypename" : "Arial9",
					"numoutlets" : 1,
					"hidden" : 1,
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 77.0, 6.0, 18.0, 18.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 69.0, 46.0, 18.0, 18.0 ],
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-58",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "NoFloat",
					"numoutlets" : 0,
					"hidden" : 1,
					"frgb" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 12.754706,
					"textcolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"presentation_rect" : [ 97.0, 5.0, 56.0, 21.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 58.0, 21.0, 56.0, 21.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-61",
					"fontname" : "Arial Bold Italic",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"prototypename" : "Arial9",
					"numoutlets" : 1,
					"hidden" : 1,
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 16.0, 6.0, 18.0, 18.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 32.0, 46.0, 18.0, 18.0 ],
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-117",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "View",
					"numoutlets" : 0,
					"hidden" : 1,
					"frgb" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 12.754706,
					"textcolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"presentation_rect" : [ 35.0, 5.0, 41.0, 21.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 21.0, 21.0, 41.0, 21.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-115",
					"fontname" : "Arial Bold Italic",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "onecopy",
					"numoutlets" : 0,
					"hidden" : 0,
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 32.0, 113.0, 50.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-62",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"numoutlets" : 2,
					"hidden" : 0,
					"outlettype" : [ "", "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 32.0, 92.0, 62.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-142",
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "nogrow", "close", "nozoom", "float", "menu", "minimize", ";", "#Q", "window", "constrain", 50, 50, 32768, 32768, ";", "#Q", "window", "size", 465, 50, 808, 156, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p View",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 32.0, 68.0, 56.0, 20.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-140",
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 171.0, 236.0, 657.0, 488.0 ],
						"bglocked" : 0,
						"defrect" : [ 171.0, 236.0, 657.0, 488.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 466.0, 378.0, 19.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-13",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"prototypename" : "Arial9",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 466.0, 257.0, 18.0, 18.0 ],
									"numinlets" : 0,
									"id" : "obj-5",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"prototypename" : "Arial9",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 466.0, 279.0, 18.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 466.0, 301.0, 46.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-8",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "savewindow 1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 362.0, 428.0, 76.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-1",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 43.0, 301.0, 32.5, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-63",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 283.0, 301.0, 32.5, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-62",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 43.0, 378.0, 19.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-37",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nofloat, window exec",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 466.0, 323.0, 170.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-38",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window exec",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 43.0, 323.0, 70.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-39",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l b",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "bang" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 43.0, 279.0, 46.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-40",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window flags zoom",
									"linecount" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 70.0, 343.0, 100.0, 28.0 ],
									"numinlets" : 2,
									"id" : "obj-42",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend window size",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 43.0, 257.0, 108.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-43",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ymax",
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 208.0, 186.0, 37.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-45",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Xmax",
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 157.0, 186.0, 37.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-46",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ymin",
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 105.0, 186.0, 34.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-47",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Xmin",
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 54.0, 186.0, 34.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-48",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pref.",
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 180.0, 147.0, 31.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-49",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0 0 0",
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 43.0, 167.0, 173.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-51",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "25 50 1000 600",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 43.0, 147.0, 83.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-52",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 197.0, 205.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-53",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 146.0, 205.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-54",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0 0 0 0",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 43.0, 227.0, 173.0, 18.0 ],
									"numinlets" : 4,
									"id" : "obj-55",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 94.0, 205.0, 51.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-56",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 43.0, 205.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-57",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 283.0, 378.0, 19.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-35",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags float, window exec",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 480.0, 343.0, 158.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-32",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window exec",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 283.0, 323.0, 70.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-31",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l b",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "bang" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 283.0, 279.0, 46.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-30",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, window flags nozoom",
									"linecount" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 310.0, 343.0, 113.0, 28.0 ],
									"numinlets" : 2,
									"id" : "obj-29",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend window size",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 283.0, 257.0, 108.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-28",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ymax",
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 448.0, 186.0, 37.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-27",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Xmax",
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 397.0, 186.0, 37.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-26",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ymin",
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 345.0, 186.0, 34.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-23",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Xmin",
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 294.0, 186.0, 34.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-22",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pref.",
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 411.0, 147.0, 31.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-20",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0 0 0",
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 283.0, 167.0, 173.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-18",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "465 50 808 156",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 283.0, 147.0, 127.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-16",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 437.0, 205.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-12",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 386.0, 205.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-15",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0 0 0 0",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 283.0, 227.0, 173.0, 18.0 ],
									"numinlets" : 4,
									"id" : "obj-7",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 334.0, 205.0, 51.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 283.0, 205.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-3",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "view",
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 284.0, 69.0, 31.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-11",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "presentation $1",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 250.0, 90.0, 82.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-10",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 0",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 250.0, 69.0, 32.5, 18.0 ],
									"numinlets" : 2,
									"id" : "obj-9",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"prototypename" : "Arial9",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 153.0, 17.0, 18.0, 18.0 ],
									"numinlets" : 0,
									"id" : "obj-44",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"prototypename" : "Arial9",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 153.0, 52.0, 18.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-41"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"fontsize" : 10.435669,
									"patching_rect" : [ 153.0, 74.0, 46.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-25",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"prototypename" : "Arial9",
									"numoutlets" : 0,
									"patching_rect" : [ 250.0, 443.0, 18.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-21",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 1 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-55", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-55", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-55", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 1 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 2 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 3 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-52", 1 ],
									"hidden" : 0,
									"midpoints" : [ 52.5, 251.0, 34.0, 251.0, 34.0, 139.0, 116.5, 139.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [ 292.5, 251.0, 274.0, 251.0, 274.0, 139.0, 400.5, 139.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 3 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 2 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-7", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-7", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-21", 0 ],
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
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 2 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 2 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "sync",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 369.0, 317.0, 32.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-33",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 0 0 0.",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 206.0, 317.0, 162.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 3,
					"id" : "obj-20",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "\"location\" patcher variable",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 723.0, 210.0, 131.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-18",
					"fontname" : "Arial Italic",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "\"transport\" patcher variable >",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 60.0, 229.0, 145.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-17",
					"fontname" : "Arial Italic",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "i",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "int" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 421.0, 434.0, 32.5, 18.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-15",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "round",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 421.0, 412.0, 37.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-14",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"hint" : "",
					"prototypename" : "Arial9",
					"bgoveroncolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"numoutlets" : 3,
					"hidden" : 0,
					"tosymbol" : 0,
					"mode" : 0,
					"spacing_x" : 4.0,
					"bgoncolor" : [ 0.368627, 0.360784, 0.501961, 0.74902 ],
					"outlettype" : [ "", "", "int" ],
					"truncate" : 1,
					"fontface" : 0,
					"rounded" : 20.0,
					"border" : 2,
					"underline" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"blinktime" : 150,
					"spacing_y" : 4.0,
					"text" : "Rewind",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 190.0, 73.0, 52.600479, 18.0 ],
					"align" : 1,
					"outputmode" : 1,
					"texton" : "Button",
					"fontlink" : 0,
					"borderoncolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
					"background" : 0,
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"active" : 1,
					"textoveroncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.870588, 0.870588, 0.917647, 0.329412 ],
					"patching_rect" : [ 707.0, 147.0, 60.0, 19.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bgovercolor" : [ 0.584314, 0.584314, 0.756863, 0.329412 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-59",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Resolution : 480 ticks/beat",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 26.0, 74.0, 133.0, 18.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 421.0, 487.0, 133.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-54",
					"fontname" : "Arial Italic",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1 : 1 : 30 . 750",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 11.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 242.0, 73.0, 94.0, 19.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 751.0, 397.0, 95.0, 19.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-46",
					"fontname" : "Arial Bold",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"hint" : "Activate",
					"varname" : "state",
					"prototypename" : "Arial9-green",
					"numoutlets" : 1,
					"offcolor" : [ 0.0, 0.266667, 0.0, 0.501961 ],
					"hidden" : 0,
					"outlettype" : [ "int" ],
					"blinktime" : 150,
					"presentation_rect" : [ 184.0, 7.0, 20.253944, 20.253944 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 668.0, 331.0, 20.253944, 20.253944 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-45",
					"oncolor" : [ 0.0, 1.0, 0.0, 1.0 ],
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Click",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 234.0, 9.0, 34.0, 18.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 38.0, 347.0, 34.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-32",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Activate",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 128.0, 7.0, 56.0, 20.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 678.0, 376.0, 56.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-31",
					"fontname" : "Arial Bold",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"hint" : "Tempo pulse",
					"varname" : "pulse",
					"numoutlets" : 1,
					"hidden" : 0,
					"blinkcolor" : [ 1.0, 1.0, 0.0, 1.0 ],
					"outlettype" : [ "bang" ],
					"presentation_rect" : [ 205.0, 7.0, 20.0, 20.0 ],
					"outlinecolor" : [ 0.368627, 0.360784, 0.501961, 0.345098 ],
					"background" : 0,
					"bgcolor" : [ 0.913725, 0.913725, 0.913725, 0.0 ],
					"patching_rect" : [ 143.0, 331.0, 20.253944, 20.253944 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-30",
					"ignoreclick" : 1,
					"fgcolor" : [ 0.635294, 0.631373, 0.733333, 0.352941 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"hint" : "Enable GM click (ch.10) ",
					"varname" : "click",
					"prototypename" : "Arial9-grey",
					"numoutlets" : 1,
					"offcolor" : [ 0.368627, 0.360784, 0.501961, 0.74902 ],
					"hidden" : 0,
					"outlettype" : [ "int" ],
					"blinktime" : 150,
					"presentation_rect" : [ 264.0, 7.0, 20.253944, 20.253944 ],
					"background" : 0,
					"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"patching_rect" : [ 45.0, 368.0, 20.253944, 20.253944 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-29",
					"oncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Unit",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 61.0, 34.0, 29.0, 18.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 620.0, 289.0, 29.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-27",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "Time signature (unit)",
					"varname" : "timesig-unit",
					"prototypename" : "Arial9",
					"numoutlets" : 3,
					"prefix_mode" : 2,
					"hidden" : 0,
					"types" : [  ],
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"outlettype" : [ "int", "", "" ],
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"truncate" : 1,
					"fontface" : 0,
					"menumode" : 0,
					"rounded" : 8,
					"underline" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"arrow" : 1,
					"presentation_rect" : [ 56.0, 51.0, 40.939552, 20.0 ],
					"align" : 0,
					"labelclick" : 0,
					"items" : [ 4, ",", 8, ",", 16 ],
					"prefix" : "",
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"background" : 0,
					"showdotfiles" : 0,
					"arrowlink" : 0,
					"autopopulate" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"patching_rect" : [ 609.0, 331.0, 40.939552, 20.0 ],
					"arrowframe" : 0,
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-26",
					"pattrmode" : 1,
					"fontname" : "Arial Bold",
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"ignoreclick" : 0,
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"depth" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Beats",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 17.0, 34.0, 37.0, 18.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 575.0, 289.0, 37.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-25",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "Time signature (beats)",
					"varname" : "timesig-beats",
					"numoutlets" : 2,
					"hidden" : 0,
					"cantchange" : 0,
					"minimum" : 1,
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"fontface" : 0,
					"outputonclick" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"maximum" : "<none>",
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"presentation_rect" : [ 14.0, 51.0, 41.0, 20.0 ],
					"triangle" : 1,
					"hbgcolor" : [ 0.372549, 0.360784, 0.501961, 0.74902 ],
					"background" : 0,
					"mouseup" : 0,
					"format" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"patching_rect" : [ 564.0, 331.0, 41.0, 20.0 ],
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-23",
					"fontname" : "Arial Bold",
					"triscale" : 0.7,
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Units",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 287.0, 34.0, 34.0, 18.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 358.0, 252.0, 34.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-22",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "Location (units)",
					"varname" : "units",
					"numoutlets" : 2,
					"hidden" : 0,
					"cantchange" : 0,
					"minimum" : "<none>",
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"fontface" : 0,
					"outputonclick" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"maximum" : "<none>",
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"presentation_rect" : [ 284.0, 51.0, 41.0, 20.0 ],
					"triangle" : 1,
					"numdecimalplaces" : 0,
					"hbgcolor" : [ 0.372549, 0.360784, 0.501961, 0.74902 ],
					"background" : 0,
					"mouseup" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"patching_rect" : [ 361.0, 293.0, 41.0, 20.0 ],
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-21",
					"fontname" : "Arial Bold",
					"triscale" : 0.7,
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Beats",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 244.0, 34.0, 37.0, 18.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 287.0, 252.0, 37.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-13",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "Location (beats)",
					"varname" : "beats",
					"numoutlets" : 2,
					"hidden" : 0,
					"cantchange" : 0,
					"minimum" : "<none>",
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"fontface" : 0,
					"outputonclick" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"maximum" : "<none>",
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"presentation_rect" : [ 242.0, 51.0, 41.0, 20.0 ],
					"triangle" : 1,
					"hbgcolor" : [ 0.372549, 0.360784, 0.501961, 0.74902 ],
					"background" : 0,
					"mouseup" : 0,
					"format" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"patching_rect" : [ 290.0, 293.0, 41.0, 20.0 ],
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-11",
					"fontname" : "Arial Bold",
					"triscale" : 0.7,
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Bars",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 201.0, 34.0, 32.0, 18.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 217.0, 252.0, 32.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-10",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "Location (bars)",
					"varname" : "bars",
					"numoutlets" : 2,
					"hidden" : 0,
					"cantchange" : 0,
					"minimum" : "<none>",
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"outlettype" : [ "int", "bang" ],
					"fontface" : 0,
					"outputonclick" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"maximum" : "<none>",
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"presentation_rect" : [ 193.0, 51.0, 48.0, 20.0 ],
					"triangle" : 1,
					"hbgcolor" : [ 0.372549, 0.360784, 0.501961, 0.74902 ],
					"background" : 0,
					"mouseup" : 0,
					"format" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"patching_rect" : [ 218.0, 293.0, 41.0, 20.0 ],
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-9",
					"fontname" : "Arial Bold",
					"triscale" : 0.7,
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Tempo",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 114.0, 34.0, 44.0, 18.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 492.0, 407.0, 46.0, 18.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-5",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "Beat tempo in bpm",
					"varname" : "tempo",
					"numoutlets" : 2,
					"hidden" : 0,
					"cantchange" : 0,
					"minimum" : 1.0,
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"fontface" : 0,
					"outputonclick" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"maximum" : "<none>",
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"presentation_rect" : [ 100.0, 51.0, 45.0, 20.0 ],
					"triangle" : 1,
					"numdecimalplaces" : 0,
					"hbgcolor" : [ 0.372549, 0.360784, 0.501961, 0.74902 ],
					"background" : 0,
					"mouseup" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"patching_rect" : [ 492.0, 331.0, 41.0, 20.0 ],
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-4",
					"fontname" : "Arial Bold",
					"triscale" : 0.7,
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "Control a master clock and report time values",
					"text" : "Transport",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 16.233263,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 10.0, 3.0, 86.0, 25.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 769.0, 40.0, 87.0, 25.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"id" : "obj-108",
					"fontname" : "Arial Bold Italic",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Time signature",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 13.914225,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 565.0, 460.0, 110.0, 22.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-76",
					"fontname" : "Arial Bold Italic",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Location",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 13.914225,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 337.0, 400.0, 68.0, 22.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-74",
					"fontname" : "Arial Bold Italic",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b 0.",
					"numoutlets" : 2,
					"hidden" : 0,
					"outlettype" : [ "bang", "float" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 707.0, 169.0, 34.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-60",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "format h:m:s:ms message",
					"linecount" : 3,
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 858.0, 378.0, 54.0, 42.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-56",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "location in ticks",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 755.0, 313.0, 81.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-55",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set Resolution : $1 ticks/beat",
					"linecount" : 2,
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 421.0, 456.0, 84.0, 28.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-52",
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"gradient" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1 : $2 : $3 . $4",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 751.0, 377.0, 100.0, 16.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-44",
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"gradient" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "convert raw ticks to  hours-minutes-seconds",
					"linecount" : 2,
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 826.0, 324.0, 117.0, 30.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-43",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "translate ticks hh:mm:ss @mode position",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 751.0, 354.0, 201.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-35",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"hidden" : 0,
					"cantchange" : 0,
					"minimum" : "<none>",
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"fontface" : 0,
					"outputonclick" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : "<none>",
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"triangle" : 1,
					"numdecimalplaces" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"mouseup" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 751.0, 332.0, 67.0, 18.0 ],
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-19",
					"fontname" : "Arial",
					"triscale" : 1.0,
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "rewind",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 598.0, 377.0, 41.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-16",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar location",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.54902, 0.85098, 0.6, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 578.0, 399.0, 70.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-2",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t l 0",
					"numoutlets" : 2,
					"hidden" : 0,
					"outlettype" : [ "", "int" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 564.0, 377.0, 32.5, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-51",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "timesig $1 $2",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 564.0, 421.0, 73.0, 16.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-141",
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"gradient" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 4 4",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 564.0, 355.0, 75.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-1",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar transport",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.945098, 0.913725, 0.407843, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 564.0, 441.0, 75.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-70",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "GM clicktrack",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 13.914225,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 40.0, 455.0, 101.0, 22.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-139",
					"fontname" : "Arial Bold Italic",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 45.0, 392.0, 51.5, 18.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-134",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "change",
					"numoutlets" : 3,
					"hidden" : 0,
					"outlettype" : [ "", "int", "int" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 78.0, 309.0, 46.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-65",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"hidden" : 0,
					"blinkcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"outlettype" : [ "bang" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlinecolor" : [ 0.71328, 0.71328, 0.71328, 1.0 ],
					"background" : 0,
					"bgcolor" : [ 0.91328, 0.91328, 0.91328, 0.75 ],
					"patching_rect" : [ 78.0, 331.0, 18.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-63",
					"ignoreclick" : 0,
					"fgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "80",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 143.0, 353.0, 32.5, 16.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-42",
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"gradient" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "change",
					"numoutlets" : 3,
					"hidden" : 0,
					"outlettype" : [ "", "int", "int" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 143.0, 309.0, 46.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-135",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "81",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 78.0, 353.0, 32.5, 16.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-24",
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"gradient" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "makenote 127 128n",
					"numoutlets" : 2,
					"hidden" : 0,
					"outlettype" : [ "float", "float" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 45.0, 414.0, 103.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 3,
					"id" : "obj-136",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout 10",
					"numoutlets" : 0,
					"hidden" : 0,
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 45.0, 436.0, 60.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 3,
					"id" : "obj-137",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar transport",
					"linecount" : 2,
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.945098, 0.913725, 0.407843, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 492.0, 375.0, 53.0, 30.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-128",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tempo $1",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 492.0, 355.0, 54.0, 16.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-127",
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"gradient" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar transport",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.945098, 0.913725, 0.407843, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 668.0, 355.0, 75.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-126",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set location in ticks",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 276.0, 481.0, 98.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-113",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"hidden" : 0,
					"cantchange" : 0,
					"minimum" : "<none>",
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"fontface" : 0,
					"outputonclick" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : "<none>",
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"triangle" : 1,
					"numdecimalplaces" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"mouseup" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 206.0, 481.0, 69.0, 18.0 ],
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-112",
					"fontname" : "Arial",
					"triscale" : 1.0,
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pvar location",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.54902, 0.85098, 0.6, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 206.0, 503.0, 70.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-111",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "convert bar.beat.unit to tick as position",
					"linecount" : 3,
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 336.0, 442.0, 82.0, 42.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-101",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bar.beat.unit ",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 336.0, 427.0, 71.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-6",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "speedlim",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 240.0, 405.0, 52.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-102",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "convert ints to bar.beat.unit ",
					"linecount" : 2,
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 352.0, 355.0, 76.0, 30.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-103",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b l",
					"numoutlets" : 2,
					"hidden" : 0,
					"outlettype" : [ "bang", "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 206.0, 383.0, 128.5, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-104",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "22664 3 20.",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 206.0, 427.0, 129.0, 16.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-105",
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"gradient" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "translate bars.beats.units ticks @mode position",
					"linecount" : 2,
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 206.0, 447.0, 129.0, 30.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-106",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 206.0, 405.0, 32.5, 18.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-107",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 609.0, 311.0, 39.0, 16.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-92",
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"gradient" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 635.0, 256.0, 39.0, 16.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-90",
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"gradient" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack",
					"numoutlets" : 2,
					"hidden" : 0,
					"outlettype" : [ "int", "int" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 564.0, 269.0, 64.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-88",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 492.0, 311.0, 39.0, 16.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-87",
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"gradient" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 349.0, 273.0, 39.0, 16.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-84",
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"gradient" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 278.0, 273.0, 39.0, 16.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-80",
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"gradient" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 564.0, 311.0, 39.0, 16.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-79",
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"gradient" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 206.0, 273.0, 39.0, 16.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-50",
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"gradient" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Control a master clock and report time values.",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 13.914225,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 312.0, 201.0, 317.0, 22.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-3",
					"fontname" : "Arial Bold Italic",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "location in ticks",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 789.0, 192.0, 81.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-34",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This metro will start as soon as you start the transport, running automatically at the time specified with the attribute.",
					"linecount" : 2,
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 225.0, 71.0, 303.0, 30.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-12",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Add a delay (closest to & greater than the reference one : 16n), so, when the transport is stopped from another location, the patch still displays the right state. For this we need a delay which is NOT synchronized to the transport - rather we calculate its value according to the current tempo.",
					"linecount" : 5,
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 296.0, 120.0, 287.0, 66.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-8",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "b",
					"numoutlets" : 2,
					"hidden" : 0,
					"outlettype" : [ "bang", "bang" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 160.0, 96.0, 63.5, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-7",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "get state",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 236.0, 168.0, 51.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-36",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Output transport's state at a rate corresponding to the minimum time signature unit",
					"numoutlets" : 0,
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 0,
					"underline" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 156.0, 31.0, 389.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-37",
					"fontname" : "Arial",
					"ignoreclick" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"hidden" : 0,
					"blinkcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"outlettype" : [ "bang" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlinecolor" : [ 0.71328, 0.71328, 0.71328, 1.0 ],
					"background" : 0,
					"bgcolor" : [ 0.91328, 0.91328, 0.91328, 0.75 ],
					"patching_rect" : [ 160.0, 209.0, 18.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-89",
					"ignoreclick" : 0,
					"fgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "del",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "bang" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 160.0, 187.0, 32.5, 18.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-85",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"hidden" : 0,
					"cantchange" : 0,
					"minimum" : "<none>",
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"fontface" : 0,
					"outputonclick" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : "<none>",
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"triangle" : 1,
					"numdecimalplaces" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"mouseup" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 174.0, 165.0, 50.0, 18.0 ],
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-83",
					"fontname" : "Arial",
					"triscale" : 1.0,
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "8nt",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 174.0, 123.0, 32.5, 16.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-82",
					"fontname" : "Arial",
					"ignoreclick" : 0,
					"gradient" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "translate notevalues ms",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 174.0, 143.0, 121.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-81",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "bang" ],
					"fontface" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 234.0, 187.0, 53.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-53",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "location",
					"numoutlets" : 2,
					"hidden" : 0,
					"cantchange" : 0,
					"minimum" : "<none>",
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"outlettype" : [ "float", "bang" ],
					"fontface" : 1,
					"outputonclick" : 0,
					"fontsize" : 10.435669,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"maximum" : "<none>",
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"triangle" : 1,
					"numdecimalplaces" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"background" : 0,
					"mouseup" : 0,
					"bgcolor" : [ 0.54902, 0.85098, 0.6, 1.0 ],
					"patching_rect" : [ 722.0, 191.0, 67.0, 18.0 ],
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.592157, 0.733333, 0.615686, 1.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-38",
					"fontname" : "Arial",
					"triscale" : 1.0,
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"hidden" : 0,
					"blinkcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"outlettype" : [ "bang" ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"outlinecolor" : [ 0.71328, 0.71328, 0.71328, 1.0 ],
					"background" : 0,
					"bgcolor" : [ 0.91328, 0.91328, 0.91328, 0.75 ],
					"patching_rect" : [ 160.0, 74.0, 18.0, 18.0 ],
					"presentation" : 0,
					"numinlets" : 1,
					"id" : "obj-39",
					"ignoreclick" : 0,
					"fgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "transport",
					"text" : "transport",
					"numoutlets" : 9,
					"hidden" : 0,
					"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
					"fontface" : 0,
					"fontsize" : 13.914225,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.945098, 0.913725, 0.407843, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 206.0, 226.0, 519.5, 22.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-41",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 16n @quantize 16n @active 1 @autostart 1 @autostarttime 0.",
					"numoutlets" : 1,
					"hidden" : 0,
					"outlettype" : [ "bang" ],
					"fontface" : 0,
					"fontsize" : 11.595187,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 160.0, 50.0, 364.0, 20.0 ],
					"presentation" : 0,
					"numinlets" : 2,
					"id" : "obj-40",
					"fontname" : "Arial",
					"ignoreclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "",
					"prototypename" : "Arial9",
					"numoutlets" : 0,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"mode" : 0,
					"rounded" : 20,
					"border" : 0,
					"presentation_rect" : [ 185.0, 32.0, 149.0, 63.0 ],
					"background" : 1,
					"angle" : 0.0,
					"bgcolor" : [ 0.658824, 0.658824, 0.74902, 1.0 ],
					"patching_rect" : [ 914.0, 43.0, 20.0, 21.0 ],
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"id" : "obj-73",
					"ignoreclick" : 1,
					"shadow" : -1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "",
					"prototypename" : "Arial9",
					"numoutlets" : 0,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"mode" : 0,
					"rounded" : 20,
					"border" : 0,
					"presentation_rect" : [ 9.0, 32.0, 170.0, 63.0 ],
					"background" : 1,
					"angle" : 0.0,
					"bgcolor" : [ 0.658824, 0.658824, 0.74902, 1.0 ],
					"patching_rect" : [ 889.0, 43.0, 20.0, 21.0 ],
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"id" : "obj-72",
					"ignoreclick" : 1,
					"shadow" : -1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "",
					"prototypename" : "Arial9",
					"numoutlets" : 0,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"hidden" : 0,
					"mode" : 0,
					"rounded" : 0,
					"border" : 0,
					"presentation_rect" : [ 0.0, 0.0, 343.0, 106.0 ],
					"background" : 1,
					"angle" : 0.0,
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"patching_rect" : [ 862.0, 43.0, 20.0, 20.0 ],
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"id" : "obj-75",
					"ignoreclick" : 1,
					"shadow" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-68", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-41", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 1 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 3 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-135", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-134", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-136", 1 ],
					"destination" : [ "obj-137", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 138.5, 433.0, 75.0, 433.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-136", 0 ],
					"destination" : [ "obj-137", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-134", 0 ],
					"destination" : [ "obj-136", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-134", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-134", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 0 ],
					"destination" : [ "obj-128", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-127", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-126", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 0 ],
					"destination" : [ "obj-111", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-112", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-41", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 0 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 1 ],
					"destination" : [ "obj-105", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-107", 0 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 1 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 6 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 5 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 4 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 2 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 1 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-89", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-85", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-141", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-141", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 1 ],
					"destination" : [ "obj-135", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 7 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 2 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-20", 2 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-117", 0 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-140", 0 ],
					"destination" : [ "obj-142", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
 ]
	}

}
