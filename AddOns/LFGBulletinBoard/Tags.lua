local TOCNAME,GBB=...

-- IMPORTANT, everything must be in low-case and with now space!

local function langSplit(source)
	local ret={}
	for lang,pat in pairs(source) do
		if pat~="-" then 
			ret[lang]=GBB.Tool.Split(pat," ")
		end
	end
	return ret
end

GBB.suffixTagsLoc=langSplit({
	enGB ="s group run runs",
	deDE ="gruppe",
	ruRU ="группран фарм фарма фармить",
	frFR = "groupe",
	zhTW = "",
	zhCN = "",
})

GBB.searchTagsLoc =langSplit({
	enGB = "group lfg lf lfm lftank lfheal lfhealer lfdps lfdd dd heal healer tank dps xdd xheal xhealer xtank druid hunter mage pala paladin priest rogue rouge shaman warlock warrior elite quest elitequest elitequests",				

	deDE = "gesucht suche suchen sucht such gruppe grp sfg sfm druide dudu jäger magier priester warri schurke rschami schamane hexer hexenmeister hm krieger heiler xheiler go run",

	ruRU = "лфг ищет ищу нид нужны лфм лф2м ищем пати похилю лф танк хил нужен дд рдд мдд ршам рога вар прист армс пал",
	frFR = "groupe cherche chasseur druide mage paladin pretre voleur chaman quete",

	zhTW = "缺 來 找 徵 坦 補 DD 輸出 戰 聖 薩 獵 德 賊 法 牧 術",
	zhCN = "= 缺 来 找 德 T N ND DZ FS SS SM",
})

GBB.badTagsLoc = langSplit({
	enGB = "layer",
	deDE = "fc",
	ruRU = "гильдию гильдия слой",
	frFR = "",
	zhTW = "影布 回流",
	zhCN = "影布 回流",
})

GBB.heroicTagsLoc=langSplit({
	enGB ="h hc heroic",
	deDE ="h hc heroic",
	ruRU ="гер героик",
	frFR = "h hc heroic hm hero heroique",
	zhTW = "h 英雄",
	zhCN = "h H 英雄",
})



