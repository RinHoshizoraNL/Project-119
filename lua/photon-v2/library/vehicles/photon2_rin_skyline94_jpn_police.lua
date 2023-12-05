if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1994 Nissan Skyline GTR R32 Japanese Police [Rin]"
VEHICLE.Vehicle		= "r32gtr5xeno"
VEHICLE.Category 	= "Photon 2 119 Japan"
VEHICLE.Author		= "Rin Hoshizora"

VEHICLE.Siren = {
	[1] = "clarion_aa600a",
}

VEHICLE.SubMaterials = {
	["9"] = "rin/japan_police/r32/aichi",
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
						Component = "koito_led110_rin",
						Position = Vector( 0, -8, 57.6 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = .9
					},
				}
			}
		}
	},
	{
		Category = "Grille Lights",
		Options = {
			{
				Option = "Koito Flashers",
				Components = {
					{
						Component = "koito_flasher_rin",
						Position = Vector( 10, 100, 30.3 ),
						Angles = Angle( 0, -5, 0 ),
						Scale = 1.0,
						SubMaterials = {
							[0] = "sentry/props/koitoflasher/plastic_r"
						},
					},
					{
						Component = "koito_flasher_rin",
						Position = Vector( -10, 100, 30.3 ),
						Angles = Angle( 0, 5, 0 ),
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
				Option = "Panasonic WF-115A",
				Components = {
					{
						Component = "photon_siren_jp_rin",
						Position = Vector(-8, 93, 29.5),
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
						Position = Vector( 0, -102.2, 22 ),
						Angles = Angle( -8, 270, 00 ),
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
						Position = Vector( 0, 102.3, 18.8 ),
						Angles = Angle( 10, 90, 0 ),
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
		Category = "Grille Badge",
		Options = {
			{
				Option = "Police Badge",
				Props = {
					{
						Model = "models/sentry/props/japanese_police_emblem.mdl",
						Position = Vector( 0, 100.2, 29.5 ),
						Angles = Angle( 0, 0, 17 ),
						Scale = .8
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
				Props = {
					{
						Model = "models/sentry/props/japanese_outer_mirror_left.mdl",
						Position = Vector( -39.5, 16.5, 49 ),
						Angles = Angle( 0, 283, -6.5 ),
						Scale = .9
					},
					{
						Model = "models/sentry/props/japanese_center_mirror.mdl",
						Position = Vector( 0, 9, 53 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1
					}
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
						Position = Vector( 0, 17.6, 29.9 ),
						Angles = Angle( 0, 4, -28 ),
						Scale = 1.1
					}
				}
			}
		}
	},
}


SGM = SGM or {}
SGM.AttachModels = SGM.AttachModels or {}
SGM.AttachModelsByClass = SGM.AttachModelsByClass or {}
SGM.AttachedModels = SGM.AttachedModels or {}

SGM.AttachModelsByClass["photon2:photon2_rin_skyline94_jpn_police"] = {
    {
        Model = "models/xenoscars/nissan/Nissan_Skyline_GTR_R32_S1.mdl",
        Pos = Vector(0,0,0),
        Ang = Angle(0,0,0),
        Color = Color(255,255,255),
        Scale = 1,
	-- BodyGroups = {
	-- 	{1,1},
	-- 	{2,1},
	-- },
        BoneMerge = false, --bone merging, pretty self-explanatory
        BoneParent = "", --bone parenting, this makes the prop follow a specific bone
        RenderMode = RENDERMODE_NORMAL, --render mode just in case you need it, although you usually shouldn't
        Sync = false, --sync colors,materials, and bodygroups between the two models
        SyncSubMaterials = false, --sync submaterials between the models
        -- SyncFunction = function(car, prop)
        --         if !IsValid(car) or !IsValid(prop) then return end --if you really know what you're doing you can add custom functions for interactions between the vehicle and the prop, these get called each sync (default: every 2 seconds)
        -- end,
        -- SubMaterials = {
        --     [0] = "sentry/shared/skin0", --ability to change the submaterials of the prop if necessary
        -- },
    },
	{
        Model = "models/xenoscars/nissan/Nissan_Skyline_GTR_R32_GTR.mdl",
        Pos = Vector(0,0,0),
        Ang = Angle(0,0,0),
        Color = Color(255,255,255),
        Scale = 1,
	-- BodyGroups = {
	-- 	{1,1},
	-- 	{2,1},
	-- },
        BoneMerge = false, --bone merging, pretty self-explanatory
        BoneParent = "", --bone parenting, this makes the prop follow a specific bone
        RenderMode = RENDERMODE_NORMAL, --render mode just in case you need it, although you usually shouldn't
        Sync = true, --sync colors,materials, and bodygroups between the two models
        SyncSubMaterials = true, --sync submaterials between the models
        -- SyncFunction = function(car, prop)
        --         if !IsValid(car) or !IsValid(prop) then return end --if you really know what you're doing you can add custom functions for interactions between the vehicle and the prop, these get called each sync (default: every 2 seconds)
        -- end,
        -- SubMaterials = {
        --     [0] = "sentry/shared/skin0", --ability to change the submaterials of the prop if necessary
        -- },
    },
	{
        Model = "models/xenoscars/nissan/Nissan_Skyline_GTR_R32_Wheels.mdl",
        Pos = Vector(0,0,0),
        Ang = Angle(0,0,0),
        Color = Color(255,255,255),
        Scale = 1,
	-- BodyGroups = {
	-- 	{1,1},
	-- 	{2,1},
	-- },
        BoneMerge = true, --bone merging, pretty self-explanatory
        BoneParent = "", --bone parenting, this makes the prop follow a specific bone
        RenderMode = RENDERMODE_NORMAL, --render mode just in case you need it, although you usually shouldn't
        Sync = true, --sync colors,materials, and bodygroups between the two models
        SyncSubMaterials = false, --sync submaterials between the models
        -- SyncFunction = function(car, prop)
        --         if !IsValid(car) or !IsValid(prop) then return end --if you really know what you're doing you can add custom functions for interactions between the vehicle and the prop, these get called each sync (default: every 2 seconds)
        -- end,
        -- SubMaterials = {
        --     [0] = "sentry/shared/skin0", --ability to change the submaterials of the prop if necessary
        -- },
    },
	{
        Model = "models/xenoscars/nissan/Nissan_Skyline_GTR_R32_Interior.mdl",
        Pos = Vector(0,0,0),
        Ang = Angle(0,0,0),
        Color = Color(255,255,255),
        Scale = 1,
	-- BodyGroups = {
	-- 	{1,1},
	-- 	{2,1},
	-- },
        BoneMerge = true, --bone merging, pretty self-explanatory
        BoneParent = "", --bone parenting, this makes the prop follow a specific bone
        RenderMode = RENDERMODE_NORMAL, --render mode just in case you need it, although you usually shouldn't
        Sync = true, --sync colors,materials, and bodygroups between the two models
        SyncSubMaterials = true, --sync submaterials between the models
        -- SyncFunction = function(car, prop)
        --         if !IsValid(car) or !IsValid(prop) then return end --if you really know what you're doing you can add custom functions for interactions between the vehicle and the prop, these get called each sync (default: every 2 seconds)
        -- end,
        -- SubMaterials = {
        --     [0] = "sentry/shared/skin0", --ability to change the submaterials of the prop if necessary
        -- },
    },
	{
        Model = "models/xenoscars/nissan/Nissan_Skyline_GTR_R32_Interior_S1.mdl",
        Pos = Vector(0,0,0),
        Ang = Angle(0,0,0),
        Color = Color(255,255,255),
        Scale = 1,
	-- BodyGroups = {
	-- 	{1,1},
	-- 	{2,1},
	-- },
        BoneMerge = true, --bone merging, pretty self-explanatory
        BoneParent = "", --bone parenting, this makes the prop follow a specific bone
        RenderMode = RENDERMODE_NORMAL, --render mode just in case you need it, although you usually shouldn't
        Sync = true, --sync colors,materials, and bodygroups between the two models
        SyncSubMaterials = false, --sync submaterials between the models
        -- SyncFunction = function(car, prop)
        --         if !IsValid(car) or !IsValid(prop) then return end --if you really know what you're doing you can add custom functions for interactions between the vehicle and the prop, these get called each sync (default: every 2 seconds)
        -- end,
        -- SubMaterials = {
        --     [0] = "sentry/shared/skin0", --ability to change the submaterials of the prop if necessary
        -- },
    },
	{
        Model = "models/xenoscars/nissan/Nissan_Skyline_GTR_R32_Interior_GTR.mdl",
        Pos = Vector(0,0,0),
        Ang = Angle(0,0,0),
        Color = Color(255,255,255),
        Scale = 1,
	-- BodyGroups = {
	-- 	{1,1},
	-- 	{2,1},
	-- },
        BoneMerge = true, --bone merging, pretty self-explanatory
        BoneParent = "", --bone parenting, this makes the prop follow a specific bone
        RenderMode = RENDERMODE_NORMAL, --render mode just in case you need it, although you usually shouldn't
        Sync = true, --sync colors,materials, and bodygroups between the two models
        SyncSubMaterials = false, --sync submaterials between the models
        -- SyncFunction = function(car, prop)
        --         if !IsValid(car) or !IsValid(prop) then return end --if you really know what you're doing you can add custom functions for interactions between the vehicle and the prop, these get called each sync (default: every 2 seconds)
        -- end,
        -- SubMaterials = {
        --     [0] = "sentry/shared/skin0", --ability to change the submaterials of the prop if necessary
        -- },
    },
}