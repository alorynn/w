
OneRing_Config = {
	["CharProfiles"] = {
		["Kel'Thuzad-Laurannah"] = "default",
		["Kel'Thuzad-Hauzer-3"] = "default",
	},
	["_GameVersion"] = "8.0.1",
	["_OPieVersion"] = "Vanilla 7 (3.93)",
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
					["sliceToken"] = "ABueo8UftHl",
					["id"] = 7411,
				}, -- [1]
				{
					["sliceToken"] = "ABueo8UftHk",
					["id"] = 4036,
				}, -- [2]
				{
					["sliceToken"] = "ABueo8UftHj",
					["id"] = 2550,
				}, -- [3]
				{
					["sliceToken"] = "ABueo8UftH4",
					["id"] = 131474,
				}, -- [4]
				{
					["id"] = 3273,
					["sliceToken"] = "ABueo8UftHh",
				}, -- [5]
				{
					["sliceToken"] = "ABueo8UftHg",
					["id"] = 78670,
				}, -- [6]
				["name"] = "Professions",
				["save"] = true,
				["limit"] = "Laurannah-Kel'Thuzad",
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
					"item", -- [1]
					110560, -- [2]
					["sliceToken"] = "ABuepwOnsRr",
				}, -- [4]
				{
					"toy", -- [1]
					18984, -- [2]
					["sliceToken"] = "ABueoP7uCCp",
				}, -- [5]
				{
					"toy", -- [1]
					30542, -- [2]
					["sliceToken"] = "ABueoP7uCCo",
				}, -- [6]
				{
					"toy", -- [1]
					48933, -- [2]
					["sliceToken"] = "ABueoP7uCC2",
				}, -- [7]
				{
					"toy", -- [1]
					112059, -- [2]
					["sliceToken"] = "ABueoP7uCCi",
				}, -- [8]
				["limit"] = "Laurannah-Kel'Thuzad",
				["save"] = true,
				["name"] = "Travel",
			},
			["OPieFlagStore"] = {
				["FlushedDefaultColors"] = true,
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
				["name"] = "Pets",
				["save"] = true,
				["limit"] = "Laurannah-Kel'Thuzad",
			},
			["HunterPets"] = {
				{
					["sliceToken"] = "OPCHP1",
					["id"] = "#showtooltip [@pet,exists,nodead,nopet:1] {{spell:883}};\n/cast [@pet,exists,nopet:1,nodead] {{spell:2641}}\n/cast [@pet,noexists,nomod] {{spell:883}}; [@pet,dead][@pet,noexists] {{spell:982}}; [@pet,help,nomod] {{spell:136}}; [@pet] {{spell:2641}}",
					["show"] = "[known:883,havepet:1]",
				}, -- [1]
				{
					["sliceToken"] = "OPCHP2",
					["id"] = "#showtooltip [@pet,exists,nodead,nopet:2] {{spell:83242}};\n/cast [@pet,exists,nopet:2,nodead] {{spell:2641}}\n/cast [@pet,noexists,nomod] {{spell:83242}}; [@pet,dead][@pet,noexists] {{spell:982}}; [@pet,help,nomod] {{spell:136}}; [@pet] {{spell:2641}}",
					["show"] = "[known:83242,havepet:2]",
				}, -- [2]
				{
					["sliceToken"] = "OPCHP3",
					["id"] = "#showtooltip [@pet,exists,nodead,nopet:3] {{spell:83243}};\n/cast [@pet,exists,nopet:3,nodead] {{spell:2641}}\n/cast [@pet,noexists,nomod] {{spell:83243}}; [@pet,dead][@pet,noexists] {{spell:982}}; [@pet,help,nomod] {{spell:136}}; [@pet] {{spell:2641}}",
					["show"] = "[known:83243,havepet:3]",
				}, -- [3]
				{
					["sliceToken"] = "OPCHP4",
					["id"] = "#showtooltip [@pet,exists,nodead,nopet:4] {{spell:83244}};\n/cast [@pet,exists,nopet:4,nodead] {{spell:2641}}\n/cast [@pet,noexists,nomod] {{spell:83244}}; [@pet,dead][@pet,noexists] {{spell:982}}; [@pet,help,nomod] {{spell:136}}; [@pet] {{spell:2641}}",
					["show"] = "[known:83244,havepet:4]",
				}, -- [4]
				{
					["sliceToken"] = "OPCHP5",
					["id"] = "#showtooltip [@pet,exists,nodead,nopet:5] {{spell:83245}};\n/cast [@pet,exists,nopet:5,nodead] {{spell:2641}}\n/cast [@pet,noexists,nomod] {{spell:83245}}; [@pet,dead][@pet,noexists] {{spell:982}}; [@pet,help,nomod] {{spell:136}}; [@pet] {{spell:2641}}",
					["show"] = "[known:83245,havepet:5]",
				}, -- [5]
				["limit"] = "HUNTER",
				["save"] = true,
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
					["sliceToken"] = "ABueo8E8ojf",
					["id"] = "/point",
					["caption"] = "Point",
				}, -- [5]
				{
					["sliceToken"] = "ABueo8E8ojd",
					["id"] = "/shrug",
					["caption"] = "Shrug",
				}, -- [6]
				{
					["sliceToken"] = "ABueo8E8oj3",
					["id"] = "/sleep",
					["caption"] = "Sleep",
				}, -- [7]
				{
					["sliceToken"] = "ABueo8E8ojs",
					["id"] = "/laugh",
					["caption"] = "Laugh",
				}, -- [8]
				{
					["sliceToken"] = "ABueo8E8oja",
					["id"] = "/spit",
					["caption"] = "Spit",
				}, -- [9]
				{
					["sliceToken"] = "ABue3Z618s1",
					["id"] = "#show\n/forthealliance",
					["caption"] = "For the Alliance!",
				}, -- [10]
				["noPersistentCA"] = true,
				["name"] = "Emotes",
				["noOpportunisticCA"] = true,
				["save"] = true,
			},
			["Mounts"] = {
				{
					["sliceToken"] = "ABueo8Ra/Eu",
					["id"] = 127271,
				}, -- [1]
				{
					["sliceToken"] = "ABue3/bX0Tr",
					["id"] = 122708,
				}, -- [2]
				{
					["sliceToken"] = "ABueo8Ra/E1",
					["id"] = 75973,
				}, -- [3]
				{
					["sliceToken"] = "ABuedijXpge",
					["id"] = 98718,
				}, -- [4]
				["limit"] = "Laurannah-Kel'Thuzad",
				["save"] = true,
				["name"] = "Mounts",
			},
			["Management"] = {
				{
					["sliceToken"] = "ABueoSfffGl",
					["id"] = 883,
				}, -- [1]
				{
					["sliceToken"] = "ABueoSfffGk",
					["id"] = 83242,
				}, -- [2]
				{
					["sliceToken"] = "ABueoSfffGj",
					["id"] = 83243,
				}, -- [3]
				{
					["sliceToken"] = "ABueoSfffG4",
					["id"] = 83244,
				}, -- [4]
				{
					["sliceToken"] = "ABueoSfffGh",
					["id"] = 83245,
				}, -- [5]
				{
					["sliceToken"] = "ABueoXQbBSe",
					["id"] = 982,
				}, -- [6]
				["limit"] = "Laurannah-Kel'Thuzad",
				["save"] = true,
				["name"] = "Pet Management",
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
				["name"] = "Outfits",
				["save"] = true,
				["limit"] = "Laurannah-Kel'Thuzad",
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
				{
					"toy", -- [1]
					134026, -- [2]
					["sliceToken"] = "ABue3GAFK2e",
				}, -- [4]
				["name"] = "Toys",
				["save"] = true,
				["limit"] = "Laurannah-Kel'Thuzad",
			},
		},
	},
	["_GameLocale"] = "enUS",
}
