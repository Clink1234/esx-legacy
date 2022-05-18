Config                            = {}

Config.DrawDistance               = 30.0 -- How close do you need to be for the markers to be drawn (in GTA units).
Config.MarkerType                 = {Cloakrooms = 20, Armories = 21, BossActions = 22, Vehicles = 36, Helicopters = 34}
Config.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
Config.MarkerColor                = {r = 50, g = 50, b = 204}

Config.EnablePlayerManagement     = false -- Enable if you want society managing.
Config.EnableArmoryManagement     = false
Config.EnableESXIdentity          = true -- Enable if you're using esx_identity.
Config.EnableESXOptionalneeds     = true -- Enable if you're using esx_optionalneeds
Config.EnableLicenses             = false -- Enable if you're using esx_license.

Config.EnableHandcuffTimer        = true -- Enable handcuff timer? will unrestrain player after the time ends.
Config.HandcuffTimer              = 10 * 60000 -- 10 minutes.

Config.EnableJobBlip              = false -- Enable blips for cops on duty, requires esx_society.
Config.EnableCustomPeds           = false -- Enable custom peds in cloak room? See Config.CustomPeds below to customize peds.

Config.EnableESXService           = false -- Enable esx service?
Config.MaxInService               = -1 -- How many people can be in service at once? Set as -1 to have no limit

Config.Locale                     = 'en'

Config.PoliceStations = {
	MRPD = {

		Blip = {
			Coords  = vector3(432.12, -983.9, 30.71),
			Sprite  = 60,
			Display = 4,
			Scale   = .9,
			Colour  = 29
		},

		Cloakrooms = {
			--vector3(460.95, -996.55, 30.69)
		},

		Armories = {
			--vector3(482.48, -995.64, 29.69)
		},

		Vehicles = {
			{
				Spawner = vector3(454.6, -1017.4, 28.4),
				InsideShop = vector3(442.35, -1024.73, 28.71),
				SpawnPoints = {
					{coords = vector3(449.5, -1024.21, 28.18), heading = 6.28, radius = 6.0},
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(461.1, -981.5, 43.6),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0}
				}
			}
		},

		BossActions = {
			vector3(448.4, -973.2, 30.6)
		}

	}
}

Config.AuthorizedWeapons = {
	recruit = {
		{weapon = 'WEAPON_COMBATPISTOL', price = 0},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 0},
	},

	officer = {
		{weapon = 'WEAPON_COMBATPISTOL', price = 0},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 0},
	},

	sergeant = {
		{weapon = 'WEAPON_COMBATPISTOL', price = 0},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 0},
	},

	lieutenant = {
		{weapon = 'WEAPON_COMBATPISTOL', price = 0},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 0},
	},

	boss = {
		{weapon = 'WEAPON_COMBATPISTOL', price = 0},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 0},
	}
}

