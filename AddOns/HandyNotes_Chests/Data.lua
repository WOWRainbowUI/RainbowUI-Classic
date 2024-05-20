local _, ns = ...
local points = ns.points

ns.bestPet = "Arguably the best pet for a hunter is a cat.\n\nHere is a nice range of rares/elites to tame:\n\n"
			.."Mokwa     - Level 7 west of Bloodhoof, Mulgore\nRaluk     - Level 7 in the Echo Isles, Durotar\n"
			.."Duskstalker     - Level 9 in Teldrassil\nThe Rake     - Level 10 east of Thunderbluff. 30+ mins respawn\n"
			.."Dishu     - Level 13 in northern Barrens\nShadowclaw     - Level 13 north of Auberdine, Darkshore\n"
			.."Humar     - Level 23 Ratchet, The Barrens. 8+ hours respawn\n"
			.."Araga     - Level 35 in Alterac. 2-3 day respawn\nBroken Tooth     - Level 37 in the Badlands\n"
			.."Bhag'thera     - Level 40 elite in the Stranglethorn\nKing Bangalash     - Level 43 elite in the Stranglethorn\n\n"
			.."For those who love Wind Serpents... Son of Hakkar of course\nand you can find him in Zul'Gurub. Level 60 Elite and of\n"
			.."course the Young Pridewings (only) in Stonetalon\nMountains as a co-reward with gaining Kill Command"
ns.chest1 = "* Level 10 Waylaid supplies\n* Level 10 Mage Scrolls\n* 5 x Profession recipes\n* Whites, Greys"
ns.chest2 = "* Level 10 Waylaid supplies\n* Level 10 Mage Scrolls\n* 13 x Profession recipes\n* Greens, Whites, Greys"
ns.chest3 = "* Level 20 Waylaid supplies\n* Level 20 Mage Scrolls\n* 10 x Profession recipes\n* Greens, Greys"
ns.cozySleepingBag = "Step One: " ..( ( ns.faction == "Alliance" ) and "Go to Alexston Farmstead in Westfall" or
			"Go to the burnt tower, road south of Taurajo, The Barrens" ) .."\nIn the rubble search for the Burnt-Out Remains.\n\n"
			.."Step Two: " ..( ( ns.faction == "Alliance" ) and "Go to the burnt tower, road south of Taurajo, The Barrens." or
			"Go to Alexston Farmstead in Westfall" )
			.."\nIn the rubble search for the Burnt-Out Remains.\nPickup the next quest from a nearby nailed plank.\n\n"
			.."Step Three: Head to Stonetalon Mountains, looking for an\nabandoned camp. It's along a path north-east "
			.."of Sun Rock Retreat.\nThere's Pocket Litter there, atop a box.\n\n"
			.."Step Four: Go north, straight up a hill, looking for A Mound of Dirt.\n"
			.."Click to complete \"Scramble\". Accept \"Wet Job\".\n\n"
			.."Step Five: Loch Modan, on a ledge of the dam that borders the\nWetlands. Click on the eagle figurine to complete "
			.."and begin quests.\n\n"
			.."Step Six: Climb the Thoradin Wall, bordering Hillsbrad and Arathi\nHighlands. Climb up from the Hillsbrad side "
			.."via a broken cart.\n Keep climbing and you'll find a hall and a bag.\n\n"
			.."Note: This quest chain rewards you with 8 pieces of Student\nFodder. Currently the only way to obtain this rested XP boon!"
ns.felPortals = "Used by the Warlock Explorer Imp,\nMages for their Balefire Bolt rune, etc"
ns.gnomeregan = "(1) Loot a Grime-Encrusted Salvage from any\nGnomer trash or the Dark Iron Ambassador.\n\n"
			.."(2) At the Dormitory, insert it plus 30s into the\nSalvagematic 9000. You need to be L40.\n\n"
			.."Ziri nearby offers to help with repairs, with you\nproviding 10 x mithril bars (AH), 5 x Greater\n"
			.."Mystic Essence (AH), 3 x GG12-082 Cartridge Fuse\n(mechanical Gnomeregan trash), and a Pristine G-7\n"
			.."C.O.R.E. Processor, outlined below:\n\n(3) Kill Techbot (L40e) at the Gnomer entrance\n"
			.."for a Corroded processor. You're now on the third\nquest. Speak to Ziri.\n\n"
			.."(4) Go to Scooty in Booty Bay. The 4th quest has\nyou collecting beacons from Desolace, Dustwallow\n"
			.."Marsh, Feralas and Tanaris.\n\n(5) Back at BB, Scooty has you teleported to\n"
			.."Wirdal Wondergear in Feralas. Note: His\nAutomations will knock you off his base if you\n"
			.."so much as sneeze at them. In any case a hearth\nset to the Bay is a win.\n\n"
			.."(6) Farm the Spent Voidcore from naga mobs, and\nthe Mote of Darkness from a Shadowy Figure that\n"
			.."spawns randomly from any mob that awards you XP.\n\n(7) Return to Ziri in Gnomer for your rewards"
