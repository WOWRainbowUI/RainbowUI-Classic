----------------------------------
---NovaRaidCompanion Talent Data--
----------------------------------

local addonName, NRC = ...;
if (NRC.isCataPrepatch or not NRC.isCata) then
	return;
end

local specData = {
	--classID.
	[1] = {
		name = "WARRIOR",
		icon = 626008,
		iconPath = "Interface\\Icons\\ClassIcon_Warrior",
		--Specs, id is from talent book left to right.
		[1] = {
			name = "Arms",
			icon = 132219,
			iconPath = "Interface\\Icons\\Ability_Kick",
		},
		[2] = {
			name = "Fury",
			icon = 132347,
			iconPath = "Interface\\Icons\\Ability_Warrior_InnerRage",
		},
		[3] = {
			name = "Protection",
			icon = 132341,
			iconPath = "Interface\\Icons\\Ability_Warrior_DefensiveStance",
		},
	},
	[2] = {
		name = "PALADIN",
		icon = 626003,
		iconPath = "Interface\\Icons\\ClassIcon_Paladin",
		[1] = {
			name = "Holy",
			icon = 135920,
			iconPath = "Interface\\Icons\\Spell_Holy_HolyBolt",
		},
		[2] = {
			name = "Protection",
			icon = 135893,
			iconPath = "Interface\\Icons\\SPELL_HOLY_DEVOTIONAURA",
		},
		[3] = {
			name = "Retribution",
			icon = 135873,
			iconPath = "Interface\\Icons\\Spell_Holy_AuraOfLight",
		},
	},
	[3] = {
		name = "HUNTER",
		icon = 626000,
		iconPath = "Interface\\Icons\\ClassIcon_Hunter",
		[1] = {
			name = "Beast Mastery",
			icon = 132164,
			iconPath = "Interface\\Icons\\Ability_Hunter_BeastTaming",
		},
		[2] = {
			name = "Marksmanship",
			icon = 132222,
			iconPath = "Interface\\Icons\\Ability_Marksmanship",
		},
		[3] = {
			name = "Survival",
			icon = 132215,
			iconPath = "Interface\\Icons\\Ability_Hunter_SwiftStrike",
		},
	},
	[4] = {
		name = "ROGUE",
		icon = 626005,
		iconPath = "Interface\\Icons\\ClassIcon_Rogue",
		[1] = {
			name = "Assassination",
			icon = 132292,
			iconPath = "Interface\\Icons\\Ability_Rogue_Eviscerate",
		},
		[2] = {
			name = "Combat",
			icon = 132090,
			iconPath = "Interface\\Icons\\Ability_BackStab",
		},
		[3] = {
			name = "Subtlety",
			icon = 132320,
			iconPath = "Interface\\Icons\\Ability_Stealth",
		},
	},
	[5] = {
		name = "PRIEST",
		icon = 626004,
		iconPath = "Interface\\Icons\\ClassIcon_Priest",
		[1] = {
			name = "Discipline",
			icon = 135940,
			iconPath = "Interface\\Icons\\spell_holy_powerwordshield",
		},
		[2] = {
			name = "Holy",
			--icon = 135920, --Classic/TBC
			--iconPath = "Interface\\Icons\\Spell_Holy_HolyBolt",
			--icon = 237542, --Better holy priest icon but doesn't exist in Classic/TBC.
			--iconPath = "Interface\\Icons\\Spell_Holy_GuardianSpirit",
			--Use addon path for both, should be fine as icon is just for setextures for now.
			icon = "Interface\\AddOns\\NovaRaidCompanion\\Media\\Blizzard\\Spell_Holy_GuardianSpirit",
			iconPath = "Interface\\AddOns\\NovaRaidCompanion\\Media\\Blizzard\\Spell_Holy_GuardianSpirit",
		},
		[3] = {
			name = "Shadow",
			icon = 136207,
			iconPath = "Interface\\Icons\\Spell_Shadow_ShadowWordPain",
		},
	},
	[6] = {
		name = "DEATHKNIGHT",
		icon = 135771,
		iconPath = "Interface\\Icons\\ClassIcon_DeathKnight",
		[1] = {
			name = "Blood",
			icon = 135770,
			iconPath = "Interface\\Icons\\Spell_Deathknight_BloodPresence",
		},
		[2] = {
			name = "Frost",
			icon = 135773,
			iconPath = "Interface\\Icons\\Spell_Deathknight_FrostPresence",
		},
		[3] = {
			name = "Unholy",
			icon = 135775,
			iconPath = "Interface\\Icons\\Spell_Deathknight_UnholyPresence",
		},
	},
	[7] = {
		name = "SHAMAN",
		icon = 626006,
		iconPath = "Interface\\Icons\\ClassIcon_Shaman",
		[1] = {
			name = "Elemental",
			icon = 136048,
			iconPath = "Interface\\Icons\\Spell_Nature_Lightning",
		},
		[2] = {
			name = "Enhancement",
			icon = 136051,
			iconPath = "Interface\\Icons\\Spell_Nature_LightningShield",
		},
		[3] = {
			name = "Restoration",
			icon = 136052,
			iconPath = "Interface\\Icons\\Spell_Nature_MagicImmunity",
		},
	},
	[8] = {
		name = "MAGE",
		icon = 626001,
		iconPath = "Interface\\Icons\\ClassIcon_Mage",
		[1] = {
			name = "Arcane",
			icon = 135932,
			iconPath = "Interface\\Icons\\Spell_Holy_MagicalSentry",
		},
		[2] = {
			name = "Fire",
			icon = 135810,
			iconPath = "Interface\\Icons\\Spell_Fire_FireBolt02",
		},
		[3] = {
			name = "Frost",
			icon = 135846,
			iconPath = "Interface\\Icons\\Spell_Frost_FrostBolt02",
		},
	},
	[9] = {
		name = "WARLOCK",
		icon = 626007,
		iconPath = "Interface\\Icons\\ClassIcon_Warlock",
		--Specs, id is from talent book left to right.
		[1] = {
			name = "Affliction",
			icon = 136145,
			iconPath = "Interface\\Icons\\Spell_Shadow_DeathCoil",
		},
		[2] = {
			name = "Demonology",
			icon = 136172,
			iconPath = "Interface\\Icons\\Spell_Shadow_Metamorphosis",
		},
		[3] = {
			name = "Destruction",
			icon = 136186,
			iconPath = "Interface\\Icons\\Spell_Shadow_RainOfFire",
		},
	},
	--[[[10] = {
		name = "MONK",
		icon = 136830,
		iconPath = "Interface\\Icons\\ClassIcon_Monk",
		[1] = {
			name = "Windwalker",
			icon = 608953,
			iconPath = "Interface\\Icons\\Spell_Monk_WindWalker_Spec",
		},
		[2] = {
			name = "Brewmaster",
			icon = 608951,
			iconPath = "Interface\\Icons\\Spell_Monk_Brewmaster_Spec",
		},
		[3] = {
			name = "Mistweaver",
			icon = 608952,
			iconPath = "Interface\\Icons\\Spell_Monk_MistWeaver_Spec",
		},
	},]]
	[11] = {
		name = "DRUID",
		icon = 625999,
		iconPath = "Interface\\Icons\\ClassIcon_Druid",
		[1] = {
			name = "Balance",
			icon = 136096,
			iconPath = "Interface\\Icons\\Spell_Nature_StarFall",
		},
		[2] = {
			name = "Feral",
			icon = 132276,
			iconPath = "Interface\\Icons\\Ability_Racial_BearForm",
		},
		--[3] = {
		--	name = "Guardian",
		--	icon = 132276,
			iconPath = "Interface\\Icons\\Ability_Racial_BearForm",
		--},
		[3] = { --Needs changing to 4 once druids gain 4th spec.
			name = "Restoration",
			icon = 136041,
			iconPath = "Interface\\Icons\\SPELL_NATURE_HEALINGTOUCH",
		},
	},
};

function NRC.getSpecData(classID, specID)
	if (specData[classID] and specData[classID][specID]) then
		local name = specData[classID][specID].name;
		local icon = specData[classID][specID].icon;
		local iconPath = specData[classID][specID].iconPath;
		return name, icon, iconPath;
	end
end

--All this class data has come from Talented Classic, a very good talent template addon.
--Permission was given by the author to use it here.
local talents = {};
talents.druid = {
	{
		["numtalents"] = 20,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16814, -- [1]
						16815, -- [2]
						16816, -- [3]
					},
					["name"] = "Starlight Wrath",
					["wowTreeIndex"] = 1,
					["column"] = 2,
					["icon"] = 136006,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16845, -- [1]
						16846, -- [2]
						16847, -- [3]
					},
					["name"] = "Moonglow",
					["wowTreeIndex"] = 2,
					["column"] = 2,
					["icon"] = 136087,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16880, -- [1]
						61345, -- [2]
						61346, -- [3]
					},
					["name"] = "Nature's Grace",
					["wowTreeIndex"] = 3,
					["column"] = 1,
					["icon"] = 136062,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						78675, -- [1]
					},
					["name"] = "Solar Beam",
					["wowTreeIndex"] = 4,
					["column"] = 4,
					["icon"] = 252188,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						48488, -- [1]
						48514, -- [2]
					},
					["name"] = "Gale Winds",
					["wowTreeIndex"] = 5,
					["column"] = 3,
					["icon"] = 236154,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						93398, -- [1]
						93399, -- [2]
					},
					["name"] = "Shooting Stars",
					["wowTreeIndex"] = 6,
					["column"] = 4,
					["icon"] = 236205,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						33592, -- [1]
						33596, -- [2]
					},
					["name"] = "Balance of Power",
					["wowTreeIndex"] = 7,
					["column"] = 3,
					["icon"] = 132113,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						81061, -- [1]
						81062, -- [2]
					},
					["name"] = "Euphoria",
					["wowTreeIndex"] = 8,
					["column"] = 1,
					["icon"] = 341763,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						48389, -- [1]
						48392, -- [2]
						48393, -- [3]
					},
					["name"] = "Owlkin Frenzy",
					["wowTreeIndex"] = 9,
					["column"] = 2,
					["icon"] = 236163,
					["row"] = 4,
					["ranks"] = 3,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						33603, -- [1]
						33604, -- [2]
						33605, -- [3]
					},
					["name"] = "Lunar Shower",
					["wowTreeIndex"] = 10,
					["column"] = 3,
					["icon"] = 236704,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						33831, -- [1]
					},
					["name"] = "Force of Nature",
					["wowTreeIndex"] = 11,
					["column"] = 2,
					["icon"] = 132129,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						78788, -- [1]
						78789, -- [2]
					},
					["name"] = "Fungal Growth",
					["wowTreeIndex"] = 12,
					["column"] = 2,
					["icon"] = 132371,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						48505, -- [1]
					},
					["name"] = "Starfall",
					["wowTreeIndex"] = 13,
					["column"] = 2,
					["icon"] = 236168,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						48506, -- [1]
					},
					["name"] = "Earth and Moon",
					["wowTreeIndex"] = 14,
					["column"] = 4,
					["icon"] = 236150,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						24858, -- [1]
					},
					["name"] = "Moonkin Form",
					["wowTreeIndex"] = 15,
					["column"] = 2,
					["icon"] = 136036,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						35363, -- [1]
						35364, -- [2]
					},
					["name"] = "Nature's Majesty",
					["wowTreeIndex"] = 16,
					["column"] = 3,
					["icon"] = 135138,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						50516, -- [1]
					},
					["name"] = "Typhoon",
					["wowTreeIndex"] = 17,
					["column"] = 3,
					["icon"] = 236170,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						57810, -- [1]
						57811, -- [2]
						57812, -- [3]
					},
					["name"] = "Genesis",
					["wowTreeIndex"] = 18,
					["column"] = 1,
					["icon"] = 135730,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						33597, -- [1]
						33599, -- [2]
					},
					["name"] = "Dreamstate",
					["wowTreeIndex"] = 19,
					["column"] = 1,
					["icon"] = 132123,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [19]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						93401, -- [1]
					},
					["name"] = "Sunfire",
					["wowTreeIndex"] = 20,
					["column"] = 3,
					["icon"] = 236216,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [20]
		},
		["info"] = {
			["background"] = "DruidBalance",
			["name"] = "Balance",
			["icon"] = 136096,
		},
	}, -- [1]
	{
		["numtalents"] = 22,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16929, -- [1]
						16930, -- [2]
						16931, -- [3]
					},
					["name"] = "Thick Hide",
					["wowTreeIndex"] = 1,
					["column"] = 4,
					["icon"] = 134355,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						17002, -- [1]
						24866, -- [2]
					},
					["name"] = "Feral Swiftness",
					["wowTreeIndex"] = 2,
					["column"] = 1,
					["icon"] = 136095,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49377, -- [1]
					},
					["name"] = "Feral Charge",
					["wowTreeIndex"] = 3,
					["column"] = 2,
					["icon"] = 132183,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						78892, -- [1]
						78893, -- [2]
					},
					["name"] = "Stampede",
					["wowTreeIndex"] = 4,
					["column"] = 3,
					["icon"] = 304501,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						33872, -- [1]
						33873, -- [2]
					},
					["name"] = "Nurturing Instinct",
					["wowTreeIndex"] = 5,
					["column"] = 4,
					["icon"] = 132130,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						48532, -- [1]
						80552, -- [2]
						80553, -- [3]
					},
					["name"] = "Fury Swipes",
					["wowTreeIndex"] = 6,
					["column"] = 2,
					["icon"] = 132134,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16940, -- [1]
						16941, -- [2]
					},
					["name"] = "Brutal Impact",
					["wowTreeIndex"] = 7,
					["column"] = 3,
					["icon"] = 132114,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						61336, -- [1]
					},
					["name"] = "Survival Instincts",
					["wowTreeIndex"] = 8,
					["column"] = 2,
					["icon"] = 236169,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						80313, -- [1]
					},
					["name"] = "Pulverize",
					["wowTreeIndex"] = 9,
					["column"] = 3,
					["icon"] = 132318,
					["row"] = 6,
					["ranks"] = 1,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						48492, -- [1]
						48494, -- [2]
						48495, -- [3]
					},
					["name"] = "King of the Jungle",
					["wowTreeIndex"] = 10,
					["column"] = 1,
					["icon"] = 236159,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						17007, -- [1]
					},
					["name"] = "Leader of the Pack",
					["wowTreeIndex"] = 11,
					["column"] = 2,
					["icon"] = 136112,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						80316, -- [1]
						80317, -- [2]
					},
					["name"] = "Primal Madness",
					["wowTreeIndex"] = 12,
					["column"] = 1,
					["icon"] = 132242,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						80318, -- [1]
						80319, -- [2]
					},
					["name"] = "Blood in the Water",
					["wowTreeIndex"] = 13,
					["column"] = 1,
					["icon"] = 237347,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						48432, -- [1]
						48433, -- [2]
						48434, -- [3]
					},
					["name"] = "Rend and Tear",
					["wowTreeIndex"] = 14,
					["column"] = 2,
					["icon"] = 236164,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						50334, -- [1]
					},
					["name"] = "Berserk",
					["wowTreeIndex"] = 15,
					["column"] = 2,
					["icon"] = 236149,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						57878, -- [1]
						57880, -- [2]
					},
					["name"] = "Natural Reaction",
					["wowTreeIndex"] = 16,
					["column"] = 4,
					["icon"] = 132091,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						80314, -- [1]
						80315, -- [2]
					},
					["name"] = "Endless Carnage",
					["wowTreeIndex"] = 17,
					["column"] = 3,
					["icon"] = 237513,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						48483, -- [1]
						48484, -- [2]
					},
					["name"] = "Infected Wounds",
					["wowTreeIndex"] = 18,
					["column"] = 1,
					["icon"] = 236158,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						37116, -- [1]
						37117, -- [2]
					},
					["name"] = "Primal Fury",
					["wowTreeIndex"] = 19,
					["column"] = 3,
					["icon"] = 132278,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [19]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16972, -- [1]
						16974, -- [2]
					},
					["name"] = "Predatory Strikes",
					["wowTreeIndex"] = 20,
					["column"] = 3,
					["icon"] = 132185,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [20]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16858, -- [1]
						16859, -- [2]
					},
					["name"] = "Feral Aggression",
					["wowTreeIndex"] = 21,
					["column"] = 4,
					["icon"] = 132121,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [21]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						17056, -- [1]
						17058, -- [2]
						17059, -- [3]
					},
					["name"] = "Furor",
					["wowTreeIndex"] = 22,
					["column"] = 2,
					["icon"] = 135881,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [22]
		},
		["info"] = {
			["background"] = "DruidFeralCombat",
			["name"] = "Feral Combat",
			["icon"] = 132276,
		},
	}, -- [2]
	{
		["numtalents"] = 21,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						78784, -- [1]
						78785, -- [2]
					},
					["name"] = "Blessing of the Grove",
					["wowTreeIndex"] = 1,
					["column"] = 1,
					["icon"] = 237586,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16833, -- [1]
						16834, -- [2]
					},
					["name"] = "Natural Shapeshifter",
					["wowTreeIndex"] = 2,
					["column"] = 2,
					["icon"] = 136116,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						17111, -- [1]
						17112, -- [2]
						17113, -- [3]
					},
					["name"] = "Improved Rejuvenation",
					["wowTreeIndex"] = 3,
					["column"] = 3,
					["icon"] = 136081,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						17116, -- [1]
					},
					["name"] = "Nature's Swiftness",
					["wowTreeIndex"] = 4,
					["column"] = 3,
					["icon"] = 136076,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						48496, -- [1]
						48499, -- [2]
						48500, -- [3]
					},
					["name"] = "Living Seed",
					["wowTreeIndex"] = 5,
					["column"] = 1,
					["icon"] = 236155,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						17074, -- [1]
						17075, -- [2]
						17076, -- [3]
					},
					["name"] = "Nature's Bounty",
					["wowTreeIndex"] = 6,
					["column"] = 2,
					["icon"] = 136085,
					["row"] = 4,
					["ranks"] = 3,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						34151, -- [1]
						81274, -- [2]
						81275, -- [3]
					},
					["name"] = "Efflorescence",
					["wowTreeIndex"] = 7,
					["column"] = 1,
					["icon"] = 134222,
					["row"] = 5,
					["ranks"] = 3,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						33886, -- [1]
					},
					["name"] = "Swift Rejuvenation",
					["wowTreeIndex"] = 8,
					["column"] = 3,
					["icon"] = 132124,
					["row"] = 6,
					["ranks"] = 1,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						33881, -- [1]
						33882, -- [2]
					},
					["name"] = "Nature's Ward",
					["wowTreeIndex"] = 9,
					["column"] = 4,
					["icon"] = 132137,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						48539, -- [1]
						48544, -- [2]
					},
					["name"] = "Revitalize",
					["wowTreeIndex"] = 10,
					["column"] = 2,
					["icon"] = 236166,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						33891, -- [1]
					},
					["name"] = "Tree of Life",
					["wowTreeIndex"] = 11,
					["column"] = 2,
					["icon"] = 132145,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						48411, -- [1]
					},
					["name"] = "Master Shapeshifter",
					["wowTreeIndex"] = 12,
					["column"] = 2,
					["icon"] = 236161,
					["row"] = 2,
					["ranks"] = 1,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						48438, -- [1]
					},
					["name"] = "Wild Growth",
					["wowTreeIndex"] = 13,
					["column"] = 2,
					["icon"] = 236153,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						33879, -- [1]
						33880, -- [2]
					},
					["name"] = "Empowered Touch",
					["wowTreeIndex"] = 14,
					["column"] = 3,
					["icon"] = 132125,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						88423, -- [1]
					},
					["name"] = "Nature's Cure",
					["wowTreeIndex"] = 15,
					["column"] = 3,
					["icon"] = 236288,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						78734, -- [1]
						78735, -- [2]
						78736, -- [3]
					},
					["name"] = "Perseverance",
					["wowTreeIndex"] = 16,
					["column"] = 1,
					["icon"] = 236740,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51179, -- [1]
						51180, -- [2]
						51181, -- [3]
					},
					["name"] = "Gift of the Earthmother",
					["wowTreeIndex"] = 17,
					["column"] = 1,
					["icon"] = 236160,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						17069, -- [1]
						17070, -- [2]
					},
					["name"] = "Naturalist",
					["wowTreeIndex"] = 18,
					["column"] = 3,
					["icon"] = 136041,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						17104, -- [1]
						24943, -- [2]
					},
					["name"] = "Fury of Stormrage",
					["wowTreeIndex"] = 19,
					["column"] = 4,
					["icon"] = 237472,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [19]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						17003, -- [1]
						17004, -- [2]
						17005, -- [3]
					},
					["name"] = "Heart of the Wild",
					["wowTreeIndex"] = 20,
					["column"] = 4,
					["icon"] = 135879,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [20]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						92363, -- [1]
						92364, -- [2]
					},
					["name"] = "Malfurion's Gift",
					["wowTreeIndex"] = 21,
					["column"] = 4,
					["icon"] = 237578,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [21]
		},
		["info"] = {
			["background"] = "DruidRestoration",
			["name"] = "Restoration",
			["icon"] = 136041,
		},
	}, -- [3]
}

