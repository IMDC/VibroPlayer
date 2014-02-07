{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ -1264.0, 50.0, 1149.0, 940.0 ],
		"bglocked" : 0,
		"defrect" : [ -1264.0, 50.0, 1149.0, 940.0 ],
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
					"text" : "prepend 1 8",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-15",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 946.0, 363.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 7",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-18",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 848.0, 363.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 6",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-20",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 770.0, 363.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 5",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-21",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 695.0, 363.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 4",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-22",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 618.0, 363.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 3",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-23",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 541.0, 363.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 2",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-24",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 462.0, 363.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 1",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-28",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 379.0, 363.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcher viewGraphs",
					"fontname" : "Arial",
					"id" : "obj-11",
					"numinlets" : 9,
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patching_rect" : [ 1001.0, 527.0, 127.0, 20.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 700.0, 252.0, 934.0, 615.0 ],
						"bglocked" : 0,
						"defrect" : [ 700.0, 252.0, 934.0, 615.0 ],
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
									"maxclass" : "spectroscope~",
									"monochrome" : 0,
									"range" : [ 0.0, 0.5 ],
									"id" : "obj-17",
									"numinlets" : 2,
									"interval" : 22,
									"numoutlets" : 0,
									"domain" : [ 0.0, 10000.0 ],
									"patching_rect" : [ 513.0, 464.0, 300.0, 100.0 ],
									"logfreq" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"monochrome" : 0,
									"range" : [ 0.0, 0.5 ],
									"id" : "obj-16",
									"numinlets" : 2,
									"interval" : 22,
									"numoutlets" : 0,
									"domain" : [ 0.0, 10000.0 ],
									"patching_rect" : [ 513.0, 358.0, 300.0, 100.0 ],
									"logfreq" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"monochrome" : 0,
									"range" : [ 0.0, 0.5 ],
									"id" : "obj-14",
									"numinlets" : 2,
									"interval" : 22,
									"numoutlets" : 0,
									"domain" : [ 0.0, 10000.0 ],
									"patching_rect" : [ 513.0, 246.0, 300.0, 100.0 ],
									"logfreq" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"monochrome" : 0,
									"range" : [ 0.0, 0.5 ],
									"id" : "obj-13",
									"numinlets" : 2,
									"interval" : 22,
									"numoutlets" : 0,
									"domain" : [ 0.0, 10000.0 ],
									"patching_rect" : [ 513.0, 132.0, 300.0, 100.0 ],
									"logfreq" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"monochrome" : 0,
									"range" : [ 0.0, 0.5 ],
									"id" : "obj-12",
									"numinlets" : 2,
									"interval" : 22,
									"numoutlets" : 0,
									"domain" : [ 0.0, 10000.0 ],
									"patching_rect" : [ 134.0, 465.0, 300.0, 100.0 ],
									"logfreq" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"monochrome" : 0,
									"range" : [ 0.0, 0.5 ],
									"id" : "obj-11",
									"numinlets" : 2,
									"interval" : 22,
									"numoutlets" : 0,
									"domain" : [ 0.0, 10000.0 ],
									"patching_rect" : [ 134.0, 348.0, 300.0, 100.0 ],
									"logfreq" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"monochrome" : 0,
									"range" : [ 0.0, 0.5 ],
									"id" : "obj-6",
									"numinlets" : 2,
									"interval" : 22,
									"numoutlets" : 0,
									"domain" : [ 0.0, 10000.0 ],
									"patching_rect" : [ 134.0, 233.0, 300.0, 100.0 ],
									"logfreq" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"monochrome" : 0,
									"range" : [ 0.0, 0.5 ],
									"id" : "obj-2",
									"numinlets" : 2,
									"interval" : 22,
									"numoutlets" : 0,
									"domain" : [ 0.0, 10000.0 ],
									"patching_rect" : [ 134.0, 121.0, 300.0, 100.0 ],
									"logfreq" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"monochrome" : 0,
									"range" : [ 0.0, 0.5 ],
									"id" : "obj-15",
									"numinlets" : 2,
									"interval" : 22,
									"numoutlets" : 0,
									"domain" : [ 0.0, 10000.0 ],
									"patching_rect" : [ 134.0, 4.0, 300.0, 100.0 ],
									"logfreq" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u349001755[1]",
									"id" : "obj-53",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 477.0, 473.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u349001755",
									"id" : "obj-10",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 471.0, 375.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u200001754",
									"id" : "obj-9",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 467.0, 247.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u773001753",
									"id" : "obj-8",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 460.0, 140.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u521001752",
									"id" : "obj-7",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 91.0, 471.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u954001749",
									"id" : "obj-5",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 71.0, 121.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u039001751",
									"id" : "obj-4",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 87.0, 352.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u511001750",
									"id" : "obj-3",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 81.0, 233.0, 26.0, 26.0 ],
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u580001748",
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 60.0, 14.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 469.5, 165.0, 499.0, 165.0, 499.0, 129.0, 522.5, 129.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 476.5, 273.0, 508.0, 273.0, 508.0, 243.0, 522.5, 243.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 480.5, 402.0, 496.0, 402.0, 496.0, 354.0, 522.5, 354.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 486.5, 498.0, 508.0, 498.0, 508.0, 459.0, 522.5, 459.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 100.5, 498.0, 129.0, 498.0, 129.0, 462.0, 143.5, 462.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 96.5, 378.0, 129.0, 378.0, 129.0, 345.0, 143.5, 345.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 90.5, 261.0, 120.0, 261.0, 120.0, 228.0, 143.5, 228.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 80.5, 147.0, 120.0, 147.0, 120.0, 117.0, 143.5, 117.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 69.5, 39.0, 120.0, 39.0, 120.0, 0.0, 143.5, 0.0 ]
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
						"fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"id" : "obj-19",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 216.0, 456.0, 35.0, 135.0 ],
					"outlettype" : [ "signal", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-72",
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"numinlets" : 1,
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : 20000.0,
					"patching_rect" : [ 235.0, 611.0, 56.0, 20.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcher FreqPreSet",
					"fontname" : "Arial",
					"id" : "obj-16",
					"numinlets" : 3,
					"fontsize" : 12.0,
					"numoutlets" : 8,
					"patching_rect" : [ 318.0, 105.0, 606.0, 20.0 ],
					"outlettype" : [ "", "", "", "", "", "", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ -1001.0, 199.0, 934.0, 615.0 ],
						"bglocked" : 0,
						"defrect" : [ -1001.0, 199.0, 934.0, 615.0 ],
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
									"maxclass" : "message",
									"text" : "0",
									"fontname" : "Arial",
									"id" : "obj-62",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 826.0, 152.0, 32.5, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1480",
									"fontname" : "Arial",
									"id" : "obj-46",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 632.0, 152.0, 33.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "770",
									"fontname" : "Arial",
									"id" : "obj-47",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 306.0, 152.0, 32.5, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1480",
									"fontname" : "Arial",
									"id" : "obj-28",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 596.0, 152.0, 33.0, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "660",
									"fontname" : "Arial",
									"id" : "obj-29",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 556.0, 152.0, 34.5, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "466",
									"fontname" : "Arial",
									"id" : "obj-40",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 515.0, 152.0, 32.5, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "311",
									"fontname" : "Arial",
									"id" : "obj-41",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 480.0, 152.0, 32.5, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "220",
									"fontname" : "Arial",
									"id" : "obj-42",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 443.0, 152.0, 32.5, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "145",
									"fontname" : "Arial",
									"id" : "obj-43",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 406.0, 152.0, 32.5, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "69",
									"fontname" : "Arial",
									"id" : "obj-44",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 374.0, 152.0, 30.5, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "700",
									"fontname" : "Arial",
									"id" : "obj-24",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 270.0, 152.0, 32.5, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "570",
									"fontname" : "Arial",
									"id" : "obj-20",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 233.0, 152.0, 32.5, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "455",
									"fontname" : "Arial",
									"id" : "obj-21",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 197.0, 152.0, 32.5, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "350",
									"fontname" : "Arial",
									"id" : "obj-22",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 159.0, 152.0, 32.5, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "250",
									"fontname" : "Arial",
									"id" : "obj-19",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 119.0, 152.0, 32.5, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "150",
									"fontname" : "Arial",
									"id" : "obj-4",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 77.0, 152.0, 32.5, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "100",
									"fontname" : "Arial",
									"id" : "obj-11",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 31.0, 152.0, 32.5, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u193001760",
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 756.0, 331.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u252001759",
									"id" : "obj-17",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 668.0, 331.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u753001758",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 584.0, 331.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u586001757",
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 492.0, 331.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u716001762",
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 397.0, 331.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u180001763",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 310.0, 331.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u302001764",
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 217.0, 331.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u954001749",
									"id" : "obj-5",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 509.0, 109.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u511001750",
									"id" : "obj-3",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 823.0, 109.0, 26.0, 26.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u630001765",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 121.0, 331.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u580001748",
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 158.0, 109.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 167.5, 135.0, 40.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 40.5, 318.0, 130.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 518.5, 135.0, 383.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 383.5, 318.0, 130.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 167.5, 135.0, 86.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 167.5, 135.0, 128.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 167.5, 147.0, 168.5, 147.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 167.5, 135.0, 206.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 167.5, 135.0, 242.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 167.5, 135.0, 279.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [ 167.5, 135.0, 315.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [ 518.5, 135.0, 415.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [ 518.5, 135.0, 452.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [ 518.5, 135.0, 489.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [ 518.5, 147.0, 524.5, 147.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 518.5, 135.0, 565.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 518.5, 135.0, 605.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [ 518.5, 135.0, 641.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [ 832.5, 147.0, 835.5, 147.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 835.5, 318.0, 765.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 641.5, 318.0, 765.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 315.5, 318.0, 765.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 835.5, 318.0, 677.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 605.5, 318.0, 677.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 279.5, 318.0, 677.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 835.5, 318.0, 593.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 565.5, 318.0, 593.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 242.5, 318.0, 593.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 835.5, 318.0, 501.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 524.5, 318.0, 501.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 206.5, 318.0, 501.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 835.5, 318.0, 406.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 489.5, 318.0, 406.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 168.5, 318.0, 406.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 835.5, 318.0, 319.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 452.5, 318.0, 319.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 128.5, 318.0, 319.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 835.5, 318.0, 226.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 835.5, 318.0, 130.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 415.5, 318.0, 226.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 86.5, 318.0, 226.5, 318.0 ]
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
						"fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"id" : "obj-37",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 838.0, 534.0, 12.0, 78.0 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"id" : "obj-36",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 747.0, 533.0, 12.0, 78.0 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"id" : "obj-35",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 661.0, 533.0, 12.0, 78.0 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"id" : "obj-33",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 576.0, 533.0, 12.0, 78.0 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"id" : "obj-32",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 489.0, 533.0, 12.0, 78.0 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"id" : "obj-31",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 391.0, 533.0, 12.0, 78.0 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"id" : "obj-30",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 294.0, 533.0, 12.0, 77.0 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 0 7",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-111",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 840.0, 619.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 0 6",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-112",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 749.0, 619.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 0 5",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-113",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 661.0, 619.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 0 4",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-114",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 576.0, 619.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 0 3",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-115",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 495.0, 621.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 0 2",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-116",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 388.0, 619.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 0 1",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-117",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 291.0, 619.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 0 8",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-102",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 929.0, 619.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"id" : "obj-38",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 930.0, 533.0, 12.0, 78.0 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcher ChairMix",
					"fontname" : "Arial",
					"id" : "obj-171",
					"numinlets" : 9,
					"fontsize" : 12.0,
					"numoutlets" : 8,
					"patching_rect" : [ 286.0, 507.0, 659.0, 20.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ -1164.0, 142.0, 934.0, 615.0 ],
						"bglocked" : 0,
						"defrect" : [ -1164.0, 142.0, 934.0, 615.0 ],
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
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-109",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 158.0,
									"patching_rect" : [ 142.0, 288.0, 56.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-11",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 158.0,
									"patching_rect" : [ 234.0, 291.0, 56.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-19",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 158.0,
									"patching_rect" : [ 330.0, 290.0, 56.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-34",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 158.0,
									"patching_rect" : [ 11.0, 97.0, 56.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r volch8",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-91",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 702.0, 99.0, 42.0, 17.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r volch7",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-88",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 613.0, 98.0, 42.0, 17.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r volch6",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-87",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 527.0, 99.0, 42.0, 17.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r volch5",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-86",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 434.0, 99.0, 42.0, 17.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r volch4",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-81",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 346.0, 99.0, 42.0, 17.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r volch3",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-80",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 257.0, 97.0, 42.0, 17.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r volch2",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-71",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 164.0, 100.0, 42.0, 17.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r volch1",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-56",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"patching_rect" : [ 75.0, 98.0, 42.0, 17.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-24",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 158.0,
									"patching_rect" : [ 778.0, 297.0, 56.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-23",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 158.0,
									"patching_rect" : [ 693.0, 294.0, 56.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-22",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 158.0,
									"patching_rect" : [ 609.0, 300.0, 56.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-21",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 158.0,
									"patching_rect" : [ 517.0, 298.0, 56.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-20",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 158.0,
									"patching_rect" : [ 416.0, 293.0, 56.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"id" : "obj-38",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 787.0, 203.0, 12.0, 78.0 ],
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"id" : "obj-37",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 701.0, 202.0, 12.0, 78.0 ],
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"id" : "obj-36",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 616.0, 198.0, 12.0, 78.0 ],
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"id" : "obj-35",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 526.0, 198.0, 12.0, 78.0 ],
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"id" : "obj-33",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 431.0, 200.0, 12.0, 78.0 ],
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"id" : "obj-32",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 345.0, 194.0, 12.0, 78.0 ],
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"id" : "obj-31",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 251.0, 190.0, 12.0, 78.0 ],
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"id" : "obj-30",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 157.0, 193.0, 12.0, 77.0 ],
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"orientation" : 2,
									"id" : "obj-79",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 756.0, 212.0, 26.0, 47.0 ],
									"outlettype" : [ "signal", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"orientation" : 2,
									"id" : "obj-84",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 670.0, 212.0, 26.0, 47.0 ],
									"outlettype" : [ "signal", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"orientation" : 2,
									"id" : "obj-89",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 584.0, 208.0, 26.0, 47.0 ],
									"outlettype" : [ "signal", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"orientation" : 2,
									"id" : "obj-74",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 492.0, 210.0, 26.0, 47.0 ],
									"outlettype" : [ "signal", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"orientation" : 2,
									"id" : "obj-69",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 398.0, 208.0, 26.0, 47.0 ],
									"outlettype" : [ "signal", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"orientation" : 2,
									"id" : "obj-64",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 312.0, 207.0, 26.0, 47.0 ],
									"outlettype" : [ "signal", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"orientation" : 2,
									"id" : "obj-59",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 217.0, 206.0, 26.0, 47.0 ],
									"outlettype" : [ "signal", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"orientation" : 2,
									"id" : "obj-6",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 122.0, 211.0, 26.0, 47.0 ],
									"outlettype" : [ "signal", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u349001755[1]",
									"id" : "obj-53",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 764.0, 95.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u193001760",
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 756.0, 332.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u252001759",
									"id" : "obj-17",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 668.0, 332.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u753001758",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 584.0, 332.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u586001757",
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 492.0, 332.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u716001762",
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 397.0, 332.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u180001763",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 310.0, 332.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u302001764",
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 217.0, 332.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u349001755",
									"id" : "obj-10",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 673.0, 95.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u200001754",
									"id" : "obj-9",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 583.0, 95.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u773001753",
									"id" : "obj-8",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 497.0, 95.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u521001752",
									"id" : "obj-7",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 404.0, 95.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u954001749",
									"id" : "obj-5",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 133.0, 95.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u039001751",
									"id" : "obj-4",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 314.0, 95.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u511001750",
									"id" : "obj-3",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 225.0, 95.0, 26.0, 26.0 ],
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u630001765",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 121.0, 332.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u580001748",
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 11.0, 46.0, 25.0, 25.0 ],
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [ 679.5, 261.0, 657.0, 261.0, 657.0, 198.0, 707.0, 198.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [ 593.5, 255.0, 570.0, 255.0, 570.0, 195.0, 622.0, 195.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 501.5, 258.0, 477.0, 258.0, 477.0, 195.0, 532.0, 195.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 407.5, 255.0, 384.0, 255.0, 384.0, 195.0, 437.0, 195.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 321.5, 255.0, 297.0, 255.0, 297.0, 189.0, 351.0, 189.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 226.5, 255.0, 204.0, 255.0, 204.0, 186.0, 257.0, 186.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 131.5, 258.0, 108.0, 258.0, 108.0, 189.0, 163.0, 189.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 765.5, 261.0, 765.5, 261.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 679.5, 327.0, 677.5, 327.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 593.5, 255.0, 593.5, 255.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 501.5, 258.0, 501.5, 258.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 407.5, 255.0, 406.5, 255.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 321.5, 276.0, 315.0, 276.0, 315.0, 327.0, 319.5, 327.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 226.5, 276.0, 219.0, 276.0, 219.0, 324.0, 226.5, 324.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 131.5, 258.0, 130.5, 258.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [ 20.5, 72.0, 20.5, 72.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [ 765.5, 261.0, 741.0, 261.0, 741.0, 198.0, 793.0, 198.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 142.5, 198.0, 131.5, 198.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [ 234.5, 192.0, 226.5, 192.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [ 323.5, 120.0, 321.5, 120.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [ 413.5, 195.0, 407.5, 195.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [ 506.5, 207.0, 501.5, 207.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-89", 0 ],
									"hidden" : 0,
									"midpoints" : [ 592.5, 120.0, 593.5, 120.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 0,
									"midpoints" : [ 682.5, 207.0, 679.5, 207.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [ 773.5, 198.0, 765.5, 198.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 1 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 772.5, 294.0, 787.5, 294.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 1,
									"midpoints" : [ 711.5, 189.0, 765.5, 189.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 1 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 686.5, 288.0, 702.5, 288.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 0 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 1,
									"midpoints" : [ 622.5, 183.0, 679.5, 183.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 1 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 600.5, 294.0, 618.5, 294.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-87", 0 ],
									"destination" : [ "obj-89", 0 ],
									"hidden" : 1,
									"midpoints" : [ 536.5, 183.0, 593.5, 183.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 1,
									"midpoints" : [ 443.5, 186.0, 501.5, 186.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 508.5, 285.0, 526.5, 285.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 1 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 414.5, 288.0, 425.5, 288.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 1,
									"midpoints" : [ 355.5, 180.0, 407.5, 180.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 328.5, 282.0, 339.5, 282.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 1,
									"midpoints" : [ 266.5, 177.0, 321.5, 177.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 233.5, 276.0, 240.0, 276.0, 240.0, 288.0, 243.5, 288.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 1,
									"midpoints" : [ 173.5, 180.0, 226.5, 180.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-109", 0 ],
									"hidden" : 0,
									"midpoints" : [ 138.5, 273.0, 147.0, 273.0, 147.0, 285.0, 151.5, 285.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [ 84.5, 198.0, 131.5, 198.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 20.5, 198.0, 131.5, 198.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [ 20.5, 180.0, 226.5, 180.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [ 20.5, 177.0, 321.5, 177.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [ 20.5, 177.0, 407.5, 177.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [ 20.5, 177.0, 501.5, 177.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-89", 0 ],
									"hidden" : 0,
									"midpoints" : [ 20.5, 177.0, 593.5, 177.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 0,
									"midpoints" : [ 20.5, 177.0, 679.5, 177.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [ 20.5, 177.0, 765.5, 177.0 ]
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
						"fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-175",
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"numinlets" : 1,
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : 20000.0,
					"patching_rect" : [ 162.0, 14.0, 56.0, 20.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"id" : "obj-174",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 47.0, 93.0, 26.0, 47.0 ],
					"outlettype" : [ "signal", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cycle~",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"fontname" : "Arial",
					"id" : "obj-173",
					"numinlets" : 2,
					"fontsize" : 11.595187,
					"numoutlets" : 1,
					"patching_rect" : [ 139.0, 64.0, 44.0, 20.0 ],
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-118",
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"numinlets" : 1,
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : 158.0,
					"patching_rect" : [ 875.0, 720.0, 60.0, 20.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 8",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-170",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 875.0, 844.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 7",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-169",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 777.0, 844.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 6",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-168",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 699.0, 844.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 5",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-167",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 624.0, 844.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 4",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-166",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 547.0, 844.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 3",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-165",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 470.0, 844.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 2",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-164",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 391.0, 844.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print BROADCAST",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-163",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 73.0, 357.0, 87.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend broadcast",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-162",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 101.0, 329.0, 86.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 1 1",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-161",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 308.0, 844.0, 59.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r gainch8",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-152",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 943.0, 656.0, 48.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r gainch7",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-151",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 844.0, 656.0, 48.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r gainch6",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-150",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 751.0, 656.0, 48.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r gainch5",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-149",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 663.0, 656.0, 48.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r gainch4",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-148",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 572.0, 656.0, 48.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r gainch3",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-147",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 493.0, 656.0, 48.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r gainch2",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-146",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 398.0, 656.0, 48.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r gainch1",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-145",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 293.0, 656.0, 48.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r frqch8",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-101",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 934.0, 179.0, 41.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r frqch7",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-100",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 850.0, 182.0, 41.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r frqch6",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-99",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 776.0, 179.0, 41.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r frqch5",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-98",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 699.0, 180.0, 41.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r frqch4",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-97",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 622.0, 183.0, 41.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r frqch3",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-94",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 548.0, 187.0, 41.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r frqch2",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-93",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 476.0, 185.0, 41.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r frqch1",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-92",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 402.0, 188.0, 41.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r control",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-68",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 915.0, 49.0, 43.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r dfn",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-67",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 613.0, 47.0, 29.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r bark",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-63",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 329.0, 53.0, 34.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print START",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-58",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 693.0, 59.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print STOP",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-55",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 772.0, 55.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"fontname" : "Arial",
					"id" : "obj-82",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"patching_rect" : [ 856.0, 8.0, 37.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r audioOpen",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-83",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 910.0, 8.0, 60.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r audio1",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-66",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 1.0, 635.0, 43.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r audio0",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-57",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 4.0, 742.0, 46.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "remote 1",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-50",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"patching_rect" : [ 132.0, 242.0, 58.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print VOLUME",
					"linecount" : 2,
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-53",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 150.0, 397.0, 64.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r vol",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-54",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 241.0, 352.0, 27.0, 17.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print LOAD",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-52",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 81.0, 182.0, 55.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-51",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"patching_rect" : [ 133.0, 148.0, 60.0, 20.0 ],
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "flashserver 3500 256",
					"fontname" : "Arial",
					"hidden" : 1,
					"id" : "obj-48",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"numoutlets" : 4,
					"patching_rect" : [ 132.0, 281.0, 123.0, 20.0 ],
					"outlettype" : [ "anything", "int", "int", "symbol" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-27",
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"numinlets" : 1,
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : 20000.0,
					"patching_rect" : [ 904.0, 386.0, 60.0, 20.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"size" : 10000.0,
					"id" : "obj-39",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 905.0, 210.333344, 20.0, 140.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"fontname" : "Arial",
					"id" : "obj-26",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 197.0, 741.0, 32.5, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "STOP CHAIR TOGGLE",
					"linecount" : 2,
					"fontname" : "Arial",
					"id" : "obj-96",
					"numinlets" : 1,
					"fontsize" : 11.595187,
					"numoutlets" : 0,
					"patching_rect" : [ 69.0, 835.0, 87.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "stop_toggle",
					"id" : "obj-95",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 164.0, 803.0, 66.0, 66.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "140",
					"fontname" : "Arial",
					"id" : "obj-7",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 164.0, 459.0, 32.5, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "130",
					"fontname" : "Arial",
					"id" : "obj-9",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 163.0, 480.0, 32.5, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "110",
					"fontname" : "Arial",
					"id" : "obj-10",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 161.0, 527.0, 32.5, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "120",
					"fontname" : "Arial",
					"id" : "obj-12",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 162.0, 504.0, 32.5, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "150",
					"fontname" : "Arial",
					"id" : "obj-136",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 163.0, 440.0, 32.5, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "158",
					"fontname" : "Arial",
					"id" : "obj-135",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 194.0, 716.0, 32.5, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"id" : "obj-119",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 928.0, 759.0, 12.0, 78.0 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"id" : "obj-120",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 824.0, 759.0, 12.0, 78.0 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"id" : "obj-121",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 705.0, 759.0, 12.0, 78.0 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"id" : "obj-122",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 634.0, 759.0, 12.0, 78.0 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"id" : "obj-123",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 555.0, 759.0, 12.0, 78.0 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"id" : "obj-124",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 476.0, 759.0, 12.0, 78.0 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"id" : "obj-125",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 405.0, 759.0, 12.0, 78.0 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"id" : "obj-126",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 327.0, 759.0, 12.0, 77.0 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"id" : "obj-127",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 912.0, 656.0, 26.0, 47.0 ],
					"outlettype" : [ "signal", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"id" : "obj-128",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 817.0, 656.0, 26.0, 47.0 ],
					"outlettype" : [ "signal", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"id" : "obj-129",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 722.0, 656.0, 26.0, 47.0 ],
					"outlettype" : [ "signal", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"id" : "obj-130",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 633.0, 656.0, 26.0, 47.0 ],
					"outlettype" : [ "signal", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"id" : "obj-131",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 542.0, 656.0, 26.0, 47.0 ],
					"outlettype" : [ "signal", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"id" : "obj-132",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 464.0, 656.0, 26.0, 47.0 ],
					"outlettype" : [ "signal", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"id" : "obj-133",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 371.0, 656.0, 26.0, 47.0 ],
					"outlettype" : [ "signal", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"id" : "obj-134",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 265.0, 656.0, 26.0, 47.0 ],
					"outlettype" : [ "signal", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-110",
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"numinlets" : 1,
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : 158.0,
					"patching_rect" : [ 790.0, 720.0, 60.0, 20.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-103",
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"numinlets" : 1,
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : 158.0,
					"patching_rect" : [ 701.0, 720.0, 60.0, 20.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-104",
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"numinlets" : 1,
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : 158.0,
					"patching_rect" : [ 623.0, 720.0, 65.0, 20.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-105",
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"numinlets" : 1,
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : 158.0,
					"patching_rect" : [ 535.0, 720.0, 61.0, 20.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-106",
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"numinlets" : 1,
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : 158.0,
					"patching_rect" : [ 460.0, 720.0, 56.0, 20.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-108",
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"numinlets" : 1,
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : 158.0,
					"patching_rect" : [ 375.0, 720.0, 60.0, 20.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-109",
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"numinlets" : 1,
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : 158.0,
					"patching_rect" : [ 290.0, 720.0, 56.0, 20.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "100",
					"fontname" : "Arial",
					"id" : "obj-78",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 160.0, 547.0, 32.5, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"fontname" : "Arial",
					"id" : "obj-77",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 159.0, 618.0, 32.5, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "50",
					"fontname" : "Arial",
					"id" : "obj-76",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 159.0, 594.0, 32.5, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "75",
					"fontname" : "Arial",
					"id" : "obj-73",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 160.0, 571.0, 32.5, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2 3 4 5 6 7 8 9 10 11 12",
					"fontname" : "Arial",
					"id" : "obj-13",
					"numinlets" : 12,
					"fontsize" : 11.595187,
					"numoutlets" : 0,
					"patching_rect" : [ 296.0, 887.0, 716.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-85",
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"numinlets" : 1,
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : 20000.0,
					"patching_rect" : [ 828.0, 389.0, 60.0, 20.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-90",
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"numinlets" : 1,
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : 20000.0,
					"patching_rect" : [ 752.0, 388.0, 65.0, 20.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-75",
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"numinlets" : 1,
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : 20000.0,
					"patching_rect" : [ 676.0, 388.0, 61.0, 20.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-70",
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"numinlets" : 1,
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : 20000.0,
					"patching_rect" : [ 600.0, 387.0, 56.0, 20.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-65",
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"numinlets" : 1,
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : 20000.0,
					"patching_rect" : [ 523.0, 386.0, 60.0, 20.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-60",
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"numinlets" : 1,
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : 20000.0,
					"patching_rect" : [ 447.0, 387.0, 60.0, 20.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Arial",
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-17",
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"numinlets" : 1,
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"triscale" : 0.9,
					"minimum" : 0.0,
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maximum" : 20000.0,
					"patching_rect" : [ 371.0, 388.0, 56.0, 20.0 ],
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"size" : 10000.0,
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 829.0, 213.333344, 20.0, 140.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"size" : 5000.0,
					"id" : "obj-5",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 752.0, 216.333344, 20.0, 140.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"size" : 4000.0,
					"id" : "obj-4",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 676.0, 210.333344, 20.0, 140.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"size" : 3000.0,
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 600.0, 207.333344, 20.0, 140.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"size" : 2500.0,
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 523.0, 212.333344, 20.0, 140.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"size" : 1000.0,
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 447.0, 212.333344, 20.0, 140.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"size" : 500.0,
					"id" : "obj-14",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 371.0, 211.333344, 20.0, 140.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "Control",
					"fontname" : "Arial",
					"id" : "obj-61",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 906.0, 73.0, 43.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "DFN",
					"fontname" : "Arial",
					"id" : "obj-45",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 611.0, 69.0, 32.5, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "BARK",
					"fontname" : "Arial",
					"id" : "obj-25",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 313.0, 76.0, 38.0, 16.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcher SplitSignal",
					"fontname" : "Arial",
					"id" : "obj-34",
					"numinlets" : 9,
					"fontsize" : 12.0,
					"numoutlets" : 8,
					"patching_rect" : [ 296.0, 466.0, 628.0, 20.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 46.0, 1680.0, 948.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 46.0, 1680.0, 948.0 ],
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
									"maxclass" : "umenu",
									"items" : [ "display", ",", "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "highshelf", ",", "resonant", ",", "allpass" ],
									"fontname" : "Arial",
									"types" : [  ],
									"id" : "obj-56",
									"numinlets" : 1,
									"fontsize" : 11.595187,
									"numoutlets" : 3,
									"patching_rect" : [ 150.0, 446.0, 70.0, 20.0 ],
									"outlettype" : [ "int", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "filtergraph~",
									"autoout" : 1,
									"fgcolor" : [ 0.756863, 0.756863, 1.0, 1.0 ],
									"hbwidthcolor" : [ 0.823529, 0.290196, 0.211765, 1.0 ],
									"id" : "obj-86",
									"numinlets" : 8,
									"bwidthcolor" : [ 0.462745, 0.47451, 0.65098, 1.0 ],
									"fontsize" : 8.998901,
									"numoutlets" : 7,
									"hcurvecolor" : [ 1.0, 0.086275, 0.086275, 1.0 ],
									"domain" : [ 0.0, 22050.0 ],
									"patching_rect" : [ 152.0, 495.0, 305.0, 132.0 ],
									"bgcolor" : [ 0.913725, 0.913725, 1.0, 1.0 ],
									"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
									"markercolor" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
									"nfilters" : 1,
									"setfilter" : [ 0, 3, 0, 0, 0, 150.0, 1.0, 0.5, 0.0001, 22050.0, 0.0001, 16.0, 0.5, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontname" : "Arial",
									"hidden" : 1,
									"id" : "obj-55",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"patching_rect" : [ 671.0, 42.0, 60.0, 20.0 ],
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-54",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 20000.0,
									"patching_rect" : [ 1536.0, 293.0, 60.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u349001755[1]",
									"id" : "obj-53",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 1509.0, 262.0, 25.0, 25.0 ],
									"outlettype" : [ "float" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"fontname" : "Arial",
									"id" : "obj-52",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 720.0, 63.0, 32.5, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"size" : 1.0,
									"id" : "obj-51",
									"numinlets" : 1,
									"numoutlets" : 1,
									"floatoutput" : 1,
									"patching_rect" : [ 671.0, 108.0, 30.0, 60.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"size" : 1.0,
									"id" : "obj-50",
									"numinlets" : 1,
									"numoutlets" : 1,
									"floatoutput" : 1,
									"patching_rect" : [ 1594.0, 289.0, 30.0, 60.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"size" : 1.0,
									"id" : "obj-49",
									"numinlets" : 1,
									"numoutlets" : 1,
									"floatoutput" : 1,
									"patching_rect" : [ 1420.0, 292.0, 30.0, 60.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"size" : 1.0,
									"id" : "obj-48",
									"numinlets" : 1,
									"numoutlets" : 1,
									"floatoutput" : 1,
									"patching_rect" : [ 1223.0, 293.0, 30.0, 60.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"size" : 1.0,
									"id" : "obj-47",
									"numinlets" : 1,
									"numoutlets" : 1,
									"floatoutput" : 1,
									"patching_rect" : [ 1020.0, 286.0, 30.0, 60.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"size" : 1.0,
									"id" : "obj-46",
									"numinlets" : 1,
									"numoutlets" : 1,
									"floatoutput" : 1,
									"patching_rect" : [ 780.0, 281.0, 30.0, 60.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"size" : 1.0,
									"id" : "obj-31",
									"numinlets" : 1,
									"numoutlets" : 1,
									"floatoutput" : 1,
									"patching_rect" : [ 543.0, 280.0, 30.0, 60.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"size" : 1.0,
									"id" : "obj-28",
									"numinlets" : 1,
									"numoutlets" : 1,
									"floatoutput" : 1,
									"patching_rect" : [ 335.0, 275.0, 30.0, 60.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"size" : 1.0,
									"id" : "obj-27",
									"numinlets" : 1,
									"numoutlets" : 1,
									"floatoutput" : 1,
									"patching_rect" : [ 177.0, 268.0, 30.0, 60.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0.5",
									"fontname" : "Arial",
									"id" : "obj-62",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 671.0, 61.0, 32.5, 16.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-26",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 1.0,
									"patching_rect" : [ 1344.0, 334.0, 56.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-25",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 1.0,
									"patching_rect" : [ 1524.0, 335.0, 56.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-24",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 1.0,
									"patching_rect" : [ 1137.0, 323.0, 56.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-23",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 1.0,
									"patching_rect" : [ 931.0, 328.0, 56.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-22",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 1.0,
									"patching_rect" : [ 702.0, 323.0, 56.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-21",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 1.0,
									"patching_rect" : [ 465.0, 311.0, 56.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-20",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 1.0,
									"patching_rect" : [ 274.0, 340.0, 56.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-19",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 1.0,
									"patching_rect" : [ 126.0, 333.0, 56.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-85",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 20000.0,
									"patching_rect" : [ 1353.0, 284.0, 60.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-90",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 20000.0,
									"patching_rect" : [ 1131.0, 291.0, 65.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-75",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 20000.0,
									"patching_rect" : [ 935.0, 283.0, 61.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-70",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 20000.0,
									"patching_rect" : [ 714.0, 277.0, 56.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-65",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 20000.0,
									"patching_rect" : [ 461.0, 277.0, 60.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-60",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 20000.0,
									"patching_rect" : [ 261.0, 256.0, 60.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Arial",
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-11",
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"numinlets" : 1,
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"triscale" : 0.9,
									"minimum" : 0.0,
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"maximum" : 20000.0,
									"patching_rect" : [ 111.0, 260.0, 56.0, 20.0 ],
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"id" : "obj-45",
									"numinlets" : 2,
									"numoutlets" : 0,
									"domain" : [ 0.0, 1500.0 ],
									"patching_rect" : [ 1335.0, 761.0, 300.0, 100.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"id" : "obj-44",
									"numinlets" : 2,
									"numoutlets" : 0,
									"domain" : [ 0.0, 1500.0 ],
									"patching_rect" : [ 652.0, 757.0, 300.0, 100.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"id" : "obj-41",
									"numinlets" : 2,
									"numoutlets" : 0,
									"domain" : [ 0.0, 1500.0 ],
									"patching_rect" : [ 1349.0, 635.0, 300.0, 100.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"id" : "obj-42",
									"numinlets" : 2,
									"numoutlets" : 0,
									"domain" : [ 0.0, 1500.0 ],
									"patching_rect" : [ 1006.0, 758.0, 300.0, 100.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"id" : "obj-43",
									"numinlets" : 2,
									"numoutlets" : 0,
									"domain" : [ 0.0, 1500.0 ],
									"patching_rect" : [ 1016.0, 635.0, 300.0, 100.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~ 1 0.5",
									"fontname" : "Arial",
									"id" : "obj-40",
									"numinlets" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"patching_rect" : [ 1480.0, 382.0, 63.0, 20.0 ],
									"outlettype" : [ "signal", "signal", "signal", "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~ 1 0.5",
									"fontname" : "Arial",
									"id" : "obj-39",
									"numinlets" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"patching_rect" : [ 1294.0, 388.0, 63.0, 20.0 ],
									"outlettype" : [ "signal", "signal", "signal", "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~ 1 1",
									"fontname" : "Arial",
									"id" : "obj-38",
									"numinlets" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"patching_rect" : [ 1078.0, 390.0, 59.5, 20.0 ],
									"outlettype" : [ "signal", "signal", "signal", "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~ 1 1",
									"fontname" : "Arial",
									"id" : "obj-37",
									"numinlets" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"patching_rect" : [ 878.0, 399.0, 59.5, 20.0 ],
									"outlettype" : [ "signal", "signal", "signal", "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~ 1 1",
									"fontname" : "Arial",
									"id" : "obj-36",
									"numinlets" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"patching_rect" : [ 659.0, 385.0, 59.5, 20.0 ],
									"outlettype" : [ "signal", "signal", "signal", "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"id" : "obj-35",
									"numinlets" : 2,
									"numoutlets" : 0,
									"domain" : [ 0.0, 1500.0 ],
									"patching_rect" : [ 792.0, 37.0, 300.0, 100.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"id" : "obj-34",
									"numinlets" : 2,
									"numoutlets" : 0,
									"domain" : [ 0.0, 1500.0 ],
									"patching_rect" : [ 663.0, 634.0, 300.0, 100.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~ 1 1",
									"fontname" : "Arial",
									"id" : "obj-33",
									"numinlets" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"patching_rect" : [ 410.0, 369.0, 59.5, 20.0 ],
									"outlettype" : [ "signal", "signal", "signal", "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"id" : "obj-32",
									"numinlets" : 2,
									"numoutlets" : 0,
									"domain" : [ 0.0, 1500.0 ],
									"patching_rect" : [ 246.0, 753.0, 300.0, 100.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~ 1 1",
									"fontname" : "Arial",
									"id" : "obj-30",
									"numinlets" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"patching_rect" : [ 218.0, 384.0, 59.5, 20.0 ],
									"outlettype" : [ "signal", "signal", "signal", "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~ 1 1",
									"fontname" : "Arial",
									"id" : "obj-29",
									"numinlets" : 3,
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"patching_rect" : [ 78.0, 366.0, 59.5, 20.0 ],
									"outlettype" : [ "signal", "signal", "signal", "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"id" : "obj-6",
									"numinlets" : 2,
									"numoutlets" : 0,
									"domain" : [ 0.0, 1500.0 ],
									"patching_rect" : [ 264.0, 635.0, 300.0, 100.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u193001760",
									"id" : "obj-18",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1518.0, 481.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u252001759",
									"id" : "obj-17",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1339.0, 474.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u753001758",
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1128.0, 460.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u586001757",
									"id" : "obj-15",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 924.0, 459.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u716001762",
									"id" : "obj-14",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 708.0, 447.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u180001763",
									"id" : "obj-13",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 470.0, 417.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u302001764",
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 264.0, 434.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u349001755",
									"id" : "obj-10",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 1312.0, 266.0, 25.0, 25.0 ],
									"outlettype" : [ "float" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u200001754",
									"id" : "obj-9",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 1098.0, 266.0, 25.0, 25.0 ],
									"outlettype" : [ "float" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u773001753",
									"id" : "obj-8",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 898.0, 253.0, 25.0, 25.0 ],
									"outlettype" : [ "float" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u521001752",
									"id" : "obj-7",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 679.0, 242.0, 25.0, 25.0 ],
									"outlettype" : [ "float" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u954001749",
									"id" : "obj-5",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 99.0, 221.0, 25.0, 25.0 ],
									"outlettype" : [ "float" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u039001751",
									"id" : "obj-4",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 430.0, 228.0, 25.0, 25.0 ],
									"outlettype" : [ "float" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u511001750",
									"id" : "obj-3",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 238.0, 224.0, 26.0, 26.0 ],
									"outlettype" : [ "float" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u630001765",
									"id" : "obj-2",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 104.0, 442.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u580001748",
									"id" : "obj-1",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 73.0, 10.0, 25.0, 25.0 ],
									"outlettype" : [ "signal" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-86", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-86", 7 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 1 ],
									"destination" : [ "obj-86", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 108.5, 252.0, 120.5, 252.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [ 247.5, 252.0, 270.5, 252.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [ 439.5, 264.0, 470.5, 264.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 0,
									"midpoints" : [ 688.5, 273.0, 723.5, 273.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [ 907.5, 279.0, 944.5, 279.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-90", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1107.5, 291.0, 1128.0, 291.0, 1128.0, 288.0, 1140.5, 288.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1321.5, 291.0, 1350.0, 291.0, 1350.0, 279.0, 1362.5, 279.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 2 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1114.5, 447.0, 1137.5, 447.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 2 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1114.5, 621.0, 1002.0, 621.0, 1002.0, 750.0, 1015.5, 750.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-38", 1 ],
									"hidden" : 0,
									"midpoints" : [ 1107.5, 291.0, 1107.75, 291.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [ 82.5, 212.0, 1087.5, 212.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 2 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 914.5, 444.0, 933.5, 444.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-37", 1 ],
									"hidden" : 0,
									"midpoints" : [ 907.5, 279.0, 907.75, 279.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 2 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [ 914.5, 444.0, 1025.5, 444.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [ 82.5, 216.5, 887.5, 216.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 2 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 695.5, 432.0, 717.5, 432.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 2 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 695.5, 621.0, 648.0, 621.0, 648.0, 744.0, 661.5, 744.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-36", 1 ],
									"hidden" : 0,
									"midpoints" : [ 688.5, 267.0, 688.75, 267.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [ 82.5, 207.0, 668.5, 207.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 2 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 446.5, 402.0, 479.5, 402.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 2 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [ 446.5, 621.0, 672.5, 621.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-33", 1 ],
									"hidden" : 0,
									"midpoints" : [ 439.5, 255.0, 439.75, 255.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 82.5, 207.0, 419.5, 207.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-30", 1 ],
									"hidden" : 0,
									"midpoints" : [ 247.5, 252.0, 247.75, 252.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 82.5, 207.0, 227.5, 207.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 2 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 254.5, 750.0, 255.5, 750.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 2 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 254.5, 420.0, 273.5, 420.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 87.5, 429.0, 113.5, 429.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-29", 1 ],
									"hidden" : 0,
									"midpoints" : [ 108.5, 363.0, 107.75, 363.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 82.5, 351.0, 87.5, 351.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 87.5, 621.0, 273.5, 621.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 1 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1504.166626, 621.0, 1335.0, 621.0, 1335.0, 747.0, 1344.5, 747.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [ 82.5, 208.0, 1489.5, 208.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1504.166626, 468.0, 1527.5, 468.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 2 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1332.833374, 459.0, 1326.0, 459.0, 1326.0, 621.0, 1358.5, 621.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [ 82.5, 211.0, 1303.5, 211.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-39", 1 ],
									"hidden" : 0,
									"midpoints" : [ 1321.5, 384.0, 1325.5, 384.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 2 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1332.833374, 459.0, 1348.5, 459.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 82.5, 36.0, 777.0, 36.0, 777.0, 24.0, 801.5, 24.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-29", 2 ],
									"hidden" : 0,
									"midpoints" : [ 135.5, 354.0, 128.0, 354.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-30", 2 ],
									"hidden" : 0,
									"midpoints" : [ 283.5, 360.0, 268.0, 360.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-36", 2 ],
									"hidden" : 0,
									"midpoints" : [ 711.5, 381.0, 709.0, 381.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-33", 2 ],
									"hidden" : 0,
									"midpoints" : [ 474.5, 354.0, 460.0, 354.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-37", 2 ],
									"hidden" : 0,
									"midpoints" : [ 940.5, 384.0, 928.0, 384.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-38", 2 ],
									"hidden" : 0,
									"midpoints" : [ 1146.5, 375.0, 1128.0, 375.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-39", 2 ],
									"hidden" : 0,
									"midpoints" : [ 1353.5, 375.0, 1347.5, 375.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-40", 2 ],
									"hidden" : 0,
									"midpoints" : [ 1533.5, 357.0, 1533.5, 357.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 186.5, 330.0, 135.5, 330.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 344.5, 336.0, 283.5, 336.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 552.5, 342.0, 462.0, 342.0, 462.0, 306.0, 474.5, 306.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 789.5, 342.0, 759.0, 342.0, 759.0, 309.0, 711.5, 309.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1029.5, 348.0, 999.0, 348.0, 999.0, 315.0, 940.5, 315.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1232.5, 354.0, 1203.0, 354.0, 1203.0, 318.0, 1146.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1429.5, 354.0, 1401.0, 354.0, 1401.0, 321.0, 1353.5, 321.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1603.5, 351.0, 1581.0, 351.0, 1581.0, 330.0, 1533.5, 330.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [ 680.5, 78.0, 680.5, 78.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 680.5, 210.0, 186.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 680.5, 213.0, 344.5, 213.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 680.5, 228.0, 552.5, 228.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [ 680.5, 228.0, 789.5, 228.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [ 680.5, 228.0, 1029.5, 228.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [ 680.5, 228.0, 1232.5, 228.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [ 680.5, 228.0, 1429.5, 228.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [ 680.5, 228.0, 1603.5, 228.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [ 729.5, 93.0, 680.5, 93.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-40", 1 ],
									"hidden" : 0,
									"midpoints" : [ 1518.5, 321.0, 1511.5, 321.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1518.5, 288.0, 1545.5, 288.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
						"fontface" : 0,
						"fontsize" : 12.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"id" : "obj-8",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 249.0, 91.0, 12.0, 90.0 ],
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adc~",
					"fontname" : "Arial",
					"id" : "obj-49",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 285.0, 36.0, 32.5, 18.0 ],
					"outlettype" : [ "signal", "signal" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 779.5, 381.0, 738.0, 381.0, 738.0, 420.0, 225.0, 420.0, 225.0, 315.0, 110.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 857.5, 381.0, 819.0, 381.0, 819.0, 420.0, 225.0, 420.0, 225.0, 315.0, 110.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 955.5, 381.0, 966.0, 381.0, 966.0, 420.0, 225.0, 420.0, 225.0, 315.0, 110.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [ 914.5, 360.0, 955.5, 360.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [ 838.5, 360.0, 857.5, 360.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [ 761.5, 357.0, 779.5, 357.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [ 685.5, 357.0, 704.5, 357.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 704.5, 381.0, 657.0, 381.0, 657.0, 420.0, 225.0, 420.0, 225.0, 315.0, 110.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 627.5, 381.0, 585.0, 381.0, 585.0, 420.0, 225.0, 420.0, 225.0, 315.0, 110.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 550.5, 381.0, 507.0, 381.0, 507.0, 420.0, 225.0, 420.0, 225.0, 315.0, 110.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 471.5, 381.0, 198.0, 381.0, 198.0, 315.0, 110.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 388.5, 381.0, 198.0, 381.0, 198.0, 315.0, 110.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [ 609.5, 357.0, 627.5, 357.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [ 532.5, 360.0, 550.5, 360.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [ 456.5, 360.0, 471.5, 360.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [ 380.5, 360.0, 388.5, 360.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 7 ],
					"destination" : [ "obj-11", 8 ],
					"hidden" : 0,
					"midpoints" : [ 914.5, 486.0, 1118.5, 486.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 6 ],
					"destination" : [ "obj-11", 7 ],
					"hidden" : 0,
					"midpoints" : [ 827.5, 486.0, 1105.0, 486.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 5 ],
					"destination" : [ "obj-11", 6 ],
					"hidden" : 0,
					"midpoints" : [ 740.5, 486.0, 1091.5, 486.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 4 ],
					"destination" : [ "obj-11", 5 ],
					"hidden" : 0,
					"midpoints" : [ 653.5, 486.0, 1078.0, 486.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 3 ],
					"destination" : [ "obj-11", 4 ],
					"hidden" : 0,
					"midpoints" : [ 566.5, 486.0, 1064.5, 486.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 2 ],
					"destination" : [ "obj-11", 3 ],
					"hidden" : 0,
					"midpoints" : [ 479.5, 486.0, 1051.0, 486.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-11", 2 ],
					"hidden" : 0,
					"midpoints" : [ 392.5, 486.0, 282.0, 486.0, 282.0, 453.0, 1037.5, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [ 305.5, 486.0, 282.0, 486.0, 282.0, 453.0, 1024.0, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 294.5, 453.0, 1010.5, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 938.5, 636.0, 915.0, 636.0, 915.0, 528.0, 945.0, 528.0, 945.0, 420.0, 225.0, 420.0, 225.0, 315.0, 110.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-111", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 849.5, 636.0, 915.0, 636.0, 915.0, 528.0, 945.0, 528.0, 945.0, 420.0, 225.0, 420.0, 225.0, 315.0, 110.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 758.5, 636.0, 732.0, 636.0, 732.0, 606.0, 675.0, 606.0, 675.0, 612.0, 645.0, 612.0, 645.0, 606.0, 588.0, 606.0, 588.0, 612.0, 561.0, 612.0, 561.0, 606.0, 501.0, 606.0, 501.0, 612.0, 459.0, 612.0, 459.0, 606.0, 405.0, 606.0, 405.0, 612.0, 360.0, 612.0, 360.0, 537.0, 306.0, 537.0, 306.0, 528.0, 261.0, 528.0, 261.0, 381.0, 198.0, 381.0, 198.0, 315.0, 110.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 670.5, 636.0, 645.0, 636.0, 645.0, 606.0, 588.0, 606.0, 588.0, 612.0, 561.0, 612.0, 561.0, 606.0, 501.0, 606.0, 501.0, 612.0, 459.0, 612.0, 459.0, 606.0, 405.0, 606.0, 405.0, 612.0, 360.0, 612.0, 360.0, 537.0, 306.0, 537.0, 306.0, 528.0, 261.0, 528.0, 261.0, 381.0, 198.0, 381.0, 198.0, 315.0, 110.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-114", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 585.5, 636.0, 561.0, 636.0, 561.0, 606.0, 501.0, 606.0, 501.0, 612.0, 459.0, 612.0, 459.0, 606.0, 405.0, 606.0, 405.0, 612.0, 360.0, 612.0, 360.0, 537.0, 306.0, 537.0, 306.0, 528.0, 261.0, 528.0, 261.0, 381.0, 198.0, 381.0, 198.0, 315.0, 110.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-115", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 504.5, 639.0, 459.0, 639.0, 459.0, 606.0, 405.0, 606.0, 405.0, 612.0, 360.0, 612.0, 360.0, 537.0, 306.0, 537.0, 306.0, 528.0, 261.0, 528.0, 261.0, 381.0, 198.0, 381.0, 198.0, 315.0, 110.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-116", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 397.5, 636.0, 360.0, 636.0, 360.0, 537.0, 306.0, 537.0, 306.0, 528.0, 261.0, 528.0, 261.0, 381.0, 198.0, 381.0, 198.0, 315.0, 110.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-117", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 300.5, 636.0, 201.0, 636.0, 201.0, 645.0, 60.0, 645.0, 60.0, 324.0, 110.5, 324.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-170", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 884.5, 873.0, 240.0, 873.0, 240.0, 645.0, 60.0, 645.0, 60.0, 324.0, 110.5, 324.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-169", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 786.5, 873.0, 240.0, 873.0, 240.0, 645.0, 60.0, 645.0, 60.0, 324.0, 110.5, 324.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-168", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 708.5, 873.0, 240.0, 873.0, 240.0, 645.0, 60.0, 645.0, 60.0, 324.0, 110.5, 324.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-167", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 633.5, 873.0, 240.0, 873.0, 240.0, 645.0, 60.0, 645.0, 60.0, 324.0, 110.5, 324.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-166", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 556.5, 873.0, 240.0, 873.0, 240.0, 645.0, 60.0, 645.0, 60.0, 324.0, 110.5, 324.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-165", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 479.5, 873.0, 240.0, 873.0, 240.0, 645.0, 60.0, 645.0, 60.0, 324.0, 110.5, 324.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-164", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 400.5, 873.0, 240.0, 873.0, 240.0, 645.0, 60.0, 645.0, 60.0, 324.0, 110.5, 324.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-161", 0 ],
					"destination" : [ "obj-162", 0 ],
					"hidden" : 1,
					"midpoints" : [ 317.5, 861.0, 240.0, 861.0, 240.0, 645.0, 60.0, 645.0, 60.0, 324.0, 110.5, 324.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-119", 0 ],
					"destination" : [ "obj-170", 0 ],
					"hidden" : 1,
					"midpoints" : [ 934.0, 837.0, 884.5, 837.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-120", 0 ],
					"destination" : [ "obj-169", 0 ],
					"hidden" : 1,
					"midpoints" : [ 830.0, 837.0, 786.5, 837.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-121", 0 ],
					"destination" : [ "obj-168", 0 ],
					"hidden" : 1,
					"midpoints" : [ 711.0, 837.0, 708.5, 837.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-122", 0 ],
					"destination" : [ "obj-167", 0 ],
					"hidden" : 1,
					"midpoints" : [ 640.0, 837.0, 633.5, 837.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-123", 0 ],
					"destination" : [ "obj-166", 0 ],
					"hidden" : 1,
					"midpoints" : [ 561.0, 837.0, 556.5, 837.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-124", 0 ],
					"destination" : [ "obj-165", 0 ],
					"hidden" : 1,
					"midpoints" : [ 482.0, 837.0, 479.5, 837.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-125", 0 ],
					"destination" : [ "obj-164", 0 ],
					"hidden" : 1,
					"midpoints" : [ 411.0, 837.0, 400.5, 837.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-126", 0 ],
					"destination" : [ "obj-161", 0 ],
					"hidden" : 1,
					"midpoints" : [ 333.0, 837.0, 317.5, 837.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-173", 0 ],
					"destination" : [ "obj-174", 0 ],
					"hidden" : 0,
					"midpoints" : [ 148.5, 84.0, 84.0, 84.0, 84.0, 90.0, 56.5, 90.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-175", 0 ],
					"destination" : [ "obj-173", 0 ],
					"hidden" : 0,
					"midpoints" : [ 171.5, 51.0, 148.5, 51.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-174", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 56.5, 384.0, 305.5, 384.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-162", 0 ],
					"destination" : [ "obj-163", 0 ],
					"hidden" : 1,
					"midpoints" : [ 110.5, 348.0, 84.0, 348.0, 84.0, 354.0, 82.5, 354.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-162", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 1,
					"midpoints" : [ 110.5, 348.0, 96.0, 348.0, 96.0, 276.0, 141.5, 276.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-135", 0 ],
					"hidden" : 1,
					"midpoints" : [ 10.5, 678.0, 203.5, 678.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [ 338.5, 72.0, 322.5, 72.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1,
					"midpoints" : [ 13.5, 768.0, 39.5, 768.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1,
					"midpoints" : [ 10.5, 654.0, 9.5, 654.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 865.5, 27.0, 327.0, 27.0, 327.0, 21.0, 294.5, 21.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 1,
					"midpoints" : [ 919.5, 27.0, 894.0, 27.0, 894.0, 3.0, 865.5, 3.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 0 ],
					"destination" : [ "obj-13", 7 ],
					"hidden" : 0,
					"midpoints" : [ 921.5, 705.0, 861.0, 705.0, 861.0, 873.0, 749.045471, 873.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-128", 0 ],
					"destination" : [ "obj-13", 6 ],
					"hidden" : 0,
					"midpoints" : [ 826.5, 705.0, 771.0, 705.0, 771.0, 873.0, 685.681824, 873.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 0 ],
					"destination" : [ "obj-13", 5 ],
					"hidden" : 0,
					"midpoints" : [ 731.5, 705.0, 690.0, 705.0, 690.0, 873.0, 622.318176, 873.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-130", 0 ],
					"destination" : [ "obj-13", 4 ],
					"hidden" : 0,
					"midpoints" : [ 642.5, 705.0, 606.0, 705.0, 606.0, 873.0, 558.954529, 873.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 0 ],
					"destination" : [ "obj-13", 3 ],
					"hidden" : 0,
					"midpoints" : [ 551.5, 705.0, 531.0, 705.0, 531.0, 873.0, 495.590912, 873.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-132", 0 ],
					"destination" : [ "obj-13", 2 ],
					"hidden" : 0,
					"midpoints" : [ 473.5, 705.0, 447.0, 705.0, 447.0, 840.0, 450.0, 840.0, 450.0, 873.0, 432.227264, 873.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-133", 0 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [ 380.5, 705.0, 357.0, 705.0, 357.0, 831.0, 378.0, 831.0, 378.0, 873.0, 368.863647, 873.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-134", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 274.5, 873.0, 305.5, 873.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 173.5, 882.0, 305.5, 882.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 0 ],
					"destination" : [ "obj-119", 0 ],
					"hidden" : 0,
					"midpoints" : [ 921.5, 705.0, 948.0, 705.0, 948.0, 744.0, 936.0, 744.0, 936.0, 756.0, 934.0, 756.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-128", 0 ],
					"destination" : [ "obj-120", 0 ],
					"hidden" : 0,
					"midpoints" : [ 826.5, 705.0, 861.0, 705.0, 861.0, 756.0, 830.0, 756.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 0 ],
					"destination" : [ "obj-121", 0 ],
					"hidden" : 0,
					"midpoints" : [ 731.5, 705.0, 696.0, 705.0, 696.0, 756.0, 711.0, 756.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-130", 0 ],
					"destination" : [ "obj-122", 0 ],
					"hidden" : 0,
					"midpoints" : [ 642.5, 705.0, 609.0, 705.0, 609.0, 756.0, 640.0, 756.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 0 ],
					"destination" : [ "obj-123", 0 ],
					"hidden" : 0,
					"midpoints" : [ 551.5, 717.0, 531.0, 717.0, 531.0, 756.0, 561.0, 756.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-132", 0 ],
					"destination" : [ "obj-124", 0 ],
					"hidden" : 0,
					"midpoints" : [ 473.5, 705.0, 447.0, 705.0, 447.0, 756.0, 482.0, 756.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-133", 0 ],
					"destination" : [ "obj-125", 0 ],
					"hidden" : 0,
					"midpoints" : [ 380.5, 705.0, 357.0, 705.0, 357.0, 756.0, 411.0, 756.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-134", 0 ],
					"destination" : [ "obj-126", 0 ],
					"hidden" : 0,
					"midpoints" : [ 274.5, 756.0, 333.0, 756.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-34", 7 ],
					"hidden" : 0,
					"midpoints" : [ 837.5, 411.0, 838.375, 411.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-34", 6 ],
					"hidden" : 0,
					"midpoints" : [ 761.5, 462.0, 762.25, 462.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-34", 5 ],
					"hidden" : 0,
					"midpoints" : [ 685.5, 408.0, 686.125, 408.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-34", 4 ],
					"hidden" : 0,
					"midpoints" : [ 609.5, 408.0, 610.0, 408.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-34", 3 ],
					"hidden" : 0,
					"midpoints" : [ 532.5, 408.0, 533.875, 408.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-34", 2 ],
					"hidden" : 0,
					"midpoints" : [ 456.5, 408.0, 457.75, 408.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-34", 1 ],
					"hidden" : 0,
					"midpoints" : [ 380.5, 462.0, 381.625, 462.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [ 838.5, 354.0, 837.5, 354.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"midpoints" : [ 761.5, 357.0, 761.5, 357.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [ 685.5, 351.0, 685.5, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [ 609.5, 348.0, 609.5, 348.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [ 532.5, 354.0, 532.5, 354.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [ 456.5, 354.0, 456.5, 354.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 380.5, 360.0, 375.0, 360.0, 375.0, 384.0, 380.5, 384.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 294.5, 453.0, 305.5, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 294.5, 78.0, 255.0, 78.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 914.5, 351.0, 913.5, 351.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-34", 8 ],
					"hidden" : 0,
					"midpoints" : [ 913.5, 408.0, 914.5, 408.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1,
					"midpoints" : [ 250.5, 384.0, 159.5, 384.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 1,
					"midpoints" : [ 141.5, 261.0, 141.5, 261.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"midpoints" : [ 142.5, 168.0, 141.5, 168.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [ 13.5, 759.0, 183.0, 759.0, 183.0, 738.0, 206.5, 738.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [ 411.5, 207.0, 380.5, 207.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"midpoints" : [ 142.5, 168.0, 90.5, 168.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [ 10.5, 663.0, 144.0, 663.0, 144.0, 522.0, 170.5, 522.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-171", 1 ],
					"hidden" : 0,
					"midpoints" : [ 305.5, 501.0, 375.5, 501.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-171", 2 ],
					"hidden" : 0,
					"midpoints" : [ 392.5, 504.0, 455.5, 504.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 2 ],
					"destination" : [ "obj-171", 3 ],
					"hidden" : 0,
					"midpoints" : [ 479.5, 504.0, 535.5, 504.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 3 ],
					"destination" : [ "obj-171", 4 ],
					"hidden" : 0,
					"midpoints" : [ 566.5, 504.0, 615.5, 504.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 4 ],
					"destination" : [ "obj-171", 5 ],
					"hidden" : 0,
					"midpoints" : [ 653.5, 501.0, 695.5, 501.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 5 ],
					"destination" : [ "obj-171", 6 ],
					"hidden" : 0,
					"midpoints" : [ 740.5, 501.0, 775.5, 501.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 6 ],
					"destination" : [ "obj-171", 7 ],
					"hidden" : 0,
					"midpoints" : [ 827.5, 501.0, 855.5, 501.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 7 ],
					"destination" : [ "obj-171", 8 ],
					"hidden" : 0,
					"midpoints" : [ 914.5, 504.0, 935.5, 504.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-102", 0 ],
					"hidden" : 1,
					"midpoints" : [ 936.0, 612.0, 938.5, 612.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 7 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [ 935.5, 528.0, 936.0, 528.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 6 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 844.071411, 528.0, 844.0, 528.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 5 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 752.642883, 528.0, 753.0, 528.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 4 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 661.214294, 528.0, 667.0, 528.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 3 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [ 569.785706, 528.0, 582.0, 528.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 2 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 478.357147, 528.0, 495.0, 528.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 1 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 386.928558, 528.0, 397.0, 528.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 295.5, 528.0, 300.0, 528.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-111", 0 ],
					"hidden" : 1,
					"midpoints" : [ 844.0, 612.0, 849.5, 612.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-112", 0 ],
					"hidden" : 1,
					"midpoints" : [ 753.0, 615.0, 758.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 1,
					"midpoints" : [ 667.0, 615.0, 670.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-114", 0 ],
					"hidden" : 1,
					"midpoints" : [ 582.0, 615.0, 585.5, 615.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-115", 0 ],
					"hidden" : 1,
					"midpoints" : [ 495.0, 618.0, 504.5, 618.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-116", 0 ],
					"hidden" : 1,
					"midpoints" : [ 397.0, 612.0, 397.5, 612.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-117", 0 ],
					"hidden" : 1,
					"midpoints" : [ 300.0, 612.0, 300.5, 612.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 1 ],
					"destination" : [ "obj-118", 0 ],
					"hidden" : 0,
					"midpoints" : [ 928.5, 705.0, 884.5, 705.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-128", 1 ],
					"destination" : [ "obj-110", 0 ],
					"hidden" : 0,
					"midpoints" : [ 833.5, 705.0, 799.5, 705.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 1 ],
					"destination" : [ "obj-103", 0 ],
					"hidden" : 0,
					"midpoints" : [ 738.5, 705.0, 710.5, 705.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-130", 1 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"midpoints" : [ 649.5, 705.0, 633.0, 705.0, 633.0, 717.0, 632.5, 717.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 1 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"midpoints" : [ 558.5, 705.0, 546.0, 705.0, 546.0, 717.0, 544.5, 717.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-132", 1 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 0,
					"midpoints" : [ 480.5, 705.0, 471.0, 705.0, 471.0, 717.0, 469.5, 717.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-133", 1 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 0,
					"midpoints" : [ 387.5, 717.0, 384.5, 717.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-134", 1 ],
					"destination" : [ "obj-109", 0 ],
					"hidden" : 0,
					"midpoints" : [ 281.5, 714.0, 299.5, 714.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 0 ],
					"destination" : [ "obj-134", 0 ],
					"hidden" : 0,
					"midpoints" : [ 295.5, 528.0, 261.0, 528.0, 261.0, 606.0, 222.0, 606.0, 222.0, 642.0, 274.5, 642.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 1 ],
					"destination" : [ "obj-133", 0 ],
					"hidden" : 0,
					"midpoints" : [ 386.928558, 528.0, 380.5, 528.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 2 ],
					"destination" : [ "obj-132", 0 ],
					"hidden" : 0,
					"midpoints" : [ 478.357147, 537.0, 473.5, 537.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 3 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 0,
					"midpoints" : [ 569.785706, 528.0, 561.0, 528.0, 561.0, 606.0, 555.0, 606.0, 555.0, 648.0, 551.5, 648.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 4 ],
					"destination" : [ "obj-130", 0 ],
					"hidden" : 0,
					"midpoints" : [ 661.214294, 528.0, 648.0, 528.0, 648.0, 642.0, 642.5, 642.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 5 ],
					"destination" : [ "obj-129", 0 ],
					"hidden" : 0,
					"midpoints" : [ 752.642883, 528.0, 732.0, 528.0, 732.0, 651.0, 731.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 6 ],
					"destination" : [ "obj-128", 0 ],
					"hidden" : 0,
					"midpoints" : [ 844.071411, 528.0, 826.5, 528.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 7 ],
					"destination" : [ "obj-127", 0 ],
					"hidden" : 0,
					"midpoints" : [ 935.5, 528.0, 915.0, 528.0, 915.0, 648.0, 921.5, 648.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-152", 0 ],
					"destination" : [ "obj-127", 0 ],
					"hidden" : 1,
					"midpoints" : [ 952.5, 675.0, 939.0, 675.0, 939.0, 651.0, 921.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-151", 0 ],
					"destination" : [ "obj-128", 0 ],
					"hidden" : 1,
					"midpoints" : [ 853.5, 675.0, 894.0, 675.0, 894.0, 651.0, 826.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-150", 0 ],
					"destination" : [ "obj-129", 0 ],
					"hidden" : 1,
					"midpoints" : [ 760.5, 705.0, 717.0, 705.0, 717.0, 651.0, 731.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-149", 0 ],
					"destination" : [ "obj-130", 0 ],
					"hidden" : 1,
					"midpoints" : [ 672.5, 675.0, 660.0, 675.0, 660.0, 651.0, 642.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-148", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 1,
					"midpoints" : [ 581.5, 675.0, 621.0, 675.0, 621.0, 651.0, 551.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-147", 0 ],
					"destination" : [ "obj-132", 0 ],
					"hidden" : 1,
					"midpoints" : [ 502.5, 705.0, 459.0, 705.0, 459.0, 651.0, 473.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-146", 0 ],
					"destination" : [ "obj-133", 0 ],
					"hidden" : 1,
					"midpoints" : [ 407.5, 675.0, 399.0, 675.0, 399.0, 705.0, 357.0, 705.0, 357.0, 651.0, 380.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-145", 0 ],
					"destination" : [ "obj-134", 0 ],
					"hidden" : 1,
					"midpoints" : [ 302.5, 675.0, 291.0, 675.0, 291.0, 705.0, 252.0, 705.0, 252.0, 651.0, 274.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-135", 0 ],
					"destination" : [ "obj-134", 0 ],
					"hidden" : 0,
					"midpoints" : [ 203.5, 732.0, 252.0, 732.0, 252.0, 651.0, 274.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-135", 0 ],
					"destination" : [ "obj-133", 0 ],
					"hidden" : 0,
					"midpoints" : [ 203.5, 732.0, 276.0, 732.0, 276.0, 705.0, 357.0, 705.0, 357.0, 651.0, 380.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-135", 0 ],
					"destination" : [ "obj-132", 0 ],
					"hidden" : 0,
					"midpoints" : [ 203.5, 732.0, 276.0, 732.0, 276.0, 705.0, 450.0, 705.0, 450.0, 651.0, 473.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-135", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 0,
					"midpoints" : [ 203.5, 732.0, 276.0, 732.0, 276.0, 705.0, 450.0, 705.0, 450.0, 651.0, 551.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-135", 0 ],
					"destination" : [ "obj-130", 0 ],
					"hidden" : 0,
					"midpoints" : [ 203.5, 732.0, 276.0, 732.0, 276.0, 750.0, 609.0, 750.0, 609.0, 684.0, 630.0, 684.0, 630.0, 651.0, 642.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-135", 0 ],
					"destination" : [ "obj-129", 0 ],
					"hidden" : 0,
					"midpoints" : [ 203.5, 732.0, 276.0, 732.0, 276.0, 750.0, 609.0, 750.0, 609.0, 705.0, 708.0, 705.0, 708.0, 675.0, 717.0, 675.0, 717.0, 651.0, 731.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-135", 0 ],
					"destination" : [ "obj-128", 0 ],
					"hidden" : 0,
					"midpoints" : [ 203.5, 732.0, 276.0, 732.0, 276.0, 750.0, 777.0, 750.0, 777.0, 684.0, 813.0, 684.0, 813.0, 651.0, 826.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-135", 0 ],
					"destination" : [ "obj-127", 0 ],
					"hidden" : 0,
					"midpoints" : [ 203.5, 732.0, 276.0, 732.0, 276.0, 750.0, 861.0, 750.0, 861.0, 684.0, 909.0, 684.0, 909.0, 651.0, 921.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-134", 0 ],
					"hidden" : 0,
					"midpoints" : [ 206.5, 768.0, 252.0, 768.0, 252.0, 651.0, 274.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-133", 0 ],
					"hidden" : 0,
					"midpoints" : [ 206.5, 768.0, 276.0, 768.0, 276.0, 705.0, 357.0, 705.0, 357.0, 651.0, 380.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-132", 0 ],
					"hidden" : 0,
					"midpoints" : [ 206.5, 768.0, 312.0, 768.0, 312.0, 750.0, 447.0, 750.0, 447.0, 684.0, 459.0, 684.0, 459.0, 651.0, 473.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 0,
					"midpoints" : [ 206.5, 768.0, 312.0, 768.0, 312.0, 750.0, 447.0, 750.0, 447.0, 684.0, 459.0, 684.0, 459.0, 651.0, 551.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-130", 0 ],
					"hidden" : 0,
					"midpoints" : [ 206.5, 768.0, 312.0, 768.0, 312.0, 750.0, 609.0, 750.0, 609.0, 684.0, 630.0, 684.0, 630.0, 651.0, 642.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-128", 0 ],
					"hidden" : 0,
					"midpoints" : [ 206.5, 768.0, 312.0, 768.0, 312.0, 750.0, 777.0, 750.0, 777.0, 684.0, 813.0, 684.0, 813.0, 651.0, 826.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-127", 0 ],
					"hidden" : 0,
					"midpoints" : [ 206.5, 789.0, 294.0, 789.0, 294.0, 873.0, 861.0, 873.0, 861.0, 684.0, 909.0, 684.0, 909.0, 651.0, 921.5, 651.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 322.5, 99.0, 327.5, 99.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 327.5, 198.0, 380.5, 198.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 411.357147, 174.0, 456.5, 174.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 2 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 495.214294, 171.0, 532.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 3 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 579.071411, 174.0, 609.5, 174.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 4 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 662.928589, 168.0, 685.5, 168.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 5 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 746.785706, 165.0, 761.5, 165.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 6 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 830.642883, 198.0, 838.5, 198.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 7 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [ 914.5, 126.0, 914.5, 126.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-16", 1 ],
					"hidden" : 0,
					"midpoints" : [ 620.5, 102.0, 621.0, 102.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"midpoints" : [ 622.5, 66.0, 620.5, 66.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-16", 2 ],
					"hidden" : 0,
					"midpoints" : [ 915.5, 102.0, 914.5, 102.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1,
					"midpoints" : [ 924.5, 66.0, 915.5, 66.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [ 241.5, 606.0, 244.5, 606.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 168.5, 636.0, 144.0, 636.0, 144.0, 456.0, 213.0, 456.0, 213.0, 453.0, 225.5, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 168.5, 612.0, 144.0, 612.0, 144.0, 456.0, 213.0, 456.0, 213.0, 453.0, 225.5, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 169.5, 588.0, 144.0, 588.0, 144.0, 456.0, 213.0, 456.0, 213.0, 453.0, 225.5, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 169.5, 564.0, 147.0, 564.0, 147.0, 456.0, 213.0, 456.0, 213.0, 453.0, 225.5, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 170.5, 543.0, 147.0, 543.0, 147.0, 456.0, 213.0, 456.0, 213.0, 453.0, 225.5, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 171.5, 522.0, 213.0, 522.0, 213.0, 453.0, 225.5, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 172.5, 498.0, 213.0, 498.0, 213.0, 453.0, 225.5, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 173.5, 477.0, 213.0, 477.0, 213.0, 453.0, 225.5, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-136", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 172.5, 456.0, 213.0, 456.0, 213.0, 453.0, 225.5, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [ 250.5, 441.0, 225.5, 441.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-171", 0 ],
					"hidden" : 0,
					"midpoints" : [ 241.5, 591.0, 273.0, 591.0, 273.0, 504.0, 295.5, 504.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-95", 0 ],
					"hidden" : 0,
					"midpoints" : [ 206.5, 789.0, 173.5, 789.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-135", 0 ],
					"destination" : [ "obj-95", 0 ],
					"hidden" : 0,
					"midpoints" : [ 203.5, 732.0, 173.5, 732.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [ 10.5, 663.0, 60.0, 663.0, 60.0, 210.0, 303.0, 210.0, 303.0, 102.0, 327.5, 102.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"midpoints" : [ 485.5, 204.0, 456.5, 204.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [ 557.5, 204.0, 532.5, 204.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [ 631.5, 201.0, 609.5, 201.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [ 708.5, 207.0, 685.5, 207.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [ 785.5, 198.0, 761.5, 198.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [ 859.5, 201.0, 838.5, 201.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 1,
					"midpoints" : [ 943.5, 207.0, 914.5, 207.0 ]
				}

			}
 ]
	}

}
