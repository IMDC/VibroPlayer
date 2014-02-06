{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 63.0, 69.0, 1005.0, 823.0 ],
		"bglocked" : 0,
		"defrect" : [ 63.0, 69.0, 1005.0, 823.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcher PitchShift7",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"id" : "obj-26",
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"patching_rect" : [ 679.0, 531.0, 111.0, 20.0 ],
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 1110.0, 133.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 1110.0, 133.0, 640.0, 480.0 ],
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
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-8",
									"patching_rect" : [ 126.0, 362.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 122.0, 138.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 95.0, 156.0, 12.0, 96.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "-24",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"id" : "obj-14",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 185.0, 68.0, 32.5, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontsize" : 11.595187,
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 151.0, 40.0, 58.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"id" : "obj-7",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 180.0, 242.0, 50.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~ 0.2",
									"fontsize" : 11.595187,
									"numoutlets" : 1,
									"id" : "obj-11",
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"patching_rect" : [ 125.0, 270.0, 74.0, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-10",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 262.0, 160.0, 50.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-9",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 262.0, 99.0, 50.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "kslider",
									"offset" : -24,
									"numoutlets" : 2,
									"id" : "obj-6",
									"outlettype" : [ "int", "int" ],
									"presentation_rect" : [ 30.0, 30.0, 196.0, 34.0 ],
									"hkeycolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"patching_rect" : [ 262.0, 52.0, 196.0, 34.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr pow(2.\\,$f1/12)",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 262.0, 133.0, 117.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pfft~ gizmo_loadme 4096 4",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"patching_rect" : [ 125.0, 204.0, 156.0, 20.0 ],
									"numinlets" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontname" : "Arial",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcher PitchShift8",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"id" : "obj-25",
					"outlettype" : [ "signal" ],
					"fontname" : "Arial",
					"patching_rect" : [ 685.0, 488.0, 111.0, 20.0 ],
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 1110.0, 133.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 1110.0, 133.0, 640.0, 480.0 ],
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
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-8",
									"patching_rect" : [ 126.0, 362.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 122.0, 138.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 95.0, 156.0, 12.0, 96.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "-24",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"id" : "obj-14",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 185.0, 69.0, 32.5, 18.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontsize" : 11.595187,
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 151.0, 40.0, 58.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"numoutlets" : 2,
									"id" : "obj-7",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 180.0, 242.0, 50.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "*~ 0.2",
									"fontsize" : 11.595187,
									"numoutlets" : 1,
									"id" : "obj-11",
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"patching_rect" : [ 125.0, 270.0, 74.0, 20.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-10",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 262.0, 160.0, 50.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-9",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 262.0, 99.0, 50.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "kslider",
									"offset" : -24,
									"numoutlets" : 2,
									"id" : "obj-6",
									"outlettype" : [ "int", "int" ],
									"presentation_rect" : [ 30.0, 30.0, 196.0, 34.0 ],
									"hkeycolor" : [ 0.501961, 0.501961, 0.501961, 1.0 ],
									"patching_rect" : [ 262.0, 52.0, 196.0, 34.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr pow(2.\\,$f1/12)",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 262.0, 133.0, 117.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pfft~ gizmo_loadme 4096 4",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "signal" ],
									"fontname" : "Arial",
									"patching_rect" : [ 125.0, 204.0, 156.0, 20.0 ],
									"numinlets" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontname" : "Arial",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-20",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 531.0, 679.0, 60.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-21",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 458.0, 680.0, 60.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-22",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 389.0, 680.0, 60.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-23",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 320.0, 679.0, 60.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-18",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 249.0, 678.0, 60.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-19",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 179.0, 679.0, 60.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-16",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 111.0, 680.0, 60.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-15",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 41.0, 679.0, 60.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezadc~",
					"numoutlets" : 2,
					"id" : "obj-11",
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 17.0, 45.0, 72.0, 72.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "3",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"id" : "obj-113",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 818.0, 73.0, 32.5, 16.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "3",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"id" : "obj-112",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 646.0, 72.0, 32.5, 16.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"id" : "obj-111",
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 817.0, 51.0, 60.0, 20.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "85",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"id" : "obj-102",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 713.0, 360.0, 32.5, 16.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-101",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 812.0, 248.0, 56.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontsize" : 16.0,
					"numoutlets" : 3,
					"id" : "obj-100",
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Arial",
					"types" : [  ],
					"patching_rect" : [ 638.0, 130.0, 149.0, 25.0 ],
					"items" : [ "None", "(all", "0)", ",", "Bark", "(low-top)", ",", "DFN", "(low-top)", ",", "Jazz", "(low-top)" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcher FrequencyModels",
					"fontsize" : 12.0,
					"numoutlets" : 7,
					"id" : "obj-99",
					"outlettype" : [ "", "", "", "", "", "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 103.0, 67.0, 477.0, 20.0 ],
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 1194.0, 84.0, 717.0, 565.0 ],
						"bglocked" : 0,
						"defrect" : [ 1194.0, 84.0, 717.0, 565.0 ],
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
									"maxclass" : "comment",
									"text" : "**3-9 are user definable; only 3 is currently connected",
									"linecount" : 3,
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-128",
									"fontname" : "Arial",
									"patching_rect" : [ 494.0, 35.0, 183.0, 55.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "9: (not connected)",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"id" : "obj-126",
									"fontname" : "Arial",
									"patching_rect" : [ 497.0, 438.0, 218.0, 27.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "8: (not connected)",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"id" : "obj-127",
									"fontname" : "Arial",
									"patching_rect" : [ 497.0, 401.0, 218.0, 27.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "7: (not connected)",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"id" : "obj-120",
									"fontname" : "Arial",
									"patching_rect" : [ 497.0, 366.0, 218.0, 27.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "6: (not connected)",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"id" : "obj-121",
									"fontname" : "Arial",
									"patching_rect" : [ 497.0, 332.0, 218.0, 27.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "5: (not connected)",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"id" : "obj-122",
									"fontname" : "Arial",
									"patching_rect" : [ 497.0, 290.0, 218.0, 27.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "4: (not connected)",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"id" : "obj-123",
									"fontname" : "Arial",
									"patching_rect" : [ 497.0, 254.0, 218.0, 27.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3: Jazz (low-top)",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"id" : "obj-119",
									"fontname" : "Arial",
									"patching_rect" : [ 497.0, 215.0, 218.0, 27.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2: DFN (low-top)",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"id" : "obj-118",
									"fontname" : "Arial",
									"patching_rect" : [ 497.0, 177.0, 218.0, 27.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1: Bark (low-top)",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"id" : "obj-117",
									"fontname" : "Arial",
									"patching_rect" : [ 497.0, 142.0, 218.0, 27.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0: None (all 0)",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"id" : "obj-116",
									"fontname" : "Arial",
									"patching_rect" : [ 497.0, 107.0, 218.0, 27.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-107",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 403.0, 438.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-108",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 362.0, 438.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-109",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 319.0, 438.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-110",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 438.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-111",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 230.0, 438.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-112",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 438.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-113",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 140.0, 438.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"id" : "obj-114",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 109.0, 438.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 8.5 9.5",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-115",
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 438.0, 72.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-99",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 403.0, 401.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-100",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 362.0, 401.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-101",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 319.0, 401.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-102",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 401.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-103",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 230.0, 401.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-104",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 401.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-105",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 140.0, 401.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-91",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 403.0, 366.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-92",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 362.0, 366.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-93",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 319.0, 366.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-94",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 366.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-95",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 230.0, 366.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-96",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 366.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-97",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 140.0, 366.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-83",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 403.0, 332.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-84",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 362.0, 332.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-85",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 319.0, 332.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-86",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 332.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-87",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 230.0, 332.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-88",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 332.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-89",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 140.0, 332.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-75",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 403.0, 290.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-76",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 362.0, 290.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-77",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 319.0, 290.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-78",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 290.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-79",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 230.0, 290.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-80",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 290.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-81",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 140.0, 290.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-67",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 403.0, 255.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-68",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 362.0, 255.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-69",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 319.0, 255.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-70",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 255.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-71",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 230.0, 255.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-72",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 255.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-73",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 140.0, 255.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1080",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-59",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 403.0, 215.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "800",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-60",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 362.0, 215.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "450",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-61",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 319.0, 215.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "300",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-62",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 215.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "200",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-63",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 230.0, 215.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "150",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-64",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 215.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "70",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-65",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 140.0, 215.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"id" : "obj-52",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 109.0, 401.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"id" : "obj-53",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 109.0, 366.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"id" : "obj-54",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 109.0, 332.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 7.5 8.5",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-55",
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 401.0, 72.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 6.5 7.5",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-56",
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 366.0, 72.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 5.5 6.5",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-57",
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 332.0, 72.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"id" : "obj-46",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 109.0, 290.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"id" : "obj-47",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 109.0, 255.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"id" : "obj-48",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 109.0, 215.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 4.5 5.5",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-49",
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 290.0, 72.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 3.5 4.5",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-50",
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 255.0, 72.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 2.5 3.5",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-51",
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 215.0, 72.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"id" : "obj-45",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 109.0, 177.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"id" : "obj-44",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 109.0, 142.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"id" : "obj-16",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 109.0, 107.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 1.5 2.5",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-43",
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 177.0, 72.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 0.5 1.5",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-42",
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 142.0, 72.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1080",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-34",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 403.0, 142.0, 33.0, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "770",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-35",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 362.0, 142.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "510",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-36",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 319.0, 142.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "400",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-37",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 142.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "300",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-38",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 230.0, 142.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "200",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-39",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 142.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "100",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-40",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 140.0, 142.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-30",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 403.0, 107.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-31",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 362.0, 107.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-32",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 319.0, 107.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-28",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 107.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-27",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 230.0, 107.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-26",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 107.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-25",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 140.0, 107.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-24",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 20.0, 49.0, 50.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 0 0.5",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-23",
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 107.0, 62.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-18",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 19.0, 9.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1480",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-153",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 403.0, 177.0, 33.0, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "660",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-154",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 362.0, 177.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "466",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-155",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 319.0, 177.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "311",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-156",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 177.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "220",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-157",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 230.0, 177.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "145",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-158",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 177.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "69",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-159",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 140.0, 177.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-15",
									"patching_rect" : [ 404.0, 507.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-14",
									"patching_rect" : [ 363.0, 507.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-13",
									"patching_rect" : [ 320.0, 504.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-12",
									"patching_rect" : [ 278.0, 508.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-11",
									"patching_rect" : [ 231.0, 507.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-10",
									"patching_rect" : [ 185.0, 507.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-9",
									"patching_rect" : [ 141.0, 506.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 138.0, 135.0, 138.0, 135.0, 492.0, 150.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 193.5, 138.0, 180.0, 138.0, 180.0, 492.0, 194.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 239.5, 138.0, 225.0, 138.0, 225.0, 492.0, 240.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 286.5, 138.0, 273.0, 138.0, 273.0, 495.0, 287.5, 495.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 328.5, 138.0, 315.0, 138.0, 315.0, 489.0, 329.5, 489.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 371.5, 138.0, 357.0, 138.0, 357.0, 492.0, 372.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 412.5, 138.0, 399.0, 138.0, 399.0, 492.0, 413.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 174.0, 135.0, 174.0, 135.0, 492.0, 150.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 193.5, 174.0, 180.0, 174.0, 180.0, 492.0, 194.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 239.5, 174.0, 225.0, 174.0, 225.0, 492.0, 240.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-159", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 210.0, 135.0, 210.0, 135.0, 492.0, 150.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-158", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 193.5, 210.0, 180.0, 210.0, 180.0, 492.0, 194.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-157", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 239.5, 210.0, 225.0, 210.0, 225.0, 492.0, 240.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 286.5, 174.0, 273.0, 174.0, 273.0, 495.0, 287.5, 495.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-156", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 286.5, 210.0, 273.0, 210.0, 273.0, 495.0, 287.5, 495.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-155", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 328.5, 210.0, 315.0, 210.0, 315.0, 489.0, 329.5, 489.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 328.5, 174.0, 315.0, 174.0, 315.0, 489.0, 329.5, 489.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-154", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 371.5, 210.0, 357.0, 210.0, 357.0, 492.0, 372.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 371.5, 174.0, 357.0, 174.0, 357.0, 492.0, 372.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-153", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 412.5, 210.0, 399.0, 210.0, 399.0, 492.0, 413.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 412.5, 174.0, 399.0, 174.0, 399.0, 492.0, 413.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 129.0, 96.0, 129.0, 96.0, 102.0, 118.5, 102.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 162.0, 105.0, 162.0, 105.0, 138.0, 118.5, 138.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 207.0, 105.0, 207.0, 105.0, 174.0, 118.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 237.0, 105.0, 237.0, 105.0, 213.0, 118.5, 213.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 276.0, 105.0, 276.0, 105.0, 249.0, 118.5, 249.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 312.0, 105.0, 312.0, 105.0, 285.0, 118.5, 285.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 354.0, 105.0, 354.0, 105.0, 324.0, 118.5, 324.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 387.0, 105.0, 387.0, 105.0, 360.0, 118.5, 360.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 423.0, 105.0, 423.0, 105.0, 396.0, 118.5, 396.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-115", 0 ],
									"destination" : [ "obj-114", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 468.0, 105.0, 468.0, 105.0, 435.0, 118.5, 435.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 129.0, 135.0, 129.0, 135.0, 102.0, 149.5, 102.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 129.0, 135.0, 129.0, 135.0, 93.0, 193.5, 93.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 129.0, 135.0, 129.0, 135.0, 93.0, 239.5, 93.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 129.0, 135.0, 129.0, 135.0, 93.0, 286.5, 93.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 129.0, 135.0, 129.0, 135.0, 93.0, 328.5, 93.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 129.0, 135.0, 129.0, 135.0, 93.0, 371.5, 93.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 129.0, 135.0, 129.0, 135.0, 93.0, 412.5, 93.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 162.0, 135.0, 162.0, 135.0, 138.0, 149.5, 138.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 162.0, 180.0, 162.0, 180.0, 138.0, 193.5, 138.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 162.0, 225.0, 162.0, 225.0, 138.0, 239.5, 138.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 162.0, 273.0, 162.0, 273.0, 138.0, 286.5, 138.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 162.0, 315.0, 162.0, 315.0, 138.0, 328.5, 138.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 162.0, 135.0, 162.0, 135.0, 93.0, 357.0, 93.0, 357.0, 135.0, 371.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 162.0, 135.0, 162.0, 135.0, 93.0, 399.0, 93.0, 399.0, 135.0, 412.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-159", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 198.0, 135.0, 198.0, 135.0, 174.0, 149.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-158", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 198.0, 180.0, 198.0, 180.0, 174.0, 193.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-157", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 198.0, 225.0, 198.0, 225.0, 174.0, 239.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-156", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 198.0, 273.0, 198.0, 273.0, 174.0, 286.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-155", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 198.0, 315.0, 198.0, 315.0, 174.0, 328.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-154", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 198.0, 357.0, 198.0, 357.0, 174.0, 371.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-153", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 198.0, 399.0, 198.0, 399.0, 174.0, 412.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 237.0, 135.0, 237.0, 135.0, 210.0, 149.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 237.0, 180.0, 237.0, 180.0, 210.0, 193.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 237.0, 225.0, 237.0, 225.0, 210.0, 239.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 237.0, 273.0, 237.0, 273.0, 210.0, 286.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 237.0, 315.0, 237.0, 315.0, 210.0, 328.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 237.0, 357.0, 237.0, 357.0, 210.0, 371.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 237.0, 399.0, 237.0, 399.0, 210.0, 412.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 252.0, 135.0, 252.0, 135.0, 492.0, 150.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 193.5, 252.0, 180.0, 252.0, 180.0, 492.0, 194.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 239.5, 252.0, 225.0, 252.0, 225.0, 492.0, 240.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 286.5, 252.0, 273.0, 252.0, 273.0, 495.0, 287.5, 495.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 328.5, 252.0, 315.0, 252.0, 315.0, 489.0, 329.5, 489.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 371.5, 252.0, 357.0, 252.0, 357.0, 492.0, 372.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 412.5, 252.0, 399.0, 252.0, 399.0, 492.0, 413.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 93.0, 6.0, 93.0, 6.0, 138.0, 30.5, 138.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 93.0, 6.0, 93.0, 6.0, 174.0, 30.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 93.0, 6.0, 93.0, 6.0, 210.0, 30.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 93.0, 6.0, 93.0, 6.0, 252.0, 30.5, 252.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 93.0, 6.0, 93.0, 6.0, 285.0, 30.5, 285.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-115", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 93.0, 6.0, 93.0, 6.0, 435.0, 30.5, 435.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 93.0, 6.0, 93.0, 6.0, 396.0, 30.5, 396.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 93.0, 6.0, 93.0, 6.0, 363.0, 30.5, 363.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 93.0, 6.0, 93.0, 6.0, 327.0, 30.5, 327.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontname" : "Arial",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontsize" : 16.0,
					"numoutlets" : 3,
					"id" : "obj-86",
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Arial",
					"types" : [  ],
					"patching_rect" : [ 813.0, 131.0, 120.0, 25.0 ],
					"items" : [ "Mute", ",", "Flat", ",", "Basic", "Mix", ",", "Jazz" ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"id" : "obj-119",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 546.0, 582.0, 12.0, 78.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"id" : "obj-120",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 476.0, 582.0, 12.0, 78.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"id" : "obj-121",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 412.0, 589.0, 12.0, 78.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"id" : "obj-122",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 340.0, 591.0, 12.0, 78.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"id" : "obj-123",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 269.0, 581.0, 12.0, 78.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"id" : "obj-124",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 199.0, 581.0, 12.0, 78.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"id" : "obj-125",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 132.0, 581.0, 12.0, 78.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"id" : "obj-126",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 67.0, 581.0, 12.0, 77.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"numoutlets" : 2,
					"id" : "obj-127",
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 507.0, 581.0, 27.0, 75.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"numoutlets" : 2,
					"id" : "obj-128",
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 441.0, 581.0, 28.0, 81.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"numoutlets" : 2,
					"id" : "obj-129",
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 374.0, 581.0, 29.0, 77.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"numoutlets" : 2,
					"id" : "obj-130",
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 306.0, 584.0, 26.0, 77.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"numoutlets" : 2,
					"id" : "obj-131",
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 234.0, 581.0, 25.0, 75.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"numoutlets" : 2,
					"id" : "obj-132",
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 166.0, 581.0, 26.0, 75.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"numoutlets" : 2,
					"id" : "obj-133",
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 100.0, 581.0, 26.0, 76.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"numoutlets" : 2,
					"id" : "obj-134",
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 31.0, 583.0, 26.0, 72.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-110",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 501.0, 538.0, 60.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-103",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 436.0, 538.0, 55.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-104",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 369.0, 538.0, 55.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-105",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 300.0, 538.0, 61.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-106",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 232.0, 538.0, 56.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-107",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 164.0, 538.0, 60.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-108",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 95.0, 538.0, 60.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-109",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 21.0, 537.0, 56.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcher ChairMix",
					"fontsize" : 12.0,
					"numoutlets" : 8,
					"id" : "obj-83",
					"outlettype" : [ "", "", "", "", "", "", "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 27.0, 473.0, 492.0, 20.0 ],
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 1091.0, 244.0, 718.0, 578.0 ],
						"bglocked" : 0,
						"defrect" : [ 1091.0, 244.0, 718.0, 578.0 ],
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
									"maxclass" : "comment",
									"text" : "**3-9 are user definable; only 3 is currently connected",
									"linecount" : 3,
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-128",
									"fontname" : "Arial",
									"patching_rect" : [ 494.0, 35.0, 183.0, 55.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "9: (not connected)",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"id" : "obj-126",
									"fontname" : "Arial",
									"patching_rect" : [ 497.0, 438.0, 218.0, 27.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "8: (not connected)",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"id" : "obj-127",
									"fontname" : "Arial",
									"patching_rect" : [ 497.0, 401.0, 218.0, 27.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "7: (not connected)",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"id" : "obj-120",
									"fontname" : "Arial",
									"patching_rect" : [ 497.0, 366.0, 218.0, 27.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "6: (not connected)",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"id" : "obj-121",
									"fontname" : "Arial",
									"patching_rect" : [ 497.0, 332.0, 218.0, 27.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "5: (not connected)",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"id" : "obj-122",
									"fontname" : "Arial",
									"patching_rect" : [ 497.0, 290.0, 218.0, 27.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "4: (not connected)",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"id" : "obj-123",
									"fontname" : "Arial",
									"patching_rect" : [ 497.0, 254.0, 218.0, 27.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3: Jazz",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"id" : "obj-119",
									"fontname" : "Arial",
									"patching_rect" : [ 497.0, 215.0, 218.0, 27.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2: Basic Mix",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"id" : "obj-118",
									"fontname" : "Arial",
									"patching_rect" : [ 497.0, 177.0, 218.0, 27.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1: Flat (all 100)",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"id" : "obj-117",
									"fontname" : "Arial",
									"patching_rect" : [ 497.0, 142.0, 218.0, 27.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0: Mute (all 0)",
									"fontsize" : 18.0,
									"numoutlets" : 0,
									"id" : "obj-116",
									"fontname" : "Arial",
									"patching_rect" : [ 497.0, 107.0, 218.0, 27.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-106",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 448.0, 438.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-107",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 403.0, 438.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-108",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 362.0, 438.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-109",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 319.0, 438.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-110",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 438.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-111",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 230.0, 438.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-112",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 438.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-113",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 140.0, 438.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"id" : "obj-114",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 109.0, 438.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 8.5 9.5",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-115",
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 438.0, 72.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-98",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 448.0, 401.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-99",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 403.0, 401.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-100",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 362.0, 401.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-101",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 319.0, 401.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-102",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 401.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-103",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 230.0, 401.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-104",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 401.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-105",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 140.0, 401.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-90",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 448.0, 366.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-91",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 403.0, 366.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-92",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 362.0, 366.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-93",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 319.0, 366.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-94",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 366.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-95",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 230.0, 366.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-96",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 366.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-97",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 140.0, 366.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-82",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 448.0, 332.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-83",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 403.0, 332.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-84",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 362.0, 332.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-85",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 319.0, 332.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-86",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 332.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-87",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 230.0, 332.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-88",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 332.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-89",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 140.0, 332.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-74",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 448.0, 290.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-75",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 403.0, 290.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-76",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 362.0, 290.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-77",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 319.0, 290.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-78",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 290.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-79",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 230.0, 290.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-80",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 290.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-81",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 140.0, 290.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-66",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 448.0, 255.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-67",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 403.0, 255.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-68",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 362.0, 255.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-69",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 319.0, 255.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-70",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 255.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-71",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 230.0, 255.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-72",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 255.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-73",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 140.0, 255.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "135",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-58",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 448.0, 215.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "123",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-59",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 403.0, 215.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "109",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-60",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 362.0, 215.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "119",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-61",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 319.0, 215.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "102",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-62",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 215.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "110",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-63",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 230.0, 215.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "105",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-64",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 215.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "110",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-65",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 140.0, 215.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"id" : "obj-52",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 109.0, 401.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"id" : "obj-53",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 109.0, 366.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"id" : "obj-54",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 109.0, 332.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 7.5 8.5",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-55",
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 401.0, 72.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 6.5 7.5",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-56",
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 366.0, 72.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 5.5 6.5",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-57",
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 332.0, 72.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"id" : "obj-46",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 109.0, 290.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"id" : "obj-47",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 109.0, 255.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"id" : "obj-48",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 109.0, 215.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 4.5 5.5",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-49",
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 290.0, 72.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 3.5 4.5",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-50",
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 255.0, 72.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 2.5 3.5",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-51",
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 215.0, 72.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"id" : "obj-45",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 109.0, 177.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"id" : "obj-44",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 109.0, 142.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"id" : "obj-16",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 109.0, 107.0, 20.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 1.5 2.5",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-43",
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 177.0, 72.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 0.5 1.5",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-42",
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 142.0, 72.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "100",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-33",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 448.0, 142.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "100",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-34",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 403.0, 142.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "100",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-35",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 362.0, 142.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "100",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-36",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 319.0, 142.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "100",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-37",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 142.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "100",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-38",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 230.0, 142.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "100",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-39",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 142.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "100",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-40",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 140.0, 142.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-29",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 448.0, 107.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-30",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 403.0, 107.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-31",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 362.0, 107.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-32",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 319.0, 107.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-28",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 107.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-27",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 230.0, 107.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-26",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 107.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-25",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 140.0, 107.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-24",
									"outlettype" : [ "float", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 20.0, 49.0, 50.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "split 0 0.5",
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-23",
									"outlettype" : [ "float", "float" ],
									"fontname" : "Arial",
									"patching_rect" : [ 21.0, 107.0, 62.0, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-18",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 19.0, 9.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "140",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-160",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 448.0, 177.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "125",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-153",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 403.0, 177.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "120",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-154",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 362.0, 177.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "115",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-155",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 319.0, 177.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "110",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-156",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 277.0, 177.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "110",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-157",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 230.0, 177.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "100",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-158",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 184.0, 177.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "110",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-159",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 140.0, 177.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-17",
									"patching_rect" : [ 449.0, 507.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-15",
									"patching_rect" : [ 404.0, 507.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-14",
									"patching_rect" : [ 363.0, 507.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-13",
									"patching_rect" : [ 320.0, 504.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-12",
									"patching_rect" : [ 278.0, 508.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-11",
									"patching_rect" : [ 231.0, 507.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-10",
									"patching_rect" : [ 185.0, 507.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-9",
									"patching_rect" : [ 141.0, 506.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 93.0, 6.0, 93.0, 6.0, 327.0, 30.5, 327.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 93.0, 6.0, 93.0, 6.0, 363.0, 30.5, 363.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 93.0, 6.0, 93.0, 6.0, 396.0, 30.5, 396.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-115", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 93.0, 6.0, 93.0, 6.0, 435.0, 30.5, 435.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 93.0, 6.0, 93.0, 6.0, 285.0, 30.5, 285.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 93.0, 6.0, 93.0, 6.0, 252.0, 30.5, 252.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 93.0, 6.0, 93.0, 6.0, 210.0, 30.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 93.0, 6.0, 93.0, 6.0, 174.0, 30.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 93.0, 6.0, 93.0, 6.0, 138.0, 30.5, 138.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 457.5, 252.0, 444.0, 252.0, 444.0, 492.0, 458.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 412.5, 252.0, 399.0, 252.0, 399.0, 492.0, 413.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 371.5, 252.0, 357.0, 252.0, 357.0, 492.0, 372.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 328.5, 252.0, 315.0, 252.0, 315.0, 489.0, 329.5, 489.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 286.5, 252.0, 273.0, 252.0, 273.0, 495.0, 287.5, 495.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 239.5, 252.0, 225.0, 252.0, 225.0, 492.0, 240.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 193.5, 252.0, 180.0, 252.0, 180.0, 492.0, 194.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 252.0, 135.0, 252.0, 135.0, 492.0, 150.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 237.0, 444.0, 237.0, 444.0, 210.0, 457.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 237.0, 399.0, 237.0, 399.0, 210.0, 412.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 237.0, 357.0, 237.0, 357.0, 210.0, 371.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 237.0, 315.0, 237.0, 315.0, 210.0, 328.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 237.0, 273.0, 237.0, 273.0, 210.0, 286.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 237.0, 225.0, 237.0, 225.0, 210.0, 239.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 237.0, 180.0, 237.0, 180.0, 210.0, 193.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 237.0, 135.0, 237.0, 135.0, 210.0, 149.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-160", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 198.0, 444.0, 198.0, 444.0, 174.0, 457.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-153", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 198.0, 399.0, 198.0, 399.0, 174.0, 412.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-154", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 198.0, 357.0, 198.0, 357.0, 174.0, 371.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-155", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 198.0, 315.0, 198.0, 315.0, 174.0, 328.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-156", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 198.0, 273.0, 198.0, 273.0, 174.0, 286.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-157", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 198.0, 225.0, 198.0, 225.0, 174.0, 239.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-158", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 198.0, 180.0, 198.0, 180.0, 174.0, 193.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-159", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 198.0, 135.0, 198.0, 135.0, 174.0, 149.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 162.0, 135.0, 162.0, 135.0, 93.0, 444.0, 93.0, 444.0, 135.0, 457.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 162.0, 135.0, 162.0, 135.0, 93.0, 399.0, 93.0, 399.0, 135.0, 412.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 162.0, 135.0, 162.0, 135.0, 93.0, 357.0, 93.0, 357.0, 135.0, 371.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 162.0, 315.0, 162.0, 315.0, 138.0, 328.5, 138.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 162.0, 273.0, 162.0, 273.0, 138.0, 286.5, 138.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 162.0, 225.0, 162.0, 225.0, 138.0, 239.5, 138.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 162.0, 180.0, 162.0, 180.0, 138.0, 193.5, 138.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 162.0, 135.0, 162.0, 135.0, 138.0, 149.5, 138.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 129.0, 135.0, 129.0, 135.0, 93.0, 457.5, 93.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 129.0, 135.0, 129.0, 135.0, 93.0, 412.5, 93.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 129.0, 135.0, 129.0, 135.0, 93.0, 371.5, 93.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 129.0, 135.0, 129.0, 135.0, 93.0, 328.5, 93.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 129.0, 135.0, 129.0, 135.0, 93.0, 286.5, 93.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 129.0, 135.0, 129.0, 135.0, 93.0, 239.5, 93.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 129.0, 135.0, 129.0, 135.0, 93.0, 193.5, 93.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 129.0, 135.0, 129.0, 135.0, 102.0, 149.5, 102.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-115", 0 ],
									"destination" : [ "obj-114", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 468.0, 105.0, 468.0, 105.0, 435.0, 118.5, 435.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 423.0, 105.0, 423.0, 105.0, 396.0, 118.5, 396.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 387.0, 105.0, 387.0, 105.0, 360.0, 118.5, 360.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 354.0, 105.0, 354.0, 105.0, 324.0, 118.5, 324.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 312.0, 105.0, 312.0, 105.0, 285.0, 118.5, 285.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 276.0, 105.0, 276.0, 105.0, 249.0, 118.5, 249.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 237.0, 105.0, 237.0, 105.0, 213.0, 118.5, 213.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 207.0, 105.0, 207.0, 105.0, 174.0, 118.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 162.0, 105.0, 162.0, 105.0, 138.0, 118.5, 138.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 129.0, 96.0, 129.0, 96.0, 102.0, 118.5, 102.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 457.5, 174.0, 444.0, 174.0, 444.0, 492.0, 458.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-160", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 457.5, 210.0, 444.0, 210.0, 444.0, 492.0, 458.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 412.5, 174.0, 399.0, 174.0, 399.0, 492.0, 413.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-153", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 412.5, 210.0, 399.0, 210.0, 399.0, 492.0, 413.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 371.5, 174.0, 357.0, 174.0, 357.0, 492.0, 372.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-154", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 371.5, 210.0, 357.0, 210.0, 357.0, 492.0, 372.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 328.5, 174.0, 315.0, 174.0, 315.0, 489.0, 329.5, 489.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-155", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 328.5, 210.0, 315.0, 210.0, 315.0, 489.0, 329.5, 489.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-156", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 286.5, 210.0, 273.0, 210.0, 273.0, 495.0, 287.5, 495.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 286.5, 174.0, 273.0, 174.0, 273.0, 495.0, 287.5, 495.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-157", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 239.5, 210.0, 225.0, 210.0, 225.0, 492.0, 240.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-158", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 193.5, 210.0, 180.0, 210.0, 180.0, 492.0, 194.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-159", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 210.0, 135.0, 210.0, 135.0, 492.0, 150.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 239.5, 174.0, 225.0, 174.0, 225.0, 492.0, 240.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 193.5, 174.0, 180.0, 174.0, 180.0, 492.0, 194.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 174.0, 135.0, 174.0, 135.0, 492.0, 150.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 457.5, 138.0, 444.0, 138.0, 444.0, 492.0, 458.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 412.5, 138.0, 399.0, 138.0, 399.0, 492.0, 413.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 371.5, 138.0, 357.0, 138.0, 357.0, 492.0, 372.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 328.5, 138.0, 315.0, 138.0, 315.0, 489.0, 329.5, 489.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 286.5, 138.0, 273.0, 138.0, 273.0, 495.0, 287.5, 495.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 239.5, 138.0, 225.0, 138.0, 225.0, 492.0, 240.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 193.5, 138.0, 180.0, 138.0, 180.0, 492.0, 194.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 138.0, 135.0, 138.0, 135.0, 492.0, 150.5, 492.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontname" : "Arial",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Headphone Volume",
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"id" : "obj-74",
					"fontname" : "Arial",
					"bgcolor" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
					"patching_rect" : [ 805.0, 208.0, 181.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Chair Volume",
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"id" : "obj-71",
					"fontname" : "Arial",
					"bgcolor" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
					"patching_rect" : [ 634.0, 209.0, 127.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Chair Mix",
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"id" : "obj-69",
					"fontname" : "Arial",
					"bgcolor" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
					"patching_rect" : [ 819.0, 90.0, 88.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"numoutlets" : 2,
					"id" : "obj-68",
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 651.0, 278.0, 35.0, 135.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcher ChairGlobalVolume",
					"fontsize" : 12.0,
					"numoutlets" : 8,
					"id" : "obj-67",
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"fontname" : "Arial",
					"patching_rect" : [ 27.0, 712.0, 578.0, 20.0 ],
					"numinlets" : 9,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 766.0, 131.0, 746.0, 470.0 ],
						"bglocked" : 0,
						"defrect" : [ 766.0, 131.0, 746.0, 470.0 ],
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
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-18",
									"outlettype" : [ "int" ],
									"patching_rect" : [ 663.0, 157.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-17",
									"patching_rect" : [ 581.0, 350.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-15",
									"patching_rect" : [ 511.0, 350.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-14",
									"patching_rect" : [ 442.0, 350.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-13",
									"patching_rect" : [ 365.0, 350.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-12",
									"patching_rect" : [ 287.0, 350.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-11",
									"patching_rect" : [ 206.0, 350.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-10",
									"patching_rect" : [ 125.0, 350.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"id" : "obj-9",
									"patching_rect" : [ 52.0, 350.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 587.0, 117.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 510.0, 117.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 434.0, 116.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 355.0, 116.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 281.0, 118.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 207.0, 121.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 130.0, 119.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 52.0, 119.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"numoutlets" : 1,
									"id" : "obj-38",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 620.0, 222.5, 12.0, 78.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"numoutlets" : 1,
									"id" : "obj-37",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 544.0, 222.5, 12.0, 78.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"numoutlets" : 1,
									"id" : "obj-36",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 469.0, 222.5, 12.0, 78.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"numoutlets" : 1,
									"id" : "obj-35",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 391.0, 222.5, 12.0, 78.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"numoutlets" : 1,
									"id" : "obj-33",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 319.0, 222.5, 12.0, 78.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"numoutlets" : 1,
									"id" : "obj-32",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 240.0, 222.5, 12.0, 78.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"numoutlets" : 1,
									"id" : "obj-31",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 169.0, 222.5, 12.0, 78.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "meter~",
									"numoutlets" : 1,
									"id" : "obj-30",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 90.0, 222.5, 12.0, 77.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"orientation" : 2,
									"numoutlets" : 2,
									"id" : "obj-79",
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 588.0, 222.5, 26.0, 47.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"orientation" : 2,
									"numoutlets" : 2,
									"id" : "obj-84",
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 512.0, 222.5, 26.0, 47.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"orientation" : 2,
									"numoutlets" : 2,
									"id" : "obj-89",
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 436.0, 222.5, 26.0, 47.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"orientation" : 2,
									"numoutlets" : 2,
									"id" : "obj-74",
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 360.0, 222.5, 26.0, 47.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"orientation" : 2,
									"numoutlets" : 2,
									"id" : "obj-69",
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 283.0, 222.5, 26.0, 47.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"interp" : 16.0,
									"orientation" : 2,
									"numoutlets" : 2,
									"id" : "obj-64",
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 208.0, 222.5, 26.0, 47.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"orientation" : 2,
									"numoutlets" : 2,
									"id" : "obj-59",
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 131.0, 222.5, 26.0, 47.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"orientation" : 2,
									"numoutlets" : 2,
									"id" : "obj-16",
									"outlettype" : [ "signal", "int" ],
									"patching_rect" : [ 55.0, 222.5, 26.0, 47.0 ],
									"numinlets" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-89", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-89", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [ 597.5, 269.5, 617.0, 269.5, 617.0, 218.5, 626.0, 218.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [ 521.5, 269.5, 539.0, 269.5, 539.0, 221.5, 550.0, 221.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [ 445.5, 266.5, 464.0, 266.5, 464.0, 215.5, 475.0, 215.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 369.5, 266.5, 386.0, 266.5, 386.0, 215.5, 397.0, 215.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 292.5, 266.5, 314.0, 266.5, 314.0, 212.5, 325.0, 212.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 217.5, 266.5, 236.0, 266.5, 236.0, 218.5, 246.0, 218.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 140.5, 269.5, 164.0, 269.5, 164.0, 215.5, 175.0, 215.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 64.5, 269.5, 86.0, 269.5, 86.0, 215.5, 96.0, 215.5 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontname" : "Arial",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "110",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"id" : "obj-66",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 865.0, 299.0, 32.5, 16.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "100",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"id" : "obj-63",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 865.0, 321.0, 32.5, 16.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"id" : "obj-58",
					"outlettype" : [ "bang" ],
					"fontname" : "Arial",
					"patching_rect" : [ 646.0, 50.0, 60.0, 20.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Frequency Model",
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"id" : "obj-87",
					"fontname" : "Arial",
					"bgcolor" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
					"patching_rect" : [ 645.0, 90.0, 152.0, 27.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "post-freq split\n",
					"fontsize" : 11.595187,
					"numoutlets" : 0,
					"id" : "obj-39",
					"fontname" : "Arial",
					"patching_rect" : [ 905.0, 237.0, 81.0, 20.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"id" : "obj-53",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 865.0, 344.0, 32.5, 16.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "135",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"id" : "obj-55",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 865.0, 279.0, 32.5, 16.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"id" : "obj-56",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 793.0, 277.0, 12.0, 133.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"orientation" : 2,
					"numoutlets" : 2,
					"id" : "obj-57",
					"outlettype" : [ "signal", "int" ],
					"patching_rect" : [ 812.0, 278.0, 35.0, 135.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"id" : "obj-46",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 53.0, 135.0, 12.0, 90.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "120",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 713.0, 268.0, 32.5, 16.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "110",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 713.0, 286.0, 32.5, 16.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "95",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"id" : "obj-10",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 713.0, 322.0, 32.5, 16.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "100",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 713.0, 304.0, 32.5, 16.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "90",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"id" : "obj-78",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 713.0, 341.0, 32.5, 16.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"id" : "obj-76",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 713.0, 397.0, 32.5, 16.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "75",
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"id" : "obj-73",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 713.0, 378.0, 32.5, 16.0 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-72",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 651.0, 249.0, 56.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2 3 4 5 6 7 8 9 10 11 12",
					"fontsize" : 11.595187,
					"numoutlets" : 0,
					"id" : "obj-13",
					"fontname" : "Arial",
					"patching_rect" : [ 27.0, 762.0, 892.0, 20.0 ],
					"numinlets" : 12
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-85",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 560.0, 298.0, 60.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-90",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 479.0, 298.0, 65.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-75",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 405.0, 298.0, 61.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-70",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 328.0, 298.0, 56.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-65",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 252.0, 298.0, 60.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-60",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 177.0, 298.0, 60.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.595187,
					"maximum" : 20000.0,
					"numoutlets" : 2,
					"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
					"id" : "obj-17",
					"outlettype" : [ "float", "bang" ],
					"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
					"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
					"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
					"fontname" : "Arial",
					"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 105.0, 298.0, 56.0, 20.0 ],
					"minimum" : 0.0,
					"numinlets" : 1,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ],
					"patching_rect" : [ 560.0, 123.333344, 20.0, 140.0 ],
					"size" : 1500.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "" ],
					"patching_rect" : [ 479.0, 126.333344, 20.0, 140.0 ],
					"size" : 1500.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "" ],
					"patching_rect" : [ 405.0, 120.333344, 20.0, 140.0 ],
					"size" : 1500.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numoutlets" : 1,
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"patching_rect" : [ 328.0, 117.333344, 20.0, 140.0 ],
					"size" : 1500.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"patching_rect" : [ 252.0, 121.333344, 20.0, 140.0 ],
					"size" : 1500.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 177.0, 122.333344, 20.0, 140.0 ],
					"size" : 1500.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numoutlets" : 1,
					"id" : "obj-14",
					"outlettype" : [ "" ],
					"patching_rect" : [ 105.0, 121.333344, 20.0, 140.0 ],
					"size" : 1500.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcher SplitSignal",
					"fontsize" : 12.0,
					"numoutlets" : 8,
					"id" : "obj-34",
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"fontname" : "Arial",
					"patching_rect" : [ 27.0, 376.0, 552.0, 20.0 ],
					"numinlets" : 8,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 12.0, 44.0, 1749.0, 1054.0 ],
						"bglocked" : 0,
						"defrect" : [ 12.0, 44.0, 1749.0, 1054.0 ],
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
									"text" : "loadbang",
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"id" : "obj-21",
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 1676.0, 40.0, 60.0, 20.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Q->",
									"fontsize" : 30.0,
									"numoutlets" : 0,
									"id" : "obj-20",
									"fontname" : "Arial",
									"patching_rect" : [ 1557.0, 119.0, 63.0, 41.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "HP->",
									"fontsize" : 30.0,
									"numoutlets" : 0,
									"id" : "obj-89",
									"fontname" : "Arial",
									"patching_rect" : [ 11.0, 283.0, 79.0, 41.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "LP->",
									"fontsize" : 30.0,
									"numoutlets" : 0,
									"id" : "obj-88",
									"fontname" : "Arial",
									"patching_rect" : [ 11.0, 214.0, 85.0, 41.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 500.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-84",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 1586.0, 307.0, 56.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 500.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-82",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 1398.0, 307.0, 56.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 500.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-83",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 1398.0, 240.0, 56.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 500.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-80",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 1185.0, 307.0, 56.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 500.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-81",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 1185.0, 240.0, 56.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 500.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-78",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 984.0, 307.0, 56.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 500.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-79",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 984.0, 240.0, 56.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 500.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-76",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 766.0, 307.0, 56.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 500.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-77",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 766.0, 240.0, 56.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 500.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-73",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 555.0, 307.0, 56.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 500.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-74",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 555.0, 240.0, 56.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 500.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-71",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 365.0, 307.0, 56.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 500.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-72",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 365.0, 240.0, 56.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"id" : "obj-55",
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"fontname" : "Arial",
									"patching_rect" : [ 1517.0, 307.0, 59.5, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"id" : "obj-56",
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"fontname" : "Arial",
									"patching_rect" : [ 1331.0, 307.0, 59.5, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"id" : "obj-57",
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"fontname" : "Arial",
									"patching_rect" : [ 1115.0, 307.0, 59.5, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"id" : "obj-63",
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"fontname" : "Arial",
									"patching_rect" : [ 915.0, 307.0, 59.5, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"id" : "obj-64",
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"fontname" : "Arial",
									"patching_rect" : [ 696.0, 307.0, 59.5, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"id" : "obj-66",
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"fontname" : "Arial",
									"patching_rect" : [ 483.0, 307.0, 59.5, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"id" : "obj-67",
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"fontname" : "Arial",
									"patching_rect" : [ 295.0, 307.0, 59.5, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 500.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-54",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 1643.0, 180.0, 56.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "domain 0 2000",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-53",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 88.0, 878.0, 78.0, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "4",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-52",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 1676.0, 66.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numoutlets" : 1,
									"floatoutput" : 1,
									"id" : "obj-51",
									"outlettype" : [ "" ],
									"patching_rect" : [ 1626.0, 110.0, 30.0, 60.0 ],
									"size" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0.5",
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"id" : "obj-62",
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 1627.0, 64.0, 32.5, 16.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 500.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-19",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 193.0, 309.0, 56.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 20000.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-85",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 1456.0, 97.0, 60.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 20000.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-90",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 1257.0, 97.0, 65.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 20000.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-75",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 1043.0, 97.0, 61.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 20000.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-70",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 823.0, 97.0, 56.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 20000.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-65",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 624.0, 97.0, 60.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 20000.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-60",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 416.0, 97.0, 60.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.595187,
									"maximum" : 20000.0,
									"numoutlets" : 2,
									"htricolor" : [ 0.843137, 0.058824, 0.254902, 1.0 ],
									"id" : "obj-11",
									"outlettype" : [ "float", "bang" ],
									"hbgcolor" : [ 0.933333, 0.886275, 0.019608, 1.0 ],
									"tricolor" : [ 0.905882, 1.0, 0.07451, 1.0 ],
									"htextcolor" : [ 0.054902, 0.243137, 0.007843, 1.0 ],
									"fontname" : "Arial",
									"bgcolor" : [ 0.929412, 0.360784, 0.866667, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"patching_rect" : [ 237.0, 97.0, 56.0, 20.0 ],
									"minimum" : 0.0,
									"numinlets" : 1,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"range" : [ 0.0, 1.0 ],
									"numoutlets" : 0,
									"id" : "obj-45",
									"domain" : [ 0.0, 2000.0 ],
									"patching_rect" : [ 1427.0, 918.0, 300.0, 100.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"range" : [ 0.0, 1.0 ],
									"numoutlets" : 0,
									"id" : "obj-44",
									"domain" : [ 0.0, 2000.0 ],
									"patching_rect" : [ 756.0, 916.0, 300.0, 100.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"range" : [ 0.0, 1.0 ],
									"numoutlets" : 0,
									"id" : "obj-41",
									"domain" : [ 0.0, 2000.0 ],
									"patching_rect" : [ 1253.0, 793.0, 300.0, 100.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"range" : [ 0.0, 1.0 ],
									"numoutlets" : 0,
									"id" : "obj-42",
									"domain" : [ 0.0, 2000.0 ],
									"patching_rect" : [ 1077.0, 919.0, 315.0, 103.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"range" : [ 0.0, 1.0 ],
									"numoutlets" : 0,
									"id" : "obj-43",
									"domain" : [ 0.0, 2000.0 ],
									"patching_rect" : [ 914.0, 793.0, 300.0, 100.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"id" : "obj-39",
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"fontname" : "Arial",
									"patching_rect" : [ 1331.0, 240.0, 59.5, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"id" : "obj-38",
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"fontname" : "Arial",
									"patching_rect" : [ 1115.0, 240.0, 59.5, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"id" : "obj-37",
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"fontname" : "Arial",
									"patching_rect" : [ 915.0, 240.0, 59.5, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"id" : "obj-36",
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"fontname" : "Arial",
									"patching_rect" : [ 695.0, 240.0, 59.5, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"range" : [ 0.0, 1.0 ],
									"numoutlets" : 0,
									"id" : "obj-35",
									"domain" : [ 0.0, 2000.0 ],
									"fgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
									"bgcolor" : [ 0.67451, 0.819608, 0.572549, 1.0 ],
									"patching_rect" : [ 99.0, 926.0, 259.0, 97.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"range" : [ 0.0, 1.0 ],
									"numoutlets" : 0,
									"id" : "obj-34",
									"domain" : [ 0.0, 2000.0 ],
									"patching_rect" : [ 565.0, 792.0, 300.0, 100.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"id" : "obj-33",
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"fontname" : "Arial",
									"patching_rect" : [ 483.0, 240.0, 59.5, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"range" : [ 0.0, 1.0 ],
									"numoutlets" : 0,
									"id" : "obj-32",
									"domain" : [ 0.0, 2000.0 ],
									"patching_rect" : [ 380.0, 920.0, 300.0, 100.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"id" : "obj-30",
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"fontname" : "Arial",
									"patching_rect" : [ 295.0, 240.0, 59.5, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "svf~",
									"fontsize" : 12.0,
									"numoutlets" : 4,
									"id" : "obj-29",
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"fontname" : "Arial",
									"patching_rect" : [ 127.0, 309.0, 59.5, 20.0 ],
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "spectroscope~",
									"range" : [ 0.0, 1.0 ],
									"numoutlets" : 0,
									"id" : "obj-6",
									"domain" : [ 0.0, 2000.0 ],
									"patching_rect" : [ 192.0, 793.0, 300.0, 100.0 ],
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u193001760",
									"numoutlets" : 0,
									"id" : "obj-18",
									"patching_rect" : [ 1534.0, 695.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u252001759",
									"numoutlets" : 0,
									"id" : "obj-17",
									"patching_rect" : [ 1348.0, 695.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u753001758",
									"numoutlets" : 0,
									"id" : "obj-16",
									"patching_rect" : [ 1132.0, 695.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u586001757",
									"numoutlets" : 0,
									"id" : "obj-15",
									"patching_rect" : [ 932.0, 695.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u716001762",
									"numoutlets" : 0,
									"id" : "obj-14",
									"patching_rect" : [ 713.0, 695.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u180001763",
									"numoutlets" : 0,
									"id" : "obj-13",
									"patching_rect" : [ 500.0, 695.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u302001764",
									"numoutlets" : 0,
									"id" : "obj-12",
									"patching_rect" : [ 312.0, 695.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u349001755",
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1456.0, 133.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u200001754",
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1257.0, 133.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u773001753",
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1043.0, 133.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u521001752",
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 823.0, 133.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u954001749",
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 237.0, 133.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u039001751",
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 624.0, 133.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u511001750",
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "float" ],
									"patching_rect" : [ 416.0, 133.0, 26.0, 26.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"varname" : "u630001765",
									"numoutlets" : 0,
									"id" : "obj-2",
									"patching_rect" : [ 132.0, 695.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"varname" : "u580001748",
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 104.0, 133.0, 25.0, 25.0 ],
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-55", 1 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1540.0, 681.0, 1569.0, 681.0, 1569.0, 903.0, 1436.5, 903.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 150.0, 681.0, 201.5, 681.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 150.0, 681.0, 141.5, 681.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 97.5, 929.0, 108.5, 929.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 97.5, 904.0, 765.5, 904.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [ 97.5, 904.0, 1086.5, 904.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [ 97.5, 904.0, 1436.5, 904.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [ 97.5, 904.0, 557.0, 904.0, 557.0, 790.0, 574.5, 790.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [ 97.5, 904.0, 911.0, 904.0, 911.0, 790.0, 923.5, 790.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [ 97.5, 904.0, 1244.0, 904.0, 1244.0, 790.0, 1262.5, 790.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 97.5, 905.0, 389.5, 905.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 97.5, 904.0, 179.0, 904.0, 179.0, 790.0, 201.5, 790.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1685.5, 96.0, 1635.5, 96.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1636.5, 81.0, 1635.5, 81.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 113.5, 219.0, 126.0, 219.0, 126.0, 288.0, 120.0, 288.0, 120.0, 402.0, 75.0, 402.0, 75.0, 912.0, 108.5, 912.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1465.5, 160.0, 1443.0, 160.0, 1443.0, 94.0, 1465.5, 94.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-90", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1266.5, 160.0, 1254.0, 160.0, 1254.0, 94.0, 1266.5, 94.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1052.5, 160.0, 1029.0, 160.0, 1029.0, 94.0, 1052.5, 94.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 0,
									"midpoints" : [ 832.5, 160.0, 810.0, 160.0, 810.0, 94.0, 832.5, 94.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [ 633.5, 160.0, 621.0, 160.0, 621.0, 94.0, 633.5, 94.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [ 425.5, 160.0, 402.0, 160.0, 402.0, 94.0, 425.5, 94.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 246.5, 160.0, 234.0, 160.0, 234.0, 94.0, 246.5, 94.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1635.5, 227.0, 202.5, 227.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1635.5, 227.0, 374.5, 227.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1635.5, 227.0, 431.0, 227.0, 431.0, 293.0, 374.5, 293.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1635.5, 227.0, 564.5, 227.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-73", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1635.5, 227.0, 623.0, 227.0, 623.0, 293.0, 564.5, 293.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1635.5, 227.0, 775.5, 227.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1635.5, 227.0, 761.0, 227.0, 761.0, 293.0, 775.5, 293.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1635.5, 227.0, 993.5, 227.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1635.5, 227.0, 902.0, 227.0, 902.0, 293.0, 993.5, 293.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1635.5, 227.0, 1194.5, 227.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1635.5, 227.0, 1100.0, 227.0, 1100.0, 293.0, 1194.5, 293.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-83", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1635.5, 227.0, 1407.5, 227.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-82", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1635.5, 227.0, 1316.0, 227.0, 1316.0, 293.0, 1407.5, 293.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1635.5, 227.0, 1595.5, 227.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-29", 2 ],
									"hidden" : 0,
									"midpoints" : [ 202.5, 330.0, 186.0, 330.0, 186.0, 306.0, 177.0, 306.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-30", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-30", 2 ],
									"hidden" : 0,
									"midpoints" : [ 374.5, 262.0, 354.0, 262.0, 354.0, 235.0, 345.0, 235.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-67", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 1 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 318.0, 681.0, 486.0, 681.0, 486.0, 780.0, 504.0, 780.0, 504.0, 906.0, 389.5, 906.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 318.0, 690.0, 321.5, 690.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-67", 2 ],
									"hidden" : 0,
									"midpoints" : [ 374.5, 328.0, 354.0, 328.0, 354.0, 304.0, 345.0, 304.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-29", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-33", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 113.5, 218.0, 492.5, 218.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-33", 2 ],
									"hidden" : 0,
									"midpoints" : [ 564.5, 262.0, 543.0, 262.0, 543.0, 235.0, 533.0, 235.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-66", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 1 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [ 506.0, 681.0, 574.5, 681.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 506.0, 690.0, 509.5, 690.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-66", 2 ],
									"hidden" : 0,
									"midpoints" : [ 564.5, 328.0, 543.0, 328.0, 543.0, 304.0, 533.0, 304.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-36", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [ 113.5, 218.0, 704.5, 218.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-36", 2 ],
									"hidden" : 0,
									"midpoints" : [ 775.5, 262.0, 756.0, 262.0, 756.0, 235.0, 745.0, 235.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-64", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 1 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 719.0, 681.0, 876.0, 681.0, 876.0, 903.0, 765.5, 903.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 719.0, 690.0, 722.5, 690.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-64", 2 ],
									"hidden" : 0,
									"midpoints" : [ 775.5, 328.0, 756.0, 328.0, 756.0, 304.0, 746.0, 304.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-37", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [ 113.5, 218.0, 924.5, 218.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-37", 2 ],
									"hidden" : 0,
									"midpoints" : [ 993.5, 262.0, 975.0, 262.0, 975.0, 235.0, 965.0, 235.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-63", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 1 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [ 938.0, 681.0, 918.0, 681.0, 918.0, 789.0, 923.5, 789.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 938.0, 690.0, 941.5, 690.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-63", 2 ],
									"hidden" : 0,
									"midpoints" : [ 993.5, 328.0, 975.0, 328.0, 975.0, 304.0, 965.0, 304.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-38", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-38", 2 ],
									"hidden" : 0,
									"midpoints" : [ 1194.5, 262.0, 1176.0, 262.0, 1176.0, 235.0, 1165.0, 235.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [ 113.5, 218.0, 1124.5, 218.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-57", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-57", 2 ],
									"hidden" : 0,
									"midpoints" : [ 1194.5, 328.0, 1176.0, 328.0, 1176.0, 304.0, 1165.0, 304.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1138.0, 690.0, 1141.5, 690.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 1 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1138.0, 681.0, 1224.0, 681.0, 1224.0, 906.0, 1086.5, 906.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-39", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [ 113.5, 218.0, 1340.5, 218.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-83", 0 ],
									"destination" : [ "obj-39", 2 ],
									"hidden" : 0,
									"midpoints" : [ 1407.5, 262.0, 1392.0, 262.0, 1392.0, 235.0, 1381.0, 235.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-56", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 1 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1354.0, 681.0, 1262.5, 681.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1354.0, 690.0, 1357.5, 690.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-82", 0 ],
									"destination" : [ "obj-56", 2 ],
									"hidden" : 0,
									"midpoints" : [ 1407.5, 328.0, 1392.0, 328.0, 1392.0, 304.0, 1381.0, 304.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [ 113.5, 218.0, 1526.5, 218.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-55", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 1540.0, 690.0, 1543.5, 690.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-55", 2 ],
									"hidden" : 0,
									"midpoints" : [ 1595.5, 328.0, 1578.0, 328.0, 1578.0, 304.0, 1567.0, 304.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 113.5, 218.0, 304.5, 218.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 113.5, 218.0, 136.5, 218.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"default_fontname" : "Arial",
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontname" : "Arial",
						"default_fontface" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "meter~",
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 36.0, 135.0, 12.0, 90.0 ],
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-127", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-128", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 6 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 7 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 7 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 569.5, 423.0, 780.0, 423.0, 780.0, 273.0, 821.5, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 6 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 493.357147, 423.0, 780.0, 423.0, 780.0, 273.0, 821.5, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [ 827.5, 90.0, 816.0, 90.0, 816.0, 123.0, 822.5, 123.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-111", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"midpoints" : [ 655.5, 90.0, 642.0, 90.0, 642.0, 126.0, 647.5, 126.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-112", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [ 722.5, 378.0, 699.0, 378.0, 699.0, 270.0, 708.0, 270.0, 708.0, 246.0, 660.5, 246.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [ 874.5, 360.0, 858.0, 360.0, 858.0, 270.0, 870.0, 270.0, 870.0, 243.0, 821.5, 243.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [ 874.5, 339.0, 858.0, 339.0, 858.0, 270.0, 870.0, 270.0, 870.0, 243.0, 821.5, 243.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [ 874.5, 315.0, 858.0, 315.0, 858.0, 270.0, 870.0, 270.0, 870.0, 243.0, 821.5, 243.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [ 874.5, 297.0, 858.0, 297.0, 858.0, 270.0, 870.0, 270.0, 870.0, 243.0, 821.5, 243.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 0 ],
					"destination" : [ "obj-99", 0 ],
					"hidden" : 0,
					"midpoints" : [ 647.5, 156.0, 591.0, 156.0, 591.0, 54.0, 112.5, 54.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 2 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 3 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 4 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 5 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 6 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 5 ],
					"destination" : [ "obj-129", 0 ],
					"hidden" : 0,
					"midpoints" : [ 417.214294, 459.0, 531.0, 459.0, 531.0, 525.0, 366.0, 525.0, 366.0, 576.0, 383.5, 576.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 4 ],
					"destination" : [ "obj-130", 0 ],
					"hidden" : 0,
					"midpoints" : [ 341.071442, 459.0, 531.0, 459.0, 531.0, 525.0, 297.0, 525.0, 297.0, 576.0, 315.5, 576.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 3 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.928558, 459.0, 12.0, 459.0, 12.0, 525.0, 228.0, 525.0, 228.0, 576.0, 243.5, 576.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 2 ],
					"destination" : [ "obj-132", 0 ],
					"hidden" : 0,
					"midpoints" : [ 188.785721, 459.0, 12.0, 459.0, 12.0, 525.0, 159.0, 525.0, 159.0, 576.0, 175.5, 576.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-133", 0 ],
					"hidden" : 0,
					"midpoints" : [ 112.64286, 459.0, 12.0, 459.0, 12.0, 570.0, 105.0, 570.0, 105.0, 576.0, 109.5, 576.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-134", 0 ],
					"hidden" : 0,
					"midpoints" : [ 36.5, 459.0, 12.0, 459.0, 12.0, 570.0, 40.5, 570.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 7 ],
					"destination" : [ "obj-110", 0 ],
					"hidden" : 0,
					"midpoints" : [ 509.5, 534.0, 510.5, 534.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 6 ],
					"destination" : [ "obj-103", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 5 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 4 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 3 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 2 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 1 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-109", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [ 822.5, 195.0, 771.0, 195.0, 771.0, 459.0, 36.5, 459.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-134", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-133", 0 ],
					"destination" : [ "obj-67", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-132", 0 ],
					"destination" : [ "obj-67", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 0 ],
					"destination" : [ "obj-67", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-130", 0 ],
					"destination" : [ "obj-67", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 0 ],
					"destination" : [ "obj-67", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-128", 0 ],
					"destination" : [ "obj-67", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 0 ],
					"destination" : [ "obj-67", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 0 ],
					"destination" : [ "obj-119", 0 ],
					"hidden" : 0,
					"midpoints" : [ 516.5, 657.0, 543.0, 657.0, 543.0, 579.0, 552.0, 579.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-128", 0 ],
					"destination" : [ "obj-120", 0 ],
					"hidden" : 0,
					"midpoints" : [ 450.5, 663.0, 471.0, 663.0, 471.0, 579.0, 482.0, 579.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 0 ],
					"destination" : [ "obj-121", 0 ],
					"hidden" : 0,
					"midpoints" : [ 383.5, 660.0, 408.0, 660.0, 408.0, 585.0, 418.0, 585.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-130", 0 ],
					"destination" : [ "obj-122", 0 ],
					"hidden" : 0,
					"midpoints" : [ 315.5, 663.0, 339.0, 663.0, 339.0, 591.0, 346.0, 591.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 0 ],
					"destination" : [ "obj-123", 0 ],
					"hidden" : 0,
					"midpoints" : [ 243.5, 657.0, 264.0, 657.0, 264.0, 576.0, 275.0, 576.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-132", 0 ],
					"destination" : [ "obj-124", 0 ],
					"hidden" : 0,
					"midpoints" : [ 175.5, 657.0, 195.0, 657.0, 195.0, 576.0, 205.0, 576.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-133", 0 ],
					"destination" : [ "obj-125", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 657.0, 129.0, 657.0, 129.0, 576.0, 138.0, 576.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-134", 0 ],
					"destination" : [ "obj-126", 0 ],
					"hidden" : 0,
					"midpoints" : [ 40.5, 657.0, 18.0, 657.0, 18.0, 570.0, 69.0, 570.0, 69.0, 576.0, 73.0, 576.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-109", 0 ],
					"destination" : [ "obj-134", 0 ],
					"hidden" : 0,
					"midpoints" : [ 30.5, 566.0, 40.5, 566.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-108", 0 ],
					"destination" : [ "obj-133", 0 ],
					"hidden" : 0,
					"midpoints" : [ 104.5, 563.0, 109.5, 563.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-107", 0 ],
					"destination" : [ "obj-132", 0 ],
					"hidden" : 0,
					"midpoints" : [ 173.5, 564.0, 175.5, 564.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-131", 0 ],
					"hidden" : 0,
					"midpoints" : [ 241.5, 564.0, 243.5, 564.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 0 ],
					"destination" : [ "obj-130", 0 ],
					"hidden" : 0,
					"midpoints" : [ 309.5, 575.0, 315.5, 575.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-129", 0 ],
					"hidden" : 0,
					"midpoints" : [ 378.5, 564.0, 383.5, 564.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 0 ],
					"destination" : [ "obj-128", 0 ],
					"hidden" : 0,
					"midpoints" : [ 445.5, 562.0, 450.5, 562.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-110", 0 ],
					"destination" : [ "obj-127", 0 ],
					"hidden" : 0,
					"midpoints" : [ 510.5, 562.0, 516.5, 562.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 1 ],
					"destination" : [ "obj-67", 8 ],
					"hidden" : 0,
					"midpoints" : [ 676.5, 699.0, 595.5, 699.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [ 660.5, 278.0, 660.5, 278.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 1 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 2 ],
					"destination" : [ "obj-13", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 3 ],
					"destination" : [ "obj-13", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 4 ],
					"destination" : [ "obj-13", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 5 ],
					"destination" : [ "obj-13", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 6 ],
					"destination" : [ "obj-13", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 7 ],
					"destination" : [ "obj-13", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 36.5, 423.0, 780.0, 423.0, 780.0, 273.0, 821.5, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 112.64286, 423.0, 780.0, 423.0, 780.0, 273.0, 821.5, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 2 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 188.785721, 423.0, 780.0, 423.0, 780.0, 273.0, 821.5, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 3 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.928558, 423.0, 780.0, 423.0, 780.0, 273.0, 821.5, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 4 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 341.071442, 423.0, 780.0, 423.0, 780.0, 273.0, 821.5, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 5 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [ 417.214294, 423.0, 780.0, 423.0, 780.0, 273.0, 821.5, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [ 114.5, 261.0, 114.5, 261.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [ 186.5, 264.0, 186.5, 264.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [ 261.5, 261.0, 261.5, 261.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [ 337.5, 258.0, 337.5, 258.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [ 414.5, 261.0, 414.5, 261.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"midpoints" : [ 488.5, 267.0, 488.5, 267.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [ 569.5, 264.0, 569.5, 264.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-34", 1 ],
					"hidden" : 0,
					"midpoints" : [ 114.5, 318.0, 112.64286, 318.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-34", 2 ],
					"hidden" : 0,
					"midpoints" : [ 186.5, 318.0, 188.785721, 318.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-34", 3 ],
					"hidden" : 0,
					"midpoints" : [ 261.5, 318.0, 264.928558, 318.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-34", 4 ],
					"hidden" : 0,
					"midpoints" : [ 337.5, 318.0, 341.071442, 318.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-34", 5 ],
					"hidden" : 0,
					"midpoints" : [ 414.5, 318.0, 417.214294, 318.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-34", 6 ],
					"hidden" : 0,
					"midpoints" : [ 488.5, 318.0, 493.357147, 318.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-34", 7 ],
					"hidden" : 0,
					"midpoints" : [ 569.5, 321.0, 569.5, 321.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [ 722.5, 414.0, 699.0, 414.0, 699.0, 270.0, 708.0, 270.0, 708.0, 246.0, 660.5, 246.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [ 722.5, 396.0, 699.0, 396.0, 699.0, 270.0, 708.0, 270.0, 708.0, 246.0, 660.5, 246.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [ 722.5, 357.0, 699.0, 357.0, 699.0, 270.0, 708.0, 270.0, 708.0, 246.0, 660.5, 246.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [ 722.5, 339.0, 699.0, 339.0, 699.0, 270.0, 708.0, 270.0, 708.0, 246.0, 660.5, 246.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [ 722.5, 321.0, 699.0, 321.0, 699.0, 270.0, 708.0, 270.0, 708.0, 246.0, 660.5, 246.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [ 722.5, 303.0, 708.0, 303.0, 708.0, 246.0, 660.5, 246.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [ 722.5, 285.0, 708.0, 285.0, 708.0, 246.0, 660.5, 246.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [ 821.5, 423.0, 780.0, 423.0, 780.0, 273.0, 799.0, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-13", 11 ],
					"hidden" : 0,
					"midpoints" : [ 821.5, 747.0, 909.5, 747.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-13", 10 ],
					"hidden" : 0,
					"midpoints" : [ 821.5, 747.0, 830.136353, 747.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 79.5, 363.0, 36.5, 363.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 26.5, 363.0, 36.5, 363.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-134", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-133", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-132", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-131", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-130", 1 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-129", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-128", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-127", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
