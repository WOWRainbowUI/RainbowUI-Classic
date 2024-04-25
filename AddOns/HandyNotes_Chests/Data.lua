local _, ns = ...
local points = ns.points

ns.bestPet = "可以說，獵人最好的寵物是貓。\n\n以下是一系列不錯的稀有/精英寵物可供馴服：\n\n"
.."莫克瓦 - 7 級，莫高雷血蹄村以西\n拉魯克 - 7 級，杜隆塔爾回音群島\n"
.."暮色潛行者 - 9 級，泰達希爾\n掃蕩者 - 10 級，雷霆崖以東。重生時間 30+ 分鐘\n"
.."迪舒 - 13 級，貧瘠之地北部\n暗影之爪 - 13 級，黑海岸奧伯丁以北\n"
.."胡瑪爾 - 23 級，貧瘠之地棘齒城。重生時間 8+ 小時\n"
.."阿拉加 - 35 級，奧特蘭克。重生時間 2-3 天\n斷牙 - 37 級，荒蕪之地\n"
.."巴格塞拉 - 40 級精英，荊棘谷\n班加拉什國王 - 43 級精英，荊棘谷\n\n"
.."對於那些喜歡風蛇的人來說...當然是哈卡之子\n你可以在祖爾格拉布找到他。60 級精英，當然還有石爪山脈的\n"
.."幼年驕傲之翼（僅限），作為獲得殺戮命令的共同獎勵"
ns.chest1 = "* 10 級被劫物資\n* 10 級法師卷軸\n* 5 個專業配方\n* 白色物品、灰色物品"
ns.chest2 = "* 10 級被劫物資\n* 10 級法師卷軸\n* 13 個專業配方\n* 綠色物品、白色物品、灰色物品"
ns.chest3 = "* 20 級被劫物資\n* 20 級法師卷軸\n* 10 個專業配方\n* 綠色物品、灰色物品"
ns.cozySleepingBag = "第一步：" ..( ( ns.faction == "Alliance" ) and "前往西部荒野的亞歷克斯頓農場" or
"前往貧瘠之地陶拉祖營地以南的被燒毀的塔樓" ) .."\n在廢墟中尋找燒焦的殘骸。\n\n"
.."第二步：" ..( ( ns.faction == "Alliance" ) and "前往貧瘠之地陶拉祖營地以南的被燒毀的塔樓。" or
"前往西部荒野的亞歷克斯頓農場" )
.."\n在廢墟中尋找燒焦的殘骸。\n從附近的一個釘著木板的地方拾取下一個任務。\n\n"
.."第三步：前往石爪山脈，尋找一個\n廢棄的營地。它位於太陽岩避難所東北方向的一條小路旁。\n那裡有一個口袋垃圾，在一個箱子上。\n\n"
.."第四步：向北走，直接上山，尋找一堆土。\n"
.."點擊完成“攀爬”。接受“濕活”。\n\n"
.."第五步：洛克莫丹，在與\n濕地接壤的水壩的壁架上。點擊鷹形雕像完成\n並開始任務。\n\n"
.."第六步：攀登索拉丁之牆，與希爾斯布萊德丘陵和阿拉希\n高地接壤。從希爾斯布萊德丘陵一側\n通過一輛破損的馬車爬上去。\n繼續攀爬，你會發現一個大廳和一個袋子。\n\n"
.."注意：這個任務鏈獎勵你 8 件學生\n飼料。目前獲得這種休息經驗加成的唯一途徑！"
ns.felPortals = "術士探索者小鬼使用，\n法師用於他們的邪能火球符文等"
ns.twoMeditate = "在 17 級時前往暴風城的公園（人類/\n矮人）、達納蘇斯的月神殿（暗夜精靈）、\n"
.."幽暗城的戰爭區（所有部落），從牧師訓練師那裡獲得一個種族\n任務。\n\n"
.."最終你將能夠跨種族（以及陣營，錯誤？）共享多個冥想\n增益效果。\n\n"
.."玩家 1：/kneel；玩家 2：/pray"
ns.voidTouchedTitle = "虛空之觸裝備指南"
ns.voidTouched = "(1) 鍛造、制皮或裁縫中的一項達到 25 級和 100 級。\n\n"
.."(2) 從拍賣行購買一瓶融合的悔恨藥劑。\n煉金術士可以從塔倫米爾和南海鎮之間的路上的齊希爾處購買此配方；從\n赤松森林/艾爾文森林到夜色鎮的路上的克茲克斯處購買。\n\n"
.."(3) 在灰谷的佐拉姆海岸找到死去的暮光信徒。喝下藥劑並與他交談。\n\n"
.."(4) 在黑澗深淵中，擊敗第二個 Boss，加穆拉。\n與老塞拉基斯的屍體互動。\n\n"
.."(5) 在棘齒城接受來自諾拉·安妮哈特的任務。奇怪的\n灰塵 x 40，大魔法精華 x 5，小微光碎片 x 2，\n"
.."一把變幻的鱗片，5 金。鱗片從老\n塞拉基斯身上掉落。其他東西從拍賣行獲得。\n\n"
.."(6) 用她的護身符獎勵，返回黑fathom 深淵，前往凱爾里斯的\n水下洞穴。拾取工匠的箱子。“盒子”\n"
.."神奇地出現在你的包裡。\n\n(7) 前往奧特蘭克山脈。使用柱子摧毀盒子。\n\n"
.."(8) 一個陰影人物出現了。互動。你必須選擇\n“好吧，讓我看看”選項。\n\n"
.."(9) 恭喜。你現在擁有所有第一階段的配方。可能是 BiS！\n\n"
.."(從 (6) 開始重複，以獲得另一個碎片)"
			
			
-- Icons:	1 -3 	Chest
--			4		Void-Touched
--			5		Best Pets
--			6		Cozy Sleeping Bag
--			7		Fel Portals
	
	
--=======================================================================================================
--
-- EASTERN KINGDOMS
--
--=======================================================================================================