talents.hunter = {
	{
		["numtalents"] = 19,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						82682, -- [1]
						82683, -- [2]
						82684, -- [3]
					},
					["name"] = "One with Nature",
					["wowTreeIndex"] = 1,
					["column"] = 2,
					["icon"] = 461117,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						19590, -- [1]
						19592, -- [2]
						82687, -- [3]
					},
					["name"] = "Bestial Discipline",
					["wowTreeIndex"] = 2,
					["column"] = 3,
					["icon"] = 461112,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						35029, -- [1]
						35030, -- [2]
					},
					["name"] = "Improved Kill Command",
					["wowTreeIndex"] = 3,
					["column"] = 1,
					["icon"] = 132210,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						19559, -- [1]
						19560, -- [2]
					},
					["name"] = "Pathfinding",
					["wowTreeIndex"] = 4,
					["column"] = 1,
					["icon"] = 461118,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						82726, -- [1]
					},
					["name"] = "Fervor",
					["wowTreeIndex"] = 5,
					["column"] = 2,
					["icon"] = 132160,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						19572, -- [1]
						19573, -- [2]
					},
					["name"] = "Improved Mend Pet",
					["wowTreeIndex"] = 6,
					["column"] = 4,
					["icon"] = 132179,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						19621, -- [1]
						19622, -- [2]
						19623, -- [3]
					},
					["name"] = "Frenzy",
					["wowTreeIndex"] = 7,
					["column"] = 3,
					["icon"] = 134296,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						19578, -- [1]
						20895, -- [2]
					},
					["name"] = "Spirit Bond",
					["wowTreeIndex"] = 8,
					["column"] = 2,
					["icon"] = 132121,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						34460, -- [1]
					},
					["name"] = "Ferocious Inspiration",
					["wowTreeIndex"] = 9,
					["column"] = 3,
					["icon"] = 132173,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						82692, -- [1]
					},
					["name"] = "Focus Fire",
					["wowTreeIndex"] = 10,
					["column"] = 3,
					["icon"] = 461846,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53252, -- [1]
						53253, -- [2]
					},
					["name"] = "Invigoration",
					["wowTreeIndex"] = 11,
					["column"] = 3,
					["icon"] = 236184,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						19574, -- [1]
					},
					["name"] = "Bestial Wrath",
					["wowTreeIndex"] = 12,
					["column"] = 2,
					["icon"] = 132127,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						82748, -- [1]
						82749, -- [2]
					},
					["name"] = "Killing Streak",
					["wowTreeIndex"] = 13,
					["column"] = 3,
					["icon"] = 236357,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53256, -- [1]
						53259, -- [2]
						53260, -- [3]
					},
					["name"] = "Cobra Strikes",
					["wowTreeIndex"] = 14,
					["column"] = 1,
					["icon"] = 236177,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53262, -- [1]
						53263, -- [2]
						53264, -- [3]
					},
					["name"] = "Longevity",
					["wowTreeIndex"] = 15,
					["column"] = 1,
					["icon"] = 236186,
					["row"] = 4,
					["ranks"] = 3,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						34692, -- [1]
					},
					["name"] = "The Beast Within",
					["wowTreeIndex"] = 16,
					["column"] = 2,
					["icon"] = 132166,
					["row"] = 6,
					["ranks"] = 1,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						56314, -- [1]
						56315, -- [2]
					},
					["name"] = "Kindred Spirits",
					["wowTreeIndex"] = 17,
					["column"] = 1,
					["icon"] = 236202,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53270, -- [1]
					},
					["name"] = "Beast Mastery",
					["wowTreeIndex"] = 18,
					["column"] = 2,
					["icon"] = 236175,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						82898, -- [1]
						82899, -- [2]
					},
					["name"] = "Crouching Tiger, Hidden Chimera",
					["wowTreeIndex"] = 19,
					["column"] = 1,
					["icon"] = 236190,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [19]
		},
		["info"] = {
			["background"] = "HunterBeastMastery",
			["name"] = "Beast Mastery",
			["icon"] = 461112,
		},
	}, -- [1]
	{
		["numtalents"] = 19,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						34948, -- [1]
						34949, -- [2]
					},
					["name"] = "Rapid Killing",
					["wowTreeIndex"] = 1,
					["column"] = 3,
					["icon"] = 132205,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						19416, -- [1]
						19417, -- [2]
						19418, -- [3]
					},
					["name"] = "Efficiency",
					["wowTreeIndex"] = 2,
					["column"] = 2,
					["icon"] = 236179,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						34950, -- [1]
						34954, -- [2]
					},
					["name"] = "Go for the Throat",
					["wowTreeIndex"] = 3,
					["column"] = 1,
					["icon"] = 132174,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						83340, -- [1]
						83356, -- [2]
					},
					["name"] = "Sic 'Em!",
					["wowTreeIndex"] = 4,
					["column"] = 1,
					["icon"] = 461121,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						34482, -- [1]
						34483, -- [2]
					},
					["name"] = "Careful Aim",
					["wowTreeIndex"] = 5,
					["column"] = 3,
					["icon"] = 132217,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53221, -- [1]
						53222, -- [2]
						53224, -- [3]
					},
					["name"] = "Improved Steady Shot",
					["wowTreeIndex"] = 6,
					["column"] = 2,
					["icon"] = 236182,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						23989, -- [1]
					},
					["name"] = "Readiness",
					["wowTreeIndex"] = 7,
					["column"] = 4,
					["icon"] = 132206,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						35100, -- [1]
						35102, -- [2]
					},
					["name"] = "Concussive Barrage",
					["wowTreeIndex"] = 8,
					["column"] = 2,
					["icon"] = 461115,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						35104, -- [1]
						35110, -- [2]
					},
					["name"] = "Bombardment",
					["wowTreeIndex"] = 9,
					["column"] = 1,
					["icon"] = 132222,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						19506, -- [1]
					},
					["name"] = "Trueshot Aura",
					["wowTreeIndex"] = 10,
					["column"] = 2,
					["icon"] = 132329,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						83489, -- [1]
						83490, -- [2]
					},
					["name"] = "Termination",
					["wowTreeIndex"] = 11,
					["column"] = 3,
					["icon"] = 132345,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						34485, -- [1]
						34486, -- [2]
						34487, -- [3]
					},
					["name"] = "Master Marksman",
					["wowTreeIndex"] = 12,
					["column"] = 2,
					["icon"] = 132177,
					["row"] = 5,
					["ranks"] = 3,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						82893, -- [1]
						82894, -- [2]
					},
					["name"] = "Resistance is Futile",
					["wowTreeIndex"] = 13,
					["column"] = 4,
					["icon"] = 461120,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53228, -- [1]
						53232, -- [2]
					},
					["name"] = "Rapid Recuperation",
					["wowTreeIndex"] = 14,
					["column"] = 1,
					["icon"] = 236201,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						34490, -- [1]
					},
					["name"] = "Silencing Shot",
					["wowTreeIndex"] = 15,
					["column"] = 1,
					["icon"] = 132323,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						83558, -- [1]
						83560, -- [2]
					},
					["name"] = "Posthaste",
					["wowTreeIndex"] = 16,
					["column"] = 1,
					["icon"] = 461119,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53241, -- [1]
						53243, -- [2]
					},
					["name"] = "Marked for Death",
					["wowTreeIndex"] = 17,
					["column"] = 3,
					["icon"] = 236173,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53209, -- [1]
					},
					["name"] = "Chimera Shot",
					["wowTreeIndex"] = 18,
					["column"] = 2,
					["icon"] = 236176,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53234, -- [1]
						53237, -- [2]
						53238, -- [3]
					},
					["name"] = "Piercing Shots",
					["wowTreeIndex"] = 19,
					["column"] = 3,
					["icon"] = 236198,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [19]
		},
		["info"] = {
			["background"] = "HunterMarksmanship",
			["name"] = "Marksmanship",
			["icon"] = 236179,
		},
	}, -- [2]
	{
		["numtalents"] = 20,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						52783, -- [1]
						52785, -- [2]
						52786, -- [3]
					},
					["name"] = "Pathing",
					["wowTreeIndex"] = 1,
					["column"] = 2,
					["icon"] = 236183,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						19184, -- [1]
						19387, -- [2]
					},
					["name"] = "Entrapment",
					["wowTreeIndex"] = 2,
					["column"] = 3,
					["icon"] = 136100,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						56339, -- [1]
						56340, -- [2]
						56341, -- [3]
					},
					["name"] = "Hunter vs. Wild",
					["wowTreeIndex"] = 3,
					["column"] = 1,
					["icon"] = 236180,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						19286, -- [1]
						19287, -- [2]
					},
					["name"] = "Survival Tactics",
					["wowTreeIndex"] = 4,
					["column"] = 1,
					["icon"] = 132293,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						19306, -- [1]
					},
					["name"] = "Counterattack",
					["wowTreeIndex"] = 5,
					["column"] = 2,
					["icon"] = 132336,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						19464, -- [1]
						82834, -- [2]
					},
					["name"] = "Improved Serpent Sting",
					["wowTreeIndex"] = 6,
					["column"] = 3,
					["icon"] = 132204,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						56342, -- [1]
						56343, -- [2]
					},
					["name"] = "Lock and Load",
					["wowTreeIndex"] = 7,
					["column"] = 3,
					["icon"] = 236185,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						34491, -- [1]
						34492, -- [2]
						34493, -- [3]
					},
					["name"] = "Resourcefulness",
					["wowTreeIndex"] = 8,
					["column"] = 1,
					["icon"] = 132207,
					["row"] = 4,
					["ranks"] = 3,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						56333, -- [1]
						56336, -- [2]
					},
					["name"] = "T.N.T.",
					["wowTreeIndex"] = 9,
					["column"] = 3,
					["icon"] = 133713,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						82832, -- [1]
						82833, -- [2]
					},
					["name"] = "Toxicology",
					["wowTreeIndex"] = 10,
					["column"] = 1,
					["icon"] = 132378,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						19386, -- [1]
					},
					["name"] = "Wyvern Sting",
					["wowTreeIndex"] = 11,
					["column"] = 2,
					["icon"] = 135125,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53298, -- [1]
						53299, -- [2]
					},
					["name"] = "Point of No Escape",
					["wowTreeIndex"] = 12,
					["column"] = 4,
					["icon"] = 236199,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53295, -- [1]
						53296, -- [2]
					},
					["name"] = "Noxious Stings",
					["wowTreeIndex"] = 13,
					["column"] = 3,
					["icon"] = 236200,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53290, -- [1]
					},
					["name"] = "Hunting Party",
					["wowTreeIndex"] = 14,
					["column"] = 4,
					["icon"] = 236181,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53302, -- [1]
						53303, -- [2]
						53304, -- [3]
					},
					["name"] = "Sniper Training",
					["wowTreeIndex"] = 15,
					["column"] = 1,
					["icon"] = 236187,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						3674, -- [1]
					},
					["name"] = "Black Arrow",
					["wowTreeIndex"] = 16,
					["column"] = 2,
					["icon"] = 136181,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						83494, -- [1]
						83495, -- [2]
					},
					["name"] = "Mirrored Blades",
					["wowTreeIndex"] = 17,
					["column"] = 2,
					["icon"] = 304583,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						34497, -- [1]
						34498, -- [2]
						34499, -- [3]
					},
					["name"] = "Thrill of the Hunt",
					["wowTreeIndex"] = 18,
					["column"] = 1,
					["icon"] = 132216,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						19376, -- [1]
						63457, -- [2]
						63458, -- [3]
					},
					["name"] = "Trap Mastery",
					["wowTreeIndex"] = 19,
					["column"] = 2,
					["icon"] = 132149,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [19]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						87934, -- [1]
						87935, -- [2]
					},
					["name"] = "Serpent Spread",
					["wowTreeIndex"] = 20,
					["column"] = 3,
					["icon"] = 132209,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [20]
		},
		["info"] = {
			["background"] = "HunterSurvival",
			["name"] = "Survival",
			["icon"] = 461113,
		},
	}, -- [3]
}