GBB.dungeonTagsLoc={
	enGB = langSplit({
		["RFC"] = 	"rfc ragefire chasm" ,
		["DM"]  = 	"deadmines vc vancleef dead mines mine" ,
		["WC"]  = 	"wc wailing caverns" ,	
		["SFK"] = 	"sfk shadowfang" ,
		["STK"] = 	"stk stock stockade stockades" ,
		["BFD"] = 	"bfd blackfathom fathom" ,
		["GNO"] =  	"gnomer gno gnomeregan gnomeragan gnome gnomregan gnomragan gnom gnomergan" ,
		["RFK"] = 	"rfk kraul" ,
		["SM2"] =	"sm scarlet monastery mona",
		["SMG"] = 	"smgy smg gy graveyard" ,
		["SML"] = 	"smlib sml lib library" ,
		["SMA"] = 	"smarm sma arm armory herod armoury arms" ,
		["SMC"] =  	"smcath smc cath cathedral",
		["RFD"] = 	"rfd downs" ,
		["ULD"] = 	"uld ulda uldaman ulduman uldman uldama udaman" ,
		["ZF"]  = 	"zf zul farrak zul'farrak zulfarrak zulfarak zul´farrak zul`farrak zulfa zulf" ,
		["MAR"] = 	"mar mara maraudon mauradon mauro maurodon princessrun maraudin maura marau mauraudon" ,
		["ST"]  = 	"st sunken atal temple" ,
		["BRD"] = 	"brd emperor emp arenarun angerforge blackrockdepth",
		["DM2"] =	"dire maul diremaul",
		["DME"] =  	"dme dmeast east puzilin jumprun",
		["DMN"] = 	"dmn dmnorth north tribute",
		["DMW"] = 	"dmw dmwest west",
		["STR"] = 	"stratlive live living stratUD undead ud baron stratholme stath stratholm strah strath strat starth",
		["SCH"] = 	"scholomance scholo sholo sholomance",
		["LBRS"] = 	"lower lbrs lrbs",
		["UBRS"] =	"upper ubrs urbs rend",
		["RAMPS"] = "ramparts rampart ramp ramps",
		["BF"] = "furnace furn bf",
		["SP"] = 	"slavepens pens sp",
		["UB"] = 	"underbog ub",
		["MT"] = 	"manatombs mana mt tomb tombs",
		["CRYPTS"] = "crypts crypt auchenai ac acrypts acrypt",
		["SETH"] = 	"sethekk seth sethek",
		["OHB"] = 	"ohb oh ohf durnholde hillsbrad escape",
		["MECH"] = 	"mech mechanar",
		["BM"] = 	"morass bm black",
		["MGT"] = 	"mgt mrt terrace magisters magister",
		["SH"] = 	"sh shattered shatered shaterred",
		["BOT"] = 	"botanica bot",
		["SL"] = 	"sl slab labyrinth lab",
		["SV"] = 	"sv steamvault steamvaults steam vault valts",
		["ARC"] = 	"arc arcatraz alcatraz",

		["UK"] = 	"uk utk utgarde",
		["NEX"] = 	"nexus nex",
		["AZN"] = 	"azn an nerub",
		["ANK"] = 	"ank old ako ok kingdom",
		["DTK"] = 	"dtk drak draktharon drak'tharon",
		["VH"] = 	"vh violet hold",
		["GD"] = 	"gd gundrak",
		["HOS"] = 	"hos stone",
		["HOL"] = 	"hol lightning",
		["COS"] = 	"culling cos",
		["OCC"] = 	"occ oculus",
		["UP"] = 	"up pinnacle",
		["FOS"] = 	"fos forge soul",
		["POS"] = 	"pos pit saron",
		["HOR"] = 	"hor reflection",
		["CHAMP"] = "champ toc champion",

		["OS"]   =  "sarth obsidian sanctum",
		["VOA"] = 	"voa vault archavon",
		["EOE"] = 	"eoe maly eternity",
		["ULDAR"] = "uld ulduar",
		["TOTC"] = 	"tc totc totc10 totc25 toc10 toc25 togc",
		["RS"] = 	"rs ruby sanctum hal hal10 hal25",
		["ICC"] = 	"icc icecrown citadel",

		["KARA"] = 	"kara kz karazhan",
		["GL"] = 	"gl gruul gruuls gruul's",
		["MAG"] = 	"mag magtheridon magtheridon's magth",
		["SSC"] = 	"ssc serpentshrine serpentshine",
		["ZA"] = 	"za zulaman zul-aman zaman aman zul'aman",
		["EYE"] = 	"eye tk",
		["HYJAL"] = "hyjal hs hyj",
		["BT"] = 	"bt",
		["SWP"] = 	"swp sunwell plateau plataeu sunwel",
		["ONY"] = 	"onyxia ony",
		["MC"]  = 	"molten core mc",
		["ZG"]  = 	"zg gurub zul'gurub zulgurub zul´gurub zul`gurub zulg",
		["AQ20"] = 	"ruins aq20",
		["BWL"] = 	"blackwing bwl",
		["AQ40"] = 	"aq40" ,
		["NAX"] = 	"placeholdernax",
		["NAXX"] = 	"naxxramas nax naxx nax10 naxx10 nax25 naxx25",
		["WSG"] = 	"wsg warsong ws",
		["AB"]  = 	"basin ab",
		["AV"]  = 	"av valley",
		["EOTS"] =  "storm eots",
		["ARENA"] = "2s 3s 5s 3v3 5v5 2v2 2vs2 3vs3 5vs5",
		["WG"]    = "wg wintergrasp",
		["SOTA"]  = "sota strand ancient",
		["BREW"] =  "brewfest brew coren dire direbrew beerfest",
		["HOLLOW"] = "headless horseman hollow",
		["TRADE"] = "buy buying sell selling wts wtb hitem henchant htrade enchanter", --hlink
		["TRAVEL"] = "sum summ summon summons summoning port portal travel",
		["BLOOD"] = "blood bloodmoon bm",
		["INCUR"] = "inc incur incursion incursions incurusions",
	}),
	zhTW = langSplit({
		["RFC"] = 	"怒焰裂谷 怒驗 怒焰" ,
		["DM"]  = 	"死亡礦坑 死況 死礦" ,
		["WC"]  = 	"哀嚎洞穴 哀號 哀嚎" ,	
		["SFK"] = 	"影牙城堡 影牙" ,
		-- ["STK"] = 	"" ,
		["BFD"] = 	"黑暗深淵 深淵" ,
		["GNO"] =  	"諾姆瑞根" ,
		["RFK"] = 	"剃刀沼澤 沼澤" ,
		["SM2"] =	"血色",
		["SMG"] = 	"血色墓地 墓地" ,
		["SML"] = 	"血色圖書館 圖書館" ,
		["SMA"] = 	"軍械" ,
		["SMC"] =  	"教堂",
		["RFD"] = 	"剃刀高地 高地" ,
		["ULD"] = 	"奧達曼" ,
		["ZF"]  = 	"ZF 組爾法 祖爾法" ,
		["MAR"] = 	"馬拉 瑪拉" ,
		["ST"]  = 	"神廟 阿塔哈卡" ,
		["BRD"] = 	"黑深 深淵",
		["DM2"] =	"厄運 惡運 噩運",
		["DME"] =  	"厄東 惡東 噩東",
		["DMN"] = 	"厄北 惡北 噩北 完美厄運 完美惡運 完美噩運",
		["DMW"] = 	"厄西 惡西 噩西",
		["STR"] = 	"斯坦",
		["SCH"] = 	"通靈",
		["LBRS"] = 	"黑下 黑石塔下",
		["UBRS"] =	"黑上 黑石塔上",
		["RAMPS"] = 	"堡壘 壁壘 火堡 火壘 火堡壘 火壁壘",
		["BF"] = 	"血熔爐 熔爐 融爐 血熔盧 熔盧 融盧",
		["SP"] = 	"奴隸 監獄 奴監",
		["UB"] = 	"深幽 泥沼",
		["MT"] = 	"法力 墓地 法墓",
		["CRYPTS"] = 	"地穴",
		["SETH"] = 	"鳥廳 塞斯克 塞司克 賽司克 賽斯克 鳥聽 烏鴉",
		["OHB"] = 	"索爾 丘陵",
		["MECH"] = 	"麥克",
		["BM"] = 	"18波 黑色沼澤 黑沼 沼澤",
		["MGT"] = 	"博學",
		["SH"] = 	"破碎",
		["BOT"] = 	"波塔 波卡",
		["SL"] = 	"迷宮 暗影 暗宮",
		["SV"] = 	"蒸氣 蒸汽",
		["ARC"] = 	"亞克",
		--
		["UK"] = 	"俄賽 俄塞 要塞",
		["NEX"] = 	"奧心 奧核 奧核之心",
		["AZN"] = 	"azn 奈優 奈幽 幽奈",
		["ANK"] = 	"安卡罕特 古王國",
		["DTK"] = 	"dtk 德拉克 德拉克薩隆 drak'tharon",
		["VH"] = 	"紫堡 紫羅蘭",
		["GD"] = 	"剛德拉克 剛德",
		["HOS"] = 	"石之大廳 石廳",
		["HOL"] = 	"hol 雷光",
		["COS"] = 	"時光 斯坦",
		["OCC"] = 	"之眼 奧眼",
		["UP"] = 	"俄顛 俄巔",
		["FOS"] = 	"fos 熔爐 眾魂",
		["POS"] = 	"pos 薩倫 薩輪 薩淵",
		["HOR"] = 	"hor 倒影",
		["CHAMP"] = "勇士",

		["OS"]   = 	"黑曜聖所 黑曜 黑龍 黑耀",
		["VOA"] = 	"亞夏 梵穹殿 寶庫 冬握",
		["EOE"] = 	"藍龍 永恆之眼 永眼 eternity",
		["NAXX"] = 	"naxxramas na 納克",
		["ULDAR"] = "奧杜亞 ulduar",
		["TOTC"] = 	"十字軍 totc totc10 totc25 toc10 toc25 togc",
		["RS"] = 	"晶紅 晶紅龍殿 sanctum hal hal10 hal25",
		["ICC"] = 	"冰冠 冰冠城塞 citadel icc",
		["BREW"] =  "啤酒",

		["KARA"] = 	"卡拉 卡啦",
		["GL"] = 	"戈魯 魯爾 戈乳 哥魯 哥乳",
		["MAG"] = 	"馬肥 瑪色 馬瑟 瑪瑟",
		["SSC"] = 	"毒蛇",
		["ZA"] = 	"ZA 阿曼",
		["EYE"] = 	"風暴 要塞 鳳凰",
		["HYJAL"] = 	"海珊 海山 海加爾",
		["BT"] = 	"黑暗神廟 黑廟",
		["SWP"] = 	"太陽",
		["ONY"] = 	"黑妹 龍妹 奧妮 ONYX",
		["MC"]  = 	"MC 熔火 螺絲",
		["ZG"]  = 	"ZG 祖爾格 組爾格 龍虎",
		["AQ20"] = 	"RAQ AQ20 廢墟",
		["BWL"] = 	"BWL 黑翼",
		["AQ40"] = 	"TAQ AQ40 安琪拉 安其拉" ,
		["NAX"] = 	"Naxxramas NA NAXX naxx 老克 納克",
		["WSG"] = 	"戰哥 戰歌",
		["AB"]  = 	"阿拉溪 阿拉希 阿拉西",
		["AV"]  = 	"奧山 奧特蘭",	
		["EOTS"] = 	"暴風眼 暴風之眼",
		["ARENA"] =	"競技 22 33 3v3 5v5 2v2 2vs2 3vs3 5vs5",
		["TRADE"] = 	"買 賣 售 收 代工 出售 附魔 COD", --hlink
		["TRAVEL"] = "傳送 開門",
		["BLOOD"] = "血月",
		["INCUR"] = "惡夢 入侵",
		["GAMMA"] = "伽馬 伽瑪 Y 隨機",
		["N3"] = "三本 3本",
		["DAILY"] = "日常 週常 周常 周任 週任",
	}),
	zhCN = langSplit({
		["UK"] = 	"乌特加德城堡 乌堡",
		["NEX"] = 	"魔枢",
		["AZN"] = 	"艾卓",
		["ANK"] = 	"安卡赫特：古代王国 王国",
		["DTK"] = 	"达克萨隆要塞 达克萨隆",
		["VH"] = 	"紫罗兰监狱 监狱",
		["GD"] = 	"古达克",
		["HOS"] = 	"岩石大厅",
		["HOL"] = 	"闪电大厅",
		["COS"] = 	"净化斯坦索姆 stsm STSM",
		["OCC"] = 	"魔环",
		["UP"] = 	"乌特加德之巅 乌巅",
		["FOS"] = 	"灵魂洪炉 熔炉",
		["POS"] = 	"萨隆深渊 矿坑",
		["HOR"] = 	"映像大厅",
		["CHAMP"] = "冠军的试炼",
		["NAXX"] = 	"naxx NAXX 纳克萨玛斯",

		["OS"]   =  "黑曜石圣殿 红龙",
		["VOA"] = 	"阿尔卡冯的宝库 宝库 色球",
		["EOE"] = 	"永恒之眼 蓝龙",
		["ULDAR"] = "奥杜尔",
		["TOTC"] = 	"十字军的试炼",
		["RS"] = 	"红玉圣殿",
		["ICC"] = 	"冰冠碉堡",

		["RFC"] = 	"怒焰峡谷 怒焰" ,
		["DM"]  = 	"死亡矿坑 死矿" ,
		["WC"]  = 	"哀嚎洞穴 哀嚎" ,
		["SFK"] = 	"影牙城堡 影牙" ,
		-- ["STK"] = 	"监狱" ,
		["BFD"] = 	"黑暗深渊 深渊" ,
		["GNO"] =  	"诺莫瑞根" ,
		["RFK"] = 	"剃刀沼泽 沼泽" ,
		["SM2"] =	"血色",
		["SMG"] = 	"血色墓地 墓地" ,
		["SML"] = 	"血色图书馆 图书馆" ,
		["SMA"] = 	"武器库" ,
		["SMC"] =  	"教堂",
		["RFD"] = 	"剃刀高地 高地" ,
		["ULD"] = 	"奥达曼" ,
		["ZF"]  = 	"ZLF 祖尔法拉克" ,
		["MAR"] = 	"玛拉顿" ,
		["ST"]  = 	"神庙" ,
		["BRD"] = 	"黑石深渊",
		["DM2"] =	"厄运",
		["DME"] =  	"厄运东",
		["DMN"] = 	"厄运北 完美厄运",
		["DMW"] = 	"厄运西",
		["STR"] = 	"stsm 斯坦索姆",
		["SCH"] = 	"通灵",
		["LBRS"] = 	"黑下 黑石塔下",
		["UBRS"] =	"黑上 黑石塔上",
		["RAMPS"] = "碉堡",
		["BF"] = 	"熔炉",
		["SP"] = 	"围栏",
		["UB"] = 	"幽暗 泥沼",
		["MT"] = 	"法力 陵墓 法墓",
		["CRYPTS"] = "地穴",
		["SETH"] = 	"鸟厅",
		["OHB"] = 	"索尔",
		["MECH"] = 	"能源舰",
		["BM"] = 	"18波 黑色沼澤 黑沼 沼澤",
		["MGT"] = 	"博学",
		["SH"] = 	"破碎",
		["BOT"] = 	"生态船",
		["SL"] = 	"迷宮",
		["SV"] = 	"蒸汽 地窖",
		["ARC"] = 	"禁魔监狱",
		["KARA"] = 	"KLZ 卡拉赞",
		["GL"] = 	"格鲁尔",
		["MAG"] = 	"马肥 玛瑟里顿",
		["SSC"] = 	"毒蛇",
		["ZA"] = 	"ZA 祖阿曼",
		["EYE"] = 	"风暴 要塞",
		["HYJAL"] = "海山 海加尔",
		["BT"] = 	"黑暗神庙 黑庙",
		["SWP"] = 	"太阳井",
		["ONY"] = 	"黑龙 奧妮克希亞",
		["MC"]  = 	"MC 熔火",
		["ZG"]  = 	"ZG 祖格",
		["AQ20"] = 	"FX 废墟",
		["BWL"] = 	"BWL 黑翼",
		["AQ40"] = 	"TAQ 安其拉" ,
		["NAX"] = 	"NAXX 纳克萨玛斯",
		["WSG"] = 	"战歌",
		["AB"]  = 	"阿拉希",
		["AV"]  = 	"奧山 奥特兰",
		["EOTS"] = 	"风暴之眼",
		["ARENA"] =	"竞技 22 33 3v3 5v5 2v2 2vs2 3vs3 5vs5",
		["TRADE"] = "买 卖 收 代工 出售 附魔",
		["TRAVEL"] = "传送 开门",
		["GAMMA"] = "伽马 伽玛 γ 随机",
		["N3"] = "三本 3本",
		["DAILY"] = "日常 周常 周长",
	}),
}