ns.gnomereganTitle = "Gnomeregan Gear Guide"
ns.nightmare = "(1) At L50, enter the Ashenvale Emerald Dream portal. Go south to the back of the\n"
			.."Warsong Lumber Camp. Continue until you receive a \"Aura of Paralyzing Dread debuff.\"\n"
			.."Exit the dream and talk to Field Captain Hannalah for the first quest.\n\n"
			.."(2) Speak to Loganaar in Moonglade. He'll directly send you to Itharius in the south-\n"
			.."west corner of the Swamp of Sorrows.\n\n"
			.."(3) Within Temple of Atal'Hakkar / Sunken Temple you must progress as far as the Lair\n"
			.."of the Chosen. \"Going Under\" will now be satisfied. Later return to Itharius.\n\n"
			.."(4) You're now sent back to Loganaar in Moonglade. Hand in and wait for the Shadowy\n"
			.."Figure to spawn. Speak to her and pickup the next quest and the next too.\n\n"
			.."(5) Next port of call is Booty Bay in Stranglethorn Vale. An Injured Gnome will send\n"
			.."you to an Itty Bitty Murloc on Jaguero Isle. Next to him is a Small Burrow. Retrieve\n"
			.."the Vambraces and head to Moonglade.\n\n"
			.."(6) The Shadowy Figure has a new quest for you. Return to Ashenvale, equip the\n"
			.."Vambraces prior to entering the dream. Note that she has altered them! Go to your\n"
			.."previous \"debuff\" location. A Nightmare Amalgamation pats the area. Kill it, but\n"
			.."you'll need a 5 man group. Hard hits. It drops the purple Mantle of Nightmares!!!\n\n"
			.."(7) Head back to the Shadowy Figure. She's now your go-to for Phase 3 Gear!"   
ns.nightmareTitle = "Nightmare Gear Guide"
ns.twoMeditate = "At level 17 go to The Park in Stormwind (Human /\nDwarf), Temple of the Moon, Darnassus (Night Elf),\n"
			.."War Quarter, Undercity (All Horde) for a RACIAL\nquest from a Priest trainer.\n\n"
			.."Ultimately you'll be able to share multiple Meditation\nbuffs across races (and factions too. Bug?).\n\n"
			.."Player 1: /kneel; Player 2: /pray"
ns.twoMeditateTitle = "Priest Two Meditations"
ns.voidTouchedTitle = "Void Touched Gear Guide"
ns.voidTouched = "(1) Reach level 25 and 100 in one of\nBlacksmithing, Leatherworking or Tailoring.\n\n"
			.."(2) Purchase an Elixir of Coalesced Regret from the AH.\nAlchemists may purchase this recipe from Zixil, on the path\n"
			.."between Tarren Mill and Southshore; Kzixx on the path from\nRedwood / Elwynn Forest down to Darkshire.\n\n"
			.."(3) Find the Dead Twilight Cultist at the Zoram Strand,\nAshenvale. Drink the Elixir and talk to him.\n\n"
			.."(4) In Blackfathom Deeps, defeat the 2nd boss, Ghamoo-Ra.\nInteract with the corpse of Old Serrakis.\n\n"
			.."(5) At Ratchet accept the quest from N'ora Anyheart. Strange\nDust x 40, Greater Magic Essence x 5, Small Glimmer Shard x 2,\n"
			.."Handful of Shifting Scales, 5 gold. The Scales drop off Old\nSerrakis. Other stuff off the AH.\n\n"
			.."(6) With her Talisman reward, return to BFD and go to Kelris'\nunderwater cavern. Loot the Artisan's Chest. \"The Box\"\n"
			.."magically appears in your bags.\n\n(7) To Alterac Mountains. Use the pillar to destroy The Box.\n\n"
			.."(8) A Shadowy Figure spawns. Interact. You MUST SELECT THE\n\"FINE, SHOW ME\" option.\n\n"
			.."(9) Gratz. You now have every Phase 1 recipe. Likely BiS!\n\n"
			.."(Repeat from (6) to obtain another shard)"


-- Icons:	1 -3 	Chest
--			4		Void-Touched
--			5		Best Pets
--			6		Cozy Sleeping Bag
--			7		Fel Portals
--			8		Priest L17/18 Dual Meditation
--			9		Gnomeregan Gear
--			10		Nightmare Gear
--			11		Nightmare Bloom / Seed


--=======================================================================================================
--
-- EASTERN KINGDOMS
--
--=======================================================================================================

points[ 1416 ] = { -- Alterac Mountains
	[31007260] = { npc=14222, name="Araga", title="Best Hunter Pets", icon=5, class="HUNTER", guide=ns.bestPet },
	[31408480] = { npc=14222, name="Araga", title="Best Hunter Pets", icon=5, class="HUNTER", guide=ns.bestPet, continent=true },
	[38808980] = { npc=14222, name="Araga", title="Best Hunter Pets", icon=5, class="HUNTER", guide=ns.bestPet },
}

points[ 1417 ] = { -- Arathi Highlands
	[22502420] = { name="Hastily Rolled-Up Stachel", title="Cozy Sleeping Bag", icon=6, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" }, continent=true,
						tip="Step Six. See the Hillsbrad map\nfor where to begin this step" },
}

points[ 1418 ] = { -- Badlands
	[45203520] = { npc=2850, name="Broken Tooth", title="Best Hunter Pets", icon=5, class="HUNTER", guide=ns.bestPet },
	[54801480] = { npc=2850, name="Broken Tooth", title="Best Hunter Pets", icon=5, class="HUNTER", guide=ns.bestPet, continent=true },
	[63003020] = { npc=2850, name="Broken Tooth", title="Best Hunter Pets", icon=5, class="HUNTER", guide=ns.bestPet },
}

points[ 1419 ] = { -- Blasted Lands
	[35005480] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals },
	[41303350] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals },
	[43602530] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals },
	[46603910] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals },
	[48804830] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals },
	[56203660] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals },
	[60204640] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals },
	[62003920] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals, continent=true },
}

points[ 1430 ] = { -- Deadwind Pass
}

points[ 1426 ] = { -- Dun Morogh
	[21705200] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[23105200] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[23305420] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[23505240] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[26005120] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[26104120] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[26803640] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[34005110] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[36104010] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[38704330] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[39204650] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[40104810] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[41004890] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[41504440] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[42003590] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[42804710] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[43504920] = { title="Battered Chest", icon=1, tip=ns.chest1, continent=true },
	[66905960] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[67506070] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[68905940] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[71005900] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[71205050] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[71605180] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[72104990] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[73005350] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[74606170] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[74805650] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[76005810] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[77906190] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[79305870] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[79705470] = { title="Battered Chest", icon=1, tip=ns.chest1 },
}