talents.mage = {
	{
		["numtalents"] = 22,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						11210, -- [1]
						12592, -- [2]
					},
					["name"] = "Improved Polymorph",
					["wowTreeIndex"] = 1,
					["column"] = 1,
					["icon"] = 136071,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						11213, -- [1]
						12574, -- [2]
						12575, -- [3]
					},
					["name"] = "Arcane Concentration",
					["wowTreeIndex"] = 2,
					["column"] = 1,
					["icon"] = 136170,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						11255, -- [1]
						12598, -- [2]
					},
					["name"] = "Improved Counterspell",
					["wowTreeIndex"] = 3,
					["column"] = 2,
					["icon"] = 135856,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						29447, -- [1]
						55339, -- [2]
						55340, -- [3]
					},
					["name"] = "Torment the Weak",
					["wowTreeIndex"] = 4,
					["column"] = 1,
					["icon"] = 135737,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31569, -- [1]
						31570, -- [2]
					},
					["name"] = "Improved Blink",
					["wowTreeIndex"] = 5,
					["column"] = 4,
					["icon"] = 135736,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12043, -- [1]
					},
					["name"] = "Presence of Mind",
					["wowTreeIndex"] = 6,
					["column"] = 2,
					["icon"] = 136031,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31574, -- [1]
						31575, -- [2]
						54354, -- [3]
					},
					["name"] = "Prismatic Cloak",
					["wowTreeIndex"] = 7,
					["column"] = 4,
					["icon"] = 135752,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31571, -- [1]
						31572, -- [2]
					},
					["name"] = "Arcane Potency",
					["wowTreeIndex"] = 8,
					["column"] = 1,
					["icon"] = 135732,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12042, -- [1]
					},
					["name"] = "Arcane Power",
					["wowTreeIndex"] = 9,
					["column"] = 2,
					["icon"] = 136048,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						44394, -- [1]
						44395, -- [2]
					},
					["name"] = "Incanter's Absorption",
					["wowTreeIndex"] = 10,
					["column"] = 3,
					["icon"] = 236219,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						44378, -- [1]
						44379, -- [2]
					},
					["name"] = "Arcane Flows",
					["wowTreeIndex"] = 11,
					["column"] = 1,
					["icon"] = 236223,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31584, -- [1]
						31585, -- [2]
					},
					["name"] = "Improved Mana Gem",
					["wowTreeIndex"] = 12,
					["column"] = 3,
					["icon"] = 134104,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31589, -- [1]
					},
					["name"] = "Slow",
					["wowTreeIndex"] = 13,
					["column"] = 2,
					["icon"] = 136091,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						44404, -- [1]
						54486, -- [2]
					},
					["name"] = "Missile Barrage",
					["wowTreeIndex"] = 14,
					["column"] = 3,
					["icon"] = 236221,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						44400, -- [1]
						44402, -- [2]
						44403, -- [3]
					},
					["name"] = "Netherwind Presence",
					["wowTreeIndex"] = 15,
					["column"] = 3,
					["icon"] = 236222,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						54646, -- [1]
					},
					["name"] = "Focus Magic",
					["wowTreeIndex"] = 16,
					["column"] = 1,
					["icon"] = 135754,
					["row"] = 6,
					["ranks"] = 1,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						82930, -- [1]
					},
					["name"] = "Arcane Tactics",
					["wowTreeIndex"] = 17,
					["column"] = 2,
					["icon"] = 429382,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						83513, -- [1]
						83515, -- [2]
					},
					["name"] = "Improved Arcane Missiles",
					["wowTreeIndex"] = 18,
					["column"] = 3,
					["icon"] = 136096,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						84722, -- [1]
						84723, -- [2]
					},
					["name"] = "Invocation",
					["wowTreeIndex"] = 19,
					["column"] = 2,
					["icon"] = 429383,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [19]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						86181, -- [1]
						86209, -- [2]
					},
					["name"] = "Nether Vortex",
					["wowTreeIndex"] = 20,
					["column"] = 3,
					["icon"] = 135735,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [20]
			nil, -- [21]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						90787, -- [1]
						90788, -- [2]
					},
					["name"] = "Improved Arcane Explosion",
					["wowTreeIndex"] = 22,
					["column"] = 4,
					["icon"] = 136116,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [22]
		},
		["info"] = {
			["background"] = "MageArcane",
			["name"] = "Arcane",
			["icon"] = 135932,
		},
	}, -- [1]
	{
		["numtalents"] = 21,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						11078, -- [1]
						11080, -- [2]
					},
					["name"] = "Improved Fire Blast",
					["wowTreeIndex"] = 1,
					["column"] = 3,
					["icon"] = 135807,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						11119, -- [1]
						11120, -- [2]
						12846, -- [3]
					},
					["name"] = "Ignite",
					["wowTreeIndex"] = 2,
					["column"] = 1,
					["icon"] = 135818,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						11083, -- [1]
						84253, -- [2]
						84254, -- [3]
					},
					["name"] = "Burning Soul",
					["wowTreeIndex"] = 3,
					["column"] = 2,
					["icon"] = 429590,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						11103, -- [1]
						12357, -- [2]
					},
					["name"] = "Impact",
					["wowTreeIndex"] = 4,
					["column"] = 4,
					["icon"] = 135821,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						11095, -- [1]
						12872, -- [2]
						12873, -- [3]
					},
					["name"] = "Critical Mass",
					["wowTreeIndex"] = 5,
					["column"] = 3,
					["icon"] = 136115,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						11094, -- [1]
					},
					["name"] = "Molten Shields",
					["wowTreeIndex"] = 6,
					["column"] = 1,
					["icon"] = 135806,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						29074, -- [1]
						29075, -- [2]
					},
					["name"] = "Master of Elements",
					["wowTreeIndex"] = 7,
					["column"] = 1,
					["icon"] = 135820,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						11115, -- [1]
						11367, -- [2]
					},
					["name"] = "Improved Scorch",
					["wowTreeIndex"] = 8,
					["column"] = 4,
					["icon"] = 135827,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						11113, -- [1]
					},
					["name"] = "Blast Wave",
					["wowTreeIndex"] = 9,
					["column"] = 2,
					["icon"] = 135903,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31641, -- [1]
						31642, -- [2]
					},
					["name"] = "Blazing Speed",
					["wowTreeIndex"] = 10,
					["column"] = 3,
					["icon"] = 135788,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						34293, -- [1]
						34295, -- [2]
					},
					["name"] = "Pyromaniac",
					["wowTreeIndex"] = 11,
					["column"] = 1,
					["icon"] = 135789,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						11129, -- [1]
					},
					["name"] = "Combustion",
					["wowTreeIndex"] = 12,
					["column"] = 2,
					["icon"] = 135824,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31679, -- [1]
						31680, -- [2]
						86880, -- [3]
					},
					["name"] = "Molten Fury",
					["wowTreeIndex"] = 13,
					["column"] = 3,
					["icon"] = 135822,
					["row"] = 5,
					["ranks"] = 3,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31661, -- [1]
					},
					["name"] = "Dragon's Breath",
					["wowTreeIndex"] = 14,
					["column"] = 2,
					["icon"] = 134153,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						44445, -- [1]
					},
					["name"] = "Hot Streak",
					["wowTreeIndex"] = 15,
					["column"] = 3,
					["icon"] = 236218,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						44457, -- [1]
					},
					["name"] = "Living Bomb",
					["wowTreeIndex"] = 16,
					["column"] = 2,
					["icon"] = 236220,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						84673, -- [1]
						84674, -- [2]
					},
					["name"] = "Improved Flamestrike",
					["wowTreeIndex"] = 17,
					["column"] = 1,
					["icon"] = 135826,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						86914, -- [1]
					},
					["name"] = "Firestarter",
					["wowTreeIndex"] = 18,
					["column"] = 4,
					["icon"] = 236216,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						86948, -- [1]
						86949, -- [2]
					},
					["name"] = "Cauterize",
					["wowTreeIndex"] = 19,
					["column"] = 1,
					["icon"] = 252268,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [19]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						18459, -- [1]
						18460, -- [2]
						54734, -- [3]
					},
					["name"] = "Fire Power",
					["wowTreeIndex"] = 20,
					["column"] = 2,
					["icon"] = 135817,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [20]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						44446, -- [1]
						44448, -- [2]
					},
					["name"] = "Improved Hot Streak",
					["wowTreeIndex"] = 21,
					["column"] = 3,
					["icon"] = 236218,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [21]
		},
		["info"] = {
			["background"] = "MageFire",
			["name"] = "Fire",
			["icon"] = 135810,
		},
	}, -- [2]
	{
		["numtalents"] = 19,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31670, -- [1]
						31672, -- [2]
						55094, -- [3]
					},
					["name"] = "Ice Floes",
					["wowTreeIndex"] = 1,
					["column"] = 1,
					["icon"] = 135854,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						11175, -- [1]
						12569, -- [2]
						12571, -- [3]
					},
					["name"] = "Permafrost",
					["wowTreeIndex"] = 2,
					["column"] = 4,
					["icon"] = 135864,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12472, -- [1]
					},
					["name"] = "Icy Veins",
					["wowTreeIndex"] = 3,
					["column"] = 2,
					["icon"] = 135838,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						11185, -- [1]
						12487, -- [2]
					},
					["name"] = "Ice Shards",
					["wowTreeIndex"] = 4,
					["column"] = 1,
					["icon"] = 429385,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						83049, -- [1]
						83050, -- [2]
					},
					["name"] = "Early Frost",
					["wowTreeIndex"] = 5,
					["column"] = 1,
					["icon"] = 135837,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						11958, -- [1]
					},
					["name"] = "Cold Snap",
					["wowTreeIndex"] = 6,
					["column"] = 2,
					["icon"] = 135865,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						44543, -- [1]
						44545, -- [2]
						83074, -- [3]
					},
					["name"] = "Fingers of Frost",
					["wowTreeIndex"] = 7,
					["column"] = 3,
					["icon"] = 236227,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						44745, -- [1]
						54787, -- [2]
					},
					["name"] = "Shattered Barrier",
					["wowTreeIndex"] = 8,
					["column"] = 1,
					["icon"] = 236209,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						11426, -- [1]
					},
					["name"] = "Ice Barrier",
					["wowTreeIndex"] = 9,
					["column"] = 2,
					["icon"] = 135988,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						44546, -- [1]
						44548, -- [2]
						44549, -- [3]
					},
					["name"] = "Brain Freeze",
					["wowTreeIndex"] = 10,
					["column"] = 3,
					["icon"] = 236206,
					["row"] = 4,
					["ranks"] = 3,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						44561, -- [1]
						86500, -- [2]
						86508, -- [3]
					},
					["name"] = "Enduring Winter",
					["wowTreeIndex"] = 11,
					["column"] = 1,
					["icon"] = 135833,
					["row"] = 4,
					["ranks"] = 3,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						44572, -- [1]
					},
					["name"] = "Deep Freeze",
					["wowTreeIndex"] = 12,
					["column"] = 2,
					["icon"] = 236214,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						83156, -- [1]
						83157, -- [2]
					},
					["name"] = "Piercing Chill",
					["wowTreeIndex"] = 13,
					["column"] = 3,
					["icon"] = 429386,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						11151, -- [1]
						12952, -- [2]
						12953, -- [3]
					},
					["name"] = "Piercing Ice",
					["wowTreeIndex"] = 14,
					["column"] = 2,
					["icon"] = 135845,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						11170, -- [1]
						12982, -- [2]
					},
					["name"] = "Shatter",
					["wowTreeIndex"] = 15,
					["column"] = 3,
					["icon"] = 135849,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						84726, -- [1]
						84727, -- [2]
					},
					["name"] = "Frostfire Orb",
					["wowTreeIndex"] = 16,
					["column"] = 3,
					["icon"] = 430840,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						11190, -- [1]
						12489, -- [2]
					},
					["name"] = "Improved Cone of Cold",
					["wowTreeIndex"] = 17,
					["column"] = 2,
					["icon"] = 135852,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						86259, -- [1]
						86260, -- [2]
						86314, -- [3]
					},
					["name"] = "Improved Freeze",
					["wowTreeIndex"] = 18,
					["column"] = 4,
					["icon"] = 135861,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						86303, -- [1]
						86304, -- [2]
					},
					["name"] = "Reactive Barrier",
					["wowTreeIndex"] = 19,
					["column"] = 3,
					["icon"] = 135859,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [19]
		},
		["info"] = {
			["background"] = "MageFrost",
			["name"] = "Frost",
			["icon"] = 135846,
		},
	}, -- [3]
}