GBB.dungeonTagsLoc.enGB["DEADMINES"]={"dm"}

GBB.dungeonSecondTags = {
	["DEADMINES"] = {"DM","-DMW","-DME","-DMN"},
	["SM2"] = {"SMG","SML","SMA","SMC"},
	["DM2"] = {"DMW","DME","DMN","-DM"},
}

-- Remove any unused dungeon tags based on game version
if WOW_PROJECT_ID == WOW_PROJECT_CLASSIC then
	local isSoD = C_Seasons.GetActiveSeason() == Enum.SeasonID.SeasonOfDiscovery
	local exceptions = {
		-- addon uses 2 different keys for nax in different locales 
		-- should be normalized to one key at some point
		["NAXX"] = true, 
	}

	-- Collect tags valid for vanilla
	local validDungeons = {}
	for _, key in ipairs(GBB.VanillDungeonNames) do
		validDungeons[key] = true
	end
	-- using PvPSodNames just coz it already only has the classic bgs
	for _, key in ipairs(GBB.PvpSodNames) do
		if key == "BLOOD" then
			-- only available in SoD
			validDungeons[key] = isSoD
		else
			validDungeons[key] = true
		end
	end
	for _, key in ipairs(GBB.Misc) do
		if key == "INCUR" then
			-- only available in SoD
			validDungeons[key] = isSoD
		else
			validDungeons[key] = true
		end
	end
	-- iterate over all locales and `nil` out any entries for dungeons not valid for vanilla
	for locale, dungeonTags in pairs(GBB.dungeonTagsLoc) do
		for dungeonKey, _ in pairs(dungeonTags) do
			if not (validDungeons[dungeonKey] 
				or exceptions[dungeonKey]
				or GBB.dungeonSecondTags[dungeonKey])
			then
				GBB.dungeonTagsLoc[locale][dungeonKey] = nil
			end
		end
	end
end