points[ 1431 ] = { -- Duskwood
	[18002560] = { title=ns.twoMeditateTitle, name="Dire Wolf (Various)", icon=8, class="PRIEST", level=17, guide=ns.twoMeditate,
					tip="Collect the Paws off these mobs. For the first quest", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },
	[37602240] = { title=ns.twoMeditateTitle, name="Dire Wolf (Various)", icon=8, class="PRIEST", level=17, guide=ns.twoMeditate,
					tip="Collect the Paws off these mobs. For the first quest", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },
	[55406160] = { title=ns.twoMeditateTitle, name="Dire Wolf (Various)", icon=8, class="PRIEST", level=17, guide=ns.twoMeditate,
					tip="Collect the Paws off these mobs. For the first quest", faction="Alliance", continent=true,
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },
	[59001960] = { title=ns.twoMeditateTitle, name="Dire Wolf (Various)", icon=8, class="PRIEST", level=17, guide=ns.twoMeditate,
					tip="Collect the Paws off these mobs. For the first quest", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },
	[68203400] = { title=ns.twoMeditateTitle, name="Dire Wolf (Various)", icon=8, class="PRIEST", level=17, guide=ns.twoMeditate,
					tip="Collect the Paws off these mobs. For the first quest", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },

	[81801980] = { npc=3134, name="Kzixx", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
					tip="Alchemists may purchase an Elixir\nof Coalesced Regret recipe",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" }, continent=true },
}

points[ 1429 ] = { -- Elwynn Forest
	[12463405] = { title=ns.twoMeditateTitle, npc=11397, name="Nara Meideros", icon=8, class="PRIEST", level=17, 
					guide=ns.twoMeditate, tip="Begin here", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },
	[19392475] = { title=ns.twoMeditateTitle, npc=376, name="High Priestess Laurena", icon=8, class="PRIEST", level=17, 
					guide=ns.twoMeditate, tip="Finish the second quest here. /kneel always!", faction="Alliance",
					quest={ ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race=="Night elf") and 78193 or 0 ) }, 
					questName={ ( ( ns.race == "Night elf" ) and "Secrets of the Light (1)" or "" ), 
							( ( ns.race == "Night Elf") and "Secrets of the Light (2)" or "" ) }, continent=true, },

	[23805890] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[24409350] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[26049211] = { title="Battered Chest", icon=1, tip=ns.chest1 }, -- V
	[27808840] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[30806480] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[36206580] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[37908330] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[38208200] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[40307750] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[40807760] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[41605280] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[41807800] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[41808150] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[47608647] = { title="Battered Chest", icon=1, tip=ns.chest1 }, -- V
	[48008710] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[48608790] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[52505900] = { title="Battered Chest", icon=1, tip=ns.chest1, continent=true },
	[54306670] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[55606700] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[56706680] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[61004910] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[61304970] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[61704680] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[62204800] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[64805730] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[65004130] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[65005630] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[66104070] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[68404460] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[69903880] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[71107770] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[71108040] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[71507670] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[74005000] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[75508520] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[76508650] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[77308520] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[78205750] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[79305710] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[79405450] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[79505710] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[79705530] = { title="Battered Chest", icon=1, tip=ns.chest1 },
}

