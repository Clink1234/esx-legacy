Config                            = {}

Config.DrawDistance               = 30.0 -- How close do you need to be in order for the markers to be drawn (in GTA units).

Config.Marker                     = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}

Config.ReviveReward               = 3000  -- Revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- Enable anti-combat logging? (Removes Items when a player logs back after intentionally logging out while dead.)
Config.LoadIpl                    = true -- Disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'en'

Config.EarlyRespawnTimer          = 60000 * 1  -- time til respawn is available
Config.BleedoutTimer              = 60000 * 10 -- time til the player bleeds out

Config.EnablePlayerManagement     = false -- Enable society managing (If you are using esx_society).

Config.RemoveWeaponsAfterRPDeath  = false
Config.RemoveCashAfterRPDeath     = false
Config.RemoveItemsAfterRPDeath    = false

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = false
Config.EarlyRespawnFineAmount     = 5000

Config.RespawnPoint = {coords = vector3(358.11, -585.65, 43.28), heading = 66.6}

Config.Hospitals = {

	PillBoxMedicalCenter = {

		Blip = {
			coords = vector3(297.85, -584.24, 43.26),
			sprite = 61,
			scale  = 1.2,
			color  = 2
		},

		AmbulanceActions = {
			--vector3(301.53, -599.47, 42.18)
		},

		Pharmacies = {
			--vector3(230.1, -1366.1, 38.5)
		},

		Vehicles = {
			{
				Spawner = vector3(340.69, -570.59, 28.8),
				InsideShop = vector3(318.35, -574.23, 28.8),
				Marker = {type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true},
				SpawnPoints = {
					{coords = vector3(332.25, -577.64, 28.38), heading = 339.73, radius = 4.0},
					{coords = vector3(325.58, -574.48, 28.38), heading = 339.91, radius = 4.0},
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(347.85, -598.5, 74.16),
				InsideShop = vector3(347.85, -598.5, 74.16),
				Marker = {type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true},
				SpawnPoints = {
					{coords = vector3(352.18, -588.19, 74.52), heading = 71.3, radius = 10.0},
				}
			}
		},

		FastTravels = {
			{
				From = vector3(294.7, -1448.1, 29.0),
				To = {coords = vector3(272.8, -1358.8, 23.5), heading = 0.0},
				Marker = {type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(275.3, -1361, 23.5),
				To = {coords = vector3(295.8, -1446.5, 28.9), heading = 0.0},
				Marker = {type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(247.3, -1371.5, 23.5),
				To = {coords = vector3(333.1, -1434.9, 45.5), heading = 138.6},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(335.5, -1432.0, 45.50),
				To = {coords = vector3(249.1, -1369.6, 23.5), heading = 0.0},
				Marker = {type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(234.5, -1373.7, 20.9),
				To = {coords = vector3(320.9, -1478.6, 28.8), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false}
			},

			{
				From = vector3(317.9, -1476.1, 28.9),
				To = {coords = vector3(238.6, -1368.4, 23.5), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false}
			}
		},

		FastTravelsPrompt = {
			{
				From = vector3(237.4, -1373.8, 26.0),
				To = {coords = vector3(251.9, -1363.3, 38.5), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false},
				Prompt = _U('fast_travel')
			},

			{
				From = vector3(256.5, -1357.7, 36.0),
				To = {coords = vector3(235.4, -1372.8, 26.3), heading = 0.0},
				Marker = {type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false},
				Prompt = _U('fast_travel')
			}
		}

	}
}

Config.AuthorizedVehicles = {
	car = {
		ambulance = {
			{
        name = "Standard 13 Explorer",
        model = 'amr13fpiu',
        extras = {
           [1] = true,
           [2] = true,
           [3] = true,
           [4] = true,
           [5] = true,
           [6] = true,
           [7] = false,
           [8] = true,
           [9] = true,
           [10] = true,
           [11] = true,
           [12] = true
        },
        modLivery = 1,
        price = 0
      }
		},

		doctor = {
			{
        name = "Standard 13 Explorer",
        model = 'amr13fpiu',
        extras = {
           [1] = true,
           [2] = true,
           [3] = true,
           [4] = true,
           [5] = true,
           [6] = true,
           [7] = false,
           [8] = true,
           [9] = true,
           [10] = true,
           [11] = true,
           [12] = true
        },
        modLivery = 1,
        price = 0
      },
      {
        name = "Standard 16 Explorer",
        model = 'amr16fpiu',
        extras = {
           [1] = true,
           [2] = true,
           [3] = true,
           [4] = true,
           [5] = true,
           [6] = true,
           [7] = false,
           [8] = true,
           [9] = true,
           [10] = true,
           [11] = true,
           [12] = true
        },
        modLivery = 1,
        price = 0
      }
		},

		chief_doctor = {
			{
        name = "Standard 13 Explorer",
        model = 'amr13fpiu',
        extras = {
           [1] = true,
           [2] = true,
           [3] = true,
           [4] = true,
           [5] = true,
           [6] = true,
           [7] = false,
           [8] = true,
           [9] = true,
           [10] = true,
           [11] = true,
           [12] = true
        },
        modLivery = 1,
        price = 0
      },
      {
        name = "Standard 16 Explorer",
        model = 'amr16fpiu',
        extras = {
           [1] = true,
           [2] = true,
           [3] = true,
           [4] = true,
           [5] = true,
           [6] = true,
           [7] = false,
           [8] = true,
           [9] = true,
           [10] = true,
           [11] = true,
           [12] = true
        },
        modLivery = 1,
        price = 0
      },
      {
        name = "Standard 18 Tahoe",
        model = 'amr18tahoe',
        extras = {
           [1] = true,
           [2] = true,
           [3] = true,
           [4] = true,
           [5] = true,
           [6] = true,
           [7] = false,
           [8] = true,
           [9] = true,
           [10] = true,
           [11] = true,
           [12] = true
        },
        modLivery = 1,
        price = 0
      },
      {
        name = "Standard F150",
        model = 'amrf150',
        extras = {
           [1] = true,
           [2] = true,
           [3] = true,
           [4] = true,
           [5] = true,
           [6] = true,
           [7] = false,
           [8] = true,
           [9] = true,
           [10] = true,
           [11] = true,
           [12] = true
        },
        modLivery = 1,
        price = 0
      }
		},

		boss = {
			{
        name = "Standard 13 Explorer",
        model = 'amr13fpiu',
        extras = {
           [1] = true,
           [2] = true,
           [3] = true,
           [4] = true,
           [5] = true,
           [6] = true,
           [7] = false,
           [8] = true,
           [9] = true,
           [10] = true,
           [11] = true,
           [12] = true
        },
        modLivery = 1,
        price = 0
      },
      {
        name = "Standard 16 Explorer",
        model = 'amr16fpiu',
        extras = {
           [1] = true,
           [2] = true,
           [3] = true,
           [4] = true,
           [5] = true,
           [6] = true,
           [7] = false,
           [8] = true,
           [9] = true,
           [10] = true,
           [11] = true,
           [12] = true
        },
        modLivery = 1,
        price = 0
      },
      {
        name = "Standard 18 Tahoe",
        model = 'amr18tahoe',
        extras = {
           [1] = true,
           [2] = true,
           [3] = true,
           [4] = true,
           [5] = true,
           [6] = true,
           [7] = false,
           [8] = true,
           [9] = true,
           [10] = true,
           [11] = true,
           [12] = true
        },
        modLivery = 1,
        price = 0
      },
      {
        name = "Standard F150",
        model = 'amrf150',
        extras = {
           [1] = true,
           [2] = true,
           [3] = true,
           [4] = true,
           [5] = true,
           [6] = true,
           [7] = false,
           [8] = true,
           [9] = true,
           [10] = true,
           [11] = true,
           [12] = true
        },
        modLivery = 1,
        price = 0
      },
      {
        name = "Standard F250",
        model = 'amrf250',
        extras = {
           [1] = true,
           [2] = true,
           [3] = true,
           [4] = true,
           [5] = true,
           [6] = true,
           [7] = false,
           [8] = true,
           [9] = true,
           [10] = true,
           [11] = true,
           [12] = true
        },
        modLivery = 1,
        price = 0
      }
		}
	},

	helicopter = {
		ambulance = {},

		doctor = {},

		chief_doctor = {},

		boss = {
			--{model = 'buzzard2', price = 10000}
		}
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements
Config.Uniforms = {
	ambulance = {
		male = {
			tshirt_1 = 88,  tshirt_2 = 0, -- shirt and accessory
      bags_1 = 0, bags_2 = 0, -- bags and parachutes / parachute
			torso_1 = 41,   torso_2 = 2, -- Shirt overlay and jackets / top
			decals_1 = 0,   decals_2 = -1, -- badges and logos
			arms = 4, -- upper body
			pants_1 = 29,   pants_2 = 1, -- lower body
			shoes_1 = 51,   shoes_2 = 0, -- shoes
			helmet_1 = 60,  helmet_2 = 1, -- hat
			chain_1 = 0,    chain_2 = 0, -- scarfs and chains
      bproof_1 = 0,  bproof_2 = 0,
      ears_1	=	-1,
      ears_2	= 0,
      glasses_2 = 0,
      neckarm_1 = 0,
      glasses_1 = -1,
      mask_2 = 0,
      sex = 0,
      lefthand_1 = -1,
      mask_1 = 0,
      righthand_1 = -1,
      lefthand_2 = 0,
      arms_2 = 0,
      righthand_2 = 0,
      neckarm_2 = 4
		}
	},

	doctor = {
		male = {
			tshirt_1 = 88,  tshirt_2 = 0, -- shirt and accessory
      bags_1 = 0, bags_2 = 0, -- bags and parachutes / parachute
			torso_1 = 41,   torso_2 = 2, -- Shirt overlay and jackets / top
			decals_1 = 0,   decals_2 = -1, -- badges and logos
			arms = 4, -- upper body
			pants_1 = 29,   pants_2 = 1, -- lower body
			shoes_1 = 51,   shoes_2 = 0, -- shoes
			helmet_1 = 60,  helmet_2 = 1, -- hat
			chain_1 = 0,    chain_2 = 0, -- scarfs and chains
      bproof_1 = 0,  bproof_2 = 0,
      ears_1	=	-1,
      ears_2	= 0,
      glasses_2 = 0,
      neckarm_1 = 0,
      glasses_1 = -1,
      mask_2 = 0,
      sex = 0,
      lefthand_1 = -1,
      mask_1 = 0,
      righthand_1 = -1,
      lefthand_2 = 0,
      arms_2 = 0,
      righthand_2 = 0,
      neckarm_2 = 4
		}
	},

	chief_doctor = {
		male = {
			tshirt_1 = 88,  tshirt_2 = 0, -- shirt and accessory
      bags_1 = 0, bags_2 = 0, -- bags and parachutes / parachute
			torso_1 = 41,   torso_2 = 2, -- Shirt overlay and jackets / top
			decals_1 = 0,   decals_2 = -1, -- badges and logos
			arms = 4, -- upper body
			pants_1 = 29,   pants_2 = 1, -- lower body
			shoes_1 = 51,   shoes_2 = 0, -- shoes
			helmet_1 = 60,  helmet_2 = 1, -- hat
			chain_1 = 0,    chain_2 = 0, -- scarfs and chains
      bproof_1 = 0,  bproof_2 = 0,
      ears_1	=	-1,
      ears_2	= 0,
      glasses_2 = 0,
      neckarm_1 = 0,
      glasses_1 = -1,
      mask_2 = 0,
      sex = 0,
      lefthand_1 = -1,
      mask_1 = 0,
      righthand_1 = -1,
      lefthand_2 = 0,
      arms_2 = 0,
      righthand_2 = 0,
      neckarm_2 = 4
		}
	},

	boss = {
		male = {
			tshirt_1 = 88,  tshirt_2 = 0, -- shirt and accessory
      bags_1 = 0, bags_2 = 0, -- bags and parachutes / parachute
			torso_1 = 41,   torso_2 = 2, -- Shirt overlay and jackets / top
			decals_1 = 0,   decals_2 = -1, -- badges and logos
			arms = 4, -- upper body
			pants_1 = 29,   pants_2 = 1, -- lower body
			shoes_1 = 51,   shoes_2 = 0, -- shoes
			helmet_1 = 60,  helmet_2 = 1, -- hat
			chain_1 = 0,    chain_2 = 0, -- scarfs and chains
      bproof_1 = 0,  bproof_2 = 0,
      ears_1	=	-1,
      ears_2	= 0,
      glasses_2 = 0,
      neckarm_1 = 0,
      glasses_1 = -1,
      mask_2 = 0,
      sex = 0,
      lefthand_1 = -1,
      mask_1 = 0,
      righthand_1 = -1,
      lefthand_2 = 0,
      arms_2 = 0,
      righthand_2 = 0,
      neckarm_2 = 4
		}
	},

	bullet_wear = {
    male = {
			tshirt_1 = 88,  tshirt_2 = 0, -- shirt and accessory
      bags_1 = 0, bags_2 = 0, -- bags and parachutes / parachute
			torso_1 = 41,   torso_2 = 2, -- Shirt overlay and jackets / top
			decals_1 = 0,   decals_2 = -1, -- badges and logos
			arms = 4, -- upper body
			pants_1 = 29,   pants_2 = 1, -- lower body
			shoes_1 = 51,   shoes_2 = 0, -- shoes
			helmet_1 = 60,  helmet_2 = 1, -- hat
			chain_1 = 0,    chain_2 = 0, -- scarfs and chains
      bproof_1 = 4,  bproof_2 = 3,
      ears_1	=	-1,
      ears_2	= 0,
      glasses_2 = 0,
      neckarm_1 = 0,
      glasses_1 = -1,
      mask_2 = 0,
      sex = 0,
      lefthand_1 = -1,
      mask_1 = 0,
      righthand_1 = -1,
      lefthand_2 = 0,
      arms_2 = 0,
      righthand_2 = 0,
      neckarm_2 = 4
		}
	},

	bullet_wear_2 = {
   male = {
			tshirt_1 = 88,  tshirt_2 = 0, -- shirt and accessory
      bags_1 = 0, bags_2 = 0, -- bags and parachutes / parachute
			torso_1 = 41,   torso_2 = 2, -- Shirt overlay and jackets / top
			decals_1 = 0,   decals_2 = -1, -- badges and logos
			arms = 4, -- upper body
			pants_1 = 29,   pants_2 = 1, -- lower body
			shoes_1 = 51,   shoes_2 = 0, -- shoes
			helmet_1 = 60,  helmet_2 = 1, -- hat
			chain_1 = 0,    chain_2 = 0, -- scarfs and chains
      bproof_1 = 4,  bproof_2 = 2,
      ears_1	=	-1,
      ears_2	= 0,
      glasses_2 = 0,
      neckarm_1 = 0,
      glasses_1 = -1,
      mask_2 = 0,
      sex = 0,
      lefthand_1 = -1,
      mask_1 = 0,
      righthand_1 = -1,
      lefthand_2 = 0,
      arms_2 = 0,
      righthand_2 = 0,
      neckarm_2 = 4
		}
	}
}