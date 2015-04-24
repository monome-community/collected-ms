{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 1945.0, 101.0, 449.0, 480.0 ],
		"bglocked" : 0,
		"defrect" : [ 1945.0, 101.0, 449.0, 480.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"bgoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-101",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 189.0, 406.0, 238.0, 59.0 ],
					"numinlets" : 1,
					"bordercolor" : [ 0.6, 0.6, 0.6, 0.0 ],
					"fontname" : "Arial",
					"patching_rect" : [ 332.0, 708.0, 171.0, 20.0 ],
					"textovercolor" : [ 1.0, 0.509804, 0.156863, 1.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textoveroncolor" : [ 1.0, 0.509804, 0.156863, 1.0 ],
					"bgovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"fontface" : 1,
					"rounded" : 0.0,
					"fontsize" : 12.0,
					"bgoveroncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"text" : "Created By Ewan Hemingway"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\r\nmax launchbrowser http://www.ewanhemingway.co.uk",
					"linecount" : 2,
					"id" : "obj-106",
					"numinlets" : 2,
					"fontname" : "Monaco",
					"patching_rect" : [ 332.0, 738.0, 249.0, 27.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 10.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "accord",
					"id" : "obj-96",
					"textcolor" : [ 1.0, 0.509804, 0.156863, 1.0 ],
					"presentation_rect" : [ 130.0, 101.0, 123.0, 48.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 138.0, 83.0, 395.0, 48.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"frgb" : [ 1.0, 0.509804, 0.156863, 1.0 ],
					"fontsize" : 36.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "vertical scale",
					"id" : "obj-54",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 14.0, 268.0, 165.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 1110.0, 337.0, 162.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "2",
					"id" : "obj-135",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 89.0, 312.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 0",
					"id" : "obj-133",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 258.0, 509.0, 37.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0 2 4 6 8 10 12 14",
					"id" : "obj-131",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 164.0, 540.0, 153.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "append $1",
					"id" : "obj-129",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 164.0, 508.0, 67.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*",
					"id" : "obj-123",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 164.0, 481.0, 32.5, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "uzi 7",
					"id" : "obj-121",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 137.0, 441.0, 46.0, 20.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "int" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b f b",
					"id" : "obj-120",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 137.0, 406.0, 46.0, 20.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "bang", "float", "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "2",
					"id" : "obj-119",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 137.0, 312.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-117",
					"presentation_rect" : [ 119.0, 322.0, 33.0, 20.0 ],
					"minimum" : 1,
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 137.0, 362.0, 50.0, 20.0 ],
					"maximum" : 24,
					"presentation" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "root note",
					"id" : "obj-115",
					"presentation_rect" : [ 253.0, 365.0, 150.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 322.0, 419.0, 150.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "disable",
					"id" : "obj-113",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 881.0, 371.0, 49.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-109",
					"numinlets" : 1,
					"patching_rect" : [ 676.0, 451.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-107",
					"numinlets" : 1,
					"patching_rect" : [ 760.0, 647.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s time",
					"id" : "obj-105",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 701.0, 647.0, 43.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"id" : "obj-102",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 563.0, 218.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route 1",
					"id" : "obj-85",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 856.0, 561.0, 48.0, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-84",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 951.0, 592.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "== 0",
					"id" : "obj-82",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 951.0, 553.0, 35.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route 0",
					"id" : "obj-81",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 951.0, 529.0, 48.0, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "i",
					"id" : "obj-80",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 951.0, 503.0, 32.5, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr 24/$i1",
					"id" : "obj-79",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 951.0, 477.0, 70.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r clockdiv",
					"id" : "obj-76",
					"numinlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 951.0, 450.0, 61.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"id" : "obj-74",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 701.0, 611.0, 34.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-68",
					"numinlets" : 1,
					"patching_rect" : [ 701.0, 577.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "== 0",
					"id" : "obj-62",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 701.0, 551.0, 35.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r useinternalclock",
					"id" : "obj-45",
					"numinlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 701.0, 525.0, 104.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"id" : "obj-157",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 785.0, 349.0, 60.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "sync source",
					"presentation_linecount" : 2,
					"id" : "obj-110",
					"presentation_rect" : [ 355.0, 265.0, 49.0, 34.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 915.0, 425.0, 132.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"id" : "obj-87",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 785.0, 373.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"framecolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"id" : "obj-89",
					"hltcolor" : [ 0.0, 0.4, 0.741176, 1.0 ],
					"presentation_rect" : [ 199.0, 271.0, 146.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 752.0, 426.0, 155.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"items" : [ "LoopBe Internal MIDI", ",", "2- UA-25EX", ",", "USB Oxygen 61" ],
					"outlettype" : [ "int", "", "" ],
					"rounded" : 7,
					"fontsize" : 12.0,
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiinfo",
					"id" : "obj-90",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 752.0, 397.0, 52.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "rtin",
					"id" : "obj-38",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 820.0, 457.0, 30.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "counter 24",
					"id" : "obj-103",
					"numinlets" : 5,
					"fontname" : "Arial",
					"patching_rect" : [ 820.0, 536.0, 73.0, 20.0 ],
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route 248",
					"id" : "obj-104",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 820.0, 486.0, 61.0, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s useinternalclock",
					"id" : "obj-31",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 490.0, 425.0, 106.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "16",
					"id" : "obj-78",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 517.0, 209.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "use internal clock",
					"id" : "obj-77",
					"presentation_rect" : [ 253.0, 241.0, 150.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 291.0, 292.0, 150.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "120",
					"id" : "obj-75",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 478.0, 210.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "system",
					"id" : "obj-73",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 14.0, 368.0, 165.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 1125.0, 352.0, 160.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "clock settings",
					"id" : "obj-72",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 189.0, 167.0, 236.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 1110.0, 337.0, 169.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "i",
					"id" : "obj-71",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 653.0, 350.0, 32.5, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr 60000 / $i1",
					"id" : "obj-70",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 653.0, 329.0, 97.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Enable logging?",
					"id" : "obj-69",
					"presentation_rect" : [ 50.0, 429.0, 111.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 340.0, 331.0, 150.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "*",
					"id" : "obj-67",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 653.0, 303.0, 32.5, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b f",
					"id" : "obj-66",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 623.0, 277.0, 32.5, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bpm",
					"id" : "obj-65",
					"presentation_rect" : [ 253.0, 216.0, 150.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 704.0, 239.0, 150.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-63",
					"presentation_rect" : [ 199.0, 217.0, 50.0, 20.0 ],
					"minimum" : 20,
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 646.0, 239.0, 50.0, 20.0 ],
					"maximum" : 320,
					"presentation" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s clockdiv",
					"id" : "obj-61",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 884.0, 241.0, 63.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "number of divisions",
					"id" : "obj-58",
					"presentation_rect" : [ 253.0, 192.0, 150.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 696.0, 187.0, 150.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mode",
					"id" : "obj-50",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 13.0, 168.0, 165.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 1095.0, 322.0, 158.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "midi out",
					"id" : "obj-43",
					"presentation_rect" : [ 366.0, 341.0, 51.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 727.0, 94.0, 150.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "midi settings",
					"id" : "obj-35",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 189.0, 315.0, 236.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 1080.0, 307.0, 166.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontface" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"id" : "obj-169",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 1026.0, 135.0, 37.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-167",
					"numinlets" : 1,
					"patching_rect" : [ 1026.0, 110.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"id" : "obj-163",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 1026.0, 163.0, 53.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "chord/arpeggio setup",
					"linecount" : 2,
					"id" : "obj-162",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 29.0, 234.0, 123.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 1026.0, 82.0, 73.0, 32.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s dur",
					"id" : "obj-5",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 654.0, 401.0, 37.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-11",
					"presentation_rect" : [ 199.0, 192.0, 50.0, 20.0 ],
					"minimum" : 1,
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 641.0, 188.0, 50.0, 20.0 ],
					"maximum" : 32,
					"presentation" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-14",
					"presentation_rect" : [ 199.0, 242.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 610.0, 361.0, 20.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s time",
					"id" : "obj-27",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 611.0, 449.0, 43.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro",
					"id" : "obj-29",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 611.0, 402.0, 41.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s log",
					"id" : "obj-60",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 315.0, 359.0, 36.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-59",
					"presentation_rect" : [ 25.0, 428.0, 19.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 315.0, 330.0, 20.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s chordmode",
					"id" : "obj-57",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 388.0, 626.0, 80.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "chord mode\narpeggio mode",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"id" : "obj-55",
					"presentation_rect" : [ 35.0, 196.0, 129.0, 36.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 407.0, 556.0, 161.0, 36.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"fontsize" : 13.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"id" : "obj-52",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 388.0, 524.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"id" : "obj-53",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 388.0, 501.0, 60.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"id" : "obj-51",
					"presentation_rect" : [ 17.0, 196.0, 18.0, 34.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 388.0, 556.0, 18.0, 34.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"itemtype" : 0,
					"size" : 2,
					"value" : 0,
					"disabled" : [ 0, 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "fpic",
					"id" : "obj-49",
					"presentation_rect" : [ 240.0, 13.0, 184.0, 143.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 12.0, 11.0, 397.0, 164.0 ],
					"pic" : "C:/Users/Hemmer/Documents/maxmsp/accord/accord.png",
					"presentation" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-48",
					"numinlets" : 1,
					"patching_rect" : [ 593.0, 22.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s midiChn",
					"id" : "obj-92",
					"numinlets" : 1,
					"fontname" : "Monaco",
					"patching_rect" : [ 576.0, 143.0, 59.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-93",
					"presentation_rect" : [ 344.0, 340.0, 21.0, 20.0 ],
					"triangle" : 0,
					"minimum" : 1,
					"numinlets" : 1,
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"fontname" : "Helvetica Bold",
					"patching_rect" : [ 576.0, 118.0, 29.0, 20.0 ],
					"maximum" : 16,
					"presentation" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s midiPort",
					"id" : "obj-94",
					"numinlets" : 1,
					"fontname" : "Monaco",
					"patching_rect" : [ 639.0, 143.0, 65.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend port",
					"id" : "obj-95",
					"numinlets" : 1,
					"fontname" : "Monaco",
					"patching_rect" : [ 639.0, 118.0, 75.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"id" : "obj-97",
					"numinlets" : 2,
					"fontname" : "Monaco",
					"patching_rect" : [ 649.0, 69.0, 38.0, 15.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"id" : "obj-98",
					"numinlets" : 1,
					"fontname" : "Monaco",
					"patching_rect" : [ 589.0, 45.0, 54.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
					"id" : "obj-99",
					"presentation_rect" : [ 199.0, 340.0, 143.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 589.0, 94.0, 118.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 3,
					"items" : [ "Microsoft Synthesizer", ",", "Microsoft GS Wavetable Synth", ",", "LoopBe Internal MIDI", ",", "2- UA-25EX", ",", "USB Oxygen 61" ],
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 12.0,
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiinfo",
					"id" : "obj-100",
					"numinlets" : 2,
					"fontname" : "Monaco",
					"patching_rect" : [ 589.0, 69.0, 54.0, 17.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 9.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "100",
					"id" : "obj-46",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 346.0, 243.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "90",
					"id" : "obj-44",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 302.0, 244.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s dur",
					"id" : "obj-42",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 346.0, 270.0, 37.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s vel",
					"id" : "obj-41",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 302.0, 270.0, 35.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"id" : "obj-40",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 302.0, 187.0, 60.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/sys/prefix /accord",
					"id" : "obj-39",
					"presentation_rect" : [ 23.0, 398.0, 107.0, 18.0 ],
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 417.0, 254.0, 107.0, 18.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s send_osc",
					"id" : "obj-37",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 388.0, 273.0, 71.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/accord/clear",
					"id" : "obj-36",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 388.0, 229.0, 79.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "major\nminor\nfixed interval\ncustom (tbc)",
					"linecount" : 4,
					"presentation_linecount" : 4,
					"id" : "obj-30",
					"presentation_rect" : [ 36.0, 292.0, 131.0, 66.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 56.0, 333.0, 163.0, 66.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"fontsize" : 13.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"id" : "obj-28",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 36.0, 307.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"id" : "obj-26",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 36.0, 272.0, 60.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s 7-vinc",
					"id" : "obj-22",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 146.0, 670.0, 52.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s 6-vinc",
					"id" : "obj-23",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 131.0, 648.0, 52.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s 5-vinc",
					"id" : "obj-24",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 115.0, 623.0, 52.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s 4-vinc",
					"id" : "obj-25",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 99.0, 601.0, 52.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s 3-vinc",
					"id" : "obj-20",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 83.0, 668.0, 52.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s 2-vinc",
					"id" : "obj-21",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 67.0, 646.0, 52.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s 1-vinc",
					"id" : "obj-19",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 52.0, 621.0, 52.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s 0-vinc",
					"id" : "obj-18",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 36.0, 599.0, 52.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0 0 0 0 0 0 0 0",
					"id" : "obj-17",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 36.0, 564.0, 129.0, 20.0 ],
					"numoutlets" : 8,
					"outlettype" : [ "int", "int", "int", "int", "int", "int", "int", "int" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0 2 4 5 7 9 11 12",
					"id" : "obj-16",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 52.0, 488.0, 100.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0 2 4 5 7 9 11 12",
					"id" : "obj-15",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 36.0, 459.0, 100.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "select 0 1 2 3",
					"id" : "obj-13",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 36.0, 417.0, 82.0, 20.0 ],
					"numoutlets" : 5,
					"outlettype" : [ "bang", "bang", "bang", "bang", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "radiogroup",
					"id" : "obj-12",
					"presentation_rect" : [ 18.0, 292.0, 18.0, 66.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 36.0, 334.0, 18.0, 66.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"itemtype" : 0,
					"size" : 4,
					"value" : 0,
					"disabled" : [ 0, 0, 0, 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s initnote",
					"id" : "obj-10",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 1037.0, 360.0, 59.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s initbang",
					"id" : "obj-8",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 1023.0, 382.0, 62.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b f",
					"id" : "obj-7",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 1023.0, 335.0, 32.5, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "55",
					"id" : "obj-9",
					"numinlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 1023.0, 282.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"id" : "obj-3",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 1023.0, 255.0, 60.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p arpscales",
					"id" : "obj-6",
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 1026.0, 206.0, 72.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 2259.0, 266.0, 620.0, 523.0 ],
						"bglocked" : 0,
						"defrect" : [ 2259.0, 266.0, 620.0, 523.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "global sequence/chord length",
									"id" : "obj-223",
									"presentation_rect" : [ 74.0, 494.0, 162.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1101.0, 733.0, 162.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontface" : 1,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r globalstep",
									"id" : "obj-96",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 1093.0, 499.0, 62.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r globalstep",
									"id" : "obj-97",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 1112.0, 687.0, 62.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s 7-steplength",
									"id" : "obj-99",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1033.0, 737.0, 73.0, 18.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"id" : "obj-100",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1033.0, 668.0, 52.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "8",
									"id" : "obj-101",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 1033.0, 693.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "7",
									"id" : "obj-102",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 1026.0, 620.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "6",
									"id" : "obj-103",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 971.0, 620.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "5",
									"id" : "obj-104",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 916.0, 620.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "4",
									"id" : "obj-105",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 861.0, 620.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sequence/chord length",
									"id" : "obj-106",
									"presentation_rect" : [ 451.0, 459.0, 150.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1086.0, 718.0, 150.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-107",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation_rect" : [ 396.0, 458.0, 50.0, 18.0 ],
									"minimum" : 1,
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1033.0, 717.0, 50.0, 18.0 ],
									"maximum" : 8,
									"presentation" : 1,
									"numoutlets" : 2,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "3",
									"id" : "obj-108",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 809.0, 621.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2",
									"id" : "obj-109",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 754.0, 621.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"id" : "obj-110",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 699.0, 621.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"id" : "obj-111",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 644.0, 621.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r initbang",
									"id" : "obj-112",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 644.0, 570.0, 52.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "column 7",
									"id" : "obj-113",
									"presentation_rect" : [ 451.0, 435.0, 150.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1081.0, 643.0, 150.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-114",
									"presentation_rect" : [ 396.0, 434.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1026.0, 642.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-115",
									"presentation_rect" : [ 341.0, 434.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 971.0, 642.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-116",
									"presentation_rect" : [ 287.0, 434.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 916.0, 642.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-167",
									"presentation_rect" : [ 233.0, 434.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 861.0, 642.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-168",
									"presentation_rect" : [ 181.0, 434.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 809.0, 642.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-169",
									"presentation_rect" : [ 127.0, 434.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 754.0, 642.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-170",
									"presentation_rect" : [ 72.0, 434.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 699.0, 642.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "arpscale 7",
									"id" : "obj-171",
									"numinlets" : 8,
									"fontname" : "Arial",
									"patching_rect" : [ 645.0, 732.0, 113.5, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-172",
									"presentation_rect" : [ 17.0, 434.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 644.0, 642.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s 6-steplength",
									"id" : "obj-173",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1030.0, 549.0, 73.0, 18.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"id" : "obj-174",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1030.0, 480.0, 52.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "6",
									"id" : "obj-176",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 1030.0, 505.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "22",
									"id" : "obj-177",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 1023.0, 432.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "19",
									"id" : "obj-178",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 968.0, 432.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "17",
									"id" : "obj-179",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 913.0, 432.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "14",
									"id" : "obj-180",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 858.0, 432.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sequence/chord length",
									"id" : "obj-181",
									"presentation_rect" : [ 451.0, 403.0, 150.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1083.0, 528.0, 150.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-182",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation_rect" : [ 396.0, 402.0, 50.0, 18.0 ],
									"minimum" : 1,
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1030.0, 527.0, 50.0, 18.0 ],
									"maximum" : 8,
									"presentation" : 1,
									"numoutlets" : 2,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "12",
									"id" : "obj-183",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 806.0, 433.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "10",
									"id" : "obj-184",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 751.0, 433.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "7",
									"id" : "obj-185",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 696.0, 433.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"id" : "obj-186",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 641.0, 433.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r initbang",
									"id" : "obj-187",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 641.0, 382.0, 52.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "column 6",
									"id" : "obj-188",
									"presentation_rect" : [ 451.0, 377.0, 150.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1078.0, 455.0, 150.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-189",
									"presentation_rect" : [ 396.0, 376.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1023.0, 454.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-190",
									"presentation_rect" : [ 341.0, 376.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 968.0, 454.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-191",
									"presentation_rect" : [ 287.0, 376.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 913.0, 454.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-217",
									"presentation_rect" : [ 233.0, 376.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 858.0, 454.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-218",
									"presentation_rect" : [ 181.0, 376.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 806.0, 454.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-219",
									"presentation_rect" : [ 127.0, 376.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 751.0, 454.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-220",
									"presentation_rect" : [ 72.0, 376.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 696.0, 454.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "arpscale 6",
									"id" : "obj-221",
									"numinlets" : 8,
									"fontname" : "Arial",
									"patching_rect" : [ 642.0, 544.0, 113.5, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-222",
									"presentation_rect" : [ 17.0, 376.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 641.0, 454.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r globalstep",
									"id" : "obj-192",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 498.0, 686.0, 62.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s 3-steplength",
									"id" : "obj-193",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 409.0, 742.0, 73.0, 18.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"id" : "obj-194",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 409.0, 673.0, 52.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "8",
									"id" : "obj-195",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 409.0, 698.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "22",
									"id" : "obj-196",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 402.0, 625.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "19",
									"id" : "obj-197",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 347.0, 625.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "15",
									"id" : "obj-198",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 292.0, 625.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "12",
									"id" : "obj-199",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 237.0, 625.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sequence/chord length",
									"id" : "obj-200",
									"presentation_rect" : [ 451.0, 229.0, 150.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 462.0, 725.0, 150.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-201",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation_rect" : [ 396.0, 228.0, 50.0, 18.0 ],
									"minimum" : 1,
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 409.0, 724.0, 50.0, 18.0 ],
									"maximum" : 8,
									"presentation" : 1,
									"numoutlets" : 2,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "10",
									"id" : "obj-202",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 185.0, 626.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "7",
									"id" : "obj-203",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 130.0, 626.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "3",
									"id" : "obj-204",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 75.0, 626.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"id" : "obj-205",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 20.0, 626.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r initbang",
									"id" : "obj-206",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 20.0, 575.0, 52.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "column 3",
									"id" : "obj-207",
									"presentation_rect" : [ 451.0, 200.0, 150.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 457.0, 648.0, 150.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-208",
									"presentation_rect" : [ 396.0, 199.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 402.0, 647.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-209",
									"presentation_rect" : [ 341.0, 199.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 347.0, 647.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-210",
									"presentation_rect" : [ 287.0, 199.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 292.0, 647.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-211",
									"presentation_rect" : [ 233.0, 199.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 237.0, 647.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-212",
									"presentation_rect" : [ 181.0, 199.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 185.0, 647.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-213",
									"presentation_rect" : [ 127.0, 199.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 130.0, 647.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-214",
									"presentation_rect" : [ 72.0, 199.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 75.0, 647.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "arpscale 3",
									"id" : "obj-215",
									"numinlets" : 8,
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 737.0, 113.5, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-216",
									"presentation_rect" : [ 17.0, 199.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 20.0, 647.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r globalstep",
									"id" : "obj-90",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 1094.0, 120.0, 62.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r globalstep",
									"id" : "obj-91",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 1113.0, 308.0, 62.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s 5-steplength",
									"id" : "obj-118",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1034.0, 358.0, 73.0, 18.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"id" : "obj-119",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1034.0, 289.0, 52.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "8",
									"id" : "obj-120",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 1034.0, 314.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "22",
									"id" : "obj-121",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 1027.0, 241.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "20",
									"id" : "obj-122",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 972.0, 241.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "16",
									"id" : "obj-123",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 917.0, 241.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "12",
									"id" : "obj-124",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 862.0, 241.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sequence/chord length",
									"id" : "obj-125",
									"presentation_rect" : [ 451.0, 345.0, 150.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1087.0, 339.0, 150.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-126",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation_rect" : [ 396.0, 344.0, 50.0, 18.0 ],
									"minimum" : 1,
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1034.0, 338.0, 50.0, 18.0 ],
									"maximum" : 8,
									"presentation" : 1,
									"numoutlets" : 2,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "10",
									"id" : "obj-127",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 810.0, 242.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "8",
									"id" : "obj-128",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 755.0, 242.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "4",
									"id" : "obj-129",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 700.0, 242.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"id" : "obj-130",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 645.0, 242.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r initbang",
									"id" : "obj-131",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 645.0, 191.0, 52.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "column 5",
									"id" : "obj-132",
									"presentation_rect" : [ 451.0, 320.0, 150.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1082.0, 264.0, 150.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-133",
									"presentation_rect" : [ 396.0, 319.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1027.0, 263.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-134",
									"presentation_rect" : [ 341.0, 319.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 972.0, 263.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-135",
									"presentation_rect" : [ 287.0, 319.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 917.0, 263.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-136",
									"presentation_rect" : [ 233.0, 319.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 862.0, 263.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-137",
									"presentation_rect" : [ 181.0, 319.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 810.0, 263.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-138",
									"presentation_rect" : [ 127.0, 319.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 755.0, 263.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-139",
									"presentation_rect" : [ 72.0, 319.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 700.0, 263.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "arpscale 5",
									"id" : "obj-140",
									"numinlets" : 8,
									"fontname" : "Arial",
									"patching_rect" : [ 646.0, 353.0, 113.5, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-141",
									"presentation_rect" : [ 17.0, 319.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 645.0, 263.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s 4-steplength",
									"id" : "obj-142",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1031.0, 170.0, 73.0, 18.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"id" : "obj-143",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1031.0, 101.0, 52.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "8",
									"id" : "obj-145",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 1031.0, 126.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "21",
									"id" : "obj-146",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 1024.0, 53.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "18",
									"id" : "obj-147",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 969.0, 53.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "15",
									"id" : "obj-148",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 914.0, 53.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "12",
									"id" : "obj-149",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 859.0, 53.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sequence/chord length",
									"id" : "obj-150",
									"presentation_rect" : [ 451.0, 287.0, 150.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1084.0, 149.0, 150.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-151",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation_rect" : [ 396.0, 286.0, 50.0, 18.0 ],
									"minimum" : 1,
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1031.0, 148.0, 50.0, 18.0 ],
									"maximum" : 8,
									"presentation" : 1,
									"numoutlets" : 2,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "9",
									"id" : "obj-152",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 807.0, 54.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "6",
									"id" : "obj-153",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 752.0, 54.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "3",
									"id" : "obj-154",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 697.0, 54.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"id" : "obj-155",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 642.0, 54.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r initbang",
									"id" : "obj-156",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 642.0, 3.0, 52.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "column 4",
									"id" : "obj-157",
									"presentation_rect" : [ 451.0, 263.0, 150.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1079.0, 76.0, 150.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-158",
									"presentation_rect" : [ 396.0, 262.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 1024.0, 75.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-159",
									"presentation_rect" : [ 341.0, 262.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 969.0, 75.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-160",
									"presentation_rect" : [ 287.0, 262.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 914.0, 75.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-161",
									"presentation_rect" : [ 233.0, 262.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 859.0, 75.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-162",
									"presentation_rect" : [ 181.0, 262.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 807.0, 75.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-163",
									"presentation_rect" : [ 127.0, 262.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 752.0, 75.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-164",
									"presentation_rect" : [ 72.0, 262.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 697.0, 75.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "arpscale 4",
									"id" : "obj-165",
									"numinlets" : 8,
									"fontname" : "Arial",
									"patching_rect" : [ 643.0, 165.0, 113.5, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-166",
									"presentation_rect" : [ 17.0, 262.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 642.0, 75.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-84",
									"numinlets" : 0,
									"patching_rect" : [ 1294.0, 22.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"id" : "obj-80",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 430.0, 10.0, 52.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "8",
									"id" : "obj-81",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 430.0, 35.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s globalstep",
									"id" : "obj-53",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 523.0, 49.0, 64.0, 18.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-55",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation_rect" : [ 22.0, 493.0, 50.0, 18.0 ],
									"minimum" : 1,
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 523.0, 27.0, 50.0, 18.0 ],
									"maximum" : 8,
									"presentation" : 1,
									"numoutlets" : 2,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r globalstep",
									"id" : "obj-52",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 471.0, 120.0, 62.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r globalstep",
									"id" : "obj-51",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 490.0, 308.0, 62.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r globalstep",
									"id" : "obj-28",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 498.0, 489.0, 62.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s 2-steplength",
									"id" : "obj-56",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 409.0, 545.0, 73.0, 18.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"id" : "obj-57",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 409.0, 476.0, 52.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "8",
									"id" : "obj-58",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 409.0, 501.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "21",
									"id" : "obj-59",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 402.0, 428.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "19",
									"id" : "obj-60",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 347.0, 428.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "16",
									"id" : "obj-61",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 292.0, 428.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "14",
									"id" : "obj-62",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 237.0, 428.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sequence/chord length",
									"id" : "obj-63",
									"presentation_rect" : [ 451.0, 165.0, 150.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 462.0, 528.0, 150.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-64",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation_rect" : [ 396.0, 164.0, 50.0, 18.0 ],
									"minimum" : 1,
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 409.0, 527.0, 50.0, 18.0 ],
									"maximum" : 8,
									"presentation" : 1,
									"numoutlets" : 2,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "11",
									"id" : "obj-65",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 185.0, 429.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "7",
									"id" : "obj-66",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 130.0, 429.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "4",
									"id" : "obj-67",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 75.0, 429.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"id" : "obj-68",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 20.0, 429.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r initbang",
									"id" : "obj-69",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 20.0, 378.0, 52.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "column 2",
									"id" : "obj-70",
									"presentation_rect" : [ 451.0, 140.0, 150.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 457.0, 451.0, 150.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-71",
									"presentation_rect" : [ 396.0, 139.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 402.0, 450.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-72",
									"presentation_rect" : [ 341.0, 139.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 347.0, 450.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-73",
									"presentation_rect" : [ 287.0, 139.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 292.0, 450.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-74",
									"presentation_rect" : [ 233.0, 139.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 237.0, 450.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-75",
									"presentation_rect" : [ 181.0, 139.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 185.0, 450.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-76",
									"presentation_rect" : [ 127.0, 139.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 130.0, 450.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-77",
									"presentation_rect" : [ 72.0, 139.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 75.0, 450.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "arpscale 2",
									"id" : "obj-78",
									"numinlets" : 8,
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 540.0, 113.5, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-79",
									"presentation_rect" : [ 17.0, 139.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 20.0, 450.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-54",
									"numinlets" : 1,
									"patching_rect" : [ 335.0, 139.0, 20.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s 1-steplength",
									"id" : "obj-11",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 411.0, 358.0, 73.0, 18.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"id" : "obj-15",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 411.0, 289.0, 52.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "8",
									"id" : "obj-29",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 411.0, 314.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "12",
									"id" : "obj-30",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 404.0, 241.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "7",
									"id" : "obj-31",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 349.0, 241.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "3",
									"id" : "obj-32",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 294.0, 241.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"id" : "obj-33",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 239.0, 241.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sequence/chord length",
									"id" : "obj-34",
									"presentation_rect" : [ 451.0, 100.0, 150.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 464.0, 339.0, 150.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-35",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation_rect" : [ 396.0, 99.0, 50.0, 18.0 ],
									"minimum" : 1,
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 411.0, 338.0, 50.0, 18.0 ],
									"maximum" : 8,
									"presentation" : 1,
									"numoutlets" : 2,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "12",
									"id" : "obj-36",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 187.0, 242.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "7",
									"id" : "obj-37",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 132.0, 242.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "3",
									"id" : "obj-38",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 77.0, 242.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"id" : "obj-39",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 22.0, 242.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r initbang",
									"id" : "obj-40",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 22.0, 191.0, 52.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "column 1",
									"id" : "obj-41",
									"presentation_rect" : [ 451.0, 77.0, 150.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 459.0, 264.0, 150.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-42",
									"presentation_rect" : [ 396.0, 76.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 404.0, 263.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-43",
									"presentation_rect" : [ 341.0, 76.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 349.0, 263.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-44",
									"presentation_rect" : [ 287.0, 76.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 294.0, 263.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-45",
									"presentation_rect" : [ 233.0, 76.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 239.0, 263.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-46",
									"presentation_rect" : [ 181.0, 76.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 187.0, 263.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-47",
									"presentation_rect" : [ 127.0, 76.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 132.0, 263.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-48",
									"presentation_rect" : [ 72.0, 76.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 77.0, 263.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "arpscale 1",
									"id" : "obj-49",
									"numinlets" : 8,
									"fontname" : "Arial",
									"patching_rect" : [ 23.0, 353.0, 113.5, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-50",
									"presentation_rect" : [ 17.0, 76.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 22.0, 263.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s 0-steplength",
									"id" : "obj-27",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 408.0, 170.0, 73.0, 18.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"id" : "obj-25",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 408.0, 101.0, 52.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s initbang",
									"id" : "obj-2",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 335.0, 167.0, 53.0, 18.0 ],
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "8",
									"id" : "obj-26",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 408.0, 126.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "12",
									"id" : "obj-19",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 401.0, 53.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "7",
									"id" : "obj-21",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 346.0, 53.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "4",
									"id" : "obj-23",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 291.0, 53.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"id" : "obj-24",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 236.0, 53.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sequence/chord length",
									"id" : "obj-17",
									"presentation_rect" : [ 451.0, 42.0, 150.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 461.0, 149.0, 150.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-12",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation_rect" : [ 396.0, 41.0, 50.0, 18.0 ],
									"minimum" : 1,
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 408.0, 148.0, 50.0, 18.0 ],
									"maximum" : 8,
									"presentation" : 1,
									"numoutlets" : 2,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "12",
									"id" : "obj-22",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 54.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "7",
									"id" : "obj-20",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 129.0, 54.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "4",
									"id" : "obj-18",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 74.0, 54.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"id" : "obj-16",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 19.0, 54.0, 32.5, 16.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r initbang",
									"id" : "obj-14",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 19.0, 3.0, 52.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "column 0",
									"id" : "obj-13",
									"presentation_rect" : [ 451.0, 20.0, 150.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 456.0, 76.0, 150.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-7",
									"presentation_rect" : [ 396.0, 19.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 401.0, 75.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-8",
									"presentation_rect" : [ 341.0, 19.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 346.0, 75.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-9",
									"presentation_rect" : [ 287.0, 19.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 291.0, 75.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-10",
									"presentation_rect" : [ 233.0, 19.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 236.0, 75.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-4",
									"presentation_rect" : [ 181.0, 19.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 75.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-5",
									"presentation_rect" : [ 127.0, 19.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 129.0, 75.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-3",
									"presentation_rect" : [ 72.0, 19.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 74.0, 75.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "arpscale 0",
									"id" : "obj-1",
									"numinlets" : 8,
									"fontname" : "Arial",
									"patching_rect" : [ 20.0, 165.0, 148.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-6",
									"presentation_rect" : [ 17.0, 19.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 19.0, 75.0, 50.0, 18.0 ],
									"presentation" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 10.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-141", 0 ],
									"destination" : [ "obj-140", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-139", 0 ],
									"destination" : [ "obj-140", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-138", 0 ],
									"destination" : [ "obj-140", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-137", 0 ],
									"destination" : [ "obj-140", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-136", 0 ],
									"destination" : [ "obj-140", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-135", 0 ],
									"destination" : [ "obj-140", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-134", 0 ],
									"destination" : [ "obj-140", 6 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-133", 0 ],
									"destination" : [ "obj-140", 7 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-158", 0 ],
									"destination" : [ "obj-165", 7 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-159", 0 ],
									"destination" : [ "obj-165", 6 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-160", 0 ],
									"destination" : [ "obj-165", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-161", 0 ],
									"destination" : [ "obj-165", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-162", 0 ],
									"destination" : [ "obj-165", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-163", 0 ],
									"destination" : [ "obj-165", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-164", 0 ],
									"destination" : [ "obj-165", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-166", 0 ],
									"destination" : [ "obj-165", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-151", 0 ],
									"destination" : [ "obj-142", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-126", 0 ],
									"destination" : [ "obj-118", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-201", 0 ],
									"destination" : [ "obj-193", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-216", 0 ],
									"destination" : [ "obj-215", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-214", 0 ],
									"destination" : [ "obj-215", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-213", 0 ],
									"destination" : [ "obj-215", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-212", 0 ],
									"destination" : [ "obj-215", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-211", 0 ],
									"destination" : [ "obj-215", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-210", 0 ],
									"destination" : [ "obj-215", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-209", 0 ],
									"destination" : [ "obj-215", 6 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-208", 0 ],
									"destination" : [ "obj-215", 7 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-194", 0 ],
									"destination" : [ "obj-195", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-202", 0 ],
									"destination" : [ "obj-212", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-203", 0 ],
									"destination" : [ "obj-213", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-204", 0 ],
									"destination" : [ "obj-214", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-205", 0 ],
									"destination" : [ "obj-216", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-206", 0 ],
									"destination" : [ "obj-205", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-206", 0 ],
									"destination" : [ "obj-204", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-206", 0 ],
									"destination" : [ "obj-203", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-206", 0 ],
									"destination" : [ "obj-202", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-199", 0 ],
									"destination" : [ "obj-211", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-198", 0 ],
									"destination" : [ "obj-210", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-197", 0 ],
									"destination" : [ "obj-209", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-196", 0 ],
									"destination" : [ "obj-208", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-206", 0 ],
									"destination" : [ "obj-199", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-206", 0 ],
									"destination" : [ "obj-198", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-206", 0 ],
									"destination" : [ "obj-197", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-206", 0 ],
									"destination" : [ "obj-196", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-195", 0 ],
									"destination" : [ "obj-201", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-192", 0 ],
									"destination" : [ "obj-201", 0 ],
									"hidden" : 0,
									"midpoints" : [ 507.5, 709.0, 453.0, 709.0, 453.0, 719.0, 418.5, 719.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 0 ],
									"destination" : [ "obj-145", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-152", 0 ],
									"destination" : [ "obj-162", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-153", 0 ],
									"destination" : [ "obj-163", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-154", 0 ],
									"destination" : [ "obj-164", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-155", 0 ],
									"destination" : [ "obj-166", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-156", 0 ],
									"destination" : [ "obj-155", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-156", 0 ],
									"destination" : [ "obj-154", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-156", 0 ],
									"destination" : [ "obj-153", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-156", 0 ],
									"destination" : [ "obj-152", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-149", 0 ],
									"destination" : [ "obj-161", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-148", 0 ],
									"destination" : [ "obj-160", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 0 ],
									"destination" : [ "obj-159", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-146", 0 ],
									"destination" : [ "obj-158", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-156", 0 ],
									"destination" : [ "obj-149", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-156", 0 ],
									"destination" : [ "obj-148", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-156", 0 ],
									"destination" : [ "obj-147", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-156", 0 ],
									"destination" : [ "obj-146", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-145", 0 ],
									"destination" : [ "obj-151", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-120", 0 ],
									"destination" : [ "obj-126", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-131", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-131", 0 ],
									"destination" : [ "obj-122", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-131", 0 ],
									"destination" : [ "obj-123", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-131", 0 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-121", 0 ],
									"destination" : [ "obj-133", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-122", 0 ],
									"destination" : [ "obj-134", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-123", 0 ],
									"destination" : [ "obj-135", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-124", 0 ],
									"destination" : [ "obj-136", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-131", 0 ],
									"destination" : [ "obj-127", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-131", 0 ],
									"destination" : [ "obj-128", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-131", 0 ],
									"destination" : [ "obj-129", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-131", 0 ],
									"destination" : [ "obj-130", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-130", 0 ],
									"destination" : [ "obj-141", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-129", 0 ],
									"destination" : [ "obj-139", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-128", 0 ],
									"destination" : [ "obj-138", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-127", 0 ],
									"destination" : [ "obj-137", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-119", 0 ],
									"destination" : [ "obj-120", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-90", 0 ],
									"destination" : [ "obj-151", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1103.5, 138.0, 1064.0, 138.0, 1064.0, 144.0, 1040.5, 144.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 0 ],
									"destination" : [ "obj-126", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1122.5, 327.0, 1067.0, 327.0, 1067.0, 333.0, 1043.5, 333.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 439.5, 51.0, 510.0, 51.0, 510.0, 24.0, 532.5, 24.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 499.5, 327.0, 444.0, 327.0, 444.0, 333.0, 420.5, 333.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 480.5, 138.0, 441.0, 138.0, 441.0, 144.0, 417.5, 144.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [ 507.5, 512.0, 453.0, 512.0, 453.0, 522.0, 418.5, 522.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-78", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-78", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-78", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-78", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-78", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-78", 6 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-78", 7 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-73", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-49", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-49", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-49", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-49", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-49", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-49", 6 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-49", 7 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-30", 0 ],
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
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 7 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-1", 6 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-1", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-1", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-27", 0 ],
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
									"source" : [ "obj-97", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1121.5, 706.0, 1066.0, 706.0, 1066.0, 712.0, 1042.5, 712.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-96", 0 ],
									"destination" : [ "obj-182", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1102.5, 517.0, 1063.0, 517.0, 1063.0, 523.0, 1039.5, 523.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-100", 0 ],
									"destination" : [ "obj-101", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-108", 0 ],
									"destination" : [ "obj-168", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-109", 0 ],
									"destination" : [ "obj-169", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-110", 0 ],
									"destination" : [ "obj-170", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-111", 0 ],
									"destination" : [ "obj-172", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-111", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-110", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-109", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-108", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-105", 0 ],
									"destination" : [ "obj-167", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-104", 0 ],
									"destination" : [ "obj-116", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-103", 0 ],
									"destination" : [ "obj-115", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-102", 0 ],
									"destination" : [ "obj-114", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-105", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-104", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-103", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-102", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-101", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-176", 0 ],
									"destination" : [ "obj-182", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-187", 0 ],
									"destination" : [ "obj-177", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-187", 0 ],
									"destination" : [ "obj-178", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-187", 0 ],
									"destination" : [ "obj-179", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-187", 0 ],
									"destination" : [ "obj-180", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-177", 0 ],
									"destination" : [ "obj-189", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-178", 0 ],
									"destination" : [ "obj-190", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-179", 0 ],
									"destination" : [ "obj-191", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-180", 0 ],
									"destination" : [ "obj-217", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-187", 0 ],
									"destination" : [ "obj-183", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-187", 0 ],
									"destination" : [ "obj-184", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-187", 0 ],
									"destination" : [ "obj-185", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-187", 0 ],
									"destination" : [ "obj-186", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-186", 0 ],
									"destination" : [ "obj-222", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-185", 0 ],
									"destination" : [ "obj-220", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-184", 0 ],
									"destination" : [ "obj-219", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-183", 0 ],
									"destination" : [ "obj-218", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-174", 0 ],
									"destination" : [ "obj-176", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-189", 0 ],
									"destination" : [ "obj-221", 7 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-190", 0 ],
									"destination" : [ "obj-221", 6 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-191", 0 ],
									"destination" : [ "obj-221", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-217", 0 ],
									"destination" : [ "obj-221", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-218", 0 ],
									"destination" : [ "obj-221", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-219", 0 ],
									"destination" : [ "obj-221", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-220", 0 ],
									"destination" : [ "obj-221", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-222", 0 ],
									"destination" : [ "obj-221", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-172", 0 ],
									"destination" : [ "obj-171", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-170", 0 ],
									"destination" : [ "obj-171", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-169", 0 ],
									"destination" : [ "obj-171", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-168", 0 ],
									"destination" : [ "obj-171", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-167", 0 ],
									"destination" : [ "obj-171", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-116", 0 ],
									"destination" : [ "obj-171", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-115", 0 ],
									"destination" : [ "obj-171", 6 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-114", 0 ],
									"destination" : [ "obj-171", 7 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-107", 0 ],
									"destination" : [ "obj-99", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-182", 0 ],
									"destination" : [ "obj-173", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 10.0,
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-4",
					"presentation_rect" : [ 199.0, 366.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 1023.0, 308.0, 50.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 12.0,
					"format" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p buttons",
					"id" : "obj-2",
					"numinlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 430.0, 41.0, 60.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 1742.0, 495.0, 420.0, 181.0 ],
						"bglocked" : 0,
						"defrect" : [ 1742.0, 495.0, 420.0, 181.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 7 7",
									"id" : "obj-3",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 342.0, 147.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 7 6",
									"id" : "obj-34",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 342.0, 128.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 7 5",
									"id" : "obj-35",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 342.0, 109.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 7 4",
									"id" : "obj-36",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 342.0, 90.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 7 3",
									"id" : "obj-37",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 342.0, 72.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 7 2",
									"id" : "obj-38",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 342.0, 53.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 7 1",
									"id" : "obj-39",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 342.0, 34.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 7 0",
									"id" : "obj-40",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 342.0, 15.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 6 7",
									"id" : "obj-41",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 295.0, 147.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 6 6",
									"id" : "obj-42",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 295.0, 128.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 6 5",
									"id" : "obj-43",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 295.0, 109.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 6 4",
									"id" : "obj-44",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 295.0, 90.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 6 3",
									"id" : "obj-45",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 295.0, 72.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 6 2",
									"id" : "obj-46",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 295.0, 53.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 6 1",
									"id" : "obj-47",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 295.0, 34.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 6 0",
									"id" : "obj-48",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 295.0, 15.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 5 7",
									"id" : "obj-49",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 249.0, 147.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 5 6",
									"id" : "obj-50",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 249.0, 128.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 5 5",
									"id" : "obj-51",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 249.0, 109.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 5 4",
									"id" : "obj-52",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 249.0, 90.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 5 3",
									"id" : "obj-53",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 249.0, 72.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 5 2",
									"id" : "obj-54",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 249.0, 53.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 5 1",
									"id" : "obj-55",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 249.0, 34.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 5 0",
									"id" : "obj-56",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 249.0, 15.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 4 7",
									"id" : "obj-57",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 202.0, 147.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 4 6",
									"id" : "obj-58",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 202.0, 128.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 4 5",
									"id" : "obj-59",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 202.0, 109.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 4 4",
									"id" : "obj-60",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 202.0, 90.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 4 3",
									"id" : "obj-61",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 202.0, 72.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 4 2",
									"id" : "obj-62",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 202.0, 53.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 4 1",
									"id" : "obj-63",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 202.0, 34.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 4 0",
									"id" : "obj-64",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 202.0, 14.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 3 7",
									"id" : "obj-18",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 155.0, 147.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 3 6",
									"id" : "obj-19",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 155.0, 128.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 3 5",
									"id" : "obj-20",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 155.0, 109.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 3 4",
									"id" : "obj-21",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 155.0, 90.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 3 3",
									"id" : "obj-22",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 155.0, 72.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 3 2",
									"id" : "obj-23",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 155.0, 53.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 3 1",
									"id" : "obj-24",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 155.0, 34.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 3 0",
									"id" : "obj-25",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 155.0, 15.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 2 7",
									"id" : "obj-26",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 108.0, 147.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 2 6",
									"id" : "obj-27",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 108.0, 128.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 2 5",
									"id" : "obj-28",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 108.0, 109.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 2 4",
									"id" : "obj-29",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 108.0, 90.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 2 3",
									"id" : "obj-30",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 108.0, 72.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 2 2",
									"id" : "obj-31",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 108.0, 53.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 2 1",
									"id" : "obj-32",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 108.0, 34.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 2 0",
									"id" : "obj-33",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 108.0, 15.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 1 7",
									"id" : "obj-10",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 62.0, 147.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 1 6",
									"id" : "obj-11",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 62.0, 128.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 1 5",
									"id" : "obj-12",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 62.0, 109.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 1 4",
									"id" : "obj-13",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 62.0, 90.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 1 3",
									"id" : "obj-14",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 62.0, 72.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 1 2",
									"id" : "obj-15",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 62.0, 53.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 1 1",
									"id" : "obj-16",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 62.0, 34.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 1 0",
									"id" : "obj-17",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 62.0, 15.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 0 7",
									"id" : "obj-6",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 15.0, 147.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 0 6",
									"id" : "obj-7",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 15.0, 128.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 0 5",
									"id" : "obj-8",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 15.0, 109.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 0 4",
									"id" : "obj-9",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 15.0, 90.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 0 3",
									"id" : "obj-4",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 15.0, 72.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 0 2",
									"id" : "obj-5",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 15.0, 53.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 0 1",
									"id" : "obj-2",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 15.0, 34.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "btn 0 0",
									"id" : "obj-1",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 15.0, 14.0, 47.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p system",
					"id" : "obj-1",
					"numinlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 429.0, 17.0, 59.0, 20.0 ],
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 2431.0, 50.0, 576.0, 442.0 ],
						"bglocked" : 0,
						"defrect" : [ 2431.0, 50.0, 576.0, 442.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r log",
									"id" : "obj-62",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 40.0, 253.0, 34.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"id" : "obj-61",
									"numinlets" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 40.0, 288.0, 34.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print OSC out",
									"id" : "obj-53",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 38.0, 321.0, 83.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s grid_in",
									"id" : "obj-8",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 255.0, 180.0, 56.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route /accord/press",
									"id" : "obj-5",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 255.0, 135.0, 113.0, 20.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpreceive 8000",
									"id" : "obj-4",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 255.0, 105.0, 99.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r send_osc",
									"id" : "obj-3",
									"numinlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 84.0, 193.0, 69.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpsend localhost 8080",
									"id" : "obj-2",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 84.0, 223.0, 137.0, 20.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"id" : "obj-1",
									"numinlets" : 1,
									"fontname" : "Arial",
									"patching_rect" : [ 44.0, 64.0, 60.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 12.0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-61", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-88",
					"background" : 1,
					"presentation_rect" : [ 189.0, 315.0, 236.0, 82.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 1022.0, 334.0, 128.0, 128.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 1,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-86",
					"background" : 1,
					"presentation_rect" : [ 189.0, 167.0, 236.0, 138.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 1007.0, 319.0, 128.0, 128.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 1,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-83",
					"background" : 1,
					"presentation_rect" : [ 14.0, 368.0, 165.0, 96.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 992.0, 304.0, 128.0, 128.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 1,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-56",
					"background" : 1,
					"presentation_rect" : [ 14.0, 268.0, 165.0, 96.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 962.0, 274.0, 128.0, 128.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 1,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-64",
					"background" : 1,
					"presentation_rect" : [ 13.0, 168.0, 165.0, 96.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 977.0, 289.0, 128.0, 128.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 1,
					"rounded" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-120", 2 ],
					"destination" : [ "obj-135", 0 ],
					"hidden" : 0,
					"midpoints" : [ 173.5, 426.0, 228.0, 426.0, 228.0, 297.0, 99.0, 297.0, 99.0, 309.0, 98.5, 309.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-135", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 98.5, 330.0, 45.5, 330.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-121", 1 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 0,
					"midpoints" : [ 160.0, 534.0, 173.5, 534.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 173.5, 558.0, 45.5, 558.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-120", 1 ],
					"destination" : [ "obj-123", 1 ],
					"hidden" : 0,
					"midpoints" : [ 160.0, 435.0, 187.0, 435.0, 187.0, 468.0, 187.0, 468.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-120", 0 ],
					"destination" : [ "obj-121", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-121", 2 ],
					"destination" : [ "obj-123", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-133", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 0,
					"midpoints" : [ 267.5, 531.0, 174.0, 531.0, 174.0, 537.0, 173.5, 537.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-120", 2 ],
					"destination" : [ "obj-133", 0 ],
					"hidden" : 0,
					"midpoints" : [ 173.5, 431.0, 267.5, 431.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-117", 0 ],
					"destination" : [ "obj-120", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-123", 0 ],
					"destination" : [ "obj-129", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-119", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-119", 0 ],
					"destination" : [ "obj-117", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 2 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-74", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-109", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 572.5, 348.0, 619.5, 348.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-102", 0 ],
					"hidden" : 0,
					"midpoints" : [ 311.5, 219.0, 375.0, 219.0, 375.0, 195.0, 572.5, 195.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-103", 4 ],
					"hidden" : 0,
					"midpoints" : [ 960.5, 612.0, 903.0, 612.0, 903.0, 531.0, 883.5, 531.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-103", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 1 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-157", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-89", 1 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-90", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-163", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-162", 0 ],
					"destination" : [ "obj-167", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-167", 0 ],
					"destination" : [ "obj-169", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-169", 0 ],
					"destination" : [ "obj-163", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-36", 0 ],
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
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 0 ],
					"destination" : [ "obj-99", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-99", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 1 ],
					"destination" : [ "obj-95", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 2 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 3 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 4 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 5 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 6 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 7 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [ 650.5, 207.0, 651.0, 207.0, 651.0, 220.0, 893.5, 220.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [ 650.5, 225.0, 632.5, 225.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [ 632.5, 297.0, 609.0, 297.0, 609.0, 234.0, 655.5, 234.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [ 655.5, 273.0, 662.5, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 1 ],
					"destination" : [ "obj-67", 1 ],
					"hidden" : 0,
					"midpoints" : [ 646.0, 297.0, 676.0, 297.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [ 311.5, 207.0, 375.0, 207.0, 375.0, 207.0, 487.5, 207.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [ 487.5, 243.0, 633.0, 243.0, 633.0, 234.0, 655.5, 234.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [ 311.5, 219.0, 375.0, 219.0, 375.0, 195.0, 526.5, 195.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 526.5, 229.0, 627.0, 229.0, 627.0, 183.0, 650.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