Config.AuthorizedVehicles = {
	car = {
    recruit = {
       {
          name = "LSPD Standard Crown Vic",
          model = 'lib11vic',
          extras = {
             [1] = true,
             [2] = true,
             [3] = false,
             [4] = true,
             [5] = true,
             [6] = true,
             [7] = true,
             [8] = false,
             [9] = false,
             [10] = false,
             [11] = true,
             [12] = true
          },
          modLivery = 0,
          price = 0
       },
       {
          name = "LSPD Standard Caprice",
          model = 'lib12caprice',
          extras = {
             [1] = true,
             [2] = true,
             [3] = false,
             [4] = true,
             [5] = true,
             [6] = true,
             [7] = true,
             [8] = false,
             [9] = false,
             [10] = false,
             [11] = true,
             [12] = true
          },
          modLivery = 0,
          price = 0
       }
    },
    officer = {
      {
         name = "LSPD Standard Crown Vic",
         model = 'lib11vic',
         extras = {
            [1] = true,
            [2] = true,
            [3] = false,
            [4] = true,
            [5] = true,
            [6] = true,
            [7] = true,
            [8] = false,
            [9] = false,
            [10] = false,
            [11] = true,
            [12] = true
         },
         modLivery = 0,
         price = 0
      },
      {
         name = "LSPD Standard Caprice",
         model = 'lib12caprice',
         extras = {
            [1] = true,
            [2] = true,
            [3] = false,
            [4] = true,
            [5] = true,
            [6] = true,
            [7] = true,
            [8] = false,
            [9] = false,
            [10] = false,
            [11] = true,
            [12] = true
         },
         modLivery = 0,
         price = 0
      },
      {
         name = "LSPD Standard Explorer",
         model = 'lib16explorer',
         extras = {
            [1] = true,
            [2] = true,
            [3] = false,
            [4] = true,
            [5] = true,
            [6] = false,
            [7] = true,
            [8] = false,
            [9] = false,
            [10] = true,
            [11] = false,
            [12] = true
         },
         modLivery = 0,
         price = 0
      },
      {
         name = "LSPD Standard Tahoe",
         model = 'lib19tahoe',
         extras = {
            [1] = true,
            [2] = true,
            [3] = false,
            [4] = true,
            [5] = true,
            [6] = false,
            [7] = true,
            [8] = false,
            [9] = true,
            [10] = true,
            [11] = false,
            [12] = true
         },
         modLivery = 0,
         price = 0
      },
      {
         name = "LSPD Standard Taurus",
         model = 'lib18taurus',
         extras = {
            [1] = true,
            [2] = true,
            [3] = false,
            [4] = true,
            [5] = true,
            [6] = false,
            [7] = true,
            [8] = false,
            [9] = false,
            [10] = true,
            [11] = false,
            [12] = true
         },
         modLivery = 0,
         price = 0
      }
    },
    sergeant = {
        {
            name = "LSPD Standard Crown Vic",
            model = 'lib11vic',
            extras = {
               [1] = true,
               [2] = true,
               [3] = false,
               [4] = true,
               [5] = true,
               [6] = true,
               [7] = true,
               [8] = false,
               [9] = false,
               [10] = false,
               [11] = true,
               [12] = true
            },
            modLivery = 0,
            price = 0
        },
        {
            name = "LSPD Standard Caprice",
            model = 'lib12caprice',
            extras = {
               [1] = true,
               [2] = true,
               [3] = false,
               [4] = true,
               [5] = true,
               [6] = true,
               [7] = true,
               [8] = false,
               [9] = false,
               [10] = false,
               [11] = true,
               [12] = true
            },
            modLivery = 0,
            price = 0
        },
        {
            name = "LSPD Standard Explorer",
            model = 'lib16explorer',
            extras = {
               [1] = true,
               [2] = true,
               [3] = false,
               [4] = true,
               [5] = true,
               [6] = false,
               [7] = true,
               [8] = false,
               [9] = false,
               [10] = true,
               [11] = false,
               [12] = true
            },
            modLivery = 0,
            price = 0
        },
        {
            name = "LSPD Standard Tahoe",
            model = 'lib19tahoe',
            extras = {
               [1] = true,
               [2] = true,
               [3] = false,
               [4] = true,
               [5] = true,
               [6] = false,
               [7] = true,
               [8] = false,
               [9] = true,
               [10] = true,
               [11] = false,
               [12] = true
            },
            modLivery = 0,
            price = 0
        },
        {
            name = "LSPD Standard Taurus",
            model = 'lib18taurus',
            extras = {
               [1] = true,
               [2] = true,
               [3] = false,
               [4] = true,
               [5] = true,
               [6] = false,
               [7] = true,
               [8] = false,
               [9] = false,
               [10] = true,
               [11] = false,
               [12] = true
            },
            modLivery = 0,
            price = 0
        }
    },
    lieutenant = {
        {
           name = "LSPD Standard Crown Vic",
           model = 'lib11vic',
           extras = {
              [1] = true,
              [2] = true,
              [3] = false,
              [4] = true,
              [5] = true,
              [6] = true,
              [7] = true,
              [8] = false,
              [9] = false,
              [10] = false,
              [11] = true,
              [12] = true
           },
           modLivery = 0,
           price = 0
        },
        {
           name = "LSPD Standard Caprice",
           model = 'lib12caprice',
           extras = {
              [1] = true,
              [2] = true,
              [3] = false,
              [4] = true,
              [5] = true,
              [6] = true,
              [7] = true,
              [8] = false,
              [9] = false,
              [10] = false,
              [11] = true,
              [12] = true
           },
           modLivery = 0,
           price = 0
        },
        {
           name = "LSPD Standard Explorer",
           model = 'lib16explorer',
           extras = {
              [1] = true,
              [2] = true,
              [3] = false,
              [4] = true,
              [5] = true,
              [6] = false,
              [7] = true,
              [8] = false,
              [9] = false,
              [10] = true,
              [11] = false,
              [12] = true
           },
           modLivery = 0,
           price = 0
        },
        {
           name = "LSPD Standard Tahoe",
           model = 'lib19tahoe',
           extras = {
              [1] = true,
              [2] = true,
              [3] = false,
              [4] = true,
              [5] = true,
              [6] = false,
              [7] = true,
              [8] = false,
              [9] = true,
              [10] = true,
              [11] = false,
              [12] = true
           },
           modLivery = 0,
           price = 0
        },
        {
           name = "LSPD Standard Taurus",
           model = 'lib18taurus',
           extras = {
              [1] = true,
              [2] = true,
              [3] = false,
              [4] = true,
              [5] = true,
              [6] = false,
              [7] = true,
              [8] = false,
              [9] = false,
              [10] = true,
              [11] = false,
              [12] = true
           },
           modLivery = 0,
           price = 0
        },
        {
           name = "LSPD Standard Mustang",
           model = '2021stangslick',
           extras = {
              [1] = true,
              [2] = false,
              [3] = false,
              [4] = false,
              [5] = true,
              [6] = true,
              [7] = true,
              [8] = false,
              [9] = false,
              [10] = false,
              [11] = false,
              [12] = true,
           },
           modLivery = 1,
           price = 0
        }
    },
    boss = {
       {
          name = "LSPD Standard Crown Vic",
          model = 'lib11vic',
          extras = {
             [1] = true,
             [2] = true,
             [3] = false,
             [4] = true,
             [5] = true,
             [6] = true,
             [7] = true,
             [8] = false,
             [9] = false,
             [10] = false,
             [11] = true,
             [12] = true
          },
          modLivery = 0,
          price = 0
       },
       {
          name = "LSPD Standard Caprice",
          model = 'lib12caprice',
          extras = {
             [1] = true,
             [2] = true,
             [3] = false,
             [4] = true,
             [5] = true,
             [6] = true,
             [7] = true,
             [8] = false,
             [9] = false,
             [10] = false,
             [11] = true,
             [12] = true
          },
          modLivery = 0,
          price = 0
       },
       {
          name = "LSPD Standard Explorer",
          model = 'lib16explorer',
          extras = {
             [1] = true,
             [2] = true,
             [3] = false,
             [4] = true,
             [5] = true,
             [6] = false,
             [7] = true,
             [8] = false,
             [9] = false,
             [10] = true,
             [11] = false,
             [12] = true
          },
          modLivery = 0,
          price = 0
       },
       {
          name = "LSPD Standard Tahoe",
          model = 'lib19tahoe',
          extras = {
             [1] = true,
             [2] = true,
             [3] = false,
             [4] = true,
             [5] = true,
             [6] = false,
             [7] = true,
             [8] = false,
             [9] = true,
             [10] = true,
             [11] = false,
             [12] = true
          },
          modLivery = 0,
          price = 0
       },
       {
          name = "LSPD Standard Taurus",
          model = 'lib18taurus',
          extras = {
             [1] = true,
             [2] = true,
             [3] = false,
             [4] = true,
             [5] = true,
             [6] = false,
             [7] = true,
             [8] = false,
             [9] = false,
             [10] = true,
             [11] = false,
             [12] = true
          },
          modLivery = 0,
          price = 0
       },
       {
          name = "LSPD Standard Mustang",
          model = '2021stangslick',
          extras = {
             [1] = true,
             [2] = false,
             [3] = false,
             [4] = false,
             [5] = true,
             [6] = true,
             [7] = true,
             [8] = false,
             [9] = false,
             [10] = false,
             [11] = false,
             [12] = true,
          },
          modLivery = 1,
          price = 0
       }
    }
	},

	helicopter = {
		recruit = {},

		officer = {},

		sergeant = {},

		lieutenant = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},

		boss = {
			{model = 'polmav', props = {modLivery = 0}, price = 100000}
		}
	}
}