points[ 1416 ] = { -- Alterac Mountains
	[31007260] = { npc=14222, name="阿拉加", title="最佳獵人寵物", icon=5, guide=ns.bestPet },
	[31408480] = { npc=14222, name="阿拉加", title="最佳獵人寵物", icon=5, guide=ns.bestPet, continent=true },
	[38808980] = { npc=14222, name="阿拉加", title="最佳獵人寵物", icon=5, guide=ns.bestPet },
}

points[ 1417 ] = { -- Arathi Highlands
	[22502420] = { name="匆忙捲起的床墊", title="舒適的睡袋", icon=6, guide=ns.cozySleepingBag,
quest={ { ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 } },
questName={ { "...以及你找到的那張紙條", "墊腳石", "攀爬", "弄濕的工作", "鷹之拳",
"這裡應該就是了" }, continent=true },
tip="第六步。查看希爾斯布萊德丘陵地圖\n以了解從哪裡開始這一步" },
}

points[ 1418 ] = { -- Badlands
	[45203520] = { npc=2850, name="斷牙", title="最佳獵人寵物", icon=5, guide=ns.bestPet },
	[54801480] = { npc=2850, name="斷牙", title="最佳獵人寵物", icon=5, guide=ns.bestPet, continent=true },
	[63003020] = { npc=2850, name="斷牙", title="最佳獵人寵物", icon=5, guide=ns.bestPet },
}

points[ 1430 ] = { -- Deadwind Pass
}

points[ 1426 ] = { -- Dun Morogh
	[21705200] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[23105200] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[23305420] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[23505240] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[26005120] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[26104120] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[26803640] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[34005110] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[36104010] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[38704330] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[39204650] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[40104810] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[41004890] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[41504440] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[42003590] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[42804710] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[43504920] = {  title="破損的箱子", icon=1, tip=ns.chest1, continent=true },
	[66905960] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[67506070] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[68905940] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[71005900] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[71205050] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[71605180] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[72104990] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[73005350] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[74606170] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[74805650] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[76005810] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[77906190] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[79305870] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[79705470] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
}

points[ 1431 ] = { -- Duskwood
--[[	[18002560] = { name="Dire Wolf (Various)", class={ "PRIEST" }, level=17, guide={ ns.twoMeditate },
					tip="Collect the Paws off these mobs. For the first quest", faction="Alliance",
					quest={ { ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) } }, 
					questName={ { ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } } },
	[37602240] = { name="Dire Wolf (Various)", class={ "PRIEST" }, level=17, guide={ ns.twoMeditate },
					tip="Collect the Paws off these mobs. For the first quest", faction="Alliance",
					quest={ { ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) } }, 
					questName={ { ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } } },
	[55406160] = { name="Dire Wolf (Various)", class={ "PRIEST" }, level=17, guide={ ns.twoMeditate },
					tip="Collect the Paws off these mobs. For the first quest", faction="Alliance",
					quest={ { ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) } }, 
					questName={ { ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } } },
	[59001960] = { name="Dire Wolf (Various)", class={ "PRIEST" }, level=17, guide={ ns.twoMeditate },
					tip="Collect the Paws off these mobs. For the first quest", faction="Alliance",
					quest={ { ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) } }, 
					questName={ { ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } } },
	[68203400] = { name="Dire Wolf (Various)", class={ "PRIEST" }, level=17, guide={ ns.twoMeditate },
					tip="Collect the Paws off these mobs. For the first quest", faction="Alliance",
					quest={ { ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) } }, 
					questName={ { ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } } },
							]]
	[81801980] = { npc=3134, name="克茲克斯", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
tip="煉金術士可以購買混合\n悔恨藥劑配方",
quest={ 78909 }, questName={ "變換鱗片護身符號" }, continent=true },
}

