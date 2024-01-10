if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2013 Toyota Crown Athlete G Japanese Police [Rin]"
VEHICLE.Vehicle		= "crownxeno"
VEHICLE.Category 	= "Photon 2 119 Japan"
VEHICLE.Author		= "Rin Hoshizora"

VEHICLE.Siren = {
	[1] = "patlite_sap520pbm",
}

VEHICLE.Equipment = {
	{
		Category = "HUD",
		Options = {
			{
				Option = "HUD",
				UIComponents = {
					{
						Component = "photon_hud_default"
					}
				}
			}
		}
	},
	{
        Category = "Livery",
        Options = {
            {
                Option = "Aichi",
                SubMaterials = {
                    { Id = 0, Material = "rin/japan_police/crown/aichi" }
                }
            },
            {
                Option = "Akita",
                SubMaterials = {
                    { Id = 0, Material = "rin/japan_police/crown/akita" }
                }
            },
			{
                Option = "Aomori",
                SubMaterials = {
                    { Id = 0, Material = "rin/japan_police/crown/aomori" }
                }
            },
			{
                Option = "Chiba",
                SubMaterials = {
                    { Id = 0, Material = "rin/japan_police/crown/chiba" }
                }
            },
			{
                Option = "Ehime",
                SubMaterials = {
                    { Id = 0, Material = "rin/japan_police/crown/ehime" }
                }
            },
			{
                Option = "Fukui",
                SubMaterials = {
                    { Id = 0, Material = "rin/japan_police/crown/fukui" }
                }
            },
			{
                Option = "Fukuoka",
                SubMaterials = {
                    { Id = 0, Material = "rin/japan_police/crown/fukuoka" }
                }
            },
			{
                Option = "Fukushima",
                SubMaterials = {
                    { Id = 0, Material = "rin/japan_police/crown/fukushima" }
                }
            },
			{
                Option = "Gifu",
                SubMaterials = {
                    { Id = 0, Material = "rin/japan_police/crown/gifu" }
                }
            },
			{
                Option = "Gunma",
                SubMaterials = {
                    { Id = 0, Material = "rin/japan_police/crown/gunma" }
                }
            },
			{
                Option = "Hiroshima",
                SubMaterials = {
                    { Id = 0, Material = "rin/japan_police/crown/hiroshima" }
                }
            },
			{
                Option = "Hokkaido",
                SubMaterials = {
                    { Id = 0, Material = "rin/japan_police/crown/hokkaido" }
                }
            },
			{
                Option = "Hyogo",
                SubMaterials = {
                    { Id = 0, Material = "rin/japan_police/crown/hyogo" }
                }
            },
			{
                Option = "Ibaraki",
                SubMaterials = {
                    { Id = 0, Material = "rin/japan_police/crown/ibaraki" }
                }
            },
			{
                Option = "Ishikawa",
                SubMaterials = {
                    { Id = 0, Material = "rin/japan_police/crown/ishikawa" }
                }
            },
			{
                Option = "Iwate",
                SubMaterials = {
                    { Id = 0, Material = "rin/japan_police/crown/iwate" }
                }
            },
        }
    },
	{
		Category = "Wheels",
		Options = {
			{
                Option = "Silver",
                SubMaterials = {
                    { Id = 7, Material = nil }
                }
            },
			{
                Option = "Dark Chrome",
                SubMaterials = {
                    { Id = 7, Material = "models/xenoscars/crown/crown_rim_black" }
                }
            },
		}
	},
    {
		Category = "Lightbar",
		Options = {
			{
				Option = "Koito LED110",
				Components = {
					{
						Component = "koito_led110_rin",
						Position = Vector( 0, -8, 66.1 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.0
					},
				}
			}
		}
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "Patlite SAP-520PBM",
				Components = {
					{
						Component = "photon_siren_jp_rin",
						Position = Vector(-10.5, 105.5, 17.5),
						Angles = Angle(1.5, 180, 180),
						Scale = .8,
						Siren = 1
					},
				}
			}
		}
	},
 	{
		Category = "License Plates",
		Options = {
			{
				Option = "License Plates",
				Props = {
					{
						Name = "@rear_plate",
						Model = "models/xenosprops/jp_plate/jp_plate.mdl",
						Position = Vector( 0, -120, 40 ),
						Angles = Angle( -17, 270, 00 ),
						Scale = 1,
						BodyGroups = {
							["rear_seal"] = 1,
						},
						SubMaterials = {
							["models/xenosprops/jp_plate/seal_fukuoka"] = "models/xenosprops/jp_plate/seal_aichi",
						},
					},
					{
						Name = "@front_plate",
						Model = "models/xenosprops/jp_plate/jp_plate.mdl",
						Position = Vector( 0, 110.15, 21.3 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						BodyGroups = {
							["rear_seal"] = 0,
						},
					},
				},
			}
		}
	},
    {
		Category = "Siren Box",
		Options = {
			{
				Option = "Siren Box",
				Props = {
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 19.5, 33 ),
						Angles = Angle(),
						Scale = 1.1
					}
				}
			}
		}
	},
	{
		Category = "Grille Badge",
		Options = {
			{
				Option = "Police Badge",
				BodyGroups = {
					{ BodyGroup = "grille", Value = 1 }
				}
			}
		}
	},
	{
		Category = "Grille Lights",
		Options = {
			{
				Option = "Patlite LP3",
				Components = {
					{
						Name = "@grille_lp3",
						Component = "photon_patlite_lp3_rin",
						Position = Vector( -10.1, 106, 31 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						StateMap = "[R] 1",
						Phase = "A",
						SubMaterials = {
							[5] = "sentry/props/patlite_lp3/glass_outer"
						},
						InputActions = {
							["Emergency.Warning"] = {
								["MODE1"] = { Light = "FLASH4" },
								["MODE2"] = { Light = "FLASH4" },
								["MODE3"] = { Light = "FLASH4" },
							},
						}
					},
					{
						Inherit = "@grille_lp3",
						Position = Vector( 10.1, 106, 31 ),
						Angles = Angle( 0, 0, 0 ),
						Phase = "A",
						StateMap = "[R] 1"
					}
				}
			}
		}
	},
	{
		Category = "Additional Mirrors",
		Options = {
			{
				Option = "Additional Mirrors",
				BodyGroups = {
					{ BodyGroup = "police_mirrors", Value = 0 }
				}
			}
		}
	},
	{
		Category = "Antenna",
		Options = {
			{
				Option = "Antenna",
				BodyGroups = {
					{ BodyGroup = "antenna", Value = 1 }
				}
			}
		}
	},
	{
		Category = "Message Board",
		Options ={
			{
				Option = "Message Board",
				Components = {
					{
						Component = "photon_rsg_traffic_commander_jpn_rin",
						Position = Vector( 0, -74, 58 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.1
					}
				}
			}
		}
	},
	{
		Category = "Controller Sound",
		Options = {
			{
				Option = "Patlite SAP-500",
				InteractionSounds = {
					{ Class = "Controller", Profile = "patlite_500" }
				}
			},
		}
	},
}