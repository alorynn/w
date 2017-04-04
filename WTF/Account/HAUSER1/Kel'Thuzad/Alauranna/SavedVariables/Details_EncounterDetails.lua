
EncounterDetailsDB = {
	["emotes"] = {
		{
			{
				1.6909999998752, -- [1]
				"Your judgment has come!", -- [2]
				"Ragnaros", -- [3]
				7, -- [4]
			}, -- [1]
			{
				1.6909999998752, -- [1]
				"|TInterface\\Icons\\spell_fire_ragnaros_splittingblow.blp:20|t%s begins to cast |cFFFF0000|Hspell:98951|h[Splitting Blow]|h|r!", -- [2]
				"Ragnaros", -- [3]
				1, -- [4]
			}, -- [2]
			{
				11.2220000000671, -- [1]
				"Minions of fire! Purge the outsiders!", -- [2]
				"Ragnaros", -- [3]
				7, -- [4]
			}, -- [3]
			{
				27.7939999999944, -- [1]
				"Enough! I will finish this.", -- [2]
				"Ragnaros", -- [3]
				7, -- [4]
			}, -- [4]
			["boss"] = "Ragnaros",
		}, -- [1]
		{
			{
				1.53600000008009, -- [1]
				"Die!", -- [2]
				"Ragnaros", -- [3]
				7, -- [4]
			}, -- [1]
			{
				1.53600000008009, -- [1]
				"|TInterface\\Icons\\spell_fire_ragnaros_splittingblow.blp:20|t%s begins to cast |cFFFF0000|Hspell:98951|h[Splitting Blow]|h|r!", -- [2]
				"Ragnaros", -- [3]
				1, -- [4]
			}, -- [2]
			{
				11.2579999999143, -- [1]
				"Minions of fire! Purge the outsiders!", -- [2]
				"Ragnaros", -- [3]
				7, -- [4]
			}, -- [3]
			{
				27.9290000000037, -- [1]
				"Fall to your knees, mortals!  This ends now.", -- [2]
				"Ragnaros", -- [3]
				7, -- [4]
			}, -- [4]
			{
				33.1210000000428, -- [1]
				"Too soon! ... You have come too soon...", -- [2]
				"Ragnaros", -- [3]
				7, -- [4]
			}, -- [5]
			["boss"] = "Ragnaros",
		}, -- [2]
	},
	["encounter_spells"] = {
		[99907] = {
			["school"] = 4,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_DAMAGE"] = true,
			},
		},
		[98952] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Ragnaros",
		},
		[98981] = {
			["school"] = 4,
			["token"] = {
				["SPELL_DAMAGE"] = true,
			},
			["source"] = "Ragnaros",
		},
		[98953] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Ragnaros",
		},
		[99399] = {
			["school"] = 4,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_PERIODIC_DAMAGE"] = true,
			},
			["source"] = "Ragnaros",
		},
		[99112] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Son of Flame",
		},
	},
}