points[ 1429 ] = { -- Elwynn Forest
--[[	[12463405] = { npc=11397, name="Nara Meideros", class={ "PRIEST" }, level=17, guide={ ns.twoMeditate },
					tip="Begin here", faction="Alliance",
					quest={ { ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) } }, 
					questName={ { ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } } },
	[19392475] = { npc=376, name="High Priestess Laurena", class={ "PRIEST" }, level=17, guide={ ns.twoMeditate },
					tip="Finish the second quest here. /kneel always!", faction="Alliance",
					quest={ { ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race=="Night elf") and 78193 or 0 ) } }, 
					questName={ { ( ( ns.race == "Night elf" ) and "Secrets of the Light (1)" or "" ), 
							( ( ns.race == "Night Elf") and "Secrets of the Light (2)" or "" ) } } },
]]
	[23805890] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[24409350] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[26049211] = { title="破損的箱子", icon=1, tip=ns.chest1 }, -- V
	[27808840] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[30806480] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[36206580] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[37908330] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[38208200] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[40307750] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[40807760] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[41605280] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[41807800] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[41808150] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[47608647] = { title="破損的箱子", icon=1, tip=ns.chest1 }, -- V
	[48008710] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[48608790] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[52505900] = { title="破損的箱子", icon=1, tip=ns.chest1, continent=true },
	[54306670] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[55606700] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[56706680] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[61004910] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[61304970] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[61704680] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[62204800] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[64805730] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[65004130] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[65005630] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[66104070] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[68404460] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[69903880] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[71107770] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[71108040] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[71507670] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[74005000] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[75508520] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[76508650] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[77308520] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[78205750] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[79305710] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[79405450] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[79505710] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[79705530] = { title="破損的箱子", icon=1, tip=ns.chest1 },
}

points[ 1424 ] = { -- Hillsbrad Foothills
--[[	[33003600] = { name="Hillsbrad mobs (Various)", class={ "PRIEST" }, faction="Horde", level=18, guide={ ns.twoMeditate },
					quest={ { ( ( ns.race == "Troll" ) and 78198 or 0 ), ( ( ns.race == "Troll" ) and 78199 or 0 ) } }, 
					questName={ { ( ( ns.race == "Troll" ) and "Secrets of the Loa (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of the Loa (2)" or "" ) } } },
	[35204700] = { name="Hillsbrad mobs (Various)", class={ "PRIEST" }, faction="Horde", level=18, guide={ ns.twoMeditate },
					quest={ { ( ( ns.race == "Troll" ) and 78198 or 0 ), ( ( ns.race == "Troll" ) and 78199 or 0 ) } }, 
					questName={ { ( ( ns.race == "Troll" ) and "Secrets of the Loa (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of the Loa (2)" or "" ) } } },
]]
	[50514971] = { 
  npc = 3537, 
  name = "齊希爾",
  title = ns.voidTouchedTitle, 
  icon = 4, 
  guide = ns.voidTouched,
  tip = "煉金術士可以購買\n聚合的悔恨藥劑配方",
  quest = { 78909 }, 
  questName = { "變換鱗片護符" } 
},
[52714131] = { 
  npc = 3537, 
  name = "齊希爾",
  title = ns.voidTouchedTitle, 
  icon = 4, 
  guide = ns.voidTouched,
  tip = "煉金術士可以購買\n聚合的悔恨藥劑配方",
  quest = { 78909 }, 
  questName = { "變換鱗片護符" } 
},
[55511881] = { 
  npc = 3537, 
  name = "齊希爾",
  title = ns.voidTouchedTitle, 
  icon = 4, 
  guide = ns.voidTouched,
  tip = "煉金術士可以購買\n聚合的悔恨藥劑配方",
  quest = { 78909 }, 
  questName = { "變換鱗片護符" } 
},
[55612661] = { 
  npc = 3537, 
  name = "齊希爾",
  title = ns.voidTouchedTitle, 
  icon = 4, 
  guide = ns.voidTouched,
  tip = "煉金術士可以購買\n聚合的悔恨藥劑配方",
  quest = { 78909 }, 
  questName = { "變換鱗片護符" }, 
  continent = true 
},
[55613461] = { 
  npc = 3537, 
  name = "齊希爾",
  title = ns.voidTouchedTitle, 
  icon = 4, 
  guide = ns.voidTouched,
  tip = "煉金術士可以購買\n聚合的悔恨藥劑配方",
  quest = { 78909 }, 
  questName = { "變換鱗片護符" } 
},
[60712021] = { 
  npc = 3537, 
  name = "齊希爾",
  title = ns.voidTouchedTitle, 
  icon = 4, 
  guide = ns.voidTouched,
  tip = "煉金術士可以購買\n聚合的悔恨藥劑配方",
  quest = { 78909 }, 
  questName = { "變換鱗片護符" } 
},
[88557351] = { 
  name = "陰影人物 / 純淨之光碎片",
  title = ns.voidTouchedTitle, 
  icon = 4, 
  guide = ns.voidTouched,
  tip = "通過 Ravenholdt 莊園" 
},

[87304960] = { 
  name = "舊破車",
  title = "舒適的睡袋", 
  icon = 6, 
  guide = ns.cozySleepingBag,				
  quest = { 
    { ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 } 
  }, 
  questName = { 
    { "...還有你找到的那張紙條", "墊腳石", "攀爬", "濕活", "鷹爪", "就是這裡了" } 
  }, 
  continent = true,
  tip = "第六步。從這裡開始第六步，\n而不是從阿拉希高地那邊" 
},
}