points[ 1424 ] = { -- Hillsbrad Foothills
	[33003600] = { title=ns.twoMeditateTitle, name="Hillsbrad mobs (Various)", icon=8, class="PRIEST", level=18,
					faction="Horde", guide=ns.twoMeditate, continent=true,
					quest={ ( ( ns.race == "Undead" ) and 78198 or 0 ), ( ( ns.race == "Undead" ) and 78199 or 0 ) }, 
					questName={ ( ( ns.race == "Undead" ) and "Secrets of the Loa (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of the Loa (2)" or "" ) } },
	[35204700] = { title=ns.twoMeditateTitle, name="Hillsbrad mobs (Various)", icon=8, class="PRIEST", level=18,
					faction="Horde", guide=ns.twoMeditate,
					quest={ ( ( ns.race == "Undead" ) and 78198 or 0 ), ( ( ns.race == "Undead" ) and 78199 or 0 ) }, 
					questName={ ( ( ns.race == "Undead" ) and "Secrets of the Loa (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of the Loa (2)" or "" ) } },

	[50514971] = { npc=3537, name="Zixil", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
					tip="Alchemists may purchase an Elixir\nof Coalesced Regret recipe",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" } },
	[52714131] = { npc=3537, name="Zixil", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
					tip="Alchemists may purchase an Elixir\nof Coalesced Regret recipe",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" } },
	[55511881] = { npc=3537, name="Zixil", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
					tip="Alchemists may purchase an Elixir\nof Coalesced Regret recipe",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" } },
	[55612661] = { npc=3537, name="Zixil", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
					tip="Alchemists may purchase an Elixir\nof Coalesced Regret recipe",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" }, continent=true },
	[55613461] = { npc=3537, name="Zixil", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
					tip="Alchemists may purchase an Elixir\nof Coalesced Regret recipe",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" } },
	[60712021] = { npc=3537, name="Zixil", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
					tip="Alchemists may purchase an Elixir\nof Coalesced Regret recipe",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" } },
	[88557351] = { name="Shadowy Figure / Shard of Pure Light", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
					tip="Go via Ravenholdt Manor" },

	[87304960] = { name="Old Broken Cart", title="Cozy Sleeping Bag", icon=6, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" }, continent=true,
						tip="Step Six. Begin Step six right here,\nnot from the Arathi Highlands side" },
}

points[ 1455 ] = { -- Ironforge
}

points[ 1432 ] = { -- Loch Modan
	[24803070] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[26004930] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[26504420] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[26905760] = { title="Battered Chest", icon=2, tip=ns.chest2, continent=true },
	[27908330] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[28308740] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[31507550] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[34402710] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[34509000] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[34609110] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[34908250] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[35102680] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[35602480] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[35701650] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[35909370] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[36008460] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[36302350] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[37608650] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[37701610] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[39801240] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[48002090] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[49002970] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[54502600] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[48103950] = { title="Battered Chest", icon=3, tip=ns.chest3, continent=true },
	[59201360] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[68006590] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[68301860] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[68806250] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[69302280] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[69806630] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[73306440] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[75502500] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[77001440] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[77701840] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[79501610] = { title="Battered Chest", icon=3, tip=ns.chest3 },

	[49501280] = { name="Carved Figurine", title="Cozy Sleeping Bag", icon=6, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" }, tip="Step Five", continent=true },
}

points[ 1433 ] = { -- Redridge Mountains
	[14506170] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[14906430] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[17106360] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[17201800] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[19802150] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[20501390] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[21103620] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[21701930] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[23402700] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[27302140] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[27902850] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[28008400] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[28202840] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[29608450] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[32308300] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[34102570] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[39003180] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[43807090] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[47407060] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[52304670] = { title="Battered Chest", icon=3, tip=ns.chest3, continent=true },
	[56005740] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[14506170] = { title="Battered Chest", icon=3, tip=ns.chest3 },

	[29803040] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[30802180] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[42801680] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[71408350] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[71605830] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[79003350] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[79603280] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[79007300] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[81606060] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[83104450] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[83204560] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[86305250] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[86605300] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals, continent=true },
}

points[ 1421 ] = { -- Silverpine Forest
	[36502930] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[43502250] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[43503170] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[44107170] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[44702050] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[44902350] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[45307500] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[45405420] = { title="Battered Chest", icon=2, tip=ns.chest2, continent=true  },
	[46007150] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[46305480] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[47207380] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[47705550] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[48302450] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[55801960] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[56202760] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[59101810] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[59901750] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[60801630] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[64801210] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[66301300] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[64504970] = { title="Battered Chest", icon=3, tip=ns.chest3, continent=true },
	[65004200] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[65202320] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[65802340] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[66804550] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[67502540] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[67802420] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[77603100] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[80202850] = { title="Battered Chest", icon=3, tip=ns.chest3 },

	[38801840] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals, continent=true },
	[38802340] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[44202520] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[44602550] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[45503180] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[49801340] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[50205680] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[50206520] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[54403580] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[55602460] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[60800700] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
}

points[ 1453 ] = { -- Stormwind City
	[20685007] = { title=ns.twoMeditateTitle, npc=11397, name="Nara Meideros", icon=8, class="PRIEST", level=17, 
					guide=ns.twoMeditate, tip="Begin here", faction="Alliance", continent=true,
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },
	[38582606] = { title=ns.twoMeditateTitle, npc=376, name="High Priestess Laurena", icon=8, class="PRIEST", level=17,
					guide=ns.twoMeditate, tip="Finish the second quest here. /kneel always!", faction="Alliance",
					quest={ ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race=="Night elf") and 78193 or 0 ) }, 
					questName={ ( ( ns.race == "Night elf" ) and "Secrets of the Light (1)" or "" ), 
							( ( ns.race == "Night Elf") and "Secrets of the Light (2)" or "" ) } },
}

points[ 1434 ] = { -- Stranglethorn Vale
	[38603560] = { npc=731, name="King Bangalash", title="Best Hunter Pets", icon=5, class="HUNTER", guide=ns.bestPet, continent=true },
	[47602880] = { npc=728, name="Bhag'thera", title="Best Hunter Pets", icon=5, class="HUNTER", guide=ns.bestPet },
	[49002060] = { npc=728, name="Bhag'thera", title="Best Hunter Pets", icon=5, class="HUNTER", guide=ns.bestPet },
	[49802460] = { npc=728, name="Bhag'thera", title="Best Hunter Pets", icon=5, class="HUNTER", guide=ns.bestPet },

	[27507740] = { title=ns.gnomereganTitle, npc=7853, name="Scooty", icon=9, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					questName={ "The Salvagematic 9000!", "Salvaging the Salvagematic", "The Corroded Core",
						"Quadrangulation", "Warranty Claim" }, },

	[26807720] = { npc=222444, name="Injured Gnome", title=ns.nightmareTitle, icon=10,
					guide=ns.nightmare, tip="The middle level of the Salty Sailor",
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "An Amalgamation of Nightmares", "Itharius", "Going Under",
						"Return to Moonglade", "A Fortuitous Turn of Events", "The Bad News...",
						"The Lost Vambraces", "Waking the Nightmare" }, },
	[40808560] = { npc=222451, name="Itty Bitty Murloc", title=ns.nightmareTitle, icon=10,
					guide=ns.nightmare, continent=true,
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "An Amalgamation of Nightmares", "Itharius", "Going Under",
						"Return to Moonglade", "A Fortuitous Turn of Events", "The Bad News...",
						"The Lost Vambraces", "Waking the Nightmare" }, },
}

points[ 1435 ] = { -- Swamp of Sorrows
	[10506030] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[12302960] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[16606330] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[22806430] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals, continent=true },
	[27004930] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[34402840] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[36405030] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[49603840] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[56606540] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[60402770] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[60904370] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[69607840] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[72501070] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[77308960] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[81303430] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[83406650] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[87202630] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[90906540] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[91405670] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },

	[13607150] = { npc=5353, name="Itharius", title=ns.nightmareTitle, icon=10,
					guide=ns.nightmare, continent=true,
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "An Amalgamation of Nightmares", "Itharius", "Going Under",
						"Return to Moonglade", "A Fortuitous Turn of Events", "The Bad News...",
						"The Lost Vambraces", "Waking the Nightmare" }, },
}