Config.CustomPeds = {
	shared = {
		{label = 'Sheriff Ped', maleModel = 's_m_y_sheriff_01', femaleModel = 's_f_y_sheriff_01'},
		{label = 'Police Ped', maleModel = 's_m_y_cop_01', femaleModel = 's_f_y_cop_01'}
	},

	recruit = {},

	officer = {},

	sergeant = {},

	lieutenant = {},

	boss = {
		{label = 'SWAT Ped', maleModel = 's_m_y_swat_01', femaleModel = 's_m_y_swat_01'}
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements
Config.Uniforms = {
	recruit = {
		male = {
			tshirt_1 = 43,  tshirt_2 = 0, -- shirt and accessory
      bags_1 = 52, bags_2 = 0, -- bags and parachutes / parachute
			torso_1 = 200,   torso_2 = 0, -- Shirt overlay and jackets / top
			decals_1 = 0,   decals_2 = -1, -- badges and logos
			arms = 4, -- upper body
			pants_1 = 35,   pants_2 = 0, -- lower body
			shoes_1 = 51,   shoes_2 = 0, -- shoes
			helmet_1 = -1,  helmet_2 = -1, -- hat
			chain_1 = 8,    chain_2 = 0, -- scarfs and chains
      bproof_1 = 0,  bproof_2 = 0,
      ears_1	=	-1,
      ears_2	= 0,
      glasses_2 = 0,
      neckarm_1 = 0,
      glasses_1 = -1,
      mask_2 = 0,
      sex = 0,
      lefthand_1 = -1,
      mask_1 = 101,
      righthand_1 = -1,
      lefthand_2 = 0,
      arms_2 = 0,
      righthand_2 = 0,
      neckarm_2 = 4
		}
	},

	officer = {
		male = {
			tshirt_1 = 43,  tshirt_2 = 0, -- shirt and accessory
      bags_1 = 52, bags_2 = 0, -- bags and parachutes / parachute
			torso_1 = 200,   torso_2 = 0, -- Shirt overlay and jackets / top
			decals_1 = 0,   decals_2 = -1, -- badges and logos
			arms = 4, -- upper body
			pants_1 = 35,   pants_2 = 0, -- lower body
			shoes_1 = 51,   shoes_2 = 0, -- shoes
			helmet_1 = -1,  helmet_2 = -1, -- hat
			chain_1 = 8,    chain_2 = 0, -- scarfs and chains
      bproof_1 = 0,  bproof_2 = 0,
      ears_1	=	-1,
      ears_2	= 0,
      glasses_2 = 0,
      neckarm_1 = 0,
      glasses_1 = -1,
      mask_2 = 0,
      sex = 0,
      lefthand_1 = -1,
      mask_1 = 101,
      righthand_1 = -1,
      lefthand_2 = 0,
      arms_2 = 0,
      righthand_2 = 0,
      neckarm_2 = 4
		}
	},

	sergeant = {
		male = {
			tshirt_1 = 43,  tshirt_2 = 0, -- shirt and accessory
      bags_1 = 52, bags_2 = 0, -- bags and parachutes / parachute
			torso_1 = 200,   torso_2 = 0, -- Shirt overlay and jackets / top
			decals_1 = 0,   decals_2 = -1, -- badges and logos
			arms = 4, -- upper body
			pants_1 = 35,   pants_2 = 0, -- lower body
			shoes_1 = 51,   shoes_2 = 0, -- shoes
			helmet_1 = -1,  helmet_2 = -1, -- hat
			chain_1 = 8,    chain_2 = 0, -- scarfs and chains
      bproof_1 = 0,  bproof_2 = 0,
      ears_1	=	-1,
      ears_2	= 0,
      glasses_2 = 0,
      neckarm_1 = 0,
      glasses_1 = -1,
      mask_2 = 0,
      sex = 0,
      lefthand_1 = -1,
      mask_1 = 101,
      righthand_1 = -1,
      lefthand_2 = 0,
      arms_2 = 0,
      righthand_2 = 0,
      neckarm_2 = 4
		}
	},

	lieutenant = {
		male = {
			tshirt_1 = 43,  tshirt_2 = 0, -- shirt and accessory
      bags_1 = 52, bags_2 = 0, -- bags and parachutes / parachute
			torso_1 = 200,   torso_2 = 0, -- Shirt overlay and jackets / top
			decals_1 = 0,   decals_2 = -1, -- badges and logos
			arms = 4, -- upper body
			pants_1 = 35,   pants_2 = 0, -- lower body
			shoes_1 = 51,   shoes_2 = 0, -- shoes
			helmet_1 = -1,  helmet_2 = -1, -- hat
			chain_1 = 8,    chain_2 = 0, -- scarfs and chains
      bproof_1 = 0,  bproof_2 = 0,
      ears_1	=	-1,
      ears_2	= 0,
      glasses_2 = 0,
      neckarm_1 = 0,
      glasses_1 = -1,
      mask_2 = 0,
      sex = 0,
      lefthand_1 = -1,
      mask_1 = 101,
      righthand_1 = -1,
      lefthand_2 = 0,
      arms_2 = 0,
      righthand_2 = 0,
      neckarm_2 = 4
		}
	},

	boss = {
		male = {
			tshirt_1 = 43,  tshirt_2 = 0, -- shirt and accessory
      bags_1 = 52, bags_2 = 0, -- bags and parachutes / parachute
			torso_1 = 200,   torso_2 = 0, -- Shirt overlay and jackets / top
			decals_1 = 0,   decals_2 = -1, -- badges and logos
			arms = 4, -- upper body
			pants_1 = 35,   pants_2 = 0, -- lower body
			shoes_1 = 51,   shoes_2 = 0, -- shoes
			helmet_1 = -1,  helmet_2 = -1, -- hat
			chain_1 = 8,    chain_2 = 0, -- scarfs and chains
      bproof_1 = 0,  bproof_2 = 0,
      ears_1	=	-1,
      ears_2	= 0,
      glasses_2 = 0,
      neckarm_1 = 0,
      glasses_1 = -1,
      mask_2 = 0,
      sex = 0,
      lefthand_1 = -1,
      mask_1 = 101,
      righthand_1 = -1,
      lefthand_2 = 0,
      arms_2 = 0,
      righthand_2 = 0,
      neckarm_2 = 4
		}
	},

	bullet_wear = {
    male = {
			tshirt_1 = 43,  tshirt_2 = 0, -- shirt and accessory
      bags_1 = 52, bags_2 = 0, -- bags and parachutes / parachute
			torso_1 = 200,   torso_2 = 0, -- Shirt overlay and jackets / top
			decals_1 = 0,   decals_2 = -1, -- badges and logos
			arms = 4, -- upper body
			pants_1 = 35,   pants_2 = 0, -- lower body
			shoes_1 = 51,   shoes_2 = 0, -- shoes
			helmet_1 = -1,  helmet_2 = -1, -- hat
			chain_1 = 8,    chain_2 = 0, -- scarfs and chains
      bproof_1 = 5,  bproof_2 = 2,
      ears_1	=	-1,
      ears_2	= 0,
      glasses_2 = 0,
      neckarm_1 = 0,
      glasses_1 = -1,
      mask_2 = 0,
      sex = 0,
      lefthand_1 = -1,
      mask_1 = 101,
      righthand_1 = -1,
      lefthand_2 = 0,
      arms_2 = 0,
      righthand_2 = 0,
      neckarm_2 = 4
		}
	},

	gilet_wear = {
    male = {
			tshirt_1 = 43,  tshirt_2 = 0, -- shirt and accessory
      bags_1 = 52, bags_2 = 0, -- bags and parachutes / parachute
			torso_1 = 200,   torso_2 = 0, -- Shirt overlay and jackets / top
			decals_1 = 0,   decals_2 = -1, -- badges and logos
			arms = 4, -- upper body
			pants_1 = 35,   pants_2 = 0, -- lower body
			shoes_1 = 51,   shoes_2 = 0, -- shoes
			helmet_1 = -1,  helmet_2 = -1, -- hat
			chain_1 = 8,    chain_2 = 0, -- scarfs and chains
      bproof_1 = 21,  bproof_2 = 0,
      ears_1	=	-1,
      ears_2	= 0,
      glasses_2 = 0,
      neckarm_1 = 0,
      glasses_1 = -1,
      mask_2 = 0,
      sex = 0,
      lefthand_1 = -1,
      mask_1 = 101,
      righthand_1 = -1,
      lefthand_2 = 0,
      arms_2 = 0,
      righthand_2 = 0,
      neckarm_2 = 4
		}
	}
}