points[ 1455 ] = { -- Ironforge
}

points[ 1432 ] = { -- Loch Modan
	[24803070] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[26004930] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[26504420] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[26905760] = {  title="破損的箱子", icon=2, tip=ns.chest2, continent=true },
	[27908330] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[28308740] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[31507550] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[34402710] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[34509000] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[34609110] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[34908250] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[35102680] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[35602480] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[35701650] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[35909370] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[36008460] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[36302350] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[37608650] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[37701610] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[39801240] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[48002090] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[49002970] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[54502600] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[48103950] = {  title="破損的箱子", icon=3, tip=ns.chest3, continent=true },
	[59201360] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[68006590] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[68301860] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[68806250] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[69302280] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[69806630] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[73306440] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[75502500] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[77001440] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[77701840] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[79501610] = {  title="破損的箱子", icon=3, tip=ns.chest3 },

	[49501280] = { name="雕刻的雕像", title="舒適的睡袋", icon=6, guide=ns.cozySleepingBag,
quest={ { ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 } },
questName={ { "...以及你找到的那張紙條", "墊腳石", "攀爬", "弄濕的工作", "鷹之拳",
"這裡應該就是了" } }, tip="第五步", continent=true },
}

points[ 1433 ] = { -- Redridge Mountains
	[14506170] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[14906430] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[17106360] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[17201800] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[19802150] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[20501390] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[21103620] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[21701930] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[23402700] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[27302140] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[27902850] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[28008400] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[28202840] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[29608450] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[32308300] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[34102570] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[39003180] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[43807090] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[47407060] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[52304670] = { title="破損的箱子", icon=3, tip=ns.chest3, continent=true },
	[56005740] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[14506170] = { title="破損的箱子", icon=3, tip=ns.chest3 },

	[29803040] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[79003340] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[79007300] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[83204480] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[86305250] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals, continent=true },
}

points[ 1421 ] = { -- Silverpine Forest
	[36502930] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[43502250] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[43503170] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[44107170] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[44702050] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[44902350] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[45307500] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[45405420] = { title="破損的箱子", icon=2, tip=ns.chest2, continent=true  },
	[46007150] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[46305480] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[47207380] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[47705550] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[48302450] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[55801960] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[56202760] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[59101810] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[59901750] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[60801630] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[64801210] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[66301300] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[64504970] = { title="破損的箱子", icon=3, tip=ns.chest3, continent=true },
	[65004200] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[65202320] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[65802340] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[66804550] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[67502540] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[67802420] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[77603100] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[80202850] = { title="破損的箱子", icon=3, tip=ns.chest3 },

	[38802340] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals, continent=true },
	[44602550] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[45403180] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[50205680] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[50206520] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
}

points[ 1453 ] = { -- Stormwind City
--[[	[20685007] = { npc=11397, name="Nara Meideros", class={ "PRIEST" }, level=17, guide={ ns.twoMeditate },
					tip="Begin here", faction="Alliance",
					quest={ { ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) } }, 
					questName={ { ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } } },
	[38582606] = { npc=376, name="High Priestess Laurena", class={ "PRIEST" }, level=17, guide={ ns.twoMeditate },
					tip="Finish the second quest here. /kneel always!", faction="Alliance",
					quest={ { ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race=="Night elf") and 78193 or 0 ) } }, 
					questName={ { ( ( ns.race == "Night elf" ) and "Secrets of the Light (1)" or "" ), 
							( ( ns.race == "Night Elf") and "Secrets of the Light (2)" or "" ) } } },
]]
}

points[ 1434 ] = { -- Stranglethorn Vale
	[38603560] = { npc=731, name="班加拉什王", title="最佳獵人寵物", icon=5, guide=ns.bestPet, continent=true },
	[47602880] = { npc=728, name="巴格希拉", title="最佳獵人寵物", icon=5, guide=ns.bestPet },
	[49002060] = { npc=728, name="巴格希拉", title="最佳獵人寵物", icon=5, guide=ns.bestPet },
	[49802460] = { npc=728, name="巴格希拉", title="最佳獵人寵物", icon=5, guide=ns.bestPet },
}

points[ 1435 ] = { -- Swamp of Sorrows
	[10505980] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[12502960] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[16606330] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[22906440] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals, continent=true },
	[26904940] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[34302830] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[36305030] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[49503850] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[56706530] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[60502770] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[60904360] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[69407840] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[72401030] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[77308960] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[81203450] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[83406520] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[87302650] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[91006540] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[91205660] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
}

