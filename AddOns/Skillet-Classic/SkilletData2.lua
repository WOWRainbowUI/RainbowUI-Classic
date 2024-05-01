local addonName,addonTable = ...
local isRetail = WOW_PROJECT_ID == WOW_PROJECT_MAINLINE
local isClassic = WOW_PROJECT_ID == WOW_PROJECT_CLASSIC
local isBCC = WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC
local isWrath = WOW_PROJECT_ID == WOW_PROJECT_WRATH_CLASSIC
local isCata = WOW_PROJECT_ID == WOW_PROJECT_CATACLYSM_CLASSIC
local DA
if isRetail then
	DA = _G[addonName] -- for DebugAids.lua
else
	DA = LibStub("AceAddon-3.0"):GetAddon("Skillet") -- for DebugAids.lua
end

--
-- The following function can be used (/run Skillet:CountEnchants()) to check for missing items
-- in either Skillet's or TradeSkillMaster's table of enchant recipe IDs to enchant (scroll) item IDs
--
function Skillet:CountEnchants(clear)
	if clear then
		Skillet.db.global.missing_scrollData = nil
		Skillet.db.global.missing_scrollData2 = nil
		Skillet.db.global.missing_vellumData2 = nil
		Skillet.db.global.wrong_scrollData = nil
		Skillet.db.global.wrong_scrollData2 = nil
		Skillet.db.global.vellum_by_enchant = vellum_by_enchant
		return
	end
	local i,j,k,m = 0,0,0,0
	local missing_scrollData = {}
	local wrong_scrollData = {}
	local missing_scrollData2 = {}
	local wrong_scrollData2 = {}
	local missing_vellumData2 = {}
	local vellum_by_enchant = {}
	for rid,eid in pairs(Skillet.scrollData) do
		i = i + 1
		if not Skillet.scrollData2[rid] then
			table.insert(missing_scrollData2, rid)
		elseif Skillet.scrollData2[rid] ~= eid then
			table.insert(wrong_scrolldata2, rid)
		end
	end
	for rid,eid in pairs(Skillet.scrollData2) do
		j = j + 1
		if not Skillet.scrollData[rid] then
			table.insert(missing_scrollData, rid)
		elseif Skillet.scrollData[rid] ~= eid then
			table.insert(wrong_scrolldata, rid)
		end
		if not Skillet.vellumData2[rid] then
			table.insert(missing_vellumData2, rid)
		end
	end
	for rid,eid in pairs(Skillet.vellumData2) do
		k = k + 1
		if not vellum_by_enchant[eid] then
			m = m + 1
			vellum_by_enchant[eid] = {}
		end
		table.insert(vellum_by_enchant[eid],rid)
	end
	DA.MARK2("-----")
	DA.MARK2("scrollData count= "..tostring(i)..", missing= "..tostring(#missing_scrollData)..", "..DA.DUMP1(missing_scrollData))
	DA.MARK2("scrollData wrong= "..DA.DUMP1(wrong_scrollData))
	DA.MARK2("-----")
--	DA.MARK2("scrollData2 count= "..tostring(j)..", missing= "..tostring(#missing_scrollData2)..", "..DA.DUMP1(missing_scrollData2))
	DA.MARK2("scrollData2 count= "..tostring(j)..", missing= "..tostring(#missing_scrollData2))
	DA.MARK2("scrollData2 wrong= "..DA.DUMP1(wrong_scrollData2))
	DA.MARK2("-----")
	DA.MARK2("vellumData2 count= "..tostring(k)..", missing= "..tostring(#missing_vellumData2)..", "..DA.DUMP1(missing_vellumData2))
	DA.MARK2("vellum_by_enchant count= "..tostring(m))
	DA.MARK2("-----")
	Skillet.db.global.missing_scrollData = missing_scrollData
	Skillet.db.global.missing_scrollData2 = missing_scrollData2
	Skillet.db.global.missing_vellumData2 = missing_vellumData2
	Skillet.db.global.wrong_scrollData = wrong_scrollData
	Skillet.db.global.wrong_scrollData2 = wrong_scrollData2
	Skillet.db.global.vellum_by_enchant = vellum_by_enchant
end

Skillet.scrollData2 = {
	[7418] = 38679,     -- Scroll of Enchant Bracer - Minor Health
	[7420] = 38766,     -- Scroll of Enchant Chest - Minor Health
	[7426] = 38767,     -- Scroll of Enchant Chest - Minor Absorption
	[7428] = 38768,     -- Scroll of Enchant Bracer - Minor Deflection
	[7443] = 38769,     -- Scroll of Enchant Chest - Minor Mana
	[7454] = 38770,     -- Scroll of Enchant Cloak - Minor Resistance
	[7457] = 38771,     -- Scroll of Enchant Bracer - Minor Stamina
	[7745] = 38772,     -- Scroll of Enchant 2H Weapon - Minor Impact
	[7748] = 38773,     -- Scroll of Enchant Chest - Lesser Health
	[7766] = 38774,     -- Scroll of Enchant Bracer - Minor Spirit
	[7771] = 38775,     -- Scroll of Enchant Cloak - Minor Protection
	[7776] = 38776,     -- Scroll of Enchant Chest - Lesser Mana
	[7779] = 38777,     -- Scroll of Enchant Bracer - Minor Agility
	[7782] = 38778,     -- Scroll of Enchant Bracer - Minor Strength
	[7786] = 38779,     -- Scroll of Enchant Weapon - Minor Beastslayer
	[7788] = 38780,     -- Scroll of Enchant Weapon - Minor Striking
	[7793] = 38781,     -- Scroll of Enchant 2H Weapon - Lesser Intellect
	[7857] = 38782,     -- Scroll of Enchant Chest - Health
	[7859] = 38783,     -- Scroll of Enchant Bracer - Lesser Spirit
	[7861] = 38784,     -- Scroll of Enchant Cloak - Lesser Fire Resistance
	[7863] = 38785,     -- Scroll of Enchant Boots - Minor Stamina
	[7867] = 38786,     -- Scroll of Enchant Boots - Minor Agility
	[13378] = 38787,    -- Scroll of Enchant Shield - Minor Stamina
	[13380] = 38788,    -- Scroll of Enchant 2H Weapon - Lesser Spirit
	[13419] = 38789,    -- Scroll of Enchant Cloak - Minor Agility
	[13421] = 38790,    -- Scroll of Enchant Cloak - Lesser Protection
	[13464] = 38791,    -- Scroll of Enchant Shield - Lesser Protection
	[13485] = 38792,        -- Scroll of Enchant Shield - Lesser Spirit
	[13501] = 38793,        -- Scroll of Enchant Bracer - Lesser Stamina
	[13503] = 38794,        -- Scroll of Enchant Weapon - Lesser Striking
	[13522] = 38795,        -- Scroll of Enchant Cloak - Lesser Shadow Resistance
	[13529] = 38796,        -- Scroll of Enchant 2H Weapon - Lesser Impact
	[13536] = 38797,        -- Scroll of Enchant Bracer - Lesser Strength
	[13538] = 38798,        -- Scroll of Enchant Chest - Lesser Absorption
	[13607] = 38799,        -- Scroll of Enchant Chest - Mana
	[13612] = 38800,        -- Scroll of Enchant Gloves - Mining
	[13617] = 38801,        -- Scroll of Enchant Gloves - Herbalism
	[13620] = 38802,        -- Scroll of Enchant Gloves - Fishing
	[13622] = 38803,        -- Scroll of Enchant Bracer - Lesser Intellect
	[13626] = 38804,        -- Scroll of Enchant Chest - Minor Stats
	[13631] = 38805,        -- Scroll of Enchant Shield - Lesser Stamina
	[13635] = 38806,        -- Scroll of Enchant Cloak - Defense
	[13637] = 38807,        -- Scroll of Enchant Boots - Lesser Agility
	[13640] = 38808,        -- Scroll of Enchant Chest - Greater Health
	[13642] = 38809,        -- Scroll of Enchant Bracer - Spirit
	[13644] = 38810,        -- Scroll of Enchant Boots - Lesser Stamina
	[13646] = 38811,        -- Scroll of Enchant Bracer - Lesser Deflection
	[13648] = 38812,        -- Scroll of Enchant Bracer - Stamina
	[13653] = 38813,        -- Scroll of Enchant Weapon - Lesser Beastslayer
	[13655] = 38814,        -- Scroll of Enchant Weapon - Lesser Elemental Slayer
	[13657] = 38815,        -- Scroll of Enchant Cloak - Fire Resistance
	[13659] = 38816,        -- Scroll of Enchant Shield - Spirit
	[13661] = 38817,        -- Scroll of Enchant Bracer - Strength
	[13663] = 38818,        -- Scroll of Enchant Chest - Greater Mana
	[13687] = 38819,        -- Scroll of Enchant Boots - Lesser Spirit
	[13689] = 38820,        -- Scroll of Enchant Shield - Lesser Block
	[13693] = 38821,        -- Scroll of Enchant Weapon - Striking
	[13695] = 38822,        -- Scroll of Enchant 2H Weapon - Impact
	[13698] = 38823,        -- Scroll of Enchant Gloves - Skinning
	[13700] = 38824,        -- Scroll of Enchant Chest - Lesser Stats
	[13746] = 38825,        -- Scroll of Enchant Cloak - Greater Defense
	[13794] = 38826,        -- Scroll of Enchant Cloak - Resistance
	[13815] = 38827,        -- Scroll of Enchant Gloves - Agility
	[13817] = 38828,        -- Scroll of Enchant Shield - Stamina
	[13822] = 38829,        -- Scroll of Enchant Bracer - Intellect
	[13836] = 38830,        -- Scroll of Enchant Boots - Stamina
	[13841] = 38831,        -- Scroll of Enchant Gloves - Advanced Mining
	[13846] = 38832,        -- Scroll of Enchant Bracer - Greater Spirit
	[13858] = 38833,        -- Scroll of Enchant Chest - Superior Health
	[13868] = 38834,        -- Scroll of Enchant Gloves - Advanced Herbalism
	[13882] = 38835,        -- Scroll of Enchant Cloak - Lesser Agility
	[13887] = 38836,        -- Scroll of Enchant Gloves - Strength
	[13890] = 38837,        -- Scroll of Enchant Boots - Minor Speed
	[13898] = 38838,        -- Scroll of Enchant Weapon - Fiery Weapon
	[13905] = 38839,        -- Scroll of Enchant Shield - Greater Spirit
	[13915] = 38840,        -- Scroll of Enchant Weapon - Demonslaying
	[13917] = 38841,        -- Scroll of Enchant Chest - Superior Mana
	[13931] = 38842,        -- Scroll of Enchant Bracer - Deflection
	[13933] = 38843,        -- Scroll of Enchant Shield - Frost Resistance
	[13935] = 38844,        -- Scroll of Enchant Boots - Agility
	[13937] = 38845,        -- Scroll of Enchant 2H Weapon - Greater Impact
	[13939] = 38846,        -- Scroll of Enchant Bracer - Greater Strength
	[13941] = 38847,        -- Scroll of Enchant Chest - Stats
	[13943] = 38848,        -- Scroll of Enchant Weapon - Greater Striking
	[13945] = 38849,        -- Scroll of Enchant Bracer - Greater Stamina
	[13947] = 38850,        -- Scroll of Enchant Gloves - Riding Skill
	[13948] = 38851,        -- Scroll of Enchant Gloves - Minor Haste
	[20008] = 38852,        -- Scroll of Enchant Bracer - Greater Intellect
	[20009] = 38853,        -- Scroll of Enchant Bracer - Superior Spirit
	[20010] = 38854,        -- Scroll of Enchant Bracer - Superior Strength
	[20011] = 38855,        -- Scroll of Enchant Bracer - Superior Stamina
	[20012] = 38856,        -- Scroll of Enchant Gloves - Greater Agility
	[20013] = 38857,        -- Scroll of Enchant Gloves - Greater Strength
	[20014] = 38858,        -- Scroll of Enchant Cloak - Greater Resistance
	[20015] = 38859,        -- Scroll of Enchant Cloak - Superior Defense
	[20016] = 38860,        -- Scroll of Enchant Shield - Vitality
	[20017] = 38861,        -- Scroll of Enchant Shield - Greater Stamina
	[20020] = 38862,        -- Scroll of Enchant Boots - Greater Stamina
	[20023] = 38863,        -- Scroll of Enchant Boots - Greater Agility
	[20024] = 38864,        -- Scroll of Enchant Boots - Spirit
	[20025] = 38865,        -- Scroll of Enchant Chest - Greater Stats
	[20026] = 38866,        -- Scroll of Enchant Chest - Major Health
	[20028] = 38867,        -- Scroll of Enchant Chest - Major Mana
	[20029] = 38868,        -- Scroll of Enchant Weapon - Icy Chill
	[20030] = 38869,        -- Scroll of Enchant 2H Weapon - Superior Impact
	[20031] = 38870,        -- Scroll of Enchant Weapon - Superior Striking
	[20032] = 38871,        -- Scroll of Enchant Weapon - Lifestealing
	[20033] = 38872,        -- Scroll of Enchant Weapon - Unholy Weapon
	[20034] = 38873,        -- Scroll of Enchant Weapon - Crusader
	[20035] = 38874,        -- Scroll of Enchant 2H Weapon - Major Spirit
	[20036] = 38875,        -- Scroll of Enchant 2H Weapon - Major Intellect
	[21931] = 38876,        -- Scroll of Enchant Weapon - Winter's Might
	[22749] = 38877,        -- Scroll of Enchant Weapon - Spellpower
	[22750] = 38878,        -- Scroll of Enchant Weapon - Healing Power
	[23799] = 38879,        -- Scroll of Enchant Weapon - Strength
	[23800] = 38880,        -- Scroll of Enchant Weapon - Agility
	[23801] = 38881,        -- Scroll of Enchant Bracer - Mana Regeneration
	[23802] = 38882,        -- Scroll of Enchant Bracer - Healing Power
	[23803] = 38883,        -- Scroll of Enchant Weapon - Mighty Spirit
	[23804] = 38884,        -- Scroll of Enchant Weapon - Mighty Intellect
	[25072] = 38885,        -- Scroll of Enchant Gloves - Threat
	[25073] = 38886,        -- Scroll of Enchant Gloves - Shadow Power
	[25074] = 38887,        -- Scroll of Enchant Gloves - Frost Power
	[25078] = 38888,        -- Scroll of Enchant Gloves - Fire Power
	[25079] = 38889,        -- Scroll of Enchant Gloves - Healing Power
	[25080] = 38890,        -- Scroll of Enchant Gloves - Superior Agility
	[25081] = 38891,        -- Scroll of Enchant Cloak - Greater Fire Resistance
	[25082] = 38892,        -- Scroll of Enchant Cloak - Greater Nature Resistance
	[25083] = 38893,        -- Scroll of Enchant Cloak - Stealth
	[25084] = 38894,        -- Scroll of Enchant Cloak - Subtlety
	[25086] = 38895,        -- Scroll of Enchant Cloak - Dodge
	[27837] = 38896,        -- Scroll of Enchant 2H Weapon - Agility
	[27899] = 38897,        -- Scroll of Enchant Bracer - Brawn
	[27905] = 38898,        -- Scroll of Enchant Bracer - Stats
	[27906] = 38899,        -- Scroll of Enchant Bracer - Major Defense
	[27911] = 38900,        -- Scroll of Enchant Bracer - Superior Healing
	[27913] = 38901,        -- Scroll of Enchant Bracer - Restore Mana Prime
	[27914] = 38902,        -- Scroll of Enchant Bracer - Fortitude
	[27917] = 38903,        -- Scroll of Enchant Bracer - Spellpower
	[27944] = 38904,        -- Scroll of Enchant Shield - Tough Shield
	[27945] = 38905,        -- Scroll of Enchant Shield - Intellect
	[27946] = 38906,        -- Scroll of Enchant Shield - Shield Block
	[27947] = 38907,        -- Scroll of Enchant Shield - Resistance
	[27948] = 38908,        -- Scroll of Enchant Boots - Vitality
	[27950] = 38909,        -- Scroll of Enchant Boots - Fortitude
	[27951] = 37603,        -- Scroll of Enchant Boots - Dexterity
	[27954] = 38910,        -- Scroll of Enchant Boots - Surefooted
	[27957] = 38911,        -- Scroll of Enchant Chest - Exceptional Health
	[27958] = 38912,        -- Scroll of Enchant Chest - Exceptional Mana
	[27960] = 38913,        -- Scroll of Enchant Chest - Exceptional Stats
	[27961] = 38914,        -- Scroll of Enchant Cloak - Major Armor
	[27962] = 38915,        -- Scroll of Enchant Cloak - Major Resistance
	[27967] = 38917,        -- Scroll of Enchant Weapon - Major Striking
	[27968] = 38918,        -- Scroll of Enchant Weapon - Major Intellect
	[27971] = 38919,        -- Scroll of Enchant 2H Weapon - Savagery
	[27972] = 38920,        -- Scroll of Enchant Weapon - Potency
	[27975] = 38921,        -- Scroll of Enchant Weapon - Major Spellpower
	[27977] = 38922,        -- Scroll of Enchant 2H Weapon - Major Agility
	[27981] = 38923,        -- Scroll of Enchant Weapon - Sunfire
	[27982] = 38924,        -- Scroll of Enchant Weapon - Soulfrost
	[27984] = 38925,        -- Scroll of Enchant Weapon - Mongoose
	[28003] = 38926,        -- Scroll of Enchant Weapon - Spellsurge
	[28004] = 38927,        -- Scroll of Enchant Weapon - Battlemaster
	[33990] = 38928,        -- Scroll of Enchant Chest - Major Spirit
	[33991] = 38929,        -- Scroll of Enchant Chest - Restore Mana Prime
	[33992] = 38930,        -- Scroll of Enchant Chest - Major Resilience
	[33993] = 38931,        -- Scroll of Enchant Gloves - Blasting
	[33994] = 38932,        -- Scroll of Enchant Gloves - Precise Strikes
	[33995] = 38933,        -- Scroll of Enchant Gloves - Major Strength
	[33996] = 38934,        -- Scroll of Enchant Gloves - Assault
	[33997] = 38935,        -- Scroll of Enchant Gloves - Major Spellpower
	[33999] = 38936,        -- Scroll of Enchant Gloves - Major Healing
	[34001] = 38937,        -- Scroll of Enchant Bracer - Major Intellect
	[34002] = 38938,        -- Scroll of Enchant Bracer - Assault
	[34003] = 38939,        -- Scroll of Enchant Cloak - Spell Penetration
	[34004] = 38940,        -- Scroll of Enchant Cloak - Greater Agility
	[34005] = 38941,        -- Scroll of Enchant Cloak - Greater Arcane Resistance
	[34006] = 38942,        -- Scroll of Enchant Cloak - Greater Shadow Resistance
	[34007] = 38943,        -- Scroll of Enchant Boots - Cat's Swiftness
	[34008] = 38944,        -- Scroll of Enchant Boots - Boar's Speed
	[34009] = 38945,        -- Scroll of Enchant Shield - Major Stamina
	[34010] = 38946,        -- Scroll of Enchant Weapon - Major Healing
	[42620] = 38947,        -- Scroll of Enchant Weapon - Greater Agility
	[42974] = 38948,        -- Scroll of Enchant Weapon - Executioner
	[44383] = 38949,        -- Scroll of Enchant Shield - Resilience
	[44483] = 38950,        -- Scroll of Enchant Cloak - Superior Frost Resistance
	[44484] = 38951,        -- Scroll of Enchant Gloves - Expertise
	[44488] = 38953,        -- Scroll of Enchant Gloves - Precision
	[44489] = 38954,        -- Scroll of Enchant Shield - Defense
	[44492] = 38955,        -- Scroll of Enchant Chest - Mighty Health
	[44494] = 38956,        -- Scroll of Enchant Cloak - Superior Nature Resistance
	[44500] = 38959,        -- Scroll of Enchant Cloak - Superior Agility
	[44506] = 38960,        -- Scroll of Enchant Gloves - Gatherer
	[44508] = 38961,        -- Scroll of Enchant Boots - Greater Spirit
	[44509] = 38962,        -- Scroll of Enchant Chest - Greater Mana Restoration
	[44510] = 38963,        -- Scroll of Enchant Weapon - Exceptional Spirit
	[44513] = 38964,        -- Scroll of Enchant Gloves - Greater Assault
	[44524] = 38965,        -- Scroll of Enchant Weapon - Icebreaker
	[44528] = 38966,        -- Scroll of Enchant Boots - Greater Fortitude
	[44529] = 38967,        -- Scroll of Enchant Gloves - Major Agility
	[44555] = 38968,        -- Scroll of Enchant Bracers - Exceptional Intellect
	[44556] = 38969,        -- Scroll of Enchant Cloak - Superior Fire Resistance
	[44575] = 44815,        -- Scroll of Enchant Bracers - Greater Assault
	[44576] = 38972,        -- Scroll of Enchant Weapon - Lifeward
	[44582] = 38973,        -- Scroll of Enchant Cloak - Spell Piercing
	[44584] = 38974,        -- Scroll of Enchant Boots - Greater Vitality
	[44588] = 38975,        -- Scroll of Enchant Chest - Exceptional Resilience
	[44589] = 38976,        -- Scroll of Enchant Boots - Superior Agility
	[44590] = 38977,        -- Scroll of Enchant Cloak - Superior Shadow Resistance
	[44591] = 38978,        -- Scroll of Enchant Cloak - Titanweave
	[44592] = 38979,        -- Scroll of Enchant Gloves - Exceptional Spellpower
	[44593] = 38980,        -- Scroll of Enchant Bracers - Major Spirit
	[44595] = 38981,        -- Scroll of Enchant 2H Weapon - Scourgebane
	[44596] = 38982,        -- Scroll of Enchant Cloak - Superior Arcane Resistance
	[44598] = 38984,        -- Scroll of Enchant Bracer - Expertise
	[44612] = 38985,        -- Scroll of Enchant Gloves - Greater Blasting
	[44616] = 38987,        -- Scroll of Enchant Bracers - Greater Stats
	[44621] = 38988,        -- Scroll of Enchant Weapon - Giant Slayer
	[44623] = 38989,        -- Scroll of Enchant Chest - Super Stats
	[44625] = 38990,        -- Scroll of Enchant Gloves - Armsman
	[44629] = 38991,        -- Scroll of Enchant Weapon - Exceptional Spellpower
	[44630] = 38992,        -- Scroll of Enchant 2H Weapon - Greater Savagery
	[44631] = 38993,        -- Scroll of Enchant Cloak - Shadow Armor
	[44633] = 38995,        -- Scroll of Enchant Weapon - Exceptional Agility
	[44635] = 38997,        -- Scroll of Enchant Bracers - Greater Spellpower
	[46578] = 38998,        -- Scroll of Enchant Weapon - Deathfrost
	[46594] = 38999,        -- Scroll of Enchant Chest - Defense
	[47051] = 39000,        -- Scroll of Enchant Cloak - Steelweave
	[47672] = 39001,        -- Scroll of Enchant Cloak - Mighty Armor
	[47766] = 39002,        -- Scroll of Enchant Chest - Greater Defense
	[47898] = 39003,        -- Scroll of Enchant Cloak - Greater Speed
	[47899] = 39004,        -- Scroll of Enchant Cloak - Wisdom
	[47900] = 39005,        -- Scroll of Enchant Chest - Super Health
	[47901] = 39006,        -- Scroll of Enchant Boots - Tuskarr's Vitality
	[59619] = 44497,        -- Scroll of Enchant Weapon - Accuracy
	[59621] = 44493,        -- Scroll of Enchant Weapon - Berserking
	[59625] = 43987,        -- Scroll of Enchant Weapon - Black Magic
	[60606] = 44449,        -- Scroll of Enchant Boots - Assault
	[60609] = 44456,        -- Scroll of Enchant Cloak - Speed
	[60616] = 38971,        -- Scroll of Enchant Bracers - Striking
	[60621] = 44453,        -- Scroll of Enchant Weapon - Greater Potency
	[60623] = 38986,        -- Scroll of Enchant Boots - Icewalker
	[60653] = 44455,        -- Scroll of Enchant Shield - Greater Intellect
	[60663] = 44457,        -- Scroll of Enchant Cloak - Major Agility
	[60668] = 44458,        -- Scroll of Enchant Gloves - Crusher
	[60691] = 44463,        -- Scroll of Enchant 2H Weapon - Massacre
	[60692] = 44465,        -- Scroll of Enchant Chest - Powerful Stats
	[60707] = 44466,        -- Scroll of Enchant Weapon - Superior Potency
	[60714] = 44467,        -- Scroll of Enchant Weapon - Mighty Spellpower
	[60763] = 44469,        -- Scroll of Enchant Boots - Greater Assault
	[60767] = 44470,        -- Scroll of Enchant Bracer - Superior Spellpower
	[62256] = 44947,        -- Scroll of Enchant Bracer - Major Stamina
	[62257] = 44946,        -- Scroll of Enchant Weapon - Titanguard
	[62948] = 45056,        -- Scroll of Enchant Staff - Greater Spellpower
	[62959] = 45060,        -- Scroll of Enchant Staff - Spellpower
	[63746] = 45628,        -- Scroll of Enchant Boots - Lesser Accuracy
	[64441] = 46026,        -- Scroll of Enchant Weapon - Blade Ward
	[64579] = 46098,        -- Scroll of Enchant Weapon - Blood Draining
	[71692] = 50816,        -- Scroll of Enchant Gloves - Angler
}

Skillet.vellumData2 = {
	[7418] = 38682, -- Enchant Bracer - Minor Health
	[7420] = 38682, -- Enchant Chest - Minor Health
	[7426] = 38682, -- Enchant Chest - Minor Absorption
	[7428] = 38682, -- Enchant Bracer - Minor Deflection
	[7443] = 38682, -- Enchant Chest - Minor Mana
	[7454] = 38682, -- Enchant Cloak - Minor Resistance
	[7457] = 38682, -- Enchant Bracer - Minor Stamina
	[7745] = 39349, -- Enchant 2H Weapon - Minor Impact
	[7748] = 38682, -- Enchant Chest - Lesser Health
	[7766] = 38682, -- Enchant Bracer - Minor Spirit
	[7771] = 38682, -- Enchant Cloak - Minor Protection
	[7776] = 38682, -- Enchant Chest - Lesser Mana
	[7779] = 38682, -- Enchant Bracer - Minor Agility
	[7782] = 38682, -- Enchant Bracer - Minor Strength
	[7786] = 39349, -- Enchant Weapon - Minor Beastslayer
	[7788] = 39349, -- Enchant Weapon - Minor Striking
	[7793] = 39349, -- Enchant 2H Weapon - Lesser Intellect
	[7857] = 38682, -- Enchant Chest - Health
	[7859] = 38682, -- Enchant Bracer - Lesser Spirit
	[7861] = 38682, -- Enchant Cloak - Lesser Fire Resistance
	[7863] = 38682, -- Enchant Boots - Minor Stamina
	[7867] = 38682, -- Enchant Boots - Minor Agility
	[13378] = 38682, -- Enchant Shield - Minor Stamina
	[13380] = 39349, -- Enchant 2H Weapon - Lesser Spirit
	[13419] = 38682, -- Enchant Cloak - Minor Agility
	[13421] = 38682, -- Enchant Cloak - Lesser Protection
	[13464] = 38682, -- Enchant Shield - Lesser Protection
	[13485] = 38682, -- Enchant Shield - Lesser Spirit
	[13501] = 38682, -- Enchant Bracer - Lesser Stamina
	[13503] = 39349, -- Enchant Weapon - Lesser Striking
	[13522] = 38682, -- Enchant Cloak - Lesser Shadow Resistance
	[13529] = 39349, -- Enchant 2H Weapon - Lesser Impact
	[13536] = 38682, -- Enchant Bracer - Lesser Strength
	[13538] = 38682, -- Enchant Chest - Lesser Absorption
	[13607] = 38682, -- Enchant Chest - Mana
	[13612] = 38682, -- Enchant Gloves - Mining
	[13617] = 38682, -- Enchant Gloves - Herbalism
	[13620] = 38682, -- Enchant Gloves - Fishing
	[13622] = 38682, -- Enchant Bracer - Lesser Intellect
	[13626] = 38682, -- Enchant Chest - Minor Stats
	[13631] = 38682, -- Enchant Shield - Lesser Stamina
	[13635] = 38682, -- Enchant Cloak - Defense
	[13637] = 38682, -- Enchant Boots - Lesser Agility
	[13640] = 38682, -- Enchant Chest - Greater Health
	[13642] = 38682, -- Enchant Bracer - Spirit
	[13644] = 38682, -- Enchant Boots - Lesser Stamina
	[13646] = 38682, -- Enchant Bracer - Lesser Deflection
	[13648] = 38682, -- Enchant Bracer - Stamina
	[13653] = 39349, -- Enchant Weapon - Lesser Beastslayer
	[13655] = 39349, -- Enchant Weapon - Lesser Elemental Slayer
	[13657] = 38682, -- Enchant Cloak - Fire Resistance
	[13659] = 38682, -- Enchant Shield - Spirit
	[13661] = 38682, -- Enchant Bracer - Strength
	[13663] = 38682, -- Enchant Chest - Greater Mana
	[13687] = 38682, -- Enchant Boots - Lesser Spirit
	[13689] = 38682, -- Enchant Shield - Lesser Block
	[13693] = 39349, -- Enchant Weapon - Striking
	[13695] = 39349, -- Enchant 2H Weapon - Impact
	[13698] = 38682, -- Enchant Gloves - Skinning
	[13700] = 38682, -- Enchant Chest - Lesser Stats
	[13746] = 38682, -- Enchant Cloak - Greater Defense
	[13794] = 38682, -- Enchant Cloak - Resistance
	[13815] = 38682, -- Enchant Gloves - Agility
	[13817] = 38682, -- Enchant Shield - Stamina
	[13822] = 38682, -- Enchant Bracer - Intellect
	[13836] = 38682, -- Enchant Boots - Stamina
	[13841] = 38682, -- Enchant Gloves - Advanced Mining
	[13846] = 38682, -- Enchant Bracer - Greater Spirit
	[13858] = 38682, -- Enchant Chest - Superior Health
	[13868] = 38682, -- Enchant Gloves - Advanced Herbalism
	[13882] = 38682, -- Enchant Cloak - Lesser Agility
	[13887] = 38682, -- Enchant Gloves - Strength
	[13890] = 38682, -- Enchant Boots - Minor Speed
	[13898] = 39349, -- Enchant Weapon - Fiery Weapon
	[13905] = 38682, -- Enchant Shield - Greater Spirit
	[13915] = 39349, -- Enchant Weapon - Demonslaying
	[13917] = 38682, -- Enchant Chest - Superior Mana
	[13931] = 38682, -- Enchant Bracer - Deflection
	[13933] = 38682, -- Enchant Shield - Frost Resistance
	[13935] = 38682, -- Enchant Boots - Agility
	[13937] = 39349, -- Enchant 2H Weapon - Greater Impact
	[13939] = 38682, -- Enchant Bracer - Greater Strength
	[13941] = 38682, -- Enchant Chest - Stats
	[13943] = 39349, -- Enchant Weapon - Greater Striking
	[13945] = 38682, -- Enchant Bracer - Greater Stamina
	[13947] = 38682, -- Enchant Gloves - Riding Skill
	[13948] = 38682, -- Enchant Gloves - Minor Haste
	[20008] = 38682, -- Enchant Bracer - Greater Intellect
	[20009] = 38682, -- Enchant Bracer - Superior Spirit
	[20010] = 38682, -- Enchant Bracer - Superior Strength
	[20011] = 38682, -- Enchant Bracer - Superior Stamina
	[20012] = 38682, -- Enchant Gloves - Greater Agility
	[20013] = 38682, -- Enchant Gloves - Greater Strength
	[20014] = 38682, -- Enchant Cloak - Greater Resistance
	[20015] = 38682, -- Enchant Cloak - Superior Defense
	[20016] = 38682, -- Enchant Shield - Vitality
	[20017] = 38682, -- Enchant Shield - Greater Stamina
	[20020] = 38682, -- Enchant Boots - Greater Stamina
	[20023] = 38682, -- Enchant Boots - Greater Agility
	[20024] = 38682, -- Enchant Boots - Spirit
	[20025] = 38682, -- Enchant Chest - Greater Stats
	[20026] = 38682, -- Enchant Chest - Major Health
	[20028] = 38682, -- Enchant Chest - Major Mana
	[20029] = 39349, -- Enchant Weapon - Icy Chill
	[20030] = 39349, -- Enchant 2H Weapon - Superior Impact
	[20031] = 39349, -- Enchant Weapon - Superior Striking
	[20032] = 39349, -- Enchant Weapon - Lifestealing
	[20033] = 39349, -- Enchant Weapon - Unholy Weapon
	[20034] = 39349, -- Enchant Weapon - Crusader
	[20035] = 39349, -- Enchant 2H Weapon - Major Spirit
	[20036] = 39349, -- Enchant 2H Weapon - Major Intellect
	[21931] = 39349, -- Enchant Weapon - Winter's Might
	[22749] = 39349, -- Enchant Weapon - Spellpower
	[22750] = 39349, -- Enchant Weapon - Healing Power
	[23799] = 39349, -- Enchant Weapon - Strength
	[23800] = 39349, -- Enchant Weapon - Agility
	[23801] = 38682, -- Enchant Bracer - Mana Regeneration
	[23802] = 38682, -- Enchant Bracer - Healing Power
	[23803] = 39349, -- Enchant Weapon - Mighty Spirit
	[23804] = 39349, -- Enchant Weapon - Mighty Intellect
	[25072] = 38682, -- Enchant Gloves - Threat
	[25073] = 38682, -- Enchant Gloves - Shadow Power
	[25074] = 38682, -- Enchant Gloves - Frost Power
	[25078] = 38682, -- Enchant Gloves - Fire Power
	[25079] = 38682, -- Enchant Gloves - Healing Power
	[25080] = 38682, -- Enchant Gloves - Superior Agility
	[25081] = 38682, -- Enchant Cloak - Greater Fire Resistance
	[25082] = 38682, -- Enchant Cloak - Greater Nature Resistance
	[25083] = 38682, -- Enchant Cloak - Stealth
	[25084] = 38682, -- Enchant Cloak - Subtlety
	[25086] = 37602, -- Enchant Cloak - Dodge
	[27837] = 39349, -- Enchant 2H Weapon - Agility
	[27899] = 37602, -- Enchant Bracer - Brawn
	[27905] = 37602, -- Enchant Bracer - Stats
	[27906] = 37602, -- Enchant Bracer - Major Defense
	[27911] = 37602, -- Enchant Bracer - Superior Healing
	[27913] = 37602, -- Enchant Bracer - Restore Mana Prime
	[27914] = 37602, -- Enchant Bracer - Fortitude
	[27917] = 37602, -- Enchant Bracer - Spellpower
	[27944] = 37602, -- Enchant Shield - Tough Shield
	[27945] = 37602, -- Enchant Shield - Intellect
	[27946] = 37602, -- Enchant Shield - Shield Block
	[27947] = 37602, -- Enchant Shield - Resistance
	[27948] = 37602, -- Enchant Boots - Vitality
	[27950] = 37602, -- Enchant Boots - Fortitude
	[27951] = 37602, -- Enchant Boots - Dexterity
	[27954] = 37602, -- Enchant Boots - Surefooted
	[27957] = 37602, -- Enchant Chest - Exceptional Health
	[27958] = 43145, -- Enchant Chest - Exceptional Mana
	[27960] = 37602, -- Enchant Chest - Exceptional Stats
	[27961] = 37602, -- Enchant Cloak - Major Armor
	[27962] = 37602, -- Enchant Cloak - Major Resistance
	[27967] = 39350, -- Enchant Weapon - Major Striking
	[27968] = 39350, -- Enchant Weapon - Major Intellect
	[27971] = 39350, -- Enchant 2H Weapon - Savagery
	[27972] = 39350, -- Enchant Weapon - Potency
	[27975] = 39350, -- Enchant Weapon - Major Spellpower
	[27977] = 39350, -- Enchant 2H Weapon - Major Agility
	[27981] = 39350, -- Enchant Weapon - Sunfire
	[27982] = 39350, -- Enchant Weapon - Soulfrost
	[27984] = 39350, -- Enchant Weapon - Mongoose
	[28003] = 39350, -- Enchant Weapon - Spellsurge
	[28004] = 39350, -- Enchant Weapon - Battlemaster
	[33990] = 37602, -- Enchant Chest - Major Spirit
	[33991] = 37602, -- Enchant Chest - Restore Mana Prime
	[33992] = 37602, -- Enchant Chest - Major Resilience
	[33993] = 37602, -- Enchant Gloves - Blasting
	[33994] = 37602, -- Enchant Gloves - Precise Strikes
	[33995] = 37602, -- Enchant Gloves - Major Strength
	[33996] = 37602, -- Enchant Gloves - Assault
	[33997] = 37602, -- Enchant Gloves - Major Spellpower
	[33999] = 37602, -- Enchant Gloves - Major Healing
	[34001] = 37602, -- Enchant Bracer - Major Intellect
	[34002] = 37602, -- Enchant Bracer - Assault
	[34003] = 37602, -- Enchant Cloak - Spell Penetration
	[34004] = 37602, -- Enchant Cloak - Greater Agility
	[34005] = 37602, -- Enchant Cloak - Greater Arcane Resistance
	[34006] = 37602, -- Enchant Cloak - Greater Shadow Resistance
	[34007] = 37602, -- Enchant Boots - Cat's Swiftness
	[34008] = 37602, -- Enchant Boots - Boar's Speed
	[34009] = 37602, -- Enchant Shield - Major Stamina
	[34010] = 39350, -- Enchant Weapon - Major Healing
	[42620] = 39350, -- Enchant Weapon - Greater Agility
	[42974] = 43146, -- Enchant Weapon - Executioner
	[44383] = 37602, -- Enchant Shield - Resilience
	[44483] = 43145, -- Enchant Cloak - Superior Frost Resistance
	[44484] = 43145, -- Enchant Gloves - Expertise
	[44488] = 43145, -- Enchant Gloves - Precision
	[44489] = 43145, -- Enchant Shield - Defense
	[44492] = 43145, -- Enchant Chest - Mighty Health
	[44494] = 43145, -- Enchant Cloak - Superior Nature Resistance
	[44500] = 43145, -- Enchant Cloak - Superior Agility
	[44506] = 43145, -- Enchant Gloves - Gatherer
	[44508] = 43145, -- Enchant Boots - Greater Spirit
	[44509] = 43145, -- Enchant Chest - Greater Mana Restoration
	[44510] = 43146, -- Enchant Weapon - Exceptional Spirit
	[44513] = 43145, -- Enchant Gloves - Greater Assault
	[44524] = 43146, -- Enchant Weapon - Icebreaker
	[44528] = 43145, -- Enchant Boots - Greater Fortitude
	[44529] = 43145, -- Enchant Gloves - Major Agility
	[44555] = 43145, -- Enchant Bracers - Exceptional Intellect
	[44556] = 43145, -- Enchant Cloak - Superior Fire Resistance
	[44575] = 43145, -- Enchant Bracers - Greater Assault
	[44576] = 43146, -- Enchant Weapon - Lifeward
	[44582] = 43145, -- Enchant Cloak - Spell Piercing
	[44584] = 43145, -- Enchant Boots - Greater Vitality
	[44588] = 43145, -- Enchant Chest - Exceptional Resilience
	[44589] = 43145, -- Enchant Boots - Superior Agility
	[44590] = 43145, -- Enchant Cloak - Superior Shadow Resistance
	[44591] = 43145, -- Enchant Cloak - Titanweave
	[44592] = 43145, -- Enchant Gloves - Exceptional Spellpower
	[44593] = 43145, -- Enchant Bracers - Major Spirit
	[44595] = 39350, -- Enchant 2H Weapon - Scourgebane
	[44596] = 43145, -- Enchant Cloak - Superior Arcane Resistance
	[44598] = 43145, -- Enchant Bracer - Expertise
	[44616] = 43145, -- Enchant Bracers - Greater Stats
	[44621] = 43146, -- Enchant Weapon - Giant Slayer
	[44623] = 43145, -- Enchant Chest - Super Stats
	[44625] = 43145, -- Enchant Gloves - Armsman
	[44629] = 43146, -- Enchant Weapon - Exceptional Spellpower
	[44630] = 43146, -- Enchant 2H Weapon - Greater Savagery
	[44631] = 43145, -- Enchant Cloak - Shadow Armor
	[44633] = 43146, -- Enchant Weapon - Exceptional Agility
	[44635] = 43145, -- Enchant Bracers - Greater Spellpower
	[46578] = 43146, -- Enchant Weapon - Deathfrost
	[46594] = 37602, -- Enchant Chest - Defense
	[47051] = 37602, -- Enchant Cloak - Steelweave
	[47672] = 43145, -- Enchant Cloak - Mighty Armor
	[47766] = 43145, -- Enchant Chest - Greater Defense
	[47898] = 43145, -- Enchant Cloak - Greater Speed
	[47899] = 43145, -- Enchant Cloak - Wisdom
	[47900] = 43145, -- Enchant Chest - Super Health
	[47901] = 43145, -- Enchant Boots - Tuskarr's Vitality
	[59619] = 43146, -- Enchant Weapon - Accuracy
	[59621] = 43146, -- Enchant Weapon - Berserking
	[59625] = 43146, -- Enchant Weapon - Black Magic
	[60606] = 43145, -- Enchant Boots - Assault
	[60609] = 43145, -- Enchant Cloak - Speed
	[60616] = 43145, -- Enchant Bracers - Striking
	[60621] = 43146, -- Enchant Weapon - Greater Potency
	[60623] = 43145, -- Enchant Boots - Icewalker
	[60653] = 43145, -- Enchant Shield - Greater Intellect
	[60663] = 43145, -- Enchant Cloak - Major Agility
	[60668] = 43145, -- Enchant Gloves - Crusher
	[60691] = 43146, -- Enchant 2H Weapon - Massacre
	[60692] = 43145, -- Enchant Chest - Powerful Stats
	[60707] = 43146, -- Enchant Weapon - Superior Potency
	[60714] = 43146, -- Enchant Weapon - Mighty Spellpower
	[60763] = 43145, -- Enchant Boots - Greater Assault
	[60767] = 43145, -- Enchant Bracer - Superior Spellpower
	[62256] = 43145, -- Enchant Bracer - Major Stamina
	[62948] = 43146, -- Enchant Staff - Greater Spellpower
	[62959] = 43146, -- Enchant Staff - Spellpower
	[63746] = 38682, -- Enchant Boots - Lesser Accuracy
	[64441] = 43146, -- Enchant Weapon - Blade Ward
	[64579] = 43146, -- Enchant Weapon - Blood Draining
	[71692] = 38682, -- Enchant Gloves - Angler
	[62257] = 43146, -- Enchant Weapon - Titanguard
	[44612] = 43145, -- Enchant Gloves - Greater Blasting
}