points[ 1420 ] = { -- Tirisfal Glades
	[25304870] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[31704610] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[34704100] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[38004970] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[49203360] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[49603570] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[49804280] = { title="Battered Chest", icon=1, tip=ns.chest1, continent=true },
	[51006750] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[51802600] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[55504210] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[57903290] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[58703070] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[58802700] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[72802580] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[77205980] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[78405590] = { title="Battered Chest", icon=1, tip=ns.chest1 },

	[56204940] = { title=ns.twoMeditateTitle, npc=6491, name="Spirit Healer (Brill)", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Come to here for the second quest hand-in. /kneel",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) }, continent=true, },							

}

points[ 1458 ] = { -- Undercity
	[47201960] = { title=ns.twoMeditateTitle, npc=211225, name="Baj'ura", icon=8, class="PRIEST", level=18,
					faction="Horde", guide=ns.twoMeditate, tip="Begin the first quest here", continent=true,
					quest={ ( ( ns.race == "Undead" ) and 78198 or 0 ), ( ( ns.race == "Undead" ) and 78199 or 0 ) }, 
					questName={ ( ( ns.race == "Undead" ) and "Secrets of the Loa (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of the Loa (2)" or "" ) } },
}

points[ 1422 ] = { -- Western Plaguelands
}

points[ 1436 ] = { -- Westfall
	[29104880] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[29204590] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[29304960] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[29704730] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[30904620] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[31004410] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[33205650] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[36403190] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[38202860] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[38806980] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[41504100] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[42306880] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[42701220] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[43000800] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[43906830] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[44102350] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[44507020] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[44702550] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[44900760] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[45002190] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[45502090] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[45507030] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[45901910] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[46103850] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[46805340] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[48204710] = { title="Battered Chest", icon=2, tip=ns.chest2, continent=true },
	[48302030] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[48506090] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[51103900] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[52503450] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[53106250] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[55600770] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[56501340] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[56501920] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[60605830] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[60905020] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[34808570] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[36808280] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[53007890] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[56307450] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[56506990] = { title="Battered Chest", icon=3, tip=ns.chest3, continent=true },
	[60707440] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[63807030] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[65307510] = { title="Battered Chest", icon=3, tip=ns.chest3 },

	[37505070] = { name="Burned-Out Remains", title="Cozy Sleeping Bag", icon=6, guide=ns.cozySleepingBag,
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" },
						tip="Alliance: Step One\nHorde: Step Two", continent=true },
						
	[28604400] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[28904750] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[29005850] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[29606940] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[29803440] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[31403940] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[31506540] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[31603920] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[32207600] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[32208020] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[32402920] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals, continent=true },
	[34008220] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[34806140] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[35803260] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[37508530] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[41501530] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[44804640] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[46801240] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[46903950] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[47502170] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[47506750] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[47507930] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[47801380] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[51003240] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[51607150] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[53008020] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[57001050] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[62502630] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
}

points[ 1437 ] = { -- Wetlands
	[72009400] = { name="Carved Figurine", title="Cozy Sleeping Bag", icon=6, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" }, tip="Step Five", continent=true },
}

--=======================================================================================================
--
-- KALIMDOR
--
--=======================================================================================================

points[ 1440 ] = { -- Ashenvale
	[07101230] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[10402260] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[11102690] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[11603180] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[14202040] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[18503160] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[22403630] = { title="Battered Chest", icon=3, tip=ns.chest3, continent=true },
	[31902320] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[31903120] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	
	[17202660] = { npc=212334, name="Dead Twilight Cultist", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
					quest={ 78909 }, questName={ "Shifting Scale Talisman" }, continent=true },
	[86006700] = { name=ns.L["AoPD"], title=ns.nightmareTitle, icon=10, guide=ns.nightmare,
					tip="This is the approximate location, once\n"
						.."inside the Nightmare, to obtain the debuff", continent=true,
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "An Amalgamation of Nightmares", "Itharius", "Going Under",
						"Return to Moonglade", "A Fortuitous Turn of Events", "The Bad News...",
						"The Lost Vambraces", "Waking the Nightmare" }, },
	[89404060] = { npc=221477, name="Field Captain Hannalah", title=ns.nightmareTitle, icon=10,
					guide=ns.nightmare,
					tip="She is located in \"regular\"\nAshenvale, outside the Nightmare.\n\n"
						.."Pin also used by the Runes AddOn so one\nmay be mostly overlapping the other",
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "An Amalgamation of Nightmares", "Itharius", "Going Under",
						"Return to Moonglade", "A Fortuitous Turn of Events", "The Bad News...",
						"The Lost Vambraces", "Waking the Nightmare" }, },

	[24406340] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals, continent=true },
	[27606260] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[30203020] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[33502840] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[44506420] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[51204700] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[52506280] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[55504020] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[67004600] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[67205100] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[77407300] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[80507080] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[84807020] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },

	[31602300] = { title=ns.twoMeditateTitle, name="Forsaken mobs (Various)", icon=8, class="PRIEST", level=18,
					guide=ns.twoMeditate,
					quest={ ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race == "Night elf" ) and 78193 or 0 ) }, 
					questName={ ( ( ns.race == "Night elf" ) and "Secrets of the Light (1)" or "" ), 
							( ( ns.race == "Night Elf" ) and "Secrets of the Light (2)" or "" ) } },
	[33406820] = { title=ns.twoMeditateTitle, name="Shadethicket mobs (Various)", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Collect Shadeleaf off the mobs", continent=true,
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },							
	[61007620] = { title=ns.twoMeditateTitle, name="Shadethicket mobs (Various)", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Collect Shadeleaf off the mobs",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },									
	[64206840] = { title=ns.twoMeditateTitle, name="Shadethicket mobs (Various)", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Collect Shadeleaf off the mobs",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },							
	[67208280] = { title=ns.twoMeditateTitle, name="Shadethicket mobs (Various)", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Collect Shadeleaf off the mobs",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },							
	[71405400] = { title=ns.twoMeditateTitle, name="Shadethicket mobs (Various)", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Collect Shadeleaf off the mobs",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },
	[76604520] = { title=ns.twoMeditateTitle, name="Shadethicket mobs (Various)", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Collect Shadeleaf off the mobs",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },
	[79007360] = { title=ns.twoMeditateTitle, name="Shadethicket mobs (Various)", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Collect Shadeleaf off the mobs",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },
	[79406200] = { title=ns.twoMeditateTitle, name="Shadethicket mobs (Various)", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Collect Shadeleaf off the mobs",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },
	[85406640] = { title=ns.twoMeditateTitle, name="Shadethicket mobs (Various)", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Collect Shadeleaf off the mobs",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },

	[80105000] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=11, tip=ns.nightmareSeed, continent=true },
	[82106510] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=11, tip=ns.nightmareSeed },
	[82905170] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=11, tip=ns.nightmareSeed },
	[84506070] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=11, tip=ns.nightmareSeed },
	[85805090] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=11, tip=ns.nightmareSeed },
	[86106570] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=11, tip=ns.nightmareSeed },
	[87304630] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=11, tip=ns.nightmareSeed },
	[88504300] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=11, tip=ns.nightmareSeed },
	[88904610] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=11, tip=ns.nightmareSeed },
	[90104950] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=11, tip=ns.nightmareSeed },
	[90805240] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=11, tip=ns.nightmareSeed },
	[91005680] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=11, tip=ns.nightmareSeed },
	[91404970] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=11, tip=ns.nightmareSeed },
	[93205130] = { name="Resonating Nightmare Bloom", title="Nightmare Seed", icon=11, tip=ns.nightmareSeed },
}

