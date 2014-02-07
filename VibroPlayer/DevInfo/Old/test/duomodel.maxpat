{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 481.0, 324.0, 963.0, 506.0 ],
		"bglocked" : 0,
		"defrect" : [ 481.0, 324.0, 963.0, 506.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend broadcast",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-162",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 23.0, 203.0, 86.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "remote 1",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-50",
					"hidden" : 1,
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 24.0, 119.0, 58.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"id" : "obj-51",
					"hidden" : 1,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 24.0, 86.0, 60.0, 20.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "flashserver 3500 256",
					"outlettype" : [ "anything", "int", "int", "symbol" ],
					"fontname" : "Arial",
					"id" : "obj-48",
					"hidden" : 1,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 24.0, 158.0, 123.0, 20.0 ],
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-18",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 343.0, 47.0, 37.0, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 8",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-170",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 758.0, 436.0, 44.0, 27.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 7",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-169",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 662.0, 433.0, 44.0, 27.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 6",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-168",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 573.0, 432.0, 44.0, 27.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 5",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-167",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 480.0, 433.0, 45.0, 27.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 4",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-166",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 377.0, 434.0, 44.0, 27.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 3",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-165",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 285.0, 435.0, 44.0, 27.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 2",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-164",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 200.0, 432.0, 44.0, 27.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 1",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-161",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 100.0, 430.0, 45.0, 27.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"fontname" : "Arial",
					"maximum" : 158.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"id" : "obj-29",
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"fontsize" : 11.595187,
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 740.5, 354.5, 60.0, 20.0 ],
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"fontname" : "Arial",
					"maximum" : 158.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"id" : "obj-40",
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"fontsize" : 11.595187,
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 652.5, 354.5, 60.0, 20.0 ],
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"fontname" : "Arial",
					"maximum" : 158.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"id" : "obj-41",
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"fontsize" : 11.595187,
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 565.5, 354.5, 60.0, 20.0 ],
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"fontname" : "Arial",
					"maximum" : 158.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"id" : "obj-42",
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"fontsize" : 11.595187,
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 475.5, 354.5, 65.0, 20.0 ],
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"fontname" : "Arial",
					"maximum" : 158.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"id" : "obj-43",
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"fontsize" : 11.595187,
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 375.5, 354.5, 61.0, 20.0 ],
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"fontname" : "Arial",
					"maximum" : 158.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"id" : "obj-44",
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"fontsize" : 11.595187,
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 278.5, 354.5, 56.0, 20.0 ],
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"fontname" : "Arial",
					"maximum" : 158.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"id" : "obj-46",
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"fontsize" : 11.595187,
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 193.5, 354.5, 60.0, 20.0 ],
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"fontname" : "Arial",
					"maximum" : 158.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"id" : "obj-47",
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"hidden" : 1,
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"fontsize" : 11.595187,
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 93.5, 354.5, 56.0, 20.0 ],
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"fontname" : "Arial",
					"maximum" : 158.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"id" : "obj-118",
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"fontsize" : 11.595187,
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 751.5, 318.5, 60.0, 20.0 ],
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r gainch8",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-152",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 767.5, 252.5, 41.0, 27.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r gainch7",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-151",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 666.5, 252.5, 40.0, 27.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r gainch6",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-150",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 579.5, 252.5, 40.0, 27.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r gainch5",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-149",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 487.5, 252.5, 41.0, 27.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r gainch4",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-148",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 388.5, 252.5, 40.0, 27.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r gainch3",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-147",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 291.5, 252.5, 40.0, 27.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r gainch2",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-146",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 204.5, 252.5, 43.0, 27.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r gainch1",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-145",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 106.5, 252.5, 40.0, 27.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"id" : "obj-119",
					"interval" : 100,
					"numinlets" : 1,
					"patching_rect" : [ 723.5, 354.5, 12.0, 78.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"id" : "obj-120",
					"interval" : 100,
					"numinlets" : 1,
					"patching_rect" : [ 636.5, 354.5, 12.0, 78.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"id" : "obj-121",
					"interval" : 100,
					"numinlets" : 1,
					"patching_rect" : [ 547.5, 354.5, 12.0, 78.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"id" : "obj-122",
					"interval" : 100,
					"numinlets" : 1,
					"patching_rect" : [ 457.5, 354.5, 12.0, 78.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"id" : "obj-123",
					"interval" : 100,
					"numinlets" : 1,
					"patching_rect" : [ 352.5, 355.5, 12.0, 78.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"id" : "obj-124",
					"interval" : 100,
					"numinlets" : 1,
					"patching_rect" : [ 261.5, 354.5, 12.0, 78.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"id" : "obj-125",
					"interval" : 100,
					"numinlets" : 1,
					"patching_rect" : [ 174.5, 354.5, 12.0, 78.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"outlettype" : [ "float" ],
					"id" : "obj-126",
					"interval" : 100,
					"numinlets" : 1,
					"patching_rect" : [ 75.5, 354.5, 12.0, 77.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-127",
					"numinlets" : 2,
					"patching_rect" : [ 729.5, 252.5, 26.0, 47.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-128",
					"numinlets" : 2,
					"patching_rect" : [ 635.5, 252.5, 26.0, 47.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-129",
					"numinlets" : 2,
					"patching_rect" : [ 547.5, 252.5, 26.0, 47.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-130",
					"numinlets" : 2,
					"patching_rect" : [ 457.5, 252.5, 26.0, 47.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-131",
					"numinlets" : 2,
					"patching_rect" : [ 356.5, 252.5, 26.0, 47.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-132",
					"numinlets" : 2,
					"patching_rect" : [ 261.5, 252.5, 26.0, 47.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-133",
					"numinlets" : 2,
					"patching_rect" : [ 174.5, 252.5, 26.0, 47.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-134",
					"numinlets" : 2,
					"patching_rect" : [ 74.5, 252.5, 26.0, 47.0 ],
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"fontname" : "Arial",
					"maximum" : 158.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"id" : "obj-110",
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"fontsize" : 11.595187,
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 656.5, 318.5, 60.0, 20.0 ],
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"fontname" : "Arial",
					"maximum" : 158.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"id" : "obj-103",
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"fontsize" : 11.595187,
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 562.5, 318.5, 60.0, 20.0 ],
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"fontname" : "Arial",
					"maximum" : 158.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"id" : "obj-104",
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"fontsize" : 11.595187,
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 457.5, 318.5, 65.0, 20.0 ],
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"fontname" : "Arial",
					"maximum" : 158.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"id" : "obj-105",
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"fontsize" : 11.595187,
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 356.5, 318.5, 61.0, 20.0 ],
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"fontname" : "Arial",
					"maximum" : 158.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"id" : "obj-106",
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"fontsize" : 11.595187,
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 261.5, 318.5, 56.0, 20.0 ],
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"fontname" : "Arial",
					"maximum" : 158.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"id" : "obj-108",
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"fontsize" : 11.595187,
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 174.5, 318.5, 60.0, 20.0 ],
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"fontname" : "Arial",
					"maximum" : 158.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"id" : "obj-109",
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"fontsize" : 11.595187,
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 75.5, 318.5, 56.0, 20.0 ],
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r freqModel",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-9",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 153.0, 36.0, 56.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "128",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-7",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 199.0, 97.0, 32.5, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-8",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 157.0, 97.0, 32.5, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "128",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-6",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 695.0, 97.0, 32.5, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-5",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 657.0, 97.0, 32.5, 18.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r trackModel",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"id" : "obj-68",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 663.0, 36.0, 60.0, 17.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcher trackModel",
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"fontname" : "Arial",
					"id" : "obj-4",
					"fontsize" : 12.0,
					"numinlets" : 9,
					"patching_rect" : [ 428.0, 168.0, 198.0, 20.0 ],
					"numoutlets" : 8,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 652.0, 243.0, 635.0, 303.0 ],
						"bglocked" : 0,
						"defrect" : [ 652.0, 243.0, 635.0, 303.0 ],
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
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-78",
									"numinlets" : 0,
									"patching_rect" : [ 599.0, 13.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"outlettype" : [ "signal", "int" ],
									"id" : "obj-74",
									"numinlets" : 2,
									"patching_rect" : [ 304.0, 81.0, 50.0, 140.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"fontname" : "Arial",
									"maximum" : 158.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"id" : "obj-75",
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"fontsize" : 11.595187,
									"triscale" : 0.9,
									"numinlets" : 1,
									"patching_rect" : [ 335.0, 268.0, 34.0, 20.0 ],
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-76",
									"numinlets" : 1,
									"patching_rect" : [ 304.0, 268.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "signal" ],
									"id" : "obj-77",
									"numinlets" : 0,
									"patching_rect" : [ 304.0, 13.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"outlettype" : [ "signal", "int" ],
									"id" : "obj-70",
									"numinlets" : 2,
									"patching_rect" : [ 445.0, 81.0, 50.0, 140.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"fontname" : "Arial",
									"maximum" : 158.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"id" : "obj-71",
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"fontsize" : 11.595187,
									"triscale" : 0.9,
									"numinlets" : 1,
									"patching_rect" : [ 476.0, 268.0, 34.0, 20.0 ],
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-72",
									"numinlets" : 1,
									"patching_rect" : [ 446.0, 268.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "signal" ],
									"id" : "obj-73",
									"numinlets" : 0,
									"patching_rect" : [ 445.0, 13.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"outlettype" : [ "signal", "int" ],
									"id" : "obj-66",
									"numinlets" : 2,
									"patching_rect" : [ 375.0, 81.0, 50.0, 140.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"fontname" : "Arial",
									"maximum" : 158.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"id" : "obj-67",
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"fontsize" : 11.595187,
									"triscale" : 0.9,
									"numinlets" : 1,
									"patching_rect" : [ 405.0, 268.0, 34.0, 20.0 ],
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-68",
									"numinlets" : 1,
									"patching_rect" : [ 375.0, 268.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "signal" ],
									"id" : "obj-69",
									"numinlets" : 0,
									"patching_rect" : [ 375.0, 13.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"outlettype" : [ "signal", "int" ],
									"id" : "obj-62",
									"numinlets" : 2,
									"patching_rect" : [ 519.0, 81.0, 50.0, 140.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"fontname" : "Arial",
									"maximum" : 158.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"id" : "obj-63",
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"fontsize" : 11.595187,
									"triscale" : 0.9,
									"numinlets" : 1,
									"patching_rect" : [ 549.0, 268.0, 34.0, 20.0 ],
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-64",
									"numinlets" : 1,
									"patching_rect" : [ 518.0, 268.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "signal" ],
									"id" : "obj-65",
									"numinlets" : 0,
									"patching_rect" : [ 519.0, 13.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"outlettype" : [ "signal", "int" ],
									"id" : "obj-58",
									"numinlets" : 2,
									"patching_rect" : [ 232.0, 81.0, 50.0, 140.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"fontname" : "Arial",
									"maximum" : 158.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"id" : "obj-59",
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"fontsize" : 11.595187,
									"triscale" : 0.9,
									"numinlets" : 1,
									"patching_rect" : [ 263.0, 268.0, 34.0, 20.0 ],
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-60",
									"numinlets" : 1,
									"patching_rect" : [ 232.0, 268.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "signal" ],
									"id" : "obj-61",
									"numinlets" : 0,
									"patching_rect" : [ 232.0, 13.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"outlettype" : [ "signal", "int" ],
									"id" : "obj-54",
									"numinlets" : 2,
									"patching_rect" : [ 159.0, 81.0, 50.0, 140.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"fontname" : "Arial",
									"maximum" : 158.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"id" : "obj-55",
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"fontsize" : 11.595187,
									"triscale" : 0.9,
									"numinlets" : 1,
									"patching_rect" : [ 190.0, 268.0, 34.0, 20.0 ],
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-56",
									"numinlets" : 1,
									"patching_rect" : [ 159.0, 268.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "signal" ],
									"id" : "obj-57",
									"numinlets" : 0,
									"patching_rect" : [ 159.0, 13.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"outlettype" : [ "signal", "int" ],
									"id" : "obj-50",
									"numinlets" : 2,
									"patching_rect" : [ 87.0, 81.0, 50.0, 140.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"fontname" : "Arial",
									"maximum" : 158.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"id" : "obj-51",
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"fontsize" : 11.595187,
									"triscale" : 0.9,
									"numinlets" : 1,
									"patching_rect" : [ 118.0, 268.0, 34.0, 20.0 ],
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-52",
									"numinlets" : 1,
									"patching_rect" : [ 87.0, 268.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "signal" ],
									"id" : "obj-53",
									"numinlets" : 0,
									"patching_rect" : [ 87.0, 13.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"outlettype" : [ "signal", "int" ],
									"id" : "obj-49",
									"numinlets" : 2,
									"patching_rect" : [ 13.0, 81.0, 50.0, 140.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"fontname" : "Arial",
									"maximum" : 158.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"id" : "obj-118",
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"fontsize" : 11.595187,
									"triscale" : 0.9,
									"numinlets" : 1,
									"patching_rect" : [ 44.0, 268.0, 34.0, 20.0 ],
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-10",
									"numinlets" : 1,
									"patching_rect" : [ 13.0, 268.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "signal" ],
									"id" : "obj-1",
									"numinlets" : 0,
									"patching_rect" : [ 13.0, 13.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [ 22.5, 38.0, 22.5, 38.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 1 ],
									"destination" : [ "obj-118", 0 ],
									"hidden" : 0,
									"midpoints" : [ 53.5, 221.0, 53.5, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 22.5, 221.0, 22.5, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [ 96.5, 221.0, 96.5, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 1 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [ 127.5, 221.0, 127.5, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [ 96.5, 38.0, 96.5, 38.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [ 168.5, 221.0, 168.5, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 1 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 199.5, 221.0, 199.5, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [ 168.5, 38.0, 168.5, 38.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [ 241.5, 221.0, 241.5, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 1 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [ 272.5, 221.0, 272.5, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [ 241.5, 38.0, 241.5, 38.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [ 528.5, 263.0, 527.5, 263.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 1 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [ 559.5, 221.0, 558.5, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [ 528.5, 38.0, 528.5, 38.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [ 384.5, 221.0, 384.5, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 1 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [ 415.5, 221.0, 414.5, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [ 384.5, 38.0, 384.5, 38.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [ 454.5, 221.0, 455.5, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 1 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [ 485.5, 221.0, 485.5, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 0,
									"midpoints" : [ 454.5, 38.0, 454.5, 38.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 0,
									"midpoints" : [ 313.5, 221.0, 313.5, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 1 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [ 344.5, 221.0, 344.5, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [ 313.5, 38.0, 313.5, 38.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [ 608.5, 68.0, 528.5, 68.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 0,
									"midpoints" : [ 608.5, 68.0, 454.5, 68.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [ 608.5, 68.0, 384.5, 68.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [ 608.5, 68.0, 313.5, 68.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [ 608.5, 68.0, 241.5, 68.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [ 608.5, 68.0, 168.5, 68.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [ 608.5, 68.0, 96.5, 68.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [ 608.5, 68.0, 22.5, 68.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcher freqModel",
					"outlettype" : [ "", "", "", "", "", "", "", "" ],
					"fontname" : "Arial",
					"id" : "obj-3",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 206.0, 170.0, 162.0, 20.0 ],
					"numoutlets" : 8,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 372.0, 188.0, 880.0, 653.0 ],
						"bglocked" : 0,
						"defrect" : [ 372.0, 188.0, 880.0, 653.0 ],
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
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend broadcast",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-162",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 48.0, 217.0, 86.0, 17.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "flashserver 3500 256",
									"outlettype" : [ "anything", "int", "int", "symbol" ],
									"fontname" : "Arial",
									"id" : "obj-48",
									"hidden" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 25.0, 175.0, 123.0, 20.0 ],
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 2 8",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-15",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 798.0, 298.0, 44.0, 27.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 2 7",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-18",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 716.0, 297.0, 44.0, 27.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 2 6",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-20",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 626.0, 296.0, 44.0, 27.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 2 5",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-21",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 535.0, 295.0, 44.0, 27.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 2 4",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-22",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 454.0, 297.0, 44.0, 27.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 2 3",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-23",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 362.0, 298.0, 45.0, 27.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 2 2",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-24",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 275.0, 298.0, 47.0, 27.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend 2 1",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-28",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 189.0, 297.0, 44.0, 27.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"fontname" : "Arial",
									"maximum" : 20000.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"id" : "obj-27",
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"fontsize" : 11.595187,
									"triscale" : 0.9,
									"numinlets" : 1,
									"patching_rect" : [ 787.0, 328.0, 60.0, 20.0 ],
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"size" : 10000.0,
									"id" : "obj-39",
									"numinlets" : 1,
									"patching_rect" : [ 788.0, 151.333344, 20.0, 140.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"fontname" : "Arial",
									"maximum" : 20000.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"id" : "obj-85",
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"fontsize" : 11.595187,
									"triscale" : 0.9,
									"numinlets" : 1,
									"patching_rect" : [ 705.0, 327.0, 60.0, 20.0 ],
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"fontname" : "Arial",
									"maximum" : 20000.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"id" : "obj-90",
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"fontsize" : 11.595187,
									"triscale" : 0.9,
									"numinlets" : 1,
									"patching_rect" : [ 615.0, 326.0, 65.0, 20.0 ],
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"fontname" : "Arial",
									"maximum" : 20000.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"id" : "obj-75",
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"fontsize" : 11.595187,
									"triscale" : 0.9,
									"numinlets" : 1,
									"patching_rect" : [ 524.0, 325.0, 61.0, 20.0 ],
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"fontname" : "Arial",
									"maximum" : 20000.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"id" : "obj-70",
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"fontsize" : 11.595187,
									"triscale" : 0.9,
									"numinlets" : 1,
									"patching_rect" : [ 443.0, 327.0, 56.0, 20.0 ],
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"fontname" : "Arial",
									"maximum" : 20000.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"id" : "obj-65",
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"fontsize" : 11.595187,
									"triscale" : 0.9,
									"numinlets" : 1,
									"patching_rect" : [ 351.0, 328.0, 60.0, 20.0 ],
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"fontname" : "Arial",
									"maximum" : 20000.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"id" : "obj-60",
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"fontsize" : 11.595187,
									"triscale" : 0.9,
									"numinlets" : 1,
									"patching_rect" : [ 265.0, 328.0, 60.0, 20.0 ],
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"fontname" : "Arial",
									"maximum" : 20000.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"id" : "obj-17",
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"fontsize" : 11.595187,
									"triscale" : 0.9,
									"numinlets" : 1,
									"patching_rect" : [ 178.0, 327.0, 56.0, 20.0 ],
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"size" : 10000.0,
									"id" : "obj-13",
									"numinlets" : 1,
									"patching_rect" : [ 706.0, 150.333344, 20.0, 140.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"size" : 5000.0,
									"id" : "obj-14",
									"numinlets" : 1,
									"patching_rect" : [ 616.0, 149.333344, 20.0, 140.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"size" : 4000.0,
									"id" : "obj-16",
									"numinlets" : 1,
									"patching_rect" : [ 525.0, 148.333344, 20.0, 140.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"size" : 3000.0,
									"id" : "obj-19",
									"numinlets" : 1,
									"patching_rect" : [ 444.0, 150.333344, 20.0, 140.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"size" : 2500.0,
									"id" : "obj-26",
									"numinlets" : 1,
									"patching_rect" : [ 352.0, 151.333344, 20.0, 140.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"size" : 1000.0,
									"id" : "obj-29",
									"numinlets" : 1,
									"patching_rect" : [ 266.0, 151.333344, 20.0, 140.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"outlettype" : [ "" ],
									"size" : 500.0,
									"id" : "obj-30",
									"numinlets" : 1,
									"patching_rect" : [ 179.0, 150.333344, 20.0, 140.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r mk",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-59",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 0,
									"patching_rect" : [ 381.0, 42.0, 28.0, 17.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "MK",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-56",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 381.0, 64.0, 32.5, 16.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r frqch8",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-101",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 0,
									"patching_rect" : [ 811.0, 128.0, 41.0, 17.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r frqch7",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-100",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 0,
									"patching_rect" : [ 727.0, 128.0, 41.0, 17.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r frqch6",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-99",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 0,
									"patching_rect" : [ 639.0, 128.0, 41.0, 17.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r frqch5",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-98",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 0,
									"patching_rect" : [ 551.0, 128.0, 41.0, 17.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r frqch4",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-97",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 0,
									"patching_rect" : [ 464.0, 128.0, 41.0, 17.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r frqch3",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-94",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 0,
									"patching_rect" : [ 372.0, 128.0, 41.0, 17.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r frqch2",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-93",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 0,
									"patching_rect" : [ 287.0, 128.0, 41.0, 17.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r frqch1",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-92",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 0,
									"patching_rect" : [ 194.0, 128.0, 41.0, 17.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r control",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-68",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 0,
									"patching_rect" : [ 786.0, 42.0, 43.0, 17.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r dfn",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-67",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 0,
									"patching_rect" : [ 584.0, 42.0, 29.0, 17.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r bark",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-63",
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 0,
									"patching_rect" : [ 180.0, 42.0, 34.0, 17.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Control",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-61",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 786.0, 64.0, 43.0, 16.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "DFN",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-45",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 584.0, 64.0, 32.5, 16.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "BARK",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"id" : "obj-25",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 180.0, 64.0, 38.0, 16.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "patcher FreqSplitPreset",
									"outlettype" : [ "", "", "", "", "", "", "", "" ],
									"fontname" : "Arial",
									"id" : "obj-12",
									"fontsize" : 12.0,
									"numinlets" : 4,
									"patching_rect" : [ 179.0, 106.0, 626.0, 20.0 ],
									"numoutlets" : 8,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 29.0, 75.0, 693.0, 212.0 ],
										"bglocked" : 0,
										"defrect" : [ 29.0, 75.0, 693.0, 212.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "800",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-6",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 471.0, 123.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "700",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-7",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 435.0, 123.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "600",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-8",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 398.0, 123.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "500",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-9",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 362.0, 123.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "400",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-10",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 324.0, 123.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "300",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-23",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 284.0, 123.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "200",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-25",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 242.0, 123.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "100",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-26",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 196.0, 123.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"varname" : "u580001748[1]",
													"outlettype" : [ "" ],
													"id" : "obj-27",
													"numinlets" : 0,
													"patching_rect" : [ 320.0, 83.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-62",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 654.0, 53.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "900",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-46",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 603.0, 55.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "770",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-47",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 295.0, 54.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "770",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-28",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 567.0, 55.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "660",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-29",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 527.0, 55.0, 34.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "466",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-40",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 486.0, 55.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "311",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-41",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 451.0, 55.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "220",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-42",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 414.0, 55.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "145",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-43",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 377.0, 55.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "69",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-44",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 345.0, 55.0, 30.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "700",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-24",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 259.0, 54.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "570",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-20",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 222.0, 54.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "455",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-21",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 186.0, 54.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "350",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-22",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 148.0, 54.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "250",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-19",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 108.0, 54.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "150",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-4",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 66.0, 54.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "100",
													"outlettype" : [ "" ],
													"fontname" : "Arial",
													"id" : "obj-11",
													"fontsize" : 10.0,
													"numinlets" : 2,
													"patching_rect" : [ 20.0, 54.0, 32.5, 16.0 ],
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"varname" : "u193001760",
													"id" : "obj-18",
													"numinlets" : 1,
													"patching_rect" : [ 646.0, 163.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"varname" : "u252001759",
													"id" : "obj-17",
													"numinlets" : 1,
													"patching_rect" : [ 558.0, 163.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"varname" : "u753001758",
													"id" : "obj-16",
													"numinlets" : 1,
													"patching_rect" : [ 474.0, 163.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"varname" : "u586001757",
													"id" : "obj-15",
													"numinlets" : 1,
													"patching_rect" : [ 382.0, 163.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"varname" : "u716001762",
													"id" : "obj-14",
													"numinlets" : 1,
													"patching_rect" : [ 287.0, 163.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"varname" : "u180001763",
													"id" : "obj-13",
													"numinlets" : 1,
													"patching_rect" : [ 200.0, 163.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"varname" : "u302001764",
													"id" : "obj-12",
													"numinlets" : 1,
													"patching_rect" : [ 107.0, 163.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"varname" : "u954001749",
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"numinlets" : 0,
													"patching_rect" : [ 480.0, 11.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"varname" : "u511001750",
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"numinlets" : 0,
													"patching_rect" : [ 654.0, 11.0, 26.0, 26.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"varname" : "u630001765",
													"id" : "obj-2",
													"numinlets" : 1,
													"patching_rect" : [ 11.0, 163.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"varname" : "u580001748",
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"numinlets" : 0,
													"patching_rect" : [ 147.0, 11.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [ 480.5, 149.0, 655.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 444.5, 149.0, 567.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 407.5, 149.0, 483.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 371.5, 149.0, 391.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [ 333.5, 149.0, 296.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [ 293.5, 149.0, 209.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [ 251.5, 149.0, 116.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [ 205.5, 149.0, 20.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [ 329.5, 110.0, 205.5, 110.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [ 329.5, 110.0, 251.5, 110.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [ 329.5, 110.0, 293.5, 110.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [ 329.5, 116.0, 333.5, 116.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 329.5, 110.0, 371.5, 110.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 329.5, 110.0, 407.5, 110.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 329.5, 110.0, 444.5, 110.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [ 329.5, 110.0, 480.5, 110.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 156.5, 38.0, 29.5, 38.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [ 29.5, 149.0, 20.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [ 489.5, 38.0, 354.5, 38.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [ 354.5, 71.0, 306.0, 71.0, 306.0, 110.0, 20.5, 110.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [ 156.5, 38.0, 75.5, 38.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [ 156.5, 38.0, 117.5, 38.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [ 156.5, 38.0, 157.5, 38.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [ 156.5, 38.0, 195.5, 38.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [ 156.5, 38.0, 231.5, 38.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [ 156.5, 38.0, 268.5, 38.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [ 156.5, 38.0, 304.5, 38.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [ 489.5, 38.0, 386.5, 38.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [ 489.5, 38.0, 423.5, 38.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [ 489.5, 38.0, 460.5, 38.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [ 489.5, 47.0, 495.5, 47.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [ 489.5, 38.0, 536.5, 38.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [ 489.5, 38.0, 576.5, 38.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [ 489.5, 38.0, 612.5, 38.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-62", 0 ],
													"hidden" : 0,
													"midpoints" : [ 663.5, 38.0, 663.5, 38.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [ 663.5, 149.0, 655.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [ 612.5, 149.0, 655.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [ 304.5, 110.0, 655.5, 110.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 663.5, 149.0, 567.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 576.5, 149.0, 567.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 268.5, 110.0, 279.0, 110.0, 279.0, 149.0, 567.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 663.5, 149.0, 483.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 536.5, 149.0, 483.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [ 231.5, 149.0, 483.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 663.5, 149.0, 391.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 495.5, 110.0, 432.0, 110.0, 432.0, 149.0, 391.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 195.5, 110.0, 183.0, 110.0, 183.0, 149.0, 391.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [ 663.5, 149.0, 296.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [ 460.5, 110.0, 357.0, 110.0, 357.0, 149.0, 296.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [ 157.5, 149.0, 296.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [ 663.5, 149.0, 209.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [ 423.5, 110.0, 357.0, 110.0, 357.0, 149.0, 209.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [ 117.5, 149.0, 209.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [ 663.5, 149.0, 116.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [ 663.5, 149.0, 20.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [ 386.5, 110.0, 357.0, 110.0, 357.0, 149.0, 116.5, 149.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [ 75.5, 149.0, 116.5, 149.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"fontface" : 0,
										"default_fontface" : 0,
										"fontsize" : 12.0,
										"globalpatchername" : "",
										"default_fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"outlettype" : [ "signal", "int" ],
									"id" : "obj-11",
									"numinlets" : 2,
									"patching_rect" : [ 51.0, 66.0, 20.0, 40.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "" ],
									"id" : "obj-10",
									"numinlets" : 0,
									"patching_rect" : [ 157.0, 10.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-9",
									"numinlets" : 1,
									"patching_rect" : [ 442.0, 614.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-8",
									"numinlets" : 1,
									"patching_rect" : [ 381.0, 614.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-7",
									"numinlets" : 1,
									"patching_rect" : [ 323.0, 614.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-6",
									"numinlets" : 1,
									"patching_rect" : [ 280.0, 614.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-5",
									"numinlets" : 1,
									"patching_rect" : [ 231.0, 614.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-4",
									"numinlets" : 1,
									"patching_rect" : [ 181.0, 614.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-3",
									"numinlets" : 1,
									"patching_rect" : [ 121.0, 614.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-2",
									"numinlets" : 1,
									"patching_rect" : [ 70.0, 614.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "signal" ],
									"id" : "obj-1",
									"numinlets" : 0,
									"patching_rect" : [ 42.0, 13.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-162", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-162", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-162", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-162", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-162", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-162", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-162", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-162", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-162", 0 ],
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
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 1,
									"midpoints" : [ 390.5, 57.0, 390.5, 57.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [ 189.5, 61.0, 189.5, 61.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 1,
									"midpoints" : [ 593.5, 54.0, 593.5, 54.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 1,
									"midpoints" : [ 795.5, 56.0, 795.5, 56.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-12", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-12", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [ 715.5, 292.0, 711.0, 292.0, 711.0, 322.0, 714.5, 322.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-90", 0 ],
									"hidden" : 0,
									"midpoints" : [ 625.5, 291.0, 624.5, 291.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [ 534.5, 290.0, 533.5, 290.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 0,
									"midpoints" : [ 453.5, 292.0, 449.0, 292.0, 449.0, 322.0, 452.5, 322.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [ 361.5, 293.0, 360.5, 293.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [ 275.5, 293.0, 270.0, 293.0, 270.0, 323.0, 274.5, 323.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 188.5, 292.0, 184.0, 292.0, 184.0, 322.0, 187.5, 322.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 797.5, 293.0, 796.5, 293.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 1,
									"midpoints" : [ 188.5, 292.0, 198.5, 292.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 1,
									"midpoints" : [ 275.5, 293.0, 284.5, 293.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 1,
									"midpoints" : [ 361.5, 293.0, 371.5, 293.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 1,
									"midpoints" : [ 453.5, 292.0, 463.5, 292.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1,
									"midpoints" : [ 534.5, 290.0, 544.5, 290.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [ 625.5, 291.0, 635.5, 291.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [ 715.5, 292.0, 725.5, 292.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [ 797.5, 293.0, 807.5, 293.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-92", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 2 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-94", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 7 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-101", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 6 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-100", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 3 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 4 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-98", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 5 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-99", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"fontface" : 0,
						"default_fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2 3 4 5 6 7 8",
					"fontname" : "Arial",
					"id" : "obj-2",
					"fontsize" : 12.0,
					"numinlets" : 8,
					"patching_rect" : [ 67.0, 467.0, 689.0, 20.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adc~ 1 2 3 4 5 6 7 8",
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"fontname" : "Arial",
					"id" : "obj-1",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 343.0, 98.0, 149.0, 20.0 ],
					"numoutlets" : 8
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-170", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 0,
					"midpoints" : [ 767.5, 498.0, 9.0, 498.0, 9.0, 198.0, 32.5, 198.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-169", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 0,
					"midpoints" : [ 671.5, 462.0, 648.0, 462.0, 648.0, 444.0, 621.0, 444.0, 621.0, 384.0, 561.0, 384.0, 561.0, 339.0, 534.0, 339.0, 534.0, 300.0, 438.0, 300.0, 438.0, 201.0, 120.0, 201.0, 120.0, 189.0, 32.5, 189.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-168", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 0,
					"midpoints" : [ 582.5, 459.0, 558.0, 459.0, 558.0, 444.0, 534.0, 444.0, 534.0, 384.0, 471.0, 384.0, 471.0, 339.0, 438.0, 339.0, 438.0, 201.0, 120.0, 201.0, 120.0, 189.0, 32.5, 189.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-167", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 0,
					"midpoints" : [ 489.5, 462.0, 465.0, 462.0, 465.0, 444.0, 438.0, 444.0, 438.0, 201.0, 120.0, 201.0, 120.0, 189.0, 32.5, 189.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-166", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 0,
					"midpoints" : [ 386.5, 462.0, 363.0, 462.0, 363.0, 444.0, 339.0, 444.0, 339.0, 201.0, 120.0, 201.0, 120.0, 189.0, 32.5, 189.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-165", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 0,
					"midpoints" : [ 294.5, 462.0, 186.0, 462.0, 186.0, 444.0, 159.0, 444.0, 159.0, 189.0, 32.5, 189.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-164", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 0,
					"midpoints" : [ 209.5, 459.0, 186.0, 459.0, 186.0, 444.0, 159.0, 444.0, 159.0, 189.0, 32.5, 189.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-161", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 459.0, 87.0, 459.0, 87.0, 441.0, 9.0, 441.0, 9.0, 198.0, 32.5, 198.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 352.5, 153.0, 437.5, 153.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 352.5, 156.0, 215.5, 156.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 8 ],
					"hidden" : 0,
					"midpoints" : [ 666.5, 153.0, 616.5, 153.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-4", 8 ],
					"hidden" : 0,
					"midpoints" : [ 704.5, 153.0, 616.5, 153.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [ 371.071442, 153.0, 459.875, 153.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 2 ],
					"destination" : [ "obj-4", 2 ],
					"hidden" : 0,
					"midpoints" : [ 389.642853, 153.0, 482.25, 153.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 3 ],
					"destination" : [ "obj-4", 3 ],
					"hidden" : 0,
					"midpoints" : [ 408.214294, 153.0, 504.625, 153.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 4 ],
					"destination" : [ "obj-4", 4 ],
					"hidden" : 0,
					"midpoints" : [ 426.785706, 153.0, 527.0, 153.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 5 ],
					"destination" : [ "obj-4", 5 ],
					"hidden" : 0,
					"midpoints" : [ 445.357147, 153.0, 549.375, 153.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 6 ],
					"destination" : [ "obj-4", 6 ],
					"hidden" : 0,
					"midpoints" : [ 463.928558, 153.0, 571.75, 153.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 7 ],
					"destination" : [ "obj-4", 7 ],
					"hidden" : 0,
					"midpoints" : [ 482.5, 153.0, 594.125, 153.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [ 166.5, 156.0, 358.5, 156.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [ 208.5, 156.0, 358.5, 156.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 162.5, 84.0, 208.5, 84.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 162.5, 84.0, 666.5, 84.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 672.5, 84.0, 704.5, 84.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 672.5, 84.0, 166.5, 84.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-119", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [ 729.5, 432.0, 735.0, 432.0, 735.0, 351.0, 750.0, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-120", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"midpoints" : [ 642.5, 432.0, 648.0, 432.0, 648.0, 351.0, 662.0, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-121", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [ 553.5, 432.0, 561.0, 432.0, 561.0, 351.0, 575.0, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-122", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"midpoints" : [ 463.5, 432.0, 471.0, 432.0, 471.0, 351.0, 485.0, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-123", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [ 358.5, 435.0, 372.0, 435.0, 372.0, 420.0, 375.0, 420.0, 375.0, 375.0, 372.0, 375.0, 372.0, 351.0, 385.0, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-124", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [ 267.5, 432.0, 273.0, 432.0, 273.0, 351.0, 288.0, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-125", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 1,
					"midpoints" : [ 180.5, 432.0, 189.0, 432.0, 189.0, 351.0, 203.0, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [ 81.5, 432.0, 90.0, 432.0, 90.0, 351.0, 103.0, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 0 ],
					"destination" : [ "obj-119", 0 ],
					"hidden" : 0,
					"midpoints" : [ 739.0, 339.0, 729.5, 339.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-128", 0 ],
					"destination" : [ "obj-120", 0 ],
					"hidden" : 0,
					"midpoints" : [ 645.0, 309.0, 642.5, 309.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 0 ],
					"destination" : [ "obj-121", 0 ],
					"hidden" : 0,
					"midpoints" : [ 557.0, 351.0, 553.5, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-130", 0 ],
					"destination" : [ "obj-122", 0 ],
					"hidden" : 0,
					"midpoints" : [ 467.0, 300.0, 444.0, 300.0, 444.0, 348.0, 463.5, 348.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 0 ],
					"destination" : [ "obj-123", 0 ],
					"hidden" : 0,
					"midpoints" : [ 366.0, 300.0, 342.0, 300.0, 342.0, 351.0, 358.5, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-132", 0 ],
					"destination" : [ "obj-124", 0 ],
					"hidden" : 0,
					"midpoints" : [ 271.0, 315.0, 258.0, 315.0, 258.0, 351.0, 267.5, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-133", 0 ],
					"destination" : [ "obj-125", 0 ],
					"hidden" : 0,
					"midpoints" : [ 184.0, 300.0, 159.0, 300.0, 159.0, 351.0, 180.5, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-134", 0 ],
					"destination" : [ "obj-126", 0 ],
					"hidden" : 0,
					"midpoints" : [ 84.0, 300.0, 60.0, 300.0, 60.0, 351.0, 81.5, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 1 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 0,
					"midpoints" : [ 746.0, 315.0, 761.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-128", 1 ],
					"destination" : [ "obj-110", 0 ],
					"hidden" : 0,
					"midpoints" : [ 652.0, 315.0, 666.0, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 1 ],
					"destination" : [ "obj-103", 0 ],
					"hidden" : 0,
					"midpoints" : [ 564.0, 312.0, 572.0, 312.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-130", 1 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"midpoints" : [ 474.0, 300.0, 467.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 1 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"midpoints" : [ 373.0, 300.0, 366.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-132", 1 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 0,
					"midpoints" : [ 278.0, 300.0, 271.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-133", 1 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 0,
					"midpoints" : [ 191.0, 300.0, 184.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-134", 1 ],
					"destination" : [ "obj-109", 0 ],
					"hidden" : 0,
					"midpoints" : [ 91.0, 300.0, 85.0, 300.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-152", 0 ],
					"destination" : [ "obj-127", 0 ],
					"hidden" : 1,
					"midpoints" : [ 777.0, 279.0, 756.0, 279.0, 756.0, 249.0, 739.0, 249.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-151", 0 ],
					"destination" : [ "obj-128", 0 ],
					"hidden" : 1,
					"midpoints" : [ 676.0, 279.0, 663.0, 279.0, 663.0, 249.0, 645.0, 249.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-150", 0 ],
					"destination" : [ "obj-129", 0 ],
					"hidden" : 1,
					"midpoints" : [ 589.0, 279.0, 573.0, 279.0, 573.0, 249.0, 557.0, 249.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-149", 0 ],
					"destination" : [ "obj-130", 0 ],
					"hidden" : 1,
					"midpoints" : [ 497.0, 279.0, 483.0, 279.0, 483.0, 249.0, 467.0, 249.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-148", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 1,
					"midpoints" : [ 398.0, 279.0, 384.0, 279.0, 384.0, 249.0, 366.0, 249.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-147", 0 ],
					"destination" : [ "obj-132", 0 ],
					"hidden" : 1,
					"midpoints" : [ 301.0, 279.0, 288.0, 279.0, 288.0, 249.0, 271.0, 249.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-146", 0 ],
					"destination" : [ "obj-133", 0 ],
					"hidden" : 1,
					"midpoints" : [ 214.0, 279.0, 201.0, 279.0, 201.0, 249.0, 184.0, 249.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-145", 0 ],
					"destination" : [ "obj-134", 0 ],
					"hidden" : 1,
					"midpoints" : [ 116.0, 279.0, 102.0, 279.0, 102.0, 249.0, 84.0, 249.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-134", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 84.0, 300.0, 60.0, 300.0, 60.0, 453.0, 76.5, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-133", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [ 184.0, 300.0, 159.0, 300.0, 159.0, 453.0, 172.214279, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-132", 0 ],
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [ 271.0, 315.0, 258.0, 315.0, 258.0, 453.0, 267.928558, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 0 ],
					"destination" : [ "obj-2", 3 ],
					"hidden" : 0,
					"midpoints" : [ 366.0, 300.0, 339.0, 300.0, 339.0, 453.0, 363.642853, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-130", 0 ],
					"destination" : [ "obj-2", 4 ],
					"hidden" : 0,
					"midpoints" : [ 467.0, 300.0, 444.0, 300.0, 444.0, 453.0, 459.357147, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 0 ],
					"destination" : [ "obj-2", 5 ],
					"hidden" : 0,
					"midpoints" : [ 557.0, 351.0, 561.0, 351.0, 561.0, 444.0, 555.071411, 444.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-128", 0 ],
					"destination" : [ "obj-2", 6 ],
					"hidden" : 0,
					"midpoints" : [ 645.0, 351.0, 650.785706, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 0 ],
					"destination" : [ "obj-2", 7 ],
					"hidden" : 0,
					"midpoints" : [ 739.0, 351.0, 735.0, 351.0, 735.0, 453.0, 746.5, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-134", 0 ],
					"hidden" : 0,
					"midpoints" : [ 215.5, 237.0, 84.0, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-133", 0 ],
					"hidden" : 0,
					"midpoints" : [ 235.928574, 237.0, 184.0, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 2 ],
					"destination" : [ "obj-132", 0 ],
					"hidden" : 0,
					"midpoints" : [ 256.357147, 237.0, 271.0, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 3 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 0,
					"midpoints" : [ 276.785706, 237.0, 366.0, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 4 ],
					"destination" : [ "obj-130", 0 ],
					"hidden" : 0,
					"midpoints" : [ 297.214294, 237.0, 467.0, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 5 ],
					"destination" : [ "obj-129", 0 ],
					"hidden" : 0,
					"midpoints" : [ 317.642853, 237.0, 557.0, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 6 ],
					"destination" : [ "obj-128", 0 ],
					"hidden" : 0,
					"midpoints" : [ 338.071442, 237.0, 645.0, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 7 ],
					"destination" : [ "obj-127", 0 ],
					"hidden" : 0,
					"midpoints" : [ 358.5, 237.0, 739.0, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-134", 0 ],
					"hidden" : 0,
					"midpoints" : [ 437.5, 237.0, 84.0, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-133", 0 ],
					"hidden" : 0,
					"midpoints" : [ 463.071442, 237.0, 184.0, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 2 ],
					"destination" : [ "obj-132", 0 ],
					"hidden" : 0,
					"midpoints" : [ 488.642853, 237.0, 271.0, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 3 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 0,
					"midpoints" : [ 514.214294, 237.0, 366.0, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 4 ],
					"destination" : [ "obj-130", 0 ],
					"hidden" : 0,
					"midpoints" : [ 539.785706, 237.0, 467.0, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 5 ],
					"destination" : [ "obj-129", 0 ],
					"hidden" : 0,
					"midpoints" : [ 565.357117, 237.0, 557.0, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 6 ],
					"destination" : [ "obj-128", 0 ],
					"hidden" : 0,
					"midpoints" : [ 590.928589, 237.0, 645.0, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 7 ],
					"destination" : [ "obj-127", 0 ],
					"hidden" : 0,
					"midpoints" : [ 616.5, 237.0, 739.0, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 0 ],
					"destination" : [ "obj-161", 0 ],
					"hidden" : 0,
					"midpoints" : [ 81.5, 432.0, 96.0, 432.0, 96.0, 426.0, 109.5, 426.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-125", 0 ],
					"destination" : [ "obj-164", 0 ],
					"hidden" : 0,
					"midpoints" : [ 180.5, 432.0, 195.0, 432.0, 195.0, 429.0, 209.5, 429.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-124", 0 ],
					"destination" : [ "obj-165", 0 ],
					"hidden" : 0,
					"midpoints" : [ 267.5, 432.0, 294.5, 432.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-123", 0 ],
					"destination" : [ "obj-166", 0 ],
					"hidden" : 0,
					"midpoints" : [ 358.5, 435.0, 372.0, 435.0, 372.0, 429.0, 386.5, 429.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-122", 0 ],
					"destination" : [ "obj-167", 0 ],
					"hidden" : 0,
					"midpoints" : [ 463.5, 432.0, 477.0, 432.0, 477.0, 429.0, 489.5, 429.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-121", 0 ],
					"destination" : [ "obj-168", 0 ],
					"hidden" : 0,
					"midpoints" : [ 553.5, 432.0, 570.0, 432.0, 570.0, 429.0, 582.5, 429.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-120", 0 ],
					"destination" : [ "obj-169", 0 ],
					"hidden" : 0,
					"midpoints" : [ 642.5, 432.0, 657.0, 432.0, 657.0, 429.0, 671.5, 429.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-119", 0 ],
					"destination" : [ "obj-170", 0 ],
					"hidden" : 0,
					"midpoints" : [ 729.5, 432.0, 767.5, 432.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 352.5, 66.0, 352.5, 66.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 1,
					"midpoints" : [ 33.5, 138.0, 33.5, 138.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-162", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 1,
					"midpoints" : [ 32.5, 222.0, 9.0, 222.0, 9.0, 153.0, 33.5, 153.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"midpoints" : [ 33.5, 108.0, 33.5, 108.0 ]
				}

			}
 ]
	}

}