talents.paladin = {
	{
		["numtalents"] = 20,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						20234, -- [1]
						20235, -- [2]
					},
					["name"] = "Last Word",
					["wowTreeIndex"] = 1,
					["column"] = 2,
					["icon"] = 135921,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						20359, -- [1]
						20360, -- [2]
					},
					["name"] = "Arbiter of the Light",
					["wowTreeIndex"] = 2,
					["column"] = 1,
					["icon"] = 135917,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31825, -- [1]
						85510, -- [2]
					},
					["name"] = "Denounce",
					["wowTreeIndex"] = 3,
					["column"] = 1,
					["icon"] = 135903,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53556, -- [1]
						53557, -- [2]
					},
					["name"] = "Enlightened Judgements",
					["wowTreeIndex"] = 4,
					["column"] = 1,
					["icon"] = 236251,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31821, -- [1]
					},
					["name"] = "Aura Mastery",
					["wowTreeIndex"] = 5,
					["column"] = 3,
					["icon"] = 135872,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31828, -- [1]
						31829, -- [2]
					},
					["name"] = "Blessed Life",
					["wowTreeIndex"] = 6,
					["column"] = 3,
					["icon"] = 135876,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53551, -- [1]
					},
					["name"] = "Sacred Cleansing",
					["wowTreeIndex"] = 7,
					["column"] = 4,
					["icon"] = 236261,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53671, -- [1]
						53673, -- [2]
						54151, -- [3]
					},
					["name"] = "Judgements of the Pure",
					["wowTreeIndex"] = 8,
					["column"] = 3,
					["icon"] = 236256,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53569, -- [1]
						53576, -- [2]
					},
					["name"] = "Infusion of Light",
					["wowTreeIndex"] = 9,
					["column"] = 3,
					["icon"] = 236254,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53563, -- [1]
					},
					["name"] = "Beacon of Light",
					["wowTreeIndex"] = 10,
					["column"] = 2,
					["icon"] = 236247,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						84800, -- [1]
						85511, -- [2]
						85512, -- [3]
					},
					["name"] = "Tower of Radiance",
					["wowTreeIndex"] = 11,
					["column"] = 2,
					["icon"] = 236394,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31842, -- [1]
					},
					["name"] = "Divine Favor",
					["wowTreeIndex"] = 12,
					["column"] = 2,
					["icon"] = 135895,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						85222, -- [1]
					},
					["name"] = "Light of Dawn",
					["wowTreeIndex"] = 13,
					["column"] = 2,
					["icon"] = 461859,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						85462, -- [1]
						85463, -- [2]
						85464, -- [3]
					},
					["name"] = "Clarity of Purpose",
					["wowTreeIndex"] = 14,
					["column"] = 1,
					["icon"] = 461857,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						85495, -- [1]
						85498, -- [2]
						85499, -- [3]
					},
					["name"] = "Speed of Light",
					["wowTreeIndex"] = 15,
					["column"] = 3,
					["icon"] = 460953,
					["row"] = 4,
					["ranks"] = 3,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						88820, -- [1]
						88821, -- [2]
					},
					["name"] = "Daybreak",
					["wowTreeIndex"] = 16,
					["column"] = 4,
					["icon"] = 134909,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						20049, -- [1]
						20056, -- [2]
						20057, -- [3]
					},
					["name"] = "Conviction",
					["wowTreeIndex"] = 17,
					["column"] = 1,
					["icon"] = 460689,
					["row"] = 5,
					["ranks"] = 3,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						20237, -- [1]
						20238, -- [2]
					},
					["name"] = "Blazing Light",
					["wowTreeIndex"] = 18,
					["column"] = 3,
					["icon"] = 135920,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						93418, -- [1]
						93417, -- [2]
					},
					["name"] = "Paragon of Virtue",
					["wowTreeIndex"] = 19,
					["column"] = 4,
					["icon"] = 135875,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [19]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						20138, -- [1]
						20139, -- [2]
						20140, -- [3]
					},
					["name"] = "Protector of the Innocent",
					["wowTreeIndex"] = 20,
					["column"] = 2,
					["icon"] = 460690,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [20]
		},
		["info"] = {
			["background"] = "PALADINHOLY",
			["name"] = "Holy",
			["icon"] = 135920,
		},
	}, -- [1]
	{
		["numtalents"] = 20,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						20224, -- [1]
						20225, -- [2]
					},
					["name"] = "Seals of the Pure",
					["wowTreeIndex"] = 1,
					["column"] = 2,
					["icon"] = 133526,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						20143, -- [1]
						20144, -- [2]
						20145, -- [3]
					},
					["name"] = "Toughness",
					["wowTreeIndex"] = 2,
					["column"] = 2,
					["icon"] = 135892,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						70940, -- [1]
					},
					["name"] = "Divine Guardian",
					["wowTreeIndex"] = 3,
					["column"] = 4,
					["icon"] = 253400,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						20487, -- [1]
						20488, -- [2]
					},
					["name"] = "Improved Hammer of Justice",
					["wowTreeIndex"] = 4,
					["column"] = 3,
					["icon"] = 135963,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31848, -- [1]
						31849, -- [2]
						84854, -- [3]
					},
					["name"] = "Shield of the Templar",
					["wowTreeIndex"] = 5,
					["column"] = 3,
					["icon"] = 236264,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						84631, -- [1]
						84633, -- [2]
					},
					["name"] = "Hallowed Ground",
					["wowTreeIndex"] = 6,
					["column"] = 1,
					["icon"] = 135926,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						20911, -- [1]
						84628, -- [2]
						84629, -- [3]
					},
					["name"] = "Sanctuary",
					["wowTreeIndex"] = 7,
					["column"] = 2,
					["icon"] = 136051,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31850, -- [1]
					},
					["name"] = "Ardent Defender",
					["wowTreeIndex"] = 8,
					["column"] = 2,
					["icon"] = 135870,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						20925, -- [1]
					},
					["name"] = "Holy Shield",
					["wowTreeIndex"] = 9,
					["column"] = 2,
					["icon"] = 135880,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53709, -- [1]
						53710, -- [2]
					},
					["name"] = "Sacred Duty",
					["wowTreeIndex"] = 10,
					["column"] = 2,
					["icon"] = 135896,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53695, -- [1]
						53696, -- [2]
					},
					["name"] = "Judgements of the Just",
					["wowTreeIndex"] = 11,
					["column"] = 1,
					["icon"] = 236259,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53595, -- [1]
					},
					["name"] = "Hammer of the Righteous",
					["wowTreeIndex"] = 12,
					["column"] = 3,
					["icon"] = 236253,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						26016, -- [1]
					},
					["name"] = "Vindication",
					["wowTreeIndex"] = 13,
					["column"] = 1,
					["icon"] = 135985,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						84635, -- [1]
						84636, -- [2]
					},
					["name"] = "Wrath of the Lightbringer",
					["wowTreeIndex"] = 14,
					["column"] = 4,
					["icon"] = 133562,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						20177, -- [1]
						20179, -- [2]
					},
					["name"] = "Reckoning",
					["wowTreeIndex"] = 15,
					["column"] = 1,
					["icon"] = 135882,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						75806, -- [1]
						85043, -- [2]
					},
					["name"] = "Grand Crusader",
					["wowTreeIndex"] = 16,
					["column"] = 3,
					["icon"] = 133176,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						85639, -- [1]
						85646, -- [2]
					},
					["name"] = "Guarded by the Light",
					["wowTreeIndex"] = 17,
					["column"] = 3,
					["icon"] = 236252,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53600, -- [1]
					},
					["name"] = "Shield of the Righteous",
					["wowTreeIndex"] = 18,
					["column"] = 2,
					["icon"] = 236265,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						87163, -- [1]
						87164, -- [2]
					},
					["name"] = "Eternal Glory",
					["wowTreeIndex"] = 19,
					["column"] = 3,
					["icon"] = 135433,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [19]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						63646, -- [1]
						63647, -- [2]
						63648, -- [3]
					},
					["name"] = "Divinity",
					["wowTreeIndex"] = 20,
					["column"] = 1,
					["icon"] = 135883,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [20]
		},
		["info"] = {
			["background"] = "PALADINPROTECTION",
			["name"] = "Protection",
			["icon"] = 236264,
		},
	}, -- [2]
	{
		["numtalents"] = 20,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						85117, -- [1]
						86172, -- [2]
					},
					["name"] = "Divine Purpose",
					["wowTreeIndex"] = 1,
					["column"] = 3,
					["icon"] = 135897,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						85126, -- [1]
					},
					["name"] = "Seals of Command",
					["wowTreeIndex"] = 2,
					["column"] = 3,
					["icon"] = 132347,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						9799, -- [1]
						25988, -- [2]
					},
					["name"] = "Eye for an Eye",
					["wowTreeIndex"] = 3,
					["column"] = 1,
					["icon"] = 135904,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31866, -- [1]
						31867, -- [2]
						31868, -- [3]
					},
					["name"] = "Crusade",
					["wowTreeIndex"] = 4,
					["column"] = 2,
					["icon"] = 135889,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53486, -- [1]
						53488, -- [2]
						87138, -- [3]
					},
					["name"] = "The Art of War",
					["wowTreeIndex"] = 5,
					["column"] = 2,
					["icon"] = 236246,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						20066, -- [1]
					},
					["name"] = "Repentance",
					["wowTreeIndex"] = 6,
					["column"] = 2,
					["icon"] = 135942,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31876, -- [1]
					},
					["name"] = "Communion",
					["wowTreeIndex"] = 7,
					["column"] = 1,
					["icon"] = 236257,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53375, -- [1]
						90286, -- [2]
						53376, -- [3]
					},
					["name"] = "Sanctified Wrath",
					["wowTreeIndex"] = 8,
					["column"] = 4,
					["icon"] = 236262,
					["row"] = 4,
					["ranks"] = 3,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53380, -- [1]
						53381, -- [2]
						53382, -- [3]
					},
					["name"] = "Inquiry of Faith",
					["wowTreeIndex"] = 9,
					["column"] = 2,
					["icon"] = 236260,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53385, -- [1]
					},
					["name"] = "Divine Storm",
					["wowTreeIndex"] = 10,
					["column"] = 4,
					["icon"] = 236250,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						85285, -- [1]
					},
					["name"] = "Sacred Shield",
					["wowTreeIndex"] = 11,
					["column"] = 1,
					["icon"] = 236249,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						85446, -- [1]
						85795, -- [2]
					},
					["name"] = "Acts of Sacrifice",
					["wowTreeIndex"] = 12,
					["column"] = 3,
					["icon"] = 236248,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						85696, -- [1]
					},
					["name"] = "Zealotry",
					["wowTreeIndex"] = 13,
					["column"] = 2,
					["icon"] = 237547,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						85457, -- [1]
						85458, -- [2]
						87461, -- [3]
					},
					["name"] = "Rule of Law",
					["wowTreeIndex"] = 14,
					["column"] = 2,
					["icon"] = 134916,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						85803, -- [1]
						85804, -- [2]
					},
					["name"] = "Selfless Healer",
					["wowTreeIndex"] = 15,
					["column"] = 1,
					["icon"] = 252269,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						25956, -- [1]
					},
					["name"] = "Sanctity of Battle",
					["wowTreeIndex"] = 16,
					["column"] = 2,
					["icon"] = 237486,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						87168, -- [1]
						87172, -- [2]
					},
					["name"] = "Long Arm of the Law",
					["wowTreeIndex"] = 17,
					["column"] = 3,
					["icon"] = 236258,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						26022, -- [1]
						26023, -- [2]
					},
					["name"] = "Pursuit of Justice",
					["wowTreeIndex"] = 18,
					["column"] = 4,
					["icon"] = 135937,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						87174, -- [1]
						87175, -- [2]
					},
					["name"] = "Improved Judgement",
					["wowTreeIndex"] = 19,
					["column"] = 3,
					["icon"] = 236255,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [19]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						20174, -- [1]
						20175, -- [2]
					},
					["name"] = "Guardian's Favor",
					["wowTreeIndex"] = 20,
					["column"] = 1,
					["icon"] = 135964,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [20]
		},
		["info"] = {
			["background"] = "PALADINCOMBAT",
			["name"] = "Retribution",
			["icon"] = 135873,
		},
	}, -- [3]
}

talents.priest = {
	{
		["numtalents"] = 21,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						47586, -- [1]
						47587, -- [2]
						47588, -- [3]
					},
					["name"] = "Twin Disciplines",
					["wowTreeIndex"] = 1,
					["column"] = 2,
					["icon"] = 135969,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14747, -- [1]
						14770, -- [2]
						14771, -- [3]
					},
					["name"] = "Inner Sanctum",
					["wowTreeIndex"] = 2,
					["column"] = 3,
					["icon"] = 135926,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						89485, -- [1]
					},
					["name"] = "Inner Focus",
					["wowTreeIndex"] = 3,
					["column"] = 4,
					["icon"] = 135863,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						81659, -- [1]
						81662, -- [2]
					},
					["name"] = "Evangelism",
					["wowTreeIndex"] = 4,
					["column"] = 1,
					["icon"] = 135895,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14520, -- [1]
						14780, -- [2]
						14781, -- [3]
					},
					["name"] = "Mental Agility",
					["wowTreeIndex"] = 5,
					["column"] = 3,
					["icon"] = 132156,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						62618, -- [1]
					},
					["name"] = "Power Word: Barrier",
					["wowTreeIndex"] = 6,
					["column"] = 2,
					["icon"] = 253400,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						33201, -- [1]
						33202, -- [2]
					},
					["name"] = "Reflective Shield",
					["wowTreeIndex"] = 7,
					["column"] = 4,
					["icon"] = 458412,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						63574, -- [1]
						78500, -- [2]
					},
					["name"] = "Soul Warding",
					["wowTreeIndex"] = 8,
					["column"] = 4,
					["icon"] = 458722,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						47509, -- [1]
						47511, -- [2]
						47515, -- [3]
					},
					["name"] = "Divine Aegis",
					["wowTreeIndex"] = 9,
					["column"] = 2,
					["icon"] = 237539,
					["row"] = 5,
					["ranks"] = 3,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						10060, -- [1]
					},
					["name"] = "Power Infusion",
					["wowTreeIndex"] = 10,
					["column"] = 2,
					["icon"] = 135939,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						47535, -- [1]
						47536, -- [2]
						47537, -- [3]
					},
					["name"] = "Rapture",
					["wowTreeIndex"] = 11,
					["column"] = 2,
					["icon"] = 237548,
					["row"] = 4,
					["ranks"] = 3,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						45234, -- [1]
						45243, -- [2]
					},
					["name"] = "Focused Will",
					["wowTreeIndex"] = 12,
					["column"] = 1,
					["icon"] = 458227,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						33206, -- [1]
					},
					["name"] = "Pain Suppression",
					["wowTreeIndex"] = 13,
					["column"] = 3,
					["icon"] = 135936,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						47516, -- [1]
						47517, -- [2]
					},
					["name"] = "Grace",
					["wowTreeIndex"] = 14,
					["column"] = 3,
					["icon"] = 237543,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14748, -- [1]
						14768, -- [2]
					},
					["name"] = "Improved Power Word: Shield",
					["wowTreeIndex"] = 15,
					["column"] = 1,
					["icon"] = 135940,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						57470, -- [1]
						57472, -- [2]
					},
					["name"] = "Renewed Hope",
					["wowTreeIndex"] = 16,
					["column"] = 1,
					["icon"] = 135923,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						52795, -- [1]
						52797, -- [2]
					},
					["name"] = "Borrowed Time",
					["wowTreeIndex"] = 17,
					["column"] = 3,
					["icon"] = 237538,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						87151, -- [1]
					},
					["name"] = "Archangel",
					["wowTreeIndex"] = 18,
					["column"] = 2,
					["icon"] = 458225,
					["row"] = 2,
					["ranks"] = 1,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14523, -- [1]
						81749, -- [2]
					},
					["name"] = "Atonement",
					["wowTreeIndex"] = 19,
					["column"] = 3,
					["icon"] = 458720,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [19]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						89488, -- [1]
						89489, -- [2]
					},
					["name"] = "Strength of Soul",
					["wowTreeIndex"] = 20,
					["column"] = 1,
					["icon"] = 135871,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [20]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						92295, -- [1]
						92297, -- [2]
					},
					["name"] = "Train of Thought",
					["wowTreeIndex"] = 21,
					["column"] = 4,
					["icon"] = 236225,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [21]
		},
		["info"] = {
			["background"] = "PriestDiscipline",
			["name"] = "Discipline",
			["icon"] = 135940,
		},
	}, -- [1]
	{
		["numtalents"] = 21,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						18530, -- [1]
						18531, -- [2]
						18533, -- [3]
					},
					["name"] = "Divine Fury",
					["wowTreeIndex"] = 1,
					["column"] = 3,
					["icon"] = 135971,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						33158, -- [1]
						33159, -- [2]
						33160, -- [3]
					},
					["name"] = "Empowered Healing",
					["wowTreeIndex"] = 2,
					["column"] = 2,
					["icon"] = 135913,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14892, -- [1]
						15362, -- [2]
					},
					["name"] = "Inspiration",
					["wowTreeIndex"] = 3,
					["column"] = 4,
					["icon"] = 135928,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						63730, -- [1]
						63733, -- [2]
					},
					["name"] = "Serendipity",
					["wowTreeIndex"] = 4,
					["column"] = 4,
					["icon"] = 237549,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						34753, -- [1]
						34859, -- [2]
					},
					["name"] = "Holy Concentration",
					["wowTreeIndex"] = 5,
					["column"] = 2,
					["icon"] = 135905,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						64127, -- [1]
						64129, -- [2]
					},
					["name"] = "Body and Soul",
					["wowTreeIndex"] = 6,
					["column"] = 1,
					["icon"] = 135982,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						63534, -- [1]
						63542, -- [2]
					},
					["name"] = "Divine Touch",
					["wowTreeIndex"] = 7,
					["column"] = 1,
					["icon"] = 236254,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						34861, -- [1]
					},
					["name"] = "Circle of Healing",
					["wowTreeIndex"] = 8,
					["column"] = 3,
					["icon"] = 135887,
					["row"] = 6,
					["ranks"] = 1,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						47558, -- [1]
						47559, -- [2]
						47560, -- [3]
					},
					["name"] = "Test of Faith",
					["wowTreeIndex"] = 9,
					["column"] = 1,
					["icon"] = 237550,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						47788, -- [1]
					},
					["name"] = "Guardian Spirit",
					["wowTreeIndex"] = 10,
					["column"] = 2,
					["icon"] = 237542,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14908, -- [1]
						15020, -- [2]
					},
					["name"] = "Improved Renew",
					["wowTreeIndex"] = 11,
					["column"] = 1,
					["icon"] = 135953,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						724, -- [1]
					},
					["name"] = "Lightwell",
					["wowTreeIndex"] = 12,
					["column"] = 3,
					["icon"] = 135980,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14751, -- [1]
					},
					["name"] = "Chakra",
					["wowTreeIndex"] = 13,
					["column"] = 2,
					["icon"] = 521584,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						87430, -- [1]
						87431, -- [2]
					},
					["name"] = "Heavenly Voice",
					["wowTreeIndex"] = 14,
					["column"] = 2,
					["icon"] = 458228,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						19236, -- [1]
					},
					["name"] = "Desperate Prayer",
					["wowTreeIndex"] = 15,
					["column"] = 2,
					["icon"] = 135954,
					["row"] = 2,
					["ranks"] = 1,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						20711, -- [1]
					},
					["name"] = "Spirit of Redemption",
					["wowTreeIndex"] = 16,
					["column"] = 3,
					["icon"] = 132864,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						33142, -- [1]
						33145, -- [2]
					},
					["name"] = "Blessed Resilience",
					["wowTreeIndex"] = 17,
					["column"] = 4,
					["icon"] = 135878,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						88627, -- [1]
					},
					["name"] = "Revelations",
					["wowTreeIndex"] = 18,
					["column"] = 3,
					["icon"] = 458721,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						88687, -- [1]
						88690, -- [2]
					},
					["name"] = "Surge of Light",
					["wowTreeIndex"] = 19,
					["column"] = 3,
					["icon"] = 135981,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [19]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14898, -- [1]
						81625, -- [2]
					},
					["name"] = "Tome of Light",
					["wowTreeIndex"] = 20,
					["column"] = 4,
					["icon"] = 133739,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [20]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						95649, -- [1]
					},
					["name"] = "Rapid Renewal",
					["wowTreeIndex"] = 21,
					["column"] = 1,
					["icon"] = 236249,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [21]
		},
		["info"] = {
			["background"] = "PriestHoly",
			["name"] = "Holy",
			["icon"] = 237542,
		},
	}, -- [2]
	{
		["numtalents"] = 21,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						15259, -- [1]
						15307, -- [2]
						15308, -- [3]
					},
					["name"] = "Darkness",
					["wowTreeIndex"] = 1,
					["column"] = 1,
					["icon"] = 458226,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						15275, -- [1]
						15317, -- [2]
					},
					["name"] = "Improved Shadow Word: Pain",
					["wowTreeIndex"] = 2,
					["column"] = 2,
					["icon"] = 136207,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						15392, -- [1]
						15448, -- [2]
					},
					["name"] = "Improved Psychic Scream",
					["wowTreeIndex"] = 3,
					["column"] = 1,
					["icon"] = 136184,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						15273, -- [1]
						15312, -- [2]
						15313, -- [3]
					},
					["name"] = "Improved Mind Blast",
					["wowTreeIndex"] = 4,
					["column"] = 2,
					["icon"] = 136224,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						15274, -- [1]
						15311, -- [2]
					},
					["name"] = "Veiled Shadows",
					["wowTreeIndex"] = 5,
					["column"] = 3,
					["icon"] = 135994,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						15487, -- [1]
					},
					["name"] = "Silence",
					["wowTreeIndex"] = 6,
					["column"] = 1,
					["icon"] = 458230,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						15286, -- [1]
					},
					["name"] = "Vampiric Embrace",
					["wowTreeIndex"] = 7,
					["column"] = 2,
					["icon"] = 136230,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14910, -- [1]
						33371, -- [2]
					},
					["name"] = "Mind Melt",
					["wowTreeIndex"] = 8,
					["column"] = 4,
					["icon"] = 237569,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						63625, -- [1]
						63626, -- [2]
					},
					["name"] = "Improved Devouring Plague",
					["wowTreeIndex"] = 9,
					["column"] = 3,
					["icon"] = 252996,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						15473, -- [1]
					},
					["name"] = "Shadowform",
					["wowTreeIndex"] = 10,
					["column"] = 2,
					["icon"] = 136200,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						47569, -- [1]
						47570, -- [2]
					},
					["name"] = "Phantasm",
					["wowTreeIndex"] = 11,
					["column"] = 3,
					["icon"] = 237570,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						78202, -- [1]
						78203, -- [2]
						78204, -- [3]
					},
					["name"] = "Shadowy Apparition",
					["wowTreeIndex"] = 12,
					["column"] = 3,
					["icon"] = 458229,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						64044, -- [1]
					},
					["name"] = "Psychic Horror",
					["wowTreeIndex"] = 13,
					["column"] = 1,
					["icon"] = 237568,
					["row"] = 6,
					["ranks"] = 1,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						34914, -- [1]
					},
					["name"] = "Vampiric Touch",
					["wowTreeIndex"] = 14,
					["column"] = 2,
					["icon"] = 135978,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						47580, -- [1]
						47581, -- [2]
					},
					["name"] = "Pain and Suffering",
					["wowTreeIndex"] = 15,
					["column"] = 1,
					["icon"] = 237567,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						47585, -- [1]
					},
					["name"] = "Dispersion",
					["wowTreeIndex"] = 16,
					["column"] = 2,
					["icon"] = 237563,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						87099, -- [1]
						87100, -- [2]
					},
					["name"] = "Sin and Punishment",
					["wowTreeIndex"] = 17,
					["column"] = 2,
					["icon"] = 135945,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						33191, -- [1]
						78228, -- [2]
					},
					["name"] = "Harnessed Shadows",
					["wowTreeIndex"] = 18,
					["column"] = 4,
					["icon"] = 134336,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						87192, -- [1]
						87195, -- [2]
					},
					["name"] = "Paralysis",
					["wowTreeIndex"] = 19,
					["column"] = 3,
					["icon"] = 132299,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [19]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						47573, -- [1]
						47577, -- [2]
					},
					["name"] = "Twisted Faith",
					["wowTreeIndex"] = 20,
					["column"] = 4,
					["icon"] = 237566,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [20]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						88994, -- [1]
						88995, -- [2]
					},
					["name"] = "Masochism",
					["wowTreeIndex"] = 21,
					["column"] = 3,
					["icon"] = 136176,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [21]
		},
		["info"] = {
			["background"] = "PriestShadow",
			["name"] = "Shadow",
			["icon"] = 136207,
		},
	}, -- [3]
}

