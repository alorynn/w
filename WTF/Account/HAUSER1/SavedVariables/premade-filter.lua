
PremadeFilter_Data = {
	["RecentQueriesOrder"] = {
		"?doom ?terr ?veng", -- [1]
		"smashum grabb", -- [2]
		"?doom  ?veng", -- [3]
		"?death ?veng", -- [4]
		"?death  ?terr", -- [5]
		"?death ?doom", -- [6]
		"?death ?terr ?veng", -- [7]
		"?terr ?veng", -- [8]
		"?aveng ?drag ?ashr", -- [9]
		"?death  ?veng", -- [10]
		"=?doom ?terr", -- [11]
		"?death ?doom   ?veng", -- [12]
		"?death  ?terr ?veng", -- [13]
		"?doom ?veng ?terr", -- [14]
		"?death ?doom  ?veng", -- [15]
		"seed  ?seed ?ashr", -- [16]
		"?seed ?ashr", -- [17]
		"?doom ?terr ?veng ?ash", -- [18]
		"?doom ?terr ?veng ?ash ?aven", -- [19]
		"norm -farm ?tank ?dps", -- [20]
		"?court ?cos", -- [21]
		"?court ?cos ?arc", -- [22]
		"?arc ?court ?cos", -- [23]
		"?darkh ?cos ?court ?arc", -- [24]
		"?maw ?cos ?court ?arc", -- [25]
		"?maw  ?arc", -- [26]
		"?maw ?arc", -- [27]
		"?vow ?vault ?wardens", -- [28]
		"?vault ?vow ?ward", -- [29]
		"mythic -keystone", -- [30]
	},
	["RecentWordsOrder"] = {
		"veng", -- [1]
		"norm", -- [2]
		"farm", -- [3]
		"tank", -- [4]
		"dps", -- [5]
		"tidross", -- [6]
		"magis", -- [7]
		"pirat", -- [8]
		"buc", -- [9]
		"arc", -- [10]
		"court", -- [11]
		"cos", -- [12]
		"myth", -- [13]
		"azsh", -- [14]
		"dark", -- [15]
		"warf", -- [16]
		"ward\\", -- [17]
		"ward", -- [18]
		"cs", -- [19]
		"darkh", -- [20]
		"maw", -- [21]
		"black", -- [22]
		"li-an", -- [23]
		"fish", -- [24]
		"vow", -- [25]
		"vault", -- [26]
		"wardens", -- [27]
		"gnom", -- [28]
		"mythic", -- [29]
		"keystone", -- [30]
	},
	["Settings"] = {
		["Version"] = "2.0.1",
		["UpdateInterval"] = 15,
		["NewPlayerChatNotifications"] = false,
		["NewGroupChatNotifications"] = false,
		["MaxRecentWords"] = 10,
		["SoundNotifications"] = false,
	},
	["FilterSetsOrder"] = {
		"champions", -- [1]
		"avengers", -- [2]
	},
	["RecentWords"] = {
		["darkh"] = true,
		["tank"] = true,
		["vow"] = true,
		["mythic"] = true,
		["magis"] = true,
		["gnom"] = true,
		["wardens"] = true,
		["warf"] = true,
		["tidross"] = true,
		["maw"] = true,
		["cos"] = true,
		["cs"] = true,
		["pirat"] = true,
		["ward"] = true,
		["keystone"] = true,
		["arc"] = true,
		["veng"] = true,
		["fish"] = true,
		["azsh"] = true,
		["dps"] = true,
		["buc"] = true,
		["dark"] = true,
		["vault"] = true,
		["court"] = true,
		["black"] = true,
		["farm"] = true,
		["li-an"] = true,
		["norm"] = true,
		["myth"] = true,
		["ward\\"] = true,
	},
	["HideTutorial"] = true,
	["RecentQueries"] = {
		["mythic -keystone"] = true,
		["?maw ?arc"] = true,
		["?death ?doom  ?veng"] = true,
		["?darkh ?cos ?court ?arc"] = true,
		["?death ?doom"] = true,
		["?death ?terr ?veng"] = true,
		["?death  ?veng"] = true,
		["?maw  ?arc"] = true,
		["?vow ?vault ?wardens"] = true,
		["?doom ?terr ?veng"] = true,
		["norm -farm ?tank ?dps"] = true,
		["?maw ?cos ?court ?arc"] = true,
		["?death ?veng"] = true,
		["=?doom ?terr"] = true,
		["smashum grabb"] = true,
		["?terr ?veng"] = true,
		["?doom  ?veng"] = true,
		["seed  ?seed ?ashr"] = true,
		["?arc ?court ?cos"] = true,
		["?court ?cos"] = true,
		["?doom ?veng ?terr"] = true,
		["?death  ?terr ?veng"] = true,
		["?doom ?terr ?veng ?ash ?aven"] = true,
		["?doom ?terr ?veng ?ash"] = true,
		["?court ?cos ?arc"] = true,
		["?death ?doom   ?veng"] = true,
		["?death  ?terr"] = true,
		["?seed ?ashr"] = true,
		["?vault ?vow ?ward"] = true,
		["?aveng ?drag ?ashr"] = true,
	},
	["FilterSets"] = {
		["champions"] = {
			["group"] = 0,
			["activity"] = 16,
			["name"] = {
				["include"] = {
				},
				["possible"] = {
					"death", -- [1]
					"doom", -- [2]
					"terr", -- [3]
					"veng", -- [4]
				},
				["exclude"] = {
				},
			},
			["category"] = 6,
		},
		["avengers"] = {
			["group"] = 0,
			["name"] = {
				["include"] = {
				},
				["possible"] = {
					"aveng", -- [1]
					"drag", -- [2]
					"ashr", -- [3]
				},
				["exclude"] = {
				},
			},
			["activity"] = 361,
			["category"] = 10,
		},
	},
}