points[ 1447 ] = { -- Azshara
	[16505100] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals },
	[17505870] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals },
	[21205400] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals },
	[24804780] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals },
	[25108150] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals },
	[30207980] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals, continent=true },
	[33008150] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals },
}

points[ 1439 ] = { -- Darkshore
	[37604380] = { title=ns.twoMeditateTitle, npc=211298, name="Syrnoya", icon=8, class="PRIEST", level=17, continent=true,
					guide=ns.twoMeditate, tip="Complete the second quest here. /kneel always!", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ),
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },

	[36702740] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[39607830] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[41605820] = { title="Battered Chest", icon=2, tip=ns.chest2, continent=true },
	[42003120] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[42506200] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[43005870] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[44703730] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[46003770] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[47103700] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[48103650] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[50802560] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[54703690] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[55503620] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[56603510] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[35408480] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[36308650] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[38402930] = { title="Battered Chest", icon=3, tip=ns.chest3, continent=true },
	[38408680] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[42608680] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[42808450] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[44202040] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[44308500] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[44708690] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[56402620] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[57102250] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[58102000] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[58401770] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[58500750] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[58801580] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[60301850] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[60502240] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[61501930] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[61902160] = { title="Battered Chest", icon=3, tip=ns.chest3 },

	[40604080] = { npc=2175, name="Shadowclaw", title="Best Hunter Pets", icon=5, class="HUNTER", guide=ns.bestPet, continent=true },

	[35808280] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[37606380] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals, continent=true },
	[40608980] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[43202700] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[44208200] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[45002620] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[45205800] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[46204680] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[47402880] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[49803680] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[56402480] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[59802180] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
}

points[ 1457 ] = { -- Darnassus
	[38608880] = { title=ns.twoMeditateTitle, npc=211188, name="Maethra Slagheart", icon=8, class="PRIEST", level=17,
					guide=ns.twoMeditate, tip="Begin the first quest here", faction="Alliance", continent=true,
					quest={ ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race == "Night elf" ) and 78193 or 0 ) }, 
					questName={ ( ( ns.race == "Night elf" ) and "Secrets of the Light (1)" or "" ), 
							( ( ns.race == "Night Elf" ) and "Secrets of the Light (2)" or "" ) } },
}

points[ 1443 ] = { -- Desolace
	[47402220] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals, continent=true },
	[48808220] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[49507460] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[52008550] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[52207250] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[52808100] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[54401920] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[54602880] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[56107460] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[71501860] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[72502190] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[73502460] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[74501030] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[76501920] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },
	[80501710] = { name="Fel Tear", title="Fel Portals", icon=7, tip=ns.felPortals },

	[32017272] = { title=ns.gnomereganTitle, object=424075, name="Quadrangulation Beacon 002", icon=9, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					questName={ "The Salvagematic 9000!", "Salvaging the Salvagematic", "The Corroded Core",
						"Quadrangulation", "Warranty Claim" }, },
}

points[ 1411 ] = { -- Durotar
	[39405380] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[40803040] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[42102710] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[42502690] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[43303940] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[43603560] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[43705070] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[43903920] = { title="Battered Chest", icon=1, tip=ns.chest1, continent=true },
	[44102400] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[44205030] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[46607900] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[47104980] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[47503100] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[47604980] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[47803330] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[47807720] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[49104840] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[49702430] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[49708070] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[50702590] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[51201900] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[51202360] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[51302100] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[51401030] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[51501030] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[51901990] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[52002540] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[52400920] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[52602640] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[52700850] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[53202500] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[53802820] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[54102220] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[57805870] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[59605810] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[59605630] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[61804550] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[61805110] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[62105590] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[62404210] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[62406050] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[63205680] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[64105040] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[64505310] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[65508320] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[67108670] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[68308510] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[68407150] = { title="Battered Chest", icon=1, tip=ns.chest1 },

	[68607160] = { npc=208124, name="Raluk", title="Best Hunter Pets", icon=5, class="HUNTER", guide=ns.bestPet, continent=true },

	[68707110] = { title=ns.twoMeditateTitle, object=410168, name="Voodoo Pile", icon=8, class="PRIEST", level=18,
					faction="Horde", guide=ns.twoMeditate, tip="Ignore the quest directions. Climb the\nhill on the northern-most island",
					quest={ ( ( ns.race == "Undead" ) and 78198 or 0 ), ( ( ns.race == "Undead" ) and 78199 or 0 ) }, 
					questName={ ( ( ns.race == "Undead" ) and "Secrets of the Loa (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of the Loa (2)" or "" ) }, continent=true, },
}