talents.rogue = {
	{
		["numtalents"] = 19,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14128, -- [1]
						14132, -- [2]
						14135, -- [3]
					},
					["name"] = "Lethality",
					["wowTreeIndex"] = 1,
					["column"] = 3,
					["icon"] = 132109,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14156, -- [1]
						14160, -- [2]
						14161, -- [3]
					},
					["name"] = "Ruthlessness",
					["wowTreeIndex"] = 2,
					["column"] = 1,
					["icon"] = 132122,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14162, -- [1]
						14163, -- [2]
						14164, -- [3]
					},
					["name"] = "Coup de Grace",
					["wowTreeIndex"] = 3,
					["column"] = 2,
					["icon"] = 132292,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						13733, -- [1]
						13865, -- [2]
						13866, -- [3]
					},
					["name"] = "Puncturing Wounds",
					["wowTreeIndex"] = 4,
					["column"] = 3,
					["icon"] = 132090,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14168, -- [1]
						14169, -- [2]
					},
					["name"] = "Improved Expose Armor",
					["wowTreeIndex"] = 5,
					["column"] = 4,
					["icon"] = 132354,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14177, -- [1]
					},
					["name"] = "Cold Blood",
					["wowTreeIndex"] = 6,
					["column"] = 2,
					["icon"] = 135988,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						58426, -- [1]
					},
					["name"] = "Overkill",
					["wowTreeIndex"] = 7,
					["column"] = 2,
					["icon"] = 132205,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14186, -- [1]
						14190, -- [2]
					},
					["name"] = "Seal Fate",
					["wowTreeIndex"] = 8,
					["column"] = 2,
					["icon"] = 236281,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16513, -- [1]
						16514, -- [2]
						16515, -- [3]
					},
					["name"] = "Vile Poisons",
					["wowTreeIndex"] = 9,
					["column"] = 3,
					["icon"] = 132293,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						58410, -- [1]
					},
					["name"] = "Master Poisoner",
					["wowTreeIndex"] = 10,
					["column"] = 3,
					["icon"] = 132108,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31208, -- [1]
						31209, -- [2]
					},
					["name"] = "Quickening",
					["wowTreeIndex"] = 11,
					["column"] = 2,
					["icon"] = 132301,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51625, -- [1]
						51626, -- [2]
					},
					["name"] = "Deadly Brew",
					["wowTreeIndex"] = 12,
					["column"] = 1,
					["icon"] = 236270,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51664, -- [1]
						51665, -- [2]
						51667, -- [3]
					},
					["name"] = "Cut to the Chase",
					["wowTreeIndex"] = 13,
					["column"] = 2,
					["icon"] = 236269,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						79140, -- [1]
					},
					["name"] = "Vendetta",
					["wowTreeIndex"] = 14,
					["column"] = 2,
					["icon"] = 458726,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						79121, -- [1]
						79122, -- [2]
					},
					["name"] = "Deadly Momentum",
					["wowTreeIndex"] = 15,
					["column"] = 1,
					["icon"] = 458727,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						79123, -- [1]
						79125, -- [2]
					},
					["name"] = "Blackjack",
					["wowTreeIndex"] = 16,
					["column"] = 4,
					["icon"] = 458797,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14158, -- [1]
						14159, -- [2]
					},
					["name"] = "Murderous Intent",
					["wowTreeIndex"] = 17,
					["column"] = 1,
					["icon"] = 136147,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						79133, -- [1]
						79134, -- [2]
					},
					["name"] = "Venomous Wounds",
					["wowTreeIndex"] = 18,
					["column"] = 3,
					["icon"] = 458736,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31380, -- [1]
						31382, -- [2]
						31383, -- [3]
					},
					["name"] = "Deadened Nerves",
					["wowTreeIndex"] = 19,
					["column"] = 1,
					["icon"] = 132286,
					["row"] = 4,
					["ranks"] = 3,
				},
			}, -- [19]
		},
		["info"] = {
			["background"] = "RogueAssassination",
			["name"] = "Assassination",
			["icon"] = 132292,
		},
	}, -- [1]
	{
		["numtalents"] = 19,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						13705, -- [1]
						13832, -- [2]
						13843, -- [3]
					},
					["name"] = "Precision",
					["wowTreeIndex"] = 1,
					["column"] = 3,
					["icon"] = 132222,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						13712, -- [1]
						13788, -- [2]
						13789, -- [3]
					},
					["name"] = "Lightning Reflexes",
					["wowTreeIndex"] = 2,
					["column"] = 1,
					["icon"] = 136047,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						13732, -- [1]
						13863, -- [2]
						79004, -- [3]
					},
					["name"] = "Improved Sinister Strike",
					["wowTreeIndex"] = 3,
					["column"] = 2,
					["icon"] = 136189,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						13741, -- [1]
						13793, -- [2]
					},
					["name"] = "Improved Gouge",
					["wowTreeIndex"] = 4,
					["column"] = 4,
					["icon"] = 132155,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						13750, -- [1]
					},
					["name"] = "Adrenaline Rush",
					["wowTreeIndex"] = 5,
					["column"] = 2,
					["icon"] = 136206,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						13754, -- [1]
						13867, -- [2]
					},
					["name"] = "Improved Kick",
					["wowTreeIndex"] = 6,
					["column"] = 4,
					["icon"] = 132219,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						13743, -- [1]
						13875, -- [2]
					},
					["name"] = "Improved Sprint",
					["wowTreeIndex"] = 7,
					["column"] = 2,
					["icon"] = 132307,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						18427, -- [1]
						18428, -- [2]
						18429, -- [3]
					},
					["name"] = "Aggression",
					["wowTreeIndex"] = 8,
					["column"] = 3,
					["icon"] = 132275,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31124, -- [1]
						31126, -- [2]
					},
					["name"] = "Blade Twisting",
					["wowTreeIndex"] = 9,
					["column"] = 3,
					["icon"] = 132283,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						35541, -- [1]
						35550, -- [2]
						35551, -- [3]
					},
					["name"] = "Combat Potency",
					["wowTreeIndex"] = 10,
					["column"] = 2,
					["icon"] = 135673,
					["row"] = 4,
					["ranks"] = 3,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14165, -- [1]
						14166, -- [2]
					},
					["name"] = "Improved Slice and Dice",
					["wowTreeIndex"] = 11,
					["column"] = 1,
					["icon"] = 132306,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						5952, -- [1]
						51679, -- [2]
					},
					["name"] = "Throwing Specialization",
					["wowTreeIndex"] = 12,
					["column"] = 1,
					["icon"] = 236282,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51682, -- [1]
						58413, -- [2]
					},
					["name"] = "Savage Combat",
					["wowTreeIndex"] = 13,
					["column"] = 3,
					["icon"] = 132100,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51690, -- [1]
					},
					["name"] = "Killing Spree",
					["wowTreeIndex"] = 14,
					["column"] = 2,
					["icon"] = 236277,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						79007, -- [1]
						79008, -- [2]
					},
					["name"] = "Improved Recuperate",
					["wowTreeIndex"] = 15,
					["column"] = 1,
					["icon"] = 457635,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						79077, -- [1]
						79079, -- [2]
					},
					["name"] = "Reinforced Leather",
					["wowTreeIndex"] = 16,
					["column"] = 3,
					["icon"] = 458730,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						79095, -- [1]
						79096, -- [2]
					},
					["name"] = "Restless Blades",
					["wowTreeIndex"] = 17,
					["column"] = 3,
					["icon"] = 458731,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						84617, -- [1]
					},
					["name"] = "Revealing Strike",
					["wowTreeIndex"] = 18,
					["column"] = 2,
					["icon"] = 135407,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						84652, -- [1]
						84653, -- [2]
						84654, -- [3]
					},
					["name"] = "Bandit's Guile",
					["wowTreeIndex"] = 19,
					["column"] = 1,
					["icon"] = 236278,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [19]
		},
		["info"] = {
			["background"] = "RogueCombat",
			["name"] = "Combat",
			["icon"] = 132090,
		},
	}, -- [2]
	{
		["numtalents"] = 19,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						13975, -- [1]
						14062, -- [2]
					},
					["name"] = "Nightstalker",
					["wowTreeIndex"] = 1,
					["column"] = 1,
					["icon"] = 132320,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						13976, -- [1]
						13979, -- [2]
					},
					["name"] = "Initiative",
					["wowTreeIndex"] = 2,
					["column"] = 4,
					["icon"] = 136159,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						13981, -- [1]
						14066, -- [2]
					},
					["name"] = "Elusiveness",
					["wowTreeIndex"] = 3,
					["column"] = 1,
					["icon"] = 135994,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14057, -- [1]
						14072, -- [2]
						79141, -- [3]
					},
					["name"] = "Opportunity",
					["wowTreeIndex"] = 4,
					["column"] = 3,
					["icon"] = 236268,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14079, -- [1]
						14080, -- [2]
						84661, -- [3]
					},
					["name"] = "Improved Ambush",
					["wowTreeIndex"] = 5,
					["column"] = 2,
					["icon"] = 132282,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14185, -- [1]
					},
					["name"] = "Preparation",
					["wowTreeIndex"] = 6,
					["column"] = 2,
					["icon"] = 460693,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14183, -- [1]
					},
					["name"] = "Premeditation",
					["wowTreeIndex"] = 7,
					["column"] = 2,
					["icon"] = 136183,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16511, -- [1]
					},
					["name"] = "Hemorrhage",
					["wowTreeIndex"] = 8,
					["column"] = 3,
					["icon"] = 136168,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14171, -- [1]
						14172, -- [2]
					},
					["name"] = "Serrated Blades",
					["wowTreeIndex"] = 9,
					["column"] = 3,
					["icon"] = 135315,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31228, -- [1]
						31229, -- [2]
						31230, -- [3]
					},
					["name"] = "Cheat Death",
					["wowTreeIndex"] = 10,
					["column"] = 1,
					["icon"] = 132285,
					["row"] = 5,
					["ranks"] = 3,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51692, -- [1]
						51696, -- [2]
					},
					["name"] = "Waylay",
					["wowTreeIndex"] = 11,
					["column"] = 2,
					["icon"] = 236286,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51698, -- [1]
						51700, -- [2]
						51701, -- [3]
					},
					["name"] = "Honor Among Thieves",
					["wowTreeIndex"] = 12,
					["column"] = 1,
					["icon"] = 236275,
					["row"] = 4,
					["ranks"] = 3,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51708, -- [1]
						51709, -- [2]
						51710, -- [3]
					},
					["name"] = "Slaughter from the Shadows",
					["wowTreeIndex"] = 13,
					["column"] = 2,
					["icon"] = 236280,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51713, -- [1]
					},
					["name"] = "Shadow Dance",
					["wowTreeIndex"] = 14,
					["column"] = 2,
					["icon"] = 236279,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						14179, -- [1]
						58422, -- [2]
						58423, -- [3]
					},
					["name"] = "Relentless Strikes",
					["wowTreeIndex"] = 15,
					["column"] = 3,
					["icon"] = 132340,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51632, -- [1]
						91023, -- [2]
					},
					["name"] = "Find Weakness",
					["wowTreeIndex"] = 16,
					["column"] = 2,
					["icon"] = 132295,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						79146, -- [1]
						79147, -- [2]
					},
					["name"] = "Sanguinary Vein",
					["wowTreeIndex"] = 17,
					["column"] = 3,
					["icon"] = 457636,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						31211, -- [1]
						31212, -- [2]
						31213, -- [3]
					},
					["name"] = "Enveloping Shadows",
					["wowTreeIndex"] = 18,
					["column"] = 4,
					["icon"] = 132291,
					["row"] = 4,
					["ranks"] = 3,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						79150, -- [1]
						79151, -- [2]
						79152, -- [3]
					},
					["name"] = "Energetic Recovery",
					["wowTreeIndex"] = 19,
					["column"] = 1,
					["icon"] = 458734,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [19]
		},
		["info"] = {
			["background"] = "RogueSubtlety",
			["name"] = "Subtlety",
			["icon"] = 132320,
		},
	}, -- [3]
}