points[ 1420 ] = { -- Tirisfal Glades
	[25304870] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[31704610] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[34704100] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[38004970] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[49203360] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[49603570] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[49804280] = { title="破損的箱子", icon=1, tip=ns.chest1, continent=true },
	[51006750] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[51802600] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[55504210] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[57903290] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[58703070] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[58802700] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[72802580] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[77205980] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[78405590] = { title="破損的箱子", icon=1, tip=ns.chest1 },

--[[	[56204940] = { npc=6491, name="Spirit Healer (Brill)", class={ "PRIEST" }, faction="Horde",
					level=18, guide={ ns.twoMeditate }, tip="Come to here for the second quest hand-in. /kneel",
					quest={ { ( ( ns.race == "Undead" ) and 78196 or 0 ), ( ( ns.race == "Undead" ) and 78197 or 0 ) } }, 
					questName={ { ( ( ns.race == "Undead" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of Undeath (2)" or "" ) } } },							
]]
}

points[ 1458 ] = { -- Undercity
--[[	[47201960] = { npc=211225, name="Baj'ura", class={ "PRIEST" }, faction="Horde", level=18, guide={ ns.twoMeditate },
					tip="Begin the first quest here",
					quest={ { ( ( ns.race == "Troll" ) and 78198 or 0 ), ( ( ns.race == "Troll" ) and 78199 or 0 ) } }, 
					questName={ { ( ( ns.race == "Troll" ) and "Secrets of the Loa (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of the Loa (2)" or "" ) } } },
]]
}

points[ 1422 ] = { -- Western Plaguelands
}

points[ 1436 ] = { -- Westfall
	[29104880] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[29204590] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[29304960] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[29704730] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[30904620] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[31004410] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[33205650] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[36403190] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[38202860] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[38806980] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[41504100] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[42306880] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[42701220] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[43000800] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[43906830] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[44102350] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[44507020] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[44702550] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[44900760] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[45002190] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[45502090] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[45507030] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[45901910] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[46103850] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[46805340] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[48204710] = {  title="破損的箱子", icon=2, tip=ns.chest2, continent=true },
	[48302030] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[48506090] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[51103900] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[52503450] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[53106250] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[55600770] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[56501340] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[56501920] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[60605830] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[60905020] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[34808570] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[36808280] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[53007890] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[56307450] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[56506990] = {  title="破損的箱子", icon=3, tip=ns.chest3, continent=true },
	[60707440] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[63807030] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[65307510] = {  title="破損的箱子", icon=3, tip=ns.chest3 },

	[37505070] = { 
	  name = "燒焦的殘骸",  -- 物品名稱
	  title = "舒適的睡袋", -- 物品標題
	  icon = 6,           -- 物品圖示ID
	  guide = ns.cozySleepingBag, -- 指南函數

	  quest = {             -- 任務列表
		{ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 } 
	  },

	  questName = {       -- 任務名稱列表
		{ "...還有你找到的那張紙條", "墊腳石", "攀爬", "濕活", "鷹爪", "就是這裡了" } 
	  },

	  tip = "Alliance: 第一步\nHorde: 第二步", -- 提示文字
	  continent = true       -- 是否為大陸任務
	},
						
	[29004780] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[29005820] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[29603420] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[29606940] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[31406530] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[31803940] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[32007620] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[32208020] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[32402920] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals, continent=true },
	[34008220] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[37808540] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[41401540] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[46801260] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[46903950] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[47406740] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[47607930] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[47801380] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[29004780] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[51003240] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[51607120] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[57001050] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[62502630] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
}

points[ 1437 ] = { -- Wetlands
	[72009400] = { name="雕刻的雕像", title="舒適的睡袋", icon=6, guide=ns.cozySleepingBag,
quest={ { ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 } },
questName={ { "...以及你找到的那張紙條", "墊腳石", "攀爬", "弄濕的工作", "鷹之拳",
"這裡應該就是了" } }, tip="第五步", continent=true },
}

--=======================================================================================================
--
-- KALIMDOR
--
--=======================================================================================================

points[ 1440 ] = { -- Ashenvale
	[07101230] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[10402260] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[11102690] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[11603180] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[14202040] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[18503160] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[22403630] = {  title="破損的箱子", icon=3, tip=ns.chest3, continent=true },
	[31902320] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[31903120] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	
	[17202660] = { 
	  npc = 212334, 
	  name = "死亡的暮光信徒",
	  title = ns.voidTouchedTitle, 
	  icon = 4, 
	  guide = ns.voidTouched,

	  quest = { 78909 }, 
	  questName = { "變換鱗片護符" }, 
	  continent = true 
	},

	[24406340] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals, continent=true },
	[27606260] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[30203020] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[33402840] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[44506420] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[51204720] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[52506280] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[55604040] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[67004600] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[67005120] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[77407320] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[80507070] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[84807020] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals },

--[[	[31602300] = { name="Forsaken mobs (Various)", class={ "PRIEST" }, level=18, guide={ ns.twoMeditate },
					quest={ { ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race == "Night elf" ) and 78193 or 0 ) } }, 
					questName={ { ( ( ns.race == "Night elf" ) and "Secrets of the Light (1)" or "" ), 
							( ( ns.race == "Night Elf" ) and "Secrets of the Light (2)" or "" ) } } },
	[33406820] = { name="Shadethicket mobs (Various)", class={ "PRIEST" }, faction="Horde", level=18,
					guide={ ns.twoMeditate }, tip="Collect Shadeleaf off the mobs",
					quest={ { ( ( ns.race == "Undead" ) and 78196 or 0 ), ( ( ns.race == "Undead" ) and 78197 or 0 ) } }, 
					questName={ { ( ( ns.race == "Undead" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of Undeath (2)" or "" ) } } },							
	[61007620] = { name="Shadethicket mobs (Various)", class={ "PRIEST" }, faction="Horde", level=18,
					guide={ ns.twoMeditate }, tip="Collect Shadeleaf off the mobs",
					quest={ { ( ( ns.race == "Undead" ) and 78196 or 0 ), ( ( ns.race == "Undead" ) and 78197 or 0 ) } }, 
					questName={ { ( ( ns.race == "Undead" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of Undeath (2)" or "" ) } } },									
	[64206840] = { name="Shadethicket mobs (Various)", class={ "PRIEST" }, faction="Horde", level=18,
					guide={ ns.twoMeditate }, tip="Collect Shadeleaf off the mobs",
					quest={ { ( ( ns.race == "Undead" ) and 78196 or 0 ), ( ( ns.race == "Undead" ) and 78197 or 0 ) } }, 
					questName={ { ( ( ns.race == "Undead" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of Undeath (2)" or "" ) } } },							
	[67208280] = { name="Shadethicket mobs (Various)", class={ "PRIEST" }, faction="Horde", level=18,
					guide={ ns.twoMeditate }, tip="Collect Shadeleaf off the mobs",
					quest={ { ( ( ns.race == "Undead" ) and 78196 or 0 ), ( ( ns.race == "Undead" ) and 78197 or 0 ) } }, 
					questName={ { ( ( ns.race == "Undead" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of Undeath (2)" or "" ) } } },							
	[71405400] = { name="Shadethicket mobs (Various)", class={ "PRIEST" }, faction="Horde", level=18,
					guide={ ns.twoMeditate }, tip="Collect Shadeleaf off the mobs",
					quest={ { ( ( ns.race == "Undead" ) and 78196 or 0 ), ( ( ns.race == "Undead" ) and 78197 or 0 ) } }, 
					questName={ { ( ( ns.race == "Undead" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of Undeath (2)" or "" ) } } },
	[76604520] = { name="Shadethicket mobs (Various)", class={ "PRIEST" }, faction="Horde", level=18,
					guide={ ns.twoMeditate }, tip="Collect Shadeleaf off the mobs",
					quest={ { ( ( ns.race == "Undead" ) and 78196 or 0 ), ( ( ns.race == "Undead" ) and 78197 or 0 ) } }, 
					questName={ { ( ( ns.race == "Undead" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of Undeath (2)" or "" ) } } },
	[79007360] = { name="Shadethicket mobs (Various)", class={ "PRIEST" }, faction="Horde", level=18,
					guide={ ns.twoMeditate }, tip="Collect Shadeleaf off the mobs",
					quest={ { ( ( ns.race == "Undead" ) and 78196 or 0 ), ( ( ns.race == "Undead" ) and 78197 or 0 ) } }, 
					questName={ { ( ( ns.race == "Undead" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of Undeath (2)" or "" ) } } },
	[79406200] = { name="Shadethicket mobs (Various)", class={ "PRIEST" }, faction="Horde", level=18,
					guide={ ns.twoMeditate }, tip="Collect Shadeleaf off the mobs",
					quest={ { ( ( ns.race == "Undead" ) and 78196 or 0 ), ( ( ns.race == "Undead" ) and 78197 or 0 ) } }, 
					questName={ { ( ( ns.race == "Undead" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of Undeath (2)" or "" ) } } },
	[85406640] = { name="Shadethicket mobs (Various)", class={ "PRIEST" }, faction="Horde", level=18,
					guide={ ns.twoMeditate }, tip="Collect Shadeleaf off the mobs",
					quest={ { ( ( ns.race == "Undead" ) and 78196 or 0 ), ( ( ns.race == "Undead" ) and 78197 or 0 ) } }, 
					questName={ { ( ( ns.race == "Undead" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of Undeath (2)" or "" ) } } },
]]
}

points[ 1439 ] = { -- Darkshore
	[36702740] = { title="破損的箱子", icon=2, tip=ns.chest2 },
--[[	[37604380] = { npc=211298, name="Syrnoya", class={ "PRIEST" }, level=17, guide={ ns.twoMeditate },
					tip="Complete the second quest here. /kneel always!", faction="Alliance",
					quest={ { ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) } }, 
					questName={ { ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } } },
]]

	[39607830] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[41605820] = {  title="破損的箱子", icon=2, tip=ns.chest2, continent=true },
	[42003120] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[42506200] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[43005870] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[44703730] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[46003770] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[47103700] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[48103650] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[50802560] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[54703690] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[55503620] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[56603510] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[35408480] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[36308650] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[38402930] = {  title="破損的箱子", icon=3, tip=ns.chest3, continent=true },
	[38408680] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[42608680] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[42808450] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[44202040] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[44308500] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[44708690] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[56402620] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[57102250] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[58102000] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[58401770] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[58500750] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[58801580] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[60301850] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[60502240] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[61501930] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[61902160] = {  title="破損的箱子", icon=3, tip=ns.chest3 },

	[40604080] = { npc=2175, name="暗影爪", title="最佳獵人寵物", icon=5, guide=ns.bestPet, continent=true },
}

points[ 1457 ] = { -- Darnassus
--[[	[38608880] = { npc=211188, name="Maethra Slagheart", class={ "PRIEST" }, level=17, guide={ ns.twoMeditate },
					tip="Begin the first quest here", faction="Alliance",
					quest={ { ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race == "Night elf" ) and 78193 or 0 ) } }, 
					questName={ { ( ( ns.race == "Night elf" ) and "Secrets of the Light (1)" or "" ), 
							( ( ns.race == "Night Elf" ) and "Secrets of the Light (2)" or "" ) } } },
]]
}

points[ 1443 ] = { -- Desolace
	[48808220] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals, continent=true },
	[49507470] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[52008540] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[52107250] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[52808100] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[54401920] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[56107460] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[71501860] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[72502200] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[73502470] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[74501040] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[76501920] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[80401700] = { name="邪能之淚", title="邪能傳送門", icon=7, tip=ns.felPortals },
}

points[ 1411 ] = { -- Durotar
	[39405380] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[40803040] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[42102710] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[42502690] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[43303940] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[43603560] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[43705070] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[43903920] = {  title="破損的箱子", icon=1, tip=ns.chest1, continent=true },
	[44102400] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[44205030] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[46607900] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[47104980] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[47503100] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[47604980] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[47803330] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[47807720] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[49104840] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[49702430] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[49708070] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[50702590] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[51201900] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[51202360] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[51302100] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[51401030] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[51501030] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[51901990] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[52002540] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[52400920] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[52602640] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[52700850] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[53202500] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[53802820] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[54102220] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[57805870] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[59605810] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[59605630] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[61804550] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[61805110] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[62105590] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[62404210] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[62406050] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[63205680] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[64105040] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[64505310] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[65508320] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[67108670] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[68308510] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[68407150] = {  title="破損的箱子", icon=1, tip=ns.chest1 },

	[68607160] = { 
	  npc = 208124, 
	  name = "拉魯克",
	  title = "最佳獵人寵物", 
	  icon = 5, 
	  guide = ns.bestPet, 
	  continent = true 
	},

--[[	[68707110] = { object=410168, name="Voodoo Pile", class={ "PRIEST" }, faction="Horde", level=18, guide={ ns.twoMeditate },
					tip="Ignore the quest directions. Climb the\nhill on the northern-most island",
					quest={ { ( ( ns.race == "Troll" ) and 78198 or 0 ), ( ( ns.race == "Troll" ) and 78199 or 0 ) } }, 
					questName={ { ( ( ns.race == "Troll" ) and "Secrets of the Loa (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of the Loa (2)" or "" ) } } },
]]
}

points[ 1445 ] = { -- Dustwallow Marsh
}

points[ 1444 ] = { -- Feralas
}

points[ 1450 ] = { -- Moonglade
}

points[ 1412 ] = { -- Mulgore					
	[28502120] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[29302350] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[29602590] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[30902290] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[31006080] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[31206180] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[31306340] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[31504200] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[31704270] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[32506100] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[33104740] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[35506240] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[36101120] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[36601290] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[37701040] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[38400800] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[40101530] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[40601610] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[48407230] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[53200930] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[53304810] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[53307310] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[53707320] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[53804850] = {  title="破損的箱子", icon=1, tip=ns.chest1, continent=true },
	[55101610] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[55201150] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[56701480] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[59804810] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[60903790] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[61204730] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[62303830] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[63107150] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[63504110] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[64206890] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[65506920] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[65604090] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[66906860] = {  title="破損的箱子", icon=1, tip=ns.chest1 },

	[36605660] = { npc=205382, name="莫克瓦", title="最佳獵人寵物", icon=5, guide=ns.bestPet, continent=true },
	[51801840] = { npc=5807, name="耙子", title="最佳獵人寵物", icon=5, guide=ns.bestPet },
}

points[ 1454 ] = { -- Orgrimmar
--[[points[ 1454 ] = { -- Orgrimmar
	[35748823] = { npc=211229, name="Dietrich Praice", class={ "PRIEST" }, faction="Horde",
					level=18, guide={ ns.twoMeditate }, tip="Begin the first quest here",
					quest={ { ( ( ns.race == "Undead" ) and 78196 or 0 ), ( ( ns.race == "Undead" ) and 78197 or 0 ) } }, 
					questName={ { ( ( ns.race == "Undead" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of Undeath (2)" or "" ) } } },							
]]
}

points[ 1442 ] = { -- Stonetalon Mountains
	[43303880] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[45104600] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[50904380] = {  title="破損的箱子", icon=3, tip=ns.chest3, continent=true },
	[53603580] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[63504020] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[66304550] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[66505080] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[71906270] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[72206040] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[72906140] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[73006000] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[73006150] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[73006280] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[73305900] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[73608560] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[74105930] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[77009150] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[80608950] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[84308420] = {  title="破損的箱子", icon=3, tip=ns.chest3 },

	[39604990] = { name="土堆", title="舒適的睡袋", icon=6, guide=ns.cozySleepingBag,
quest={ { ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 } },
questName={ { "...以及你找到的那張紙條", "墊腳石", "攀爬", "弄濕的工作", "鷹之拳",
"這裡應該就是了" } }, tip="第四步" },
[40805250] = { name="口袋垃圾", title="舒適的睡袋", icon=6, guide=ns.cozySleepingBag,
quest={ { ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 } },
questName={ { "...以及你找到的那張紙條", "墊腳石", "攀爬", "弄濕的工作", "鷹之拳",
"這裡應該就是了" } }, tip="第三步", continent=true },
}

points[ 1438 ] = { -- Teldrassil
	[31503170] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[33202850] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[33903560] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[34202820] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[34203440] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[35403480] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[35603880] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[36303790] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[37204300] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[37504160] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[43806130] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[43905990] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[43906190] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[44506040] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[44606260] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[44805890] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[47207780] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[47907790] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[50006300] = {  title="破損的箱子", icon=1, tip=ns.chest1, continent=true },
	[51605000] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[51904860] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[52005130] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[53005020] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[56307550] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[65806480] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[66006350] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[68705190] = {  title="破損的箱子", icon=1, tip=ns.chest1 },
	[69605320] = {  title="破損的箱子", icon=1, tip=ns.chest1 },

	[53807680] = { npc=14430, name="暮色潛行者", title="最佳獵人寵物", icon=5, guide=ns.bestPet, continent=true },
	[60207560] = { npc=14430, name="暮色潛行者", title="最佳獵人寵物", icon=5, guide=ns.bestPet },
}

points[ 1413 ] = { -- The Barrens
	[42102470] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[43402370] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[43602650] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[43702120] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[45102000] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[46603900] = {  title="破損的箱子", icon=2, tip=ns.chest2, continent=true },
	[46502280] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[46601810] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[47001590] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[47701950] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[47901790] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[48903880] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[52501070] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[52501160] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[52904440] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[53404050] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[53904300] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[54504680] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[55902700] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[55904580] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[56600880] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[56804350] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[56902550] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[57104120] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[58802750] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[59102440] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[62804970] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[63504610] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[63704920] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[64304730] = {  title="破損的箱子", icon=2, tip=ns.chest2 },
	[37601630] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[38401310] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[39201190] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[40001600] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[42905510] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[43304830] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[43305220] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[45005140] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[45305430] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[46905360] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[51105750] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[51305490] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[52605230] = {  title="破損的箱子", icon=3, tip=ns.chest3, continent=true },
	[53605400] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[59605400] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[59600280] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[60400350] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[61700520] = {  title="破損的箱子", icon=3, tip=ns.chest3 },
	[62000420] = {  title="破損的箱子", icon=3, tip=ns.chest3 },

	[62043955] = { npc=214208, name="諾拉·安妮赫特", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
tip="在完成之前的步驟之前\n不要來找她。\n\n"
.."變換鱗片護身符是一個\n非常有價值的 +5 精神飾品",
quest={ 78909 }, questName={ "變換鱗片護身符" }, continent=true },

	[50001660] = { npc=5865, name="迪舒", title="最佳獵人寵物", icon=5, guide=ns.bestPet, continent=true },
	[51802800] = { npc=5865, name="迪舒", title="最佳獵人寵物", icon=5, guide=ns.bestPet },
	[62603440] = { npc=5828, name="獅王胡瑪", title="最佳獵人寵物", icon=5, guide=ns.bestPet },

	[46407390] = { 
	  name = "燒焦的殘骸",
	  title = "舒適的睡袋", 
	  icon = 6, 
	  guide = ns.cozySleepingBag,

	  quest = { 
		{ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 } 
	  },

	  questName = { 
		{ "...還有你找到的那張紙條", "墊腳石", "攀爬", "濕活", "鷹爪", "就是這裡了" } 
	  },

	  tip = "聯盟: 第二步\n部落: 第一步", 
	  continent = true 
	},

	[43208020] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals, continent=true },
	[43808380] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[46008560] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[47808360] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[48408120] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[48608300] = { name="邪能裂隙", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[39501380] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals, continent=true },
	[40001380] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[40801440] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[42001420] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[44405000] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[45805120] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[46405260] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[47604940] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[51605340] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[53005080] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[54404850] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[55602560] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[55805100] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[56002480] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[57602350] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[58802560] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[59002920] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[59003200] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[59203660] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[59802750] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[60203600] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[60802900] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[61803200] = { name="邪能碎片", title="邪能傳送門", icon=7, tip=ns.felPortals },
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