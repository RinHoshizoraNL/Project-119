if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2013 Toyota Crown Athlete G Japanese Police [Rin]"
VEHICLE.Vehicle		= "crownxeno"
VEHICLE.Category 	= "Photon 2 119 Japan"
VEHICLE.Author		= "Rin Hoshizora"

VEHICLE.Siren = {
	[1] = "patlite_sap520pbm",
}

local livery = PhotonDynamicMaterial.Generate("rin_crown_aichi", { "VertexLitGeneric",
	["$basetexture"] = Material( "rin/japan_police/crown/aichi.png", "VertexLitGeneric smooth" ):GetTexture( "$basetexture" ):GetName(),
 	["$bumpmap"] = "photon/common/flat",
 	["$phong"] = 1,
 	["$envmap"] = "env_cubemap",
 	["$envmaptint"] = Vector(0.020, 0.020, 0.023),
 	["$phongboost"] = 1.25,
 	["$phongexponent"] = 23,
 	["$nodecal"] = 1
})

VEHICLE.SubMaterials = {
    [0] = livery.Name,
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
		Category = "Lightbar",
		Options = {
			{
				Option = "Koito LED110",
				Components = {
					{
						Component = "koito_led110",
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
				Option = "Siren Prototype",
				Components = {
					{
						Component = "siren_prototype",
						Position = Vector(-10.5, 105.5, 19.7),
						Angles = Angle(1.5, -90, -180),
						Scale = 1,
						Siren = 1
					},
					-- {
					-- 	Component = "siren_prototype",
					-- 	Position = Vector(11, 123, 34.4),
					-- 	Angles = Angle(1.5, -90, -180),
					-- 	Scale = 1.4,
					-- 	Siren = "fedsig_smartsiren"
					-- }
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
						Model = "models/japanplate/licenseplate.mdl",
						Position = Vector( 0, -119, 40 ),
						Angles = Angle( -15, -90, 0 ),
						Scale = 1.1,
					},
					{
						Inherit = "@rear_plate",
						Name = "@front_plate",
						Position = Vector( 0, 108.85, 21.4 ),
						Angles = Angle( 1, 90, 0 ),
					},
				}
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
}