talents.shaman = {
	{
		["numtalents"] = 19,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16038, -- [1]
						16160, -- [2]
					},
					["name"] = "Call of Flame",
					["wowTreeIndex"] = 1,
					["column"] = 1,
					["icon"] = 135817,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16035, -- [1]
						16105, -- [2]
						16106, -- [3]
					},
					["name"] = "Concussion",
					["wowTreeIndex"] = 2,
					["column"] = 3,
					["icon"] = 135807,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16039, -- [1]
						16109, -- [2]
					},
					["name"] = "Convection",
					["wowTreeIndex"] = 3,
					["column"] = 2,
					["icon"] = 459025,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16166, -- [1]
					},
					["name"] = "Elemental Mastery",
					["wowTreeIndex"] = 4,
					["column"] = 2,
					["icon"] = 136115,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16164, -- [1]
					},
					["name"] = "Elemental Focus",
					["wowTreeIndex"] = 5,
					["column"] = 2,
					["icon"] = 136170,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16040, -- [1]
						16113, -- [2]
					},
					["name"] = "Reverberation",
					["wowTreeIndex"] = 6,
					["column"] = 3,
					["icon"] = 135850,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						28996, -- [1]
						28997, -- [2]
						28998, -- [3]
					},
					["name"] = "Elemental Warding",
					["wowTreeIndex"] = 7,
					["column"] = 2,
					["icon"] = 136094,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						28999, -- [1]
						29000, -- [2]
					},
					["name"] = "Elemental Reach",
					["wowTreeIndex"] = 8,
					["column"] = 3,
					["icon"] = 136099,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						30672, -- [1]
						30673, -- [2]
						30674, -- [3]
					},
					["name"] = "Elemental Precision",
					["wowTreeIndex"] = 9,
					["column"] = 4,
					["icon"] = 136028,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						61882, -- [1]
					},
					["name"] = "Earthquake",
					["wowTreeIndex"] = 10,
					["column"] = 2,
					["icon"] = 451165,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51466, -- [1]
						51470, -- [2]
					},
					["name"] = "Elemental Oath",
					["wowTreeIndex"] = 11,
					["column"] = 2,
					["icon"] = 237576,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51480, -- [1]
						51481, -- [2]
						51482, -- [3]
					},
					["name"] = "Lava Flows",
					["wowTreeIndex"] = 12,
					["column"] = 3,
					["icon"] = 237583,
					["row"] = 4,
					["ranks"] = 3,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						77746, -- [1]
					},
					["name"] = "Totemic Wrath",
					["wowTreeIndex"] = 13,
					["column"] = 4,
					["icon"] = 135829,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						77755, -- [1]
						77756, -- [2]
					},
					["name"] = "Lava Surge",
					["wowTreeIndex"] = 14,
					["column"] = 3,
					["icon"] = 451169,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						17485, -- [1]
						17486, -- [2]
						17487, -- [3]
					},
					["name"] = "Acuity",
					["wowTreeIndex"] = 15,
					["column"] = 1,
					["icon"] = 136011,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						86183, -- [1]
						86184, -- [2]
						86185, -- [3]
					},
					["name"] = "Feedback",
					["wowTreeIndex"] = 16,
					["column"] = 2,
					["icon"] = 252174,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						88756, -- [1]
						88764, -- [2]
					},
					["name"] = "Rolling Thunder",
					["wowTreeIndex"] = 17,
					["column"] = 1,
					["icon"] = 136014,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51483, -- [1]
						51485, -- [2]
					},
					["name"] = "Earth's Grasp",
					["wowTreeIndex"] = 18,
					["column"] = 3,
					["icon"] = 136100,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						88766, -- [1]
					},
					["name"] = "Fulmination",
					["wowTreeIndex"] = 19,
					["column"] = 1,
					["icon"] = 136111,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [19]
		},
		["info"] = {
			["background"] = "ShamanElementalCombat",
			["name"] = "Elemental",
			["icon"] = 136048,
		},
	}, -- [1]
	{
		["numtalents"] = 19,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16256, -- [1]
						16281, -- [2]
						16282, -- [3]
					},
					["name"] = "Flurry",
					["wowTreeIndex"] = 1,
					["column"] = 2,
					["icon"] = 132152,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16262, -- [1]
						16287, -- [2]
					},
					["name"] = "Ancestral Swiftness",
					["wowTreeIndex"] = 2,
					["column"] = 3,
					["icon"] = 348567,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16261, -- [1]
						16290, -- [2]
						51881, -- [3]
					},
					["name"] = "Improved Shields",
					["wowTreeIndex"] = 3,
					["column"] = 3,
					["icon"] = 136051,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16266, -- [1]
						29079, -- [2]
					},
					["name"] = "Elemental Weapons",
					["wowTreeIndex"] = 4,
					["column"] = 1,
					["icon"] = 135814,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16252, -- [1]
						16306, -- [2]
						16307, -- [3]
					},
					["name"] = "Toughness",
					["wowTreeIndex"] = 5,
					["column"] = 1,
					["icon"] = 135892,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						17364, -- [1]
					},
					["name"] = "Stormstrike",
					["wowTreeIndex"] = 6,
					["column"] = 2,
					["icon"] = 132314,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						30802, -- [1]
						30808, -- [2]
					},
					["name"] = "Unleashed Rage",
					["wowTreeIndex"] = 7,
					["column"] = 4,
					["icon"] = 136110,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						30823, -- [1]
					},
					["name"] = "Shamanistic Rage",
					["wowTreeIndex"] = 8,
					["column"] = 2,
					["icon"] = 136088,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51525, -- [1]
						51526, -- [2]
						51527, -- [3]
					},
					["name"] = "Static Shock",
					["wowTreeIndex"] = 9,
					["column"] = 3,
					["icon"] = 237587,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51523, -- [1]
						51524, -- [2]
					},
					["name"] = "Earthen Power",
					["wowTreeIndex"] = 10,
					["column"] = 1,
					["icon"] = 136024,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51528, -- [1]
						51529, -- [2]
						51530, -- [3]
					},
					["name"] = "Maelstrom Weapon",
					["wowTreeIndex"] = 11,
					["column"] = 2,
					["icon"] = 237584,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51533, -- [1]
					},
					["name"] = "Feral Spirit",
					["wowTreeIndex"] = 12,
					["column"] = 2,
					["icon"] = 237577,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						77655, -- [1]
						77656, -- [2]
						77657, -- [3]
					},
					["name"] = "Searing Flames",
					["wowTreeIndex"] = 13,
					["column"] = 3,
					["icon"] = 135825,
					["row"] = 4,
					["ranks"] = 3,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						77536, -- [1]
						77537, -- [2]
						77538, -- [3]
					},
					["name"] = "Focused Strikes",
					["wowTreeIndex"] = 14,
					["column"] = 2,
					["icon"] = 451166,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						77700, -- [1]
						77701, -- [2]
					},
					["name"] = "Improved Lava Lash",
					["wowTreeIndex"] = 15,
					["column"] = 3,
					["icon"] = 451168,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						30160, -- [1]
						29179, -- [2]
						29180, -- [3]
					},
					["name"] = "Elemental Devastation",
					["wowTreeIndex"] = 16,
					["column"] = 1,
					["icon"] = 135791,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						63373, -- [1]
						63374, -- [2]
					},
					["name"] = "Frozen Power",
					["wowTreeIndex"] = 17,
					["column"] = 1,
					["icon"] = 135776,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						86935, -- [1]
						86936, -- [2]
					},
					["name"] = "Totemic Reach",
					["wowTreeIndex"] = 18,
					["column"] = 4,
					["icon"] = 136008,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16086, -- [1]
						16544, -- [2]
					},
					["name"] = "Seasoned Winds",
					["wowTreeIndex"] = 19,
					["column"] = 2,
					["icon"] = 136027,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [19]
		},
		["info"] = {
			["background"] = "ShamanEnhancement",
			["name"] = "Enhancement",
			["icon"] = 136051,
		},
	}, -- [2]
	{
		["numtalents"] = 20,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16176, -- [1]
						16235, -- [2]
					},
					["name"] = "Ancestral Healing",
					["wowTreeIndex"] = 1,
					["column"] = 1,
					["icon"] = 136109,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16180, -- [1]
						16196, -- [2]
					},
					["name"] = "Resurgence",
					["wowTreeIndex"] = 2,
					["column"] = 1,
					["icon"] = 132315,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16187, -- [1]
						16205, -- [2]
					},
					["name"] = "Soothing Rains",
					["wowTreeIndex"] = 3,
					["column"] = 2,
					["icon"] = 136037,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16190, -- [1]
					},
					["name"] = "Mana Tide Totem",
					["wowTreeIndex"] = 4,
					["column"] = 2,
					["icon"] = 135861,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16188, -- [1]
					},
					["name"] = "Nature's Swiftness",
					["wowTreeIndex"] = 5,
					["column"] = 2,
					["icon"] = 136076,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16179, -- [1]
						16214, -- [2]
						16215, -- [3]
					},
					["name"] = "Tidal Focus",
					["wowTreeIndex"] = 6,
					["column"] = 2,
					["icon"] = 135859,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16173, -- [1]
						16222, -- [2]
					},
					["name"] = "Totemic Focus",
					["wowTreeIndex"] = 7,
					["column"] = 2,
					["icon"] = 136057,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						30867, -- [1]
						30868, -- [2]
						30869, -- [3]
					},
					["name"] = "Nature's Blessing",
					["wowTreeIndex"] = 8,
					["column"] = 3,
					["icon"] = 136059,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						30881, -- [1]
						30883, -- [2]
						30884, -- [3]
					},
					["name"] = "Nature's Guardian",
					["wowTreeIndex"] = 9,
					["column"] = 4,
					["icon"] = 136060,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51554, -- [1]
						51555, -- [2]
					},
					["name"] = "Blessing of the Eternals",
					["wowTreeIndex"] = 10,
					["column"] = 3,
					["icon"] = 237573,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51556, -- [1]
						51557, -- [2]
						51558, -- [3]
					},
					["name"] = "Ancestral Awakening",
					["wowTreeIndex"] = 11,
					["column"] = 1,
					["icon"] = 237571,
					["row"] = 5,
					["ranks"] = 3,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51562, -- [1]
						51563, -- [2]
						51564, -- [3]
					},
					["name"] = "Tidal Waves",
					["wowTreeIndex"] = 12,
					["column"] = 2,
					["icon"] = 237590,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						61295, -- [1]
					},
					["name"] = "Riptide",
					["wowTreeIndex"] = 13,
					["column"] = 2,
					["icon"] = 252995,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						77130, -- [1]
					},
					["name"] = "Improved Cleanse Spirit",
					["wowTreeIndex"] = 14,
					["column"] = 3,
					["icon"] = 236288,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						77794, -- [1]
						77795, -- [2]
						77796, -- [3]
					},
					["name"] = "Focused Insight",
					["wowTreeIndex"] = 15,
					["column"] = 3,
					["icon"] = 462651,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						77829, -- [1]
						77830, -- [2]
					},
					["name"] = "Ancestral Resolve",
					["wowTreeIndex"] = 16,
					["column"] = 1,
					["icon"] = 252271,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						82984, -- [1]
						82988, -- [2]
					},
					["name"] = "Telluric Currents",
					["wowTreeIndex"] = 17,
					["column"] = 3,
					["icon"] = 135990,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						84846, -- [1]
						84847, -- [2]
						84848, -- [3]
					},
					["name"] = "Spark of Life",
					["wowTreeIndex"] = 18,
					["column"] = 3,
					["icon"] = 237556,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						86959, -- [1]
						86962, -- [2]
					},
					["name"] = "Cleansing Waters",
					["wowTreeIndex"] = 19,
					["column"] = 4,
					["icon"] = 136079,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [19]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						98008, -- [1]
					},
					["name"] = "Spirit Link Totem",
					["wowTreeIndex"] = 20,
					["column"] = 4,
					["icon"] = 237586,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [20]
		},
		["info"] = {
			["background"] = "ShamanRestoration",
			["name"] = "Restoration",
			["icon"] = 136052,
		},
	}, -- [3]
}

talents.warlock = {
	{
		["numtalents"] = 18,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						18827, -- [1]
						18829, -- [2]
					},
					["name"] = "Doom and Gloom",
					["wowTreeIndex"] = 1,
					["column"] = 1,
					["icon"] = 136139,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						17810, -- [1]
						17811, -- [2]
						17812, -- [3]
					},
					["name"] = "Improved Corruption",
					["wowTreeIndex"] = 2,
					["column"] = 3,
					["icon"] = 136118,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						18182, -- [1]
						18183, -- [2]
					},
					["name"] = "Improved Life Tap",
					["wowTreeIndex"] = 3,
					["column"] = 2,
					["icon"] = 136126,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						17804, -- [1]
						17805, -- [2]
					},
					["name"] = "Soul Siphon",
					["wowTreeIndex"] = 4,
					["column"] = 2,
					["icon"] = 460700,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53754, -- [1]
						53759, -- [2]
					},
					["name"] = "Improved Fear",
					["wowTreeIndex"] = 5,
					["column"] = 3,
					["icon"] = 136183,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						18094, -- [1]
						18095, -- [2]
					},
					["name"] = "Nightfall",
					["wowTreeIndex"] = 6,
					["column"] = 2,
					["icon"] = 136223,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						32385, -- [1]
						32387, -- [2]
						32392, -- [3]
					},
					["name"] = "Shadow Embrace",
					["wowTreeIndex"] = 7,
					["column"] = 3,
					["icon"] = 136198,
					["row"] = 4,
					["ranks"] = 3,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						18223, -- [1]
					},
					["name"] = "Curse of Exhaustion",
					["wowTreeIndex"] = 8,
					["column"] = 1,
					["icon"] = 136162,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						47195, -- [1]
						47196, -- [2]
						47197, -- [3]
					},
					["name"] = "Eradication",
					["wowTreeIndex"] = 9,
					["column"] = 4,
					["icon"] = 236295,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						30054, -- [1]
						30057, -- [2]
					},
					["name"] = "Improved Howl of Terror",
					["wowTreeIndex"] = 10,
					["column"] = 1,
					["icon"] = 136147,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						47198, -- [1]
						47199, -- [2]
						47200, -- [3]
					},
					["name"] = "Death's Embrace",
					["wowTreeIndex"] = 11,
					["column"] = 1,
					["icon"] = 237557,
					["row"] = 5,
					["ranks"] = 3,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						47201, -- [1]
						47202, -- [2]
						47203, -- [3]
					},
					["name"] = "Everlasting Affliction",
					["wowTreeIndex"] = 12,
					["column"] = 2,
					["icon"] = 236296,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						48181, -- [1]
					},
					["name"] = "Haunt",
					["wowTreeIndex"] = 13,
					["column"] = 2,
					["icon"] = 236298,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						85099, -- [1]
						85100, -- [2]
					},
					["name"] = "Pandemic",
					["wowTreeIndex"] = 14,
					["column"] = 3,
					["icon"] = 136166,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						18179, -- [1]
						85479, -- [2]
					},
					["name"] = "Jinx",
					["wowTreeIndex"] = 15,
					["column"] = 1,
					["icon"] = 460699,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						86121, -- [1]
					},
					["name"] = "Soul Swap",
					["wowTreeIndex"] = 16,
					["column"] = 2,
					["icon"] = 460857,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						86664, -- [1]
					},
					["name"] = "Soulburn: Seed of Corruption",
					["wowTreeIndex"] = 17,
					["column"] = 3,
					["icon"] = 136193,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						63108, -- [1]
						86667, -- [2]
					},
					["name"] = "Siphon Life",
					["wowTreeIndex"] = 18,
					["column"] = 3,
					["icon"] = 136188,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [18]
		},
		["info"] = {
			["background"] = "WarlockCurses",
			["name"] = "Affliction",
			["icon"] = 136145,
		},
	}, -- [1]
	{
		["numtalents"] = 19,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						18694, -- [1]
						85283, -- [2]
						85284, -- [3]
					},
					["name"] = "Dark Arts",
					["wowTreeIndex"] = 1,
					["column"] = 2,
					["icon"] = 460697,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						18697, -- [1]
						18698, -- [2]
						18699, -- [3]
					},
					["name"] = "Demonic Embrace",
					["wowTreeIndex"] = 2,
					["column"] = 1,
					["icon"] = 136172,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						18703, -- [1]
						18704, -- [2]
					},
					["name"] = "Improved Health Funnel",
					["wowTreeIndex"] = 3,
					["column"] = 3,
					["icon"] = 136168,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						18709, -- [1]
						18710, -- [2]
					},
					["name"] = "Master Summoner",
					["wowTreeIndex"] = 4,
					["column"] = 4,
					["icon"] = 136164,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						30326, -- [1]
						85175, -- [2]
					},
					["name"] = "Mana Feed",
					["wowTreeIndex"] = 5,
					["column"] = 2,
					["icon"] = 136171,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						47245, -- [1]
						47246, -- [2]
						47247, -- [3]
					},
					["name"] = "Molten Core",
					["wowTreeIndex"] = 6,
					["column"] = 1,
					["icon"] = 236301,
					["row"] = 4,
					["ranks"] = 3,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						63156, -- [1]
						63158, -- [2]
					},
					["name"] = "Decimation",
					["wowTreeIndex"] = 7,
					["column"] = 3,
					["icon"] = 135808,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						47236, -- [1]
					},
					["name"] = "Demonic Pact",
					["wowTreeIndex"] = 8,
					["column"] = 3,
					["icon"] = 237562,
					["row"] = 6,
					["ranks"] = 1,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						59672, -- [1]
					},
					["name"] = "Metamorphosis",
					["wowTreeIndex"] = 9,
					["column"] = 2,
					["icon"] = 237558,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						47193, -- [1]
					},
					["name"] = "Demonic Empowerment",
					["wowTreeIndex"] = 10,
					["column"] = 2,
					["icon"] = 236292,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						85109, -- [1]
						85110, -- [2]
					},
					["name"] = "Ancient Grimoire",
					["wowTreeIndex"] = 11,
					["column"] = 1,
					["icon"] = 460694,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						85105, -- [1]
					},
					["name"] = "Inferno",
					["wowTreeIndex"] = 12,
					["column"] = 2,
					["icon"] = 460698,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						30143, -- [1]
						30144, -- [2]
					},
					["name"] = "Demonic Aegis",
					["wowTreeIndex"] = 13,
					["column"] = 3,
					["icon"] = 136185,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						85106, -- [1]
						85107, -- [2]
						85108, -- [3]
					},
					["name"] = "Impending Doom",
					["wowTreeIndex"] = 14,
					["column"] = 1,
					["icon"] = 136082,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						85103, -- [1]
						85104, -- [2]
					},
					["name"] = "Cremation",
					["wowTreeIndex"] = 15,
					["column"] = 2,
					["icon"] = 460696,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						71521, -- [1]
					},
					["name"] = "Hand of Gul'dan",
					["wowTreeIndex"] = 16,
					["column"] = 2,
					["icon"] = 135265,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						47230, -- [1]
						47231, -- [2]
					},
					["name"] = "Fel Synergy",
					["wowTreeIndex"] = 17,
					["column"] = 3,
					["icon"] = 237564,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						88446, -- [1]
						88447, -- [2]
					},
					["name"] = "Demonic Rebirth",
					["wowTreeIndex"] = 18,
					["column"] = 1,
					["icon"] = 136150,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						89604, -- [1]
						89605, -- [2]
					},
					["name"] = "Aura of Foreboding",
					["wowTreeIndex"] = 19,
					["column"] = 3,
					["icon"] = 136192,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [19]
		},
		["info"] = {
			["background"] = "WarlockSummoning",
			["name"] = "Demonology",
			["icon"] = 136172,
		},
	}, -- [2]
	{
		["numtalents"] = 19,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						17793, -- [1]
						17796, -- [2]
						17801, -- [3]
					},
					["name"] = "Shadow and Flame",
					["wowTreeIndex"] = 1,
					["column"] = 2,
					["icon"] = 136196,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						17788, -- [1]
						17789, -- [2]
						17790, -- [3]
					},
					["name"] = "Bane",
					["wowTreeIndex"] = 2,
					["column"] = 1,
					["icon"] = 136146,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						18119, -- [1]
						18120, -- [2]
					},
					["name"] = "Improved Soul Fire",
					["wowTreeIndex"] = 3,
					["column"] = 1,
					["icon"] = 135808,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						17877, -- [1]
					},
					["name"] = "Shadowburn",
					["wowTreeIndex"] = 4,
					["column"] = 3,
					["icon"] = 136191,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						34935, -- [1]
						34938, -- [2]
						34939, -- [3]
					},
					["name"] = "Backlash",
					["wowTreeIndex"] = 5,
					["column"] = 3,
					["icon"] = 135823,
					["row"] = 4,
					["ranks"] = 3,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						17815, -- [1]
						17833, -- [2]
					},
					["name"] = "Improved Immolate",
					["wowTreeIndex"] = 6,
					["column"] = 3,
					["icon"] = 135817,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						80240, -- [1]
					},
					["name"] = "Bane of Havoc",
					["wowTreeIndex"] = 7,
					["column"] = 3,
					["icon"] = 460695,
					["row"] = 6,
					["ranks"] = 1,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						30299, -- [1]
						30301, -- [2]
					},
					["name"] = "Nether Protection",
					["wowTreeIndex"] = 8,
					["column"] = 4,
					["icon"] = 136178,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						30293, -- [1]
						30295, -- [2]
					},
					["name"] = "Soul Leech",
					["wowTreeIndex"] = 9,
					["column"] = 2,
					["icon"] = 136214,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						47258, -- [1]
						47259, -- [2]
						47260, -- [3]
					},
					["name"] = "Backdraft",
					["wowTreeIndex"] = 10,
					["column"] = 2,
					["icon"] = 236290,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						30283, -- [1]
					},
					["name"] = "Shadowfury",
					["wowTreeIndex"] = 11,
					["column"] = 3,
					["icon"] = 136201,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						47220, -- [1]
						47221, -- [2]
					},
					["name"] = "Empowered Imp",
					["wowTreeIndex"] = 12,
					["column"] = 1,
					["icon"] = 236294,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						47266, -- [1]
						47267, -- [2]
						47268, -- [3]
					},
					["name"] = "Fire and Brimstone",
					["wowTreeIndex"] = 13,
					["column"] = 2,
					["icon"] = 236297,
					["row"] = 5,
					["ranks"] = 3,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						50796, -- [1]
					},
					["name"] = "Chaos Bolt",
					["wowTreeIndex"] = 14,
					["column"] = 2,
					["icon"] = 236291,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						17954, -- [1]
						17955, -- [2]
					},
					["name"] = "Emberstorm",
					["wowTreeIndex"] = 15,
					["column"] = 2,
					["icon"] = 135826,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						91986, -- [1]
						85112, -- [2]
					},
					["name"] = "Burning Embers",
					["wowTreeIndex"] = 16,
					["column"] = 1,
					["icon"] = 460952,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						17927, -- [1]
						17929, -- [2]
					},
					["name"] = "Improved Searing Pain",
					["wowTreeIndex"] = 17,
					["column"] = 3,
					["icon"] = 135827,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						85113, -- [1]
						85114, -- [2]
					},
					["name"] = "Aftermath",
					["wowTreeIndex"] = 18,
					["column"] = 1,
					["icon"] = 135805,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						91713, -- [1]
					},
					["name"] = "Nether Ward",
					["wowTreeIndex"] = 19,
					["column"] = 4,
					["icon"] = 135796,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [19]
		},
		["info"] = {
			["background"] = "WarlockDestruction",
			["name"] = "Destruction",
			["icon"] = 136186,
		},
	}, -- [3]
}

