
OneRing_Config = {
	["CharProfiles"] = {
		["Kel'Thuzad-Laurannah"] = "default",
		["Kel'Thuzad-Hauzer-3"] = "default",
	},
	["_GameVersion"] = "7.2.0",
	["_OPieVersion"] = "Umber 8 (3.89)",
	["ProfileStorage"] = {
		["default"] = {
			["UseDefaultBindings"] = false,
			["Bindings"] = {
				["Emotes"] = false,
			},
			["GhostMIRings"] = false,
			["MISpinOnHide"] = false,
		},
	},
	["PersistentStorage"] = {
		["RingKeeper"] = {
			["rofessions"] = {
				{
					["id"] = 7411,
					["sliceToken"] = "ABueo8UftHl",
				}, -- [1]
				{
					["id"] = 4036,
					["sliceToken"] = "ABueo8UftHk",
				}, -- [2]
				{
					["id"] = 2550,
					["sliceToken"] = "ABueo8UftHj",
				}, -- [3]
				{
					["id"] = 131474,
					["sliceToken"] = "ABueo8UftH4",
				}, -- [4]
				{
					["id"] = 3273,
					["sliceToken"] = "ABueo8UftHh",
				}, -- [5]
				{
					["id"] = 78670,
					["sliceToken"] = "ABueo8UftHg",
				}, -- [6]
				["save"] = true,
				["limit"] = "Laurannah-Kel'Thuzad",
				["name"] = "Professions",
			},
			["Management"] = {
				{
					["id"] = 883,
					["sliceToken"] = "ABueoSfffGl",
				}, -- [1]
				{
					["id"] = 83242,
					["sliceToken"] = "ABueoSfffGk",
				}, -- [2]
				{
					["id"] = 83243,
					["sliceToken"] = "ABueoSfffGj",
				}, -- [3]
				{
					["id"] = 83244,
					["sliceToken"] = "ABueoSfffG4",
				}, -- [4]
				{
					["id"] = 83245,
					["sliceToken"] = "ABueoSfffGh",
				}, -- [5]
				["save"] = true,
				["limit"] = "Laurannah-Kel'Thuzad",
				["name"] = "Pet Management",
			},
			["Travel"] = {
				{
					"toy", -- [1]
					142542, -- [2]
					["sliceToken"] = "ABueoA1tnF1",
				}, -- [1]
				{
					"item", -- [1]
					140192, -- [2]
					["sliceToken"] = "ABueo8Ra/Es",
				}, -- [2]
				{
					"item", -- [1]
					141605, -- [2]
					["sliceToken"] = "ABueo8Ra/Ea",
				}, -- [3]
				{
					"toy", -- [1]
					18984, -- [2]
					["sliceToken"] = "ABueoP7uCCp",
				}, -- [4]
				{
					"toy", -- [1]
					30542, -- [2]
					["sliceToken"] = "ABueoP7uCCo",
				}, -- [5]
				{
					"toy", -- [1]
					48933, -- [2]
					["sliceToken"] = "ABueoP7uCC2",
				}, -- [6]
				{
					"toy", -- [1]
					112059, -- [2]
					["sliceToken"] = "ABueoP7uCCi",
				}, -- [7]
				["save"] = true,
				["limit"] = "Laurannah-Kel'Thuzad",
				["name"] = "Travel",
			},
			["OPieFlagStore"] = {
				["FlushedDefaultColors"] = true,
			},
			["Mounts"] = {
				{
					["id"] = 127271,
					["sliceToken"] = "ABueo8Ra/Eu",
				}, -- [1]
				{
					["id"] = 61425,
					["sliceToken"] = "ABueo8Ra/Et",
				}, -- [2]
				{
					["id"] = 75973,
					["sliceToken"] = "ABueo8Ra/E1",
				}, -- [3]
				{
					["id"] = 61465,
					["sliceToken"] = "ABueo8Ra/Ei",
				}, -- [4]
				["save"] = true,
				["name"] = "Mounts",
				["limit"] = "Laurannah-Kel'Thuzad",
			},
			["HunterPets"] = {
				{
					["show"] = "[known:883,havepet:1]",
					["sliceToken"] = "OPCHP1",
					["id"] = "#showtooltip [@pet,exists,nodead,nopet:1] {{spell:883}};\n/cast [@pet,exists,nopet:1,nodead] {{spell:2641}}\n/cast [@pet,noexists,nomod] {{spell:883}}; [@pet,dead][@pet,noexists] {{spell:982}}; [@pet,help,nomod] {{spell:136}}; [@pet] {{spell:2641}}",
				}, -- [1]
				{
					["show"] = "[known:83242,havepet:2]",
					["sliceToken"] = "OPCHP2",
					["id"] = "#showtooltip [@pet,exists,nodead,nopet:2] {{spell:83242}};\n/cast [@pet,exists,nopet:2,nodead] {{spell:2641}}\n/cast [@pet,noexists,nomod] {{spell:83242}}; [@pet,dead][@pet,noexists] {{spell:982}}; [@pet,help,nomod] {{spell:136}}; [@pet] {{spell:2641}}",
				}, -- [2]
				{
					["show"] = "[known:83243,havepet:3]",
					["sliceToken"] = "OPCHP3",
					["id"] = "#showtooltip [@pet,exists,nodead,nopet:3] {{spell:83243}};\n/cast [@pet,exists,nopet:3,nodead] {{spell:2641}}\n/cast [@pet,noexists,nomod] {{spell:83243}}; [@pet,dead][@pet,noexists] {{spell:982}}; [@pet,help,nomod] {{spell:136}}; [@pet] {{spell:2641}}",
				}, -- [3]
				{
					["show"] = "[known:83244,havepet:4]",
					["sliceToken"] = "OPCHP4",
					["id"] = "#showtooltip [@pet,exists,nodead,nopet:4] {{spell:83244}};\n/cast [@pet,exists,nopet:4,nodead] {{spell:2641}}\n/cast [@pet,noexists,nomod] {{spell:83244}}; [@pet,dead][@pet,noexists] {{spell:982}}; [@pet,help,nomod] {{spell:136}}; [@pet] {{spell:2641}}",
				}, -- [4]
				{
					["show"] = "[known:83245,havepet:5]",
					["sliceToken"] = "OPCHP5",
					["id"] = "#showtooltip [@pet,exists,nodead,nopet:5] {{spell:83245}};\n/cast [@pet,exists,nopet:5,nodead] {{spell:2641}}\n/cast [@pet,noexists,nomod] {{spell:83245}}; [@pet,dead][@pet,noexists] {{spell:982}}; [@pet,help,nomod] {{spell:136}}; [@pet] {{spell:2641}}",
				}, -- [5]
				["save"] = true,
				["limit"] = "HUNTER",
				["name"] = "Pets",
			},
			["Emotes"] = {
				{
					["sliceToken"] = "ABueo8E8ojk",
					["id"] = "#show\n/cheer",
					["caption"] = "Cheer",
				}, -- [1]
				{
					["sliceToken"] = "ABueo8E8ojj",
					["id"] = "/dance",
					["caption"] = "Dance",
				}, -- [2]
				{
					["sliceToken"] = "ABueo8E8oj4",
					["id"] = "/kiss",
					["caption"] = "Kiss",
				}, -- [3]
				{
					["sliceToken"] = "ABueo8E8ojh",
					["id"] = "/pet",
					["caption"] = "Pet",
				}, -- [4]
				{
					["sliceToken"] = "ABueo8E8ojg",
					["id"] = "/cuddle",
					["caption"] = "Cuddle",
				}, -- [5]
				{
					["sliceToken"] = "ABueo8E8ojf",
					["id"] = "/point",
					["caption"] = "Point",
				}, -- [6]
				{
					["sliceToken"] = "ABueo8E8ojd",
					["id"] = "/shrug",
					["caption"] = "Shrug",
				}, -- [7]
				{
					["sliceToken"] = "ABueo8E8oj3",
					["id"] = "/sleep",
					["caption"] = "Sleep",
				}, -- [8]
				{
					["sliceToken"] = "ABueo8E8ojs",
					["id"] = "/laugh",
					["caption"] = "Laugh",
				}, -- [9]
				{
					["sliceToken"] = "ABueo8E8oja",
					["id"] = "/spit",
					["caption"] = "Spit",
				}, -- [10]
				["noPersistentCA"] = true,
				["name"] = "Emotes",
				["noOpportunisticCA"] = true,
				["save"] = true,
			},
			["Toys"] = {
				{
					"item", -- [1]
					49040, -- [2]
					["sliceToken"] = "ABueoD8gCKu",
				}, -- [1]
				{
					"toy", -- [1]
					40768, -- [2]
					["sliceToken"] = "ABueoD8gCKy",
				}, -- [2]
				{
					"toy", -- [1]
					13379, -- [2]
					["sliceToken"] = "ABueoD8gCKt",
				}, -- [3]
				["save"] = true,
				["limit"] = "Laurannah-Kel'Thuzad",
				["name"] = "Toys",
			},
			["Outfits"] = {
				{
					"equipmentset", -- [1]
					"BIS", -- [2]
					["sliceToken"] = "ABueoLj3Jiu",
				}, -- [1]
				{
					"equipmentset", -- [1]
					"Highlvl", -- [2]
					["sliceToken"] = "ABueoLj3Jiy",
				}, -- [2]
				{
					"equipmentset", -- [1]
					"Naked", -- [2]
					["sliceToken"] = "ABueoLj3Jit",
				}, -- [3]
				["save"] = true,
				["limit"] = "Laurannah-Kel'Thuzad",
				["name"] = "Outfits",
			},
			["Pets"] = {
				{
					"battlepet", -- [1]
					"BattlePet-0-0000036D071D", -- [2]
					["sliceToken"] = "ABueo98aIgu",
				}, -- [1]
				{
					"battlepet", -- [1]
					"BattlePet-0-000005F0B637", -- [2]
					["sliceToken"] = "ABueo98aIgy",
				}, -- [2]
				["save"] = true,
				["limit"] = "Laurannah-Kel'Thuzad",
				["name"] = "Pets",
			},
		},
	},
	["_GameLocale"] = "enUS",
}