points[ 1445 ] = { -- Dustwallow Marsh
	[58601300] = { title=ns.gnomereganTitle, object=424074, name="Quadrangulation Beacon 001", icon=9, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					questName={ "The Salvagematic 9000!", "Salvaging the Salvagematic", "The Corroded Core",
						"Quadrangulation", "Warranty Claim" }, },
}

points[ 1444 ] = { -- Feralas
	[68205880] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals, continent=true },
	[70606250] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals },
	[72506380] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals },
	[73205440] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals },
	[74205060] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals },
	[74205680] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals },
	[74206000] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals },
	[76205650] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals },
	[76606360] = { name="Fel Scar", title="Fel Portals", icon=7, tip=ns.felPortals },

	[29309380] = { title=ns.gnomereganTitle, object=424077, name="Quadrangulation Beacon 004", icon=9, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					tip="Stay on the coast to avoid L60e.\nThe cave is also a dead end",
					questName={ "The Salvagematic 9000!", "Salvaging the Salvagematic", "The Corroded Core",
						"Quadrangulation", "Warranty Claim" }, },
	[84204380] = { title=ns.gnomereganTitle, npc=218237, name="Wirdal Wondergear", icon=9, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					tip="Stay on the coast to avoid L60e.\nThe cave is also a dead end",
					questName={ "The Salvagematic 9000!", "Salvaging the Salvagematic", "The Corroded Core",
						"Quadrangulation", "Warranty Claim" }, },
}

points[ 1450 ] = { -- Moonglade
	[52404050] = { npc=12042, name="Loganaar", title=ns.nightmareTitle, icon=10,
					guide=ns.nightmare, continent=true,
					tip="Ensure you are friendly with the Cenarion Circle",
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "An Amalgamation of Nightmares", "Itharius", "Going Under",
						"Return to Moonglade", "A Fortuitous Turn of Events", "The Bad News...",
						"The Lost Vambraces", "Waking the Nightmare" }, },
}

points[ 1412 ] = { -- Mulgore					
	[28502120] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[29302350] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[29602590] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[30902290] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[31006080] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[31206180] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[31306340] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[31504200] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[31704270] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[32506100] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[33104740] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[35506240] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[36101120] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[36601290] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[37701040] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[38400800] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[40101530] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[40601610] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[48407230] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[53200930] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[53304810] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[53307310] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[53707320] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[53804850] = { title="Battered Chest", icon=1, tip=ns.chest1, continent=true },
	[55101610] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[55201150] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[56701480] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[59804810] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[60903790] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[61204730] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[62303830] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[63107150] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[63504110] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[64206890] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[65506920] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[65604090] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[66906860] = { title="Battered Chest", icon=1, tip=ns.chest1 },

	[36605660] = { npc=205382, name="Mokwa", title="Best Hunter Pets", icon=5, class="HUNTER", guide=ns.bestPet, continent=true },
	[51801840] = { npc=5807, name="The Rake", title="Best Hunter Pets", icon=5, class="HUNTER", guide=ns.bestPet },
}

points[ 1454 ] = { -- Orgrimmar
	[35748823] = { title=ns.twoMeditateTitle, npc=211229, name="Dietrich Praice", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="Begin the first quest here", continent=true,
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },							
}