talents.warrior = {
	{
		["numtalents"] = 20,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12834, -- [1]
						12849, -- [2]
						12867, -- [3]
					},
					["name"] = "Deep Wounds",
					["wowTreeIndex"] = 1,
					["column"] = 3,
					["icon"] = 132090,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12290, -- [1]
						12963, -- [2]
					},
					["name"] = "Drums of War",
					["wowTreeIndex"] = 2,
					["column"] = 4,
					["icon"] = 236397,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						29834, -- [1]
						29838, -- [2]
					},
					["name"] = "Second Wind",
					["wowTreeIndex"] = 3,
					["column"] = 2,
					["icon"] = 132175,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12328, -- [1]
					},
					["name"] = "Sweeping Strikes",
					["wowTreeIndex"] = 4,
					["column"] = 2,
					["icon"] = 132306,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						46867, -- [1]
						56611, -- [2]
					},
					["name"] = "Wrecking Crew",
					["wowTreeIndex"] = 5,
					["column"] = 1,
					["icon"] = 132364,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						64976, -- [1]
					},
					["name"] = "Juggernaut",
					["wowTreeIndex"] = 6,
					["column"] = 2,
					["icon"] = 132335,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						29723, -- [1]
						29725, -- [2]
					},
					["name"] = "Sudden Death",
					["wowTreeIndex"] = 7,
					["column"] = 4,
					["icon"] = 132346,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						46924, -- [1]
					},
					["name"] = "Bladestorm",
					["wowTreeIndex"] = 8,
					["column"] = 2,
					["icon"] = 236303,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						29836, -- [1]
						29859, -- [2]
					},
					["name"] = "Blood Frenzy",
					["wowTreeIndex"] = 9,
					["column"] = 3,
					["icon"] = 132334,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						80976, -- [1]
						80977, -- [2]
					},
					["name"] = "Blitz",
					["wowTreeIndex"] = 10,
					["column"] = 3,
					["icon"] = 458970,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						84570, -- [1]
						84571, -- [2]
						84572, -- [3]
					},
					["name"] = "War Academy",
					["wowTreeIndex"] = 11,
					["column"] = 1,
					["icon"] = 236317,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						56636, -- [1]
						56637, -- [2]
						56638, -- [3]
					},
					["name"] = "Taste for Blood",
					["wowTreeIndex"] = 12,
					["column"] = 1,
					["icon"] = 236276,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						84583, -- [1]
						84587, -- [2]
						84588, -- [3]
					},
					["name"] = "Lambs to the Slaughter",
					["wowTreeIndex"] = 13,
					["column"] = 1,
					["icon"] = 458973,
					["row"] = 5,
					["ranks"] = 3,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16493, -- [1]
						16494, -- [2]
					},
					["name"] = "Impale",
					["wowTreeIndex"] = 14,
					["column"] = 3,
					["icon"] = 132312,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						84579, -- [1]
						84580, -- [2]
					},
					["name"] = "Field Dressing",
					["wowTreeIndex"] = 15,
					["column"] = 2,
					["icon"] = 133675,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						85388, -- [1]
					},
					["name"] = "Throwdown",
					["wowTreeIndex"] = 16,
					["column"] = 3,
					["icon"] = 133542,
					["row"] = 6,
					["ranks"] = 1,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						85730, -- [1]
					},
					["name"] = "Deadly Calm",
					["wowTreeIndex"] = 17,
					["column"] = 2,
					["icon"] = 298660,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12295, -- [1]
						12676, -- [2]
					},
					["name"] = "Tactical Mastery",
					["wowTreeIndex"] = 18,
					["column"] = 1,
					["icon"] = 136031,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12289, -- [1]
						12668, -- [2]
					},
					["name"] = "Improved Hamstring",
					["wowTreeIndex"] = 19,
					["column"] = 4,
					["icon"] = 132316,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [19]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						86655, -- [1]
						12330, -- [2]
					},
					["name"] = "Improved Slam",
					["wowTreeIndex"] = 20,
					["column"] = 1,
					["icon"] = 132340,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [20]
		},
		["info"] = {
			["background"] = "WarriorArms",
			["name"] = "Arms",
			["icon"] = 132355,
		},
	}, -- [1]
	{
		["numtalents"] = 21,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12322, -- [1]
						85741, -- [2]
						85742, -- [3]
					},
					["name"] = "Battle Trance",
					["wowTreeIndex"] = 1,
					["column"] = 2,
					["icon"] = 133074,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12320, -- [1]
						12852, -- [2]
					},
					["name"] = "Cruelty",
					["wowTreeIndex"] = 2,
					["column"] = 3,
					["icon"] = 132292,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						16487, -- [1]
						16489, -- [2]
						16492, -- [3]
					},
					["name"] = "Blood Craze",
					["wowTreeIndex"] = 3,
					["column"] = 1,
					["icon"] = 136218,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12317, -- [1]
						13045, -- [2]
						13046, -- [3]
					},
					["name"] = "Enrage",
					["wowTreeIndex"] = 4,
					["column"] = 3,
					["icon"] = 136224,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12323, -- [1]
					},
					["name"] = "Piercing Howl",
					["wowTreeIndex"] = 5,
					["column"] = 4,
					["icon"] = 136147,
					["row"] = 2,
					["ranks"] = 1,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12321, -- [1]
						12835, -- [2]
					},
					["name"] = "Booming Voice",
					["wowTreeIndex"] = 6,
					["column"] = 2,
					["icon"] = 136075,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12292, -- [1]
					},
					["name"] = "Death Wish",
					["wowTreeIndex"] = 7,
					["column"] = 2,
					["icon"] = 136146,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						46910, -- [1]
					},
					["name"] = "Furious Attacks",
					["wowTreeIndex"] = 8,
					["column"] = 1,
					["icon"] = 236308,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12319, -- [1]
						12971, -- [2]
						12972, -- [3]
					},
					["name"] = "Flurry",
					["wowTreeIndex"] = 9,
					["column"] = 1,
					["icon"] = 132152,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12329, -- [1]
						12950, -- [2]
					},
					["name"] = "Meat Cleaver",
					["wowTreeIndex"] = 10,
					["column"] = 3,
					["icon"] = 460959,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						20502, -- [1]
						20503, -- [2]
					},
					["name"] = "Executioner",
					["wowTreeIndex"] = 11,
					["column"] = 1,
					["icon"] = 135358,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						60970, -- [1]
					},
					["name"] = "Heroic Fury",
					["wowTreeIndex"] = 12,
					["column"] = 4,
					["icon"] = 460958,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						29801, -- [1]
					},
					["name"] = "Rampage",
					["wowTreeIndex"] = 13,
					["column"] = 3,
					["icon"] = 132352,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						46913, -- [1]
						46914, -- [2]
						46915, -- [3]
					},
					["name"] = "Bloodsurge",
					["wowTreeIndex"] = 14,
					["column"] = 2,
					["icon"] = 236306,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						46917, -- [1]
					},
					["name"] = "Titan's Grip",
					["wowTreeIndex"] = 15,
					["column"] = 2,
					["icon"] = 236316,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						81099, -- [1]
					},
					["name"] = "Single-Minded Fury",
					["wowTreeIndex"] = 16,
					["column"] = 3,
					["icon"] = 458974,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						46908, -- [1]
						46909, -- [2]
					},
					["name"] = "Intensify Rage",
					["wowTreeIndex"] = 17,
					["column"] = 4,
					["icon"] = 458971,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						29888, -- [1]
						29889, -- [2]
					},
					["name"] = "Skirmisher",
					["wowTreeIndex"] = 18,
					["column"] = 3,
					["icon"] = 458975,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						85288, -- [1]
					},
					["name"] = "Raging Blow",
					["wowTreeIndex"] = 19,
					["column"] = 2,
					["icon"] = 132215,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [19]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						81913, -- [1]
						81914, -- [2]
					},
					["name"] = "Die by the Sword",
					["wowTreeIndex"] = 20,
					["column"] = 1,
					["icon"] = 135396,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [20]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						61216, -- [1]
						61221, -- [2]
					},
					["name"] = "Rude Interruption",
					["wowTreeIndex"] = 21,
					["column"] = 3,
					["icon"] = 132339,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [21]
		},
		["info"] = {
			["background"] = "WarriorFury",
			["name"] = "Fury",
			["icon"] = 132347,
		},
	}, -- [2]
	{
		["numtalents"] = 20,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						50685, -- [1]
						50686, -- [2]
						50687, -- [3]
					},
					["name"] = "Incite",
					["wowTreeIndex"] = 1,
					["column"] = 1,
					["icon"] = 236309,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12298, -- [1]
						12724, -- [2]
						12725, -- [3]
					},
					["name"] = "Shield Specialization",
					["wowTreeIndex"] = 2,
					["column"] = 1,
					["icon"] = 134952,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12311, -- [1]
						12958, -- [2]
					},
					["name"] = "Gag Order",
					["wowTreeIndex"] = 3,
					["column"] = 4,
					["icon"] = 132453,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12797, -- [1]
						12799, -- [2]
					},
					["name"] = "Improved Revenge",
					["wowTreeIndex"] = 4,
					["column"] = 1,
					["icon"] = 132353,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						29598, -- [1]
						84607, -- [2]
						84608, -- [3]
					},
					["name"] = "Shield Mastery",
					["wowTreeIndex"] = 5,
					["column"] = 2,
					["icon"] = 132359,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12299, -- [1]
						12761, -- [2]
						12762, -- [3]
					},
					["name"] = "Toughness",
					["wowTreeIndex"] = 6,
					["column"] = 2,
					["icon"] = 135892,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12809, -- [1]
					},
					["name"] = "Concussion Blow",
					["wowTreeIndex"] = 7,
					["column"] = 2,
					["icon"] = 132325,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						84614, -- [1]
						84615, -- [2]
					},
					["name"] = "Blood and Thunder",
					["wowTreeIndex"] = 8,
					["column"] = 3,
					["icon"] = 460957,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						12975, -- [1]
					},
					["name"] = "Last Stand",
					["wowTreeIndex"] = 9,
					["column"] = 1,
					["icon"] = 135871,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						86894, -- [1]
						86896, -- [2]
					},
					["name"] = "Heavy Repercussions",
					["wowTreeIndex"] = 10,
					["column"] = 4,
					["icon"] = 134947,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						20243, -- [1]
					},
					["name"] = "Devastate",
					["wowTreeIndex"] = 11,
					["column"] = 3,
					["icon"] = 135291,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						80979, -- [1]
						80980, -- [2]
					},
					["name"] = "Thunderstruck",
					["wowTreeIndex"] = 12,
					["column"] = 1,
					["icon"] = 458976,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						46945, -- [1]
						46949, -- [2]
					},
					["name"] = "Safeguard",
					["wowTreeIndex"] = 13,
					["column"] = 2,
					["icon"] = 236311,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						50720, -- [1]
					},
					["name"] = "Vigilance",
					["wowTreeIndex"] = 14,
					["column"] = 2,
					["icon"] = 236318,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						57499, -- [1]
					},
					["name"] = "Warbringer",
					["wowTreeIndex"] = 15,
					["column"] = 4,
					["icon"] = 236319,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						46951, -- [1]
						46952, -- [2]
						46953, -- [3]
					},
					["name"] = "Sword and Board",
					["wowTreeIndex"] = 16,
					["column"] = 3,
					["icon"] = 236315,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						46968, -- [1]
					},
					["name"] = "Shockwave",
					["wowTreeIndex"] = 17,
					["column"] = 2,
					["icon"] = 236312,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						29593, -- [1]
						29594, -- [2]
					},
					["name"] = "Bastion of Defense",
					["wowTreeIndex"] = 18,
					["column"] = 3,
					["icon"] = 132110,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						84604, -- [1]
						84621, -- [2]
					},
					["name"] = "Hold the Line",
					["wowTreeIndex"] = 19,
					["column"] = 3,
					["icon"] = 236351,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [19]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						80128, -- [1]
						80129, -- [2]
					},
					["name"] = "Impending Victory",
					["wowTreeIndex"] = 20,
					["column"] = 4,
					["icon"] = 132342,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [20]
		},
		["info"] = {
			["background"] = "WarriorProtection",
			["name"] = "Protection",
			["icon"] = 132341,
		},
	}, -- [3]
}

talents.deathknight = {
	{
		["numtalents"] = 20,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						50365, -- [1]
						50371, -- [2]
					},
					["name"] = "Improved Blood Presence",
					["wowTreeIndex"] = 1,
					["column"] = 3,
					["icon"] = 135770,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						48978, -- [1]
						49390, -- [2]
						49391, -- [3]
					},
					["name"] = "Bladed Armor",
					["wowTreeIndex"] = 2,
					["column"] = 3,
					["icon"] = 135067,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						48979, -- [1]
						49483, -- [2]
					},
					["name"] = "Butchery",
					["wowTreeIndex"] = 3,
					["column"] = 1,
					["icon"] = 132455,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						48982, -- [1]
					},
					["name"] = "Rune Tap",
					["wowTreeIndex"] = 4,
					["column"] = 2,
					["icon"] = 237529,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49004, -- [1]
						49508, -- [2]
						49509, -- [3]
					},
					["name"] = "Scent of Blood",
					["wowTreeIndex"] = 5,
					["column"] = 2,
					["icon"] = 132284,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						52284, -- [1]
						81163, -- [2]
						81164, -- [3]
					},
					["name"] = "Will of the Necropolis",
					["wowTreeIndex"] = 6,
					["column"] = 1,
					["icon"] = 132094,
					["row"] = 5,
					["ranks"] = 3,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49027, -- [1]
						49542, -- [2]
					},
					["name"] = "Blood Parasite",
					["wowTreeIndex"] = 7,
					["column"] = 2,
					["icon"] = 136211,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49028, -- [1]
					},
					["name"] = "Dancing Rune Weapon",
					["wowTreeIndex"] = 8,
					["column"] = 2,
					["icon"] = 135277,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49182, -- [1]
						49500, -- [2]
						49501, -- [3]
					},
					["name"] = "Blade Barrier",
					["wowTreeIndex"] = 9,
					["column"] = 2,
					["icon"] = 132330,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						55233, -- [1]
					},
					["name"] = "Vampiric Blood",
					["wowTreeIndex"] = 10,
					["column"] = 3,
					["icon"] = 136168,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						53137, -- [1]
						53138, -- [2]
					},
					["name"] = "Abomination's Might",
					["wowTreeIndex"] = 11,
					["column"] = 4,
					["icon"] = 236310,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						62905, -- [1]
						62908, -- [2]
						81138, -- [3]
					},
					["name"] = "Improved Death Strike",
					["wowTreeIndex"] = 12,
					["column"] = 2,
					["icon"] = 237517,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49042, -- [1]
						49786, -- [2]
						49787, -- [3]
					},
					["name"] = "Toughness",
					["wowTreeIndex"] = 13,
					["column"] = 3,
					["icon"] = 135892,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49222, -- [1]
					},
					["name"] = "Bone Shield",
					["wowTreeIndex"] = 14,
					["column"] = 2,
					["icon"] = 458717,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49219, -- [1]
						49627, -- [2]
						49628, -- [3]
					},
					["name"] = "Blood-Caked Blade",
					["wowTreeIndex"] = 15,
					["column"] = 1,
					["icon"] = 132109,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						81125, -- [1]
						81127, -- [2]
					},
					["name"] = "Sanguine Fortitude",
					["wowTreeIndex"] = 16,
					["column"] = 1,
					["icon"] = 458719,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						81131, -- [1]
						81132, -- [2]
					},
					["name"] = "Scarlet Fever",
					["wowTreeIndex"] = 17,
					["column"] = 3,
					["icon"] = 458735,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						81135, -- [1]
						81136, -- [2]
					},
					["name"] = "Crimson Scourge",
					["wowTreeIndex"] = 18,
					["column"] = 3,
					["icon"] = 237513,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						85793, -- [1]
						85794, -- [2]
					},
					["name"] = "Hand of Doom",
					["wowTreeIndex"] = 19,
					["column"] = 4,
					["icon"] = 458966,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [19]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						94553, -- [1]
						94555, -- [2]
					},
					["name"] = "Improved Blood Tap",
					["wowTreeIndex"] = 20,
					["column"] = 1,
					["icon"] = 237515,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [20]
		},
		["info"] = {
			["background"] = "DeathKnightBlood",
			["name"] = "Blood",
			["icon"] = 135770,
		},
	}, -- [1]
	{
		["numtalents"] = 20,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49137, -- [1]
						49657, -- [2]
					},
					["name"] = "Endless Winter",
					["wowTreeIndex"] = 1,
					["column"] = 4,
					["icon"] = 136223,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51271, -- [1]
					},
					["name"] = "Pillar of Frost",
					["wowTreeIndex"] = 2,
					["column"] = 2,
					["icon"] = 458718,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						81327, -- [1]
						81328, -- [2]
					},
					["name"] = "Brittle Bones",
					["wowTreeIndex"] = 3,
					["column"] = 4,
					["icon"] = 460686,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49149, -- [1]
						50115, -- [2]
					},
					["name"] = "Chill of the Grave",
					["wowTreeIndex"] = 4,
					["column"] = 2,
					["icon"] = 135849,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49184, -- [1]
					},
					["name"] = "Howling Blast",
					["wowTreeIndex"] = 5,
					["column"] = 2,
					["icon"] = 135833,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49188, -- [1]
						56822, -- [2]
						59057, -- [3]
					},
					["name"] = "Rime",
					["wowTreeIndex"] = 6,
					["column"] = 1,
					["icon"] = 135840,
					["row"] = 4,
					["ranks"] = 3,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49024, -- [1]
						49538, -- [2]
					},
					["name"] = "Merciless Combat",
					["wowTreeIndex"] = 7,
					["column"] = 1,
					["icon"] = 135294,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49203, -- [1]
					},
					["name"] = "Hungering Cold",
					["wowTreeIndex"] = 8,
					["column"] = 2,
					["icon"] = 135152,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49226, -- [1]
						50137, -- [2]
						50138, -- [3]
					},
					["name"] = "Nerves of Cold Steel",
					["wowTreeIndex"] = 9,
					["column"] = 3,
					["icon"] = 132147,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						50384, -- [1]
						50385, -- [2]
					},
					["name"] = "Improved Frost Presence",
					["wowTreeIndex"] = 10,
					["column"] = 3,
					["icon"] = 135773,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49455, -- [1]
						50147, -- [2]
						91145, -- [3]
					},
					["name"] = "Runic Power Mastery",
					["wowTreeIndex"] = 11,
					["column"] = 1,
					["icon"] = 135728,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						55061, -- [1]
						55062, -- [2]
					},
					["name"] = "Icy Reach",
					["wowTreeIndex"] = 12,
					["column"] = 2,
					["icon"] = 135859,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51123, -- [1]
						51127, -- [2]
						51128, -- [3]
					},
					["name"] = "Killing Machine",
					["wowTreeIndex"] = 13,
					["column"] = 3,
					["icon"] = 135305,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51468, -- [1]
						51472, -- [2]
						51473, -- [3]
					},
					["name"] = "Annihilation",
					["wowTreeIndex"] = 14,
					["column"] = 1,
					["icon"] = 135609,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49039, -- [1]
					},
					["name"] = "Lichborne",
					["wowTreeIndex"] = 15,
					["column"] = 2,
					["icon"] = 136187,
					["row"] = 2,
					["ranks"] = 1,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						55610, -- [1]
					},
					["name"] = "Improved Icy Talons",
					["wowTreeIndex"] = 16,
					["column"] = 3,
					["icon"] = 252994,
					["row"] = 4,
					["ranks"] = 1,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						50040, -- [1]
						50041, -- [2]
					},
					["name"] = "Chilblains",
					["wowTreeIndex"] = 17,
					["column"] = 1,
					["icon"] = 135864,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						65661, -- [1]
						66191, -- [2]
						66192, -- [3]
					},
					["name"] = "Threat of Thassarian",
					["wowTreeIndex"] = 18,
					["column"] = 1,
					["icon"] = 132148,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						81330, -- [1]
						81332, -- [2]
						81333, -- [3]
					},
					["name"] = "Might of the Frozen Wastes",
					["wowTreeIndex"] = 19,
					["column"] = 3,
					["icon"] = 135303,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [19]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51983, -- [1]
						51986, -- [2]
					},
					["name"] = "On a Pale Horse",
					["wowTreeIndex"] = 20,
					["column"] = 3,
					["icon"] = 132264,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [20]
		},
		["info"] = {
			["background"] = "DeathKnightFrost",
			["name"] = "Frost",
			["icon"] = 135773,
		},
	}, -- [2]
	{
		["numtalents"] = 20,
		["talents"] = {
			{
				["info"] = {
					["talentRankSpellIds"] = {
						48962, -- [1]
						49567, -- [2]
						49568, -- [3]
					},
					["name"] = "Virulence",
					["wowTreeIndex"] = 1,
					["column"] = 2,
					["icon"] = 136126,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [1]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49036, -- [1]
						49562, -- [2]
						81334, -- [3]
					},
					["name"] = "Epidemic",
					["wowTreeIndex"] = 2,
					["column"] = 3,
					["icon"] = 136207,
					["row"] = 1,
					["ranks"] = 3,
				},
			}, -- [2]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49194, -- [1]
					},
					["name"] = "Unholy Blight",
					["wowTreeIndex"] = 3,
					["column"] = 1,
					["icon"] = 136132,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [3]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49206, -- [1]
					},
					["name"] = "Summon Gargoyle",
					["wowTreeIndex"] = 4,
					["column"] = 2,
					["icon"] = 458967,
					["row"] = 7,
					["ranks"] = 1,
				},
			}, -- [4]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49224, -- [1]
						49610, -- [2]
						49611, -- [3]
					},
					["name"] = "Magic Suppression",
					["wowTreeIndex"] = 5,
					["column"] = 2,
					["icon"] = 136120,
					["row"] = 4,
					["ranks"] = 3,
				},
			}, -- [5]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						50391, -- [1]
						50392, -- [2]
					},
					["name"] = "Improved Unholy Presence",
					["wowTreeIndex"] = 6,
					["column"] = 3,
					["icon"] = 135775,
					["row"] = 5,
					["ranks"] = 2,
				},
			}, -- [6]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49588, -- [1]
						49589, -- [2]
					},
					["name"] = "Unholy Command",
					["wowTreeIndex"] = 7,
					["column"] = 1,
					["icon"] = 237532,
					["row"] = 1,
					["ranks"] = 2,
				},
			}, -- [7]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51099, -- [1]
						51160, -- [2]
					},
					["name"] = "Ebon Plaguebringer",
					["wowTreeIndex"] = 8,
					["column"] = 2,
					["icon"] = 132095,
					["row"] = 6,
					["ranks"] = 2,
				},
			}, -- [8]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51459, -- [1]
						51462, -- [2]
					},
					["name"] = "Runic Corruption",
					["wowTreeIndex"] = 9,
					["column"] = 1,
					["icon"] = 252272,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [9]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51745, -- [1]
						51746, -- [2]
						91323, -- [3]
					},
					["name"] = "Rage of Rivendare",
					["wowTreeIndex"] = 10,
					["column"] = 3,
					["icon"] = 135564,
					["row"] = 4,
					["ranks"] = 3,
				},
			}, -- [10]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						63560, -- [1]
					},
					["name"] = "Dark Transformation",
					["wowTreeIndex"] = 11,
					["column"] = 4,
					["icon"] = 342913,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [11]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						51052, -- [1]
					},
					["name"] = "Anti-Magic Zone",
					["wowTreeIndex"] = 12,
					["column"] = 2,
					["icon"] = 237510,
					["row"] = 5,
					["ranks"] = 1,
				},
			}, -- [12]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						55666, -- [1]
						55667, -- [2]
					},
					["name"] = "Desecration",
					["wowTreeIndex"] = 13,
					["column"] = 1,
					["icon"] = 136199,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [13]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						81338, -- [1]
						81339, -- [2]
					},
					["name"] = "Resilient Infection",
					["wowTreeIndex"] = 14,
					["column"] = 2,
					["icon"] = 132102,
					["row"] = 2,
					["ranks"] = 2,
				},
			}, -- [14]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49016, -- [1]
					},
					["name"] = "Unholy Frenzy",
					["wowTreeIndex"] = 15,
					["column"] = 2,
					["icon"] = 136224,
					["row"] = 3,
					["ranks"] = 1,
				},
			}, -- [15]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						49018, -- [1]
						49529, -- [2]
						49530, -- [3]
					},
					["name"] = "Sudden Doom",
					["wowTreeIndex"] = 16,
					["column"] = 3,
					["icon"] = 136181,
					["row"] = 6,
					["ranks"] = 3,
				},
			}, -- [16]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						48963, -- [1]
						49564, -- [2]
						49565, -- [3]
					},
					["name"] = "Morbidity",
					["wowTreeIndex"] = 17,
					["column"] = 4,
					["icon"] = 136144,
					["row"] = 2,
					["ranks"] = 3,
				},
			}, -- [17]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						48965, -- [1]
						49571, -- [2]
						49572, -- [3]
					},
					["name"] = "Shadow Infusion",
					["wowTreeIndex"] = 18,
					["column"] = 4,
					["icon"] = 136188,
					["row"] = 3,
					["ranks"] = 3,
				},
			}, -- [18]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						91316, -- [1]
						91319, -- [2]
					},
					["name"] = "Contagion",
					["wowTreeIndex"] = 19,
					["column"] = 3,
					["icon"] = 136182,
					["row"] = 3,
					["ranks"] = 2,
				},
			}, -- [19]
			{
				["info"] = {
					["talentRankSpellIds"] = {
						96269, -- [1]
						96270, -- [2]
					},
					["name"] = "Death's Advance",
					["wowTreeIndex"] = 20,
					["column"] = 1,
					["icon"] = 237561,
					["row"] = 4,
					["ranks"] = 2,
				},
			}, -- [20]
		},
		["info"] = {
			["background"] = "DeathKnightUnholy",
			["name"] = "Unholy",
			["icon"] = 135775,
		},
	}, -- [3]
}


function NRC:getTalentData(class)
	class = string.lower(class);
	return talents[class];
end

function NRC:getTabData(class)
	class = string.lower(class);
	if (talents[class]) then
		local tabData = {};
		for k, v in ipairs(talents[class]) do
			tabData[k] = {
				numTalents = v.numtalents;
			};
		end
		return tabData;
	end
end


---Talent data exporter addon I made when cata started.

--_, NTE = ...;
--local talentData = {};
--Created by Venomisto (Novaspark-Arugal)
--Exports the same data structure as earlier versions of the Talented addon.
--Modify the NTE:generateTalentData() func to suit your data structure needs.

--Preloaded with cata talents for all classes.

--If you want a diff expansion:
--Download Talent.csv from wago tools, run this lib https://github.com/geoffleyland/lua-csv.
--Paste the data table below.

--[[
local csv = require("lua-csv/lua/csv")
local f = csv.open("Talent.csv")
print("local data = {")
for row in f:lines() do
    local talentID = row[1];
    local tier1 = row[14];
    local tier2 = row[15];
    local tier3 = row[16];
    local tier4 = row[17];
    local tier5 = row[18];
    print("\t[" .. talentID .. "]={" .. tier1 .. "," .. tier2 .. "," .. tier3 .. "," .. tier4 .. "," .. tier5 .. "},");
end
print("};")
]]

--Cata data.
--[talentID] = {tier1,tier2,tier3,tier4,tier5}
--[[local data = {
	
};

local function updateSavedVariables()
	local count, spellIDs = 0, 0;
	for tab, tabData in pairs(talentData) do
		if (tabData.talents) then
			for k, v in pairs(tabData.talents) do
				count = count + 1;
				if (v.info.talentRankSpellIds) then
					spellIDs = spellIDs + 1;
				end
			end
		end
	end
	NTEdatabase = talentData;
	print("Talent DB exported - Talents recorded with SpellID entries:", spellIDs .. "/" .. count);
end

function NTE:generateTalentData()
	talentData = {};
	for tab = 1, GetNumTalentTabs() do
		talentData[tab] = {};
		talentData[tab].talents = {};
		local count = 0;
		for index = 1, GetNumTalents(tab) do
			local name, icon, row, column, rank, maxRank, isExceptional, available, previewRank, previewAvailable, _,  talentID  = GetTalentInfo(tab, index);
			if (name) then
				talentData[tab].talents[index] = {};
				talentData[tab].talents[index].info = {
					row = row,
					icon = icon,
					ranks = maxRank,
					wowTreeIndex = index,
					column = column,
					name = name,
				};
				if (data[talentID]) then
					local t = {};
					for k, v in pairs(data[talentID]) do
						--Remove 0 entries.
						if (v ~= 0) then
							tinsert(t, v);
						end
					end
					talentData[tab].talents[index].info.talentRankSpellIds = t;
				end
			end
			count = count + 1;
		end
		talentData[tab].numtalents = count;
		local _, name, _, icon, _, background = GetTalentTabInfo(tab);
		talentData[tab].info = {
			background = background,
			name = name,
			icon = icon,
		}
	end
	updateSavedVariables();
end

local f = CreateFrame("Frame");
f:RegisterEvent("PLAYER_ENTERING_WORLD");
f:SetScript("OnEvent", function(self, event, ...)
	NTE:generateTalentData();
	f:UnregisterEvent("PLAYER_ENTERING_WORLD");
end)]]