points[ 1442 ] = { -- Stonetalon Mountains
	[43303880] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[45104600] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[50904380] = { title="Battered Chest", icon=3, tip=ns.chest3, continent=true },
	[53603580] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[63504020] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[66304550] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[66505080] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[71906270] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[72206040] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[72906140] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[73006000] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[73006150] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[73006280] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[73305900] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[73608560] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[74105930] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[77009150] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[80608950] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[84308420] = { title="Battered Chest", icon=3, tip=ns.chest3 },

	[39604990] = { name="Mound of Dirt", title="Cozy Sleeping Bag", icon=6, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" }, tip="Step Four" },
	[40805250] = { name="Pocket Litter", title="Cozy Sleeping Bag", icon=6, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" }, tip="Step Three", continent=true },
}

points[ 1446 ] = { -- Tanaris
	[37802730] = { title=ns.gnomereganTitle, object=424076, name="Quadrangulation Beacon 003", icon=9, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					questName={ "The Salvagematic 9000!", "Salvaging the Salvagematic", "The Corroded Core",
						"Quadrangulation", "Warranty Claim" }, },
}

points[ 1438 ] = { -- Teldrassil
	[31503170] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[33202850] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[33903560] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[34202820] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[34203440] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[35403480] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[35603880] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[36303790] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[37204300] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[37504160] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[43806130] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[43905990] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[43906190] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[44506040] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[44606260] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[44805890] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[47207780] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[47907790] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[50006300] = { title="Battered Chest", icon=1, tip=ns.chest1, continent=true },
	[51605000] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[51904860] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[52005130] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[53005020] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[56307550] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[65806480] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[66006350] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[68705190] = { title="Battered Chest", icon=1, tip=ns.chest1 },
	[69605320] = { title="Battered Chest", icon=1, tip=ns.chest1 },

	[53807680] = { npc=14430, name="Duskstalker", title="Best Hunter Pets", icon=5, class="HUNTER", guide=ns.bestPet, continent=true },
	[60207560] = { npc=14430, name="Duskstalker", title="Best Hunter Pets", icon=5, class="HUNTER", guide=ns.bestPet },
}

points[ 1413 ] = { -- The Barrens
	[42102470] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[43402370] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[43602650] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[43702120] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[45102000] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[46603900] = { title="Battered Chest", icon=2, tip=ns.chest2, continent=true },
	[46502280] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[46601810] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[47001590] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[47701950] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[47901790] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[48903880] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[52501070] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[52501160] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[52904440] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[53404050] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[53904300] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[54504680] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[55902700] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[55904580] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[56600880] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[56804350] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[56902550] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[57104120] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[58802750] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[59102440] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[62804970] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[63504610] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[63704920] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[64304730] = { title="Battered Chest", icon=2, tip=ns.chest2 },
	[37601630] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[38401310] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[39201190] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[40001600] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[42905510] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[43304830] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[43305220] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[45005140] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[45305430] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[46905360] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[51105750] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[51305490] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[52605230] = { title="Battered Chest", icon=3, tip=ns.chest3, continent=true },
	[53605400] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[59605400] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[59600280] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[60400350] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[61700520] = { title="Battered Chest", icon=3, tip=ns.chest3 },
	[62000420] = { title="Battered Chest", icon=3, tip=ns.chest3 },

	[62043955] = { npc=214208, name="N'ora Anyheart", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
					tip="Don't come to her before you've\ncompleted the previous steps.\n\n"
						.."The Shifting Scale Talisman is a\nvery valuable +5 Spirit Trinket",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" }, continent=true },

	[50001660] = { npc=5865, name="Dishu", title="Best Hunter Pets", icon=5, class="HUNTER", guide=ns.bestPet, continent=true },
	[51802800] = { npc=5865, name="Dishu", title="Best Hunter Pets", icon=5, class="HUNTER", guide=ns.bestPet },
	[62603440] = { npc=5828, name="Humar the Pridelord", title="Best Hunter Pets", icon=5, class="HUNTER", guide=ns.bestPet },

	[46407390] = { name="Burned-Out Remains", title="Cozy Sleeping Bag", icon=6, guide=ns.cozySleepingBag,
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" },
						tip="Alliance: Step Two\nHorde: Step One", continent=true },

	[42808180] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals, continent=true },
	[43208020] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[43808380] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[46108550] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[47808360] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[48408120] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[48408300] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[48608300] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },
	[50208060] = { name="Fel Crack", title="Fel Portals", icon=7, tip=ns.felPortals },

	[38601540] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[39501380] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals, continent=true },
	[40001840] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[40801440] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[42001420] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[43404420] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[44405000] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[44405460] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[45004580] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[45805120] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[46405260] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[47604940] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[51805340] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[53005080] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[54205260] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[54404850] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[55602560] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[55805100] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[56002480] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[57602350] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[58204980] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[58802560] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[59002920] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[59003200] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[59203650] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[59802750] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[60203600] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[60802900] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
	[61803200] = { name="Fel Sliver", title="Fel Portals", icon=7, tip=ns.felPortals },
}

points[ 1441 ] = { -- Thousand Needles
}

points[ 1456 ] = { -- Thunder Bluff
}

--=======================================================================================================
--
-- MISCELLANY
--
--=======================================================================================================

-- Choice of texture
-- Note that these textures are all repurposed and as such have non-uniform sizing
-- I should also allow for non-uniform origin placement as well as adjust the x,y offsets
ns.textures[1] = "Interface\\PlayerFrame\\MonkLightPower"
ns.textures[2] = "Interface\\PlayerFrame\\MonkDarkPower"
ns.textures[3] = "Interface\\Common\\Indicator-Red"
ns.textures[4] = "Interface\\Common\\Indicator-Yellow"
ns.textures[5] = "Interface\\Common\\Indicator-Green"
ns.textures[6] = "Interface\\Common\\Indicator-Gray"
ns.textures[7] = "Interface\\Common\\Friendship-ManaOrb"	
ns.textures[8] = "Interface\\TargetingFrame\\UI-PhasingIcon"
ns.textures[9] = "Interface\\Store\\Category-icon-pets"
ns.textures[10] = "Interface\\Store\\Category-icon-featured"
ns.textures[11] = "Interface\\HelpFrame\\HelpIcon-CharacterStuck"	
ns.textures[12] = "Interface\\PlayerFrame\\UI-PlayerFrame-DeathKnight-Frost"
ns.textures[13] = "Interface\\TargetingFrame\\PetBadge-Magical"
ns.textures[14] = "Interface\\Vehicles\\UI-Vehicles-Raid-Icon"
ns.textures[15] = "Interface\\AddOns\\HandyNotes_Chests\\Textures\\Adrenaline"
ns.textures[16] = "Interface\\AddOns\\HandyNotes_Chests\\Textures\\Arcane"
ns.textures[17] = "Interface\\AddOns\\HandyNotes_Chests\\Textures\\Demonic"
ns.textures[18] = "Interface\\AddOns\\HandyNotes_Chests\\Textures\\Duty"
ns.textures[19] = "Interface\\AddOns\\HandyNotes_Chests\\Textures\\Frozen"

ns.scaling[1] = 0.41
ns.scaling[2] = 0.41
ns.scaling[3] = 0.41
ns.scaling[4] = 0.41
ns.scaling[5] = 0.41
ns.scaling[6] = 0.41
ns.scaling[7] = 0.49
ns.scaling[8] = 0.46
ns.scaling[9] = 0.56
ns.scaling[10] = 0.56
ns.scaling[11] = 0.43
ns.scaling[12] = 0.37
ns.scaling[13] = 0.36
ns.scaling[14] = 0.32
ns.scaling[15] = 0.40
ns.scaling[16] = 0.40
ns.scaling[17] = 0.40
ns.scaling[18] = 0.40
ns.scaling[19] = 0.40
