local _, ns = ...
local points = ns.points

ns.bestPet = "可以說，獵人最好的寵物是貓。\n\n以下是一些不錯的稀有/精英寵物可以馴服：\n\n"
			.."莫克瓦     - 7 級，莫高雷血蹄村以西\n拉魯克     - 7 級，杜隆塔爾回音群島\n"
			.."暮光潛行者     - 9 級，泰達希爾\n耙子     - 10 級，雷霆崖以東。重生時間 30 分鐘以上\n"
			.."迪舒     - 13 級，貧瘠之地北部\n暗影之爪     - 13 級，黑海岸奧伯丁以北\n"
			.."胡瑪爾     - 23 級，棘齒城，貧瘠之地。重生時間 8 小時以上\n"
			.."阿拉加     - 35 級，奧特蘭克山脈。重生時間 2-3 天\n斷牙     - 37 級，荒蕪之地\n"
			.."巴格塞拉     - 40 級精英，荊棘谷\n班加拉什國王     - 43 級精英，荊棘谷\n\n"
			.."對於那些喜歡風蛇的人來說... 當然是哈卡之子\n你可以在祖爾格拉布找到他。60 級精英，當然還有石爪\n山脈的幼年驕傲之翼（僅限），作為獲得殺戮命令的共同獎勵"
ns.chest1 = "* 10 級攔截的補給品\n* 10 級法師捲軸\n* 5 個專業配方\n* 白色物品，灰色物品"
ns.chest2 = "* 10 級攔截的補給品\n* 10 級法師捲軸\n* 13 個專業配方\n* 綠色物品，白色物品，灰色物品"
ns.chest3 = "* 20 級攔截的補給品\n* 20 級法師捲軸\n* 10 個專業配方\n* 綠色物品，灰色物品"
ns.cozySleepingBag = "第一步：" ..( ( ns.faction == "Alliance" ) and "前往西部荒野的亞歷克斯頓農場" or
			"前往貧瘠之地陶拉祖以南道路上的燒毀的塔樓" ) .."\n在瓦礫中尋找燒毀的殘骸。\n\n"
			.."第二步：" ..( ( ns.faction == "Alliance" ) and "前往貧瘠之地陶拉祖以南道路上的燒毀的塔樓。" or
			"前往西部荒野的亞歷克斯頓農場" )
			.."\n在瓦礫中尋找燒毀的殘骸。\n從附近的一塊釘著釘子的木板上接下一個任務。\n\n"
			.."第三步：前往石爪山脈，尋找一個\n廢棄的營地。它位於陽岩避難所\n東北方向的一條小路上。\n那裡有一個口袋垃圾，在一個箱子上。\n\n"
			.."第四步：向北走，直接上山，尋找一堆土。\n"
			.."點擊以完成“搶”。接受“濕工作”。\n\n"
			.."第五步：洛克莫丹，與濕地接壤的大壩的壁架上。點擊鷹形雕像以完成並開始任務。\n\n"
			.."第六步：攀登索拉丁之牆，與希爾斯布萊德丘陵和阿拉希\n高地接壤。從希爾斯布萊德丘陵一側通過一輛破損的馬車\n向上攀爬。繼續攀爬，你會找到一個大廳和一個袋子。\n\n"
			.."注意：這個任務鏈獎勵你 8 個學生\n飼料。目前獲得這種休息經驗加成的唯一途徑！"
ns.felPortals = "術士探險家小鬼、\n法師的邪能火球符文等使用"
ns.gnomeregan = "(1) 從任何\n諾姆垃圾或黑鐵大使身上掠奪一個污垢覆蓋的救助品。\n\n"
			.."(2) 在宿舍，將它和 30 銀幣插入\n超級回收器 9000 型。你需要達到 40 級。\n\n"
			.."附近的齊里提供幫助修理，你需要\n提供 10 個秘銀錠（拍賣行）、5 個高級\n"
			.."秘法精華（拍賣行）、3 個 GG12-082 彈藥筒保險絲\n（機械諾莫瑞根垃圾）和一個原始 G-7\n"
			.."C.O.R.E. 處理器，如下所述：\n\n(3) 在諾姆入口處擊殺技術機器人（40 級精英）\n"
			.."以獲得一個腐蝕的處理器。你現在正在進行第三個\n任務。與齊里交談。\n\n"
			.."(4) 去藏寶海灣的史酷提。第四個任務讓你\n收集淒涼之地、塵泥沼澤、\n"
			.."菲拉斯和塔納利斯的信標。\n\n(5) 回到藏寶海灣，史酷提會把你傳送到\n"
			.."菲拉斯的威爾達·奇蹟裝備。注意：如果\n你對他的自動機打噴嚏，它們就會把你從他的基地\n"
			.."上擊落。無論如何，將爐石設置在海灣是一個勝利。\n\n"
			.."(6) 從納迦怪物身上刷取用過的虛空核心，\n以及從任何能給你經驗值的怪物身上隨機生成的\n暗影人物身上刷取暗影微粒。\n\n(7) 回到諾姆的齊里那裡獲得獎勵"
ns.gnomereganTitle = "諾莫瑞根裝備指南"
ns.nightmare = "(1) 在 50 級時，進入灰谷翡翠夢境傳送門。向南走到\n"
			.."戰歌伐木場的後面。繼續前進，直到你收到一個“癱瘓恐懼光環減益效果”。\n"
			.."退出夢境並與戰地指揮官漢娜拉交談以獲得第一個任務。\n\n"
			.."(2) 與月光林地的洛迦納爾交談。他會直接把你送到\n"
			.."哀嚎洞穴西南角的伊薩裡奧斯。\n\n"
			.."(3) 在阿塔哈卡神廟/沉沒的神廟中，你必須前進到\n"
			.."被選中者的巢穴。“深入其中”現在將會完成。稍後返回伊薩裡奧斯。\n\n"
			.."(4) 你現在被送回月光林地的洛迦納爾。交任務並等待\n"
			.."暗影人物生成。與她交談並接下一個任務和下一個任務。\n\n"
			.."(5) 下一個目的地是荊棘谷的藏寶海灣。一個受傷的侏儒會\n"
			.."把你送到哈圭羅島的一個小小魚人那裡。他旁邊有一個小洞穴。取回\n"
			.."護腕並前往月光林地。\n\n"
			.."(6) 暗影人物有一個新的任務給你。返回灰谷，在進入夢境之前\n"
			.."裝備護腕。請注意，她已經改變了它們！去你之前\n"
			.."“減益效果”的位置。一個夢魘融合怪在該區域巡邏。殺死它，但\n"
			.."你需要一個 5 人小隊。很強的攻擊。它會掉落紫色的夢魘斗篷！！！\n\n"
			.."(7) 回到暗影人物那裡。她現在是你獲得 3 階段裝備的首選！"   
ns.nightmareTitle = "夢魘裝備指南"
ns.twoMeditate = "在 17 級時，前往暴風城的公園（人類/\n矮人）、達納蘇斯的月神殿（暗夜精靈）、\n"
			.."幽暗城的戰爭區（所有部落），從牧師訓練師那裡獲得一個種族\n任務。\n\n"
			.."最終，你將能夠在不同種族之間共享多個冥想\n增益效果（以及陣營。錯誤？）。\n\n"
			.."玩家 1：/跪下；玩家 2：/祈禱"
ns.twoMeditateTitle = "牧師的兩個冥想"
ns.voidTouchedTitle = "虛空之觸裝備指南"
ns.voidTouched = "(1) 鍛造、制皮或裁縫\n其中之一達到 25 級和 100 級。\n\n"
			.."(2) 從拍賣行購買一瓶融合的悔恨藥劑。\n鍊金術士可以從塔倫米爾和南海鎮之間的路上\n"
			.."的齊克希爾或從紅木森林/艾爾文森林通往\n夜色鎮的路上\n"
			.."的克齊克斯那裡購買這個配方。\n\n"
			.."(3) 在灰谷佐拉姆海岸找到死去的暮光教徒。\n喝下藥劑並與他交談。\n\n"
			.."(4) 在黑海岸深淵中，擊敗第二個 Boss 加穆-拉。\n與老塞拉基斯的屍體互動。\n\n"
			.."(5) 在棘齒城接受諾拉·安妮哈特的任務。奇怪的\n塵埃 x 40，高級魔法精華 x 5，小微光碎片 x 2，\n"
			.."一把幻變之鱗，5 金幣。鱗片從老\n塞拉基斯身上掉落。其他東西從拍賣行購買。\n\n"
			.."(6) 帶著她的護身符獎勵，返回 BFD 並前往凱爾里斯的\n水下洞穴。掠奪工匠的箱子。“盒子”\n"
			.."神奇地出現在你的背包裡。\n\n(7) 去奧特蘭克山脈。使用柱子摧毀盒子。\n\n"
			.."(8) 一個暗影人物生成。互動。你必須選擇\n“好吧，讓我看看”選項。\n\n"
			.."(9) 恭喜。你現在擁有所有 1 階段配方。可能是最好的！\n\n"
			.."(從 (6) 開始重複以獲得另一個碎片)"


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
	[31007260] = { npc=14222, name="Araga", title="最佳獵人寵物", icon=5, class="HUNTER", guide=ns.bestPet },
	[31408480] = { npc=14222, name="Araga", title="最佳獵人寵物", icon=5, class="HUNTER", guide=ns.bestPet, continent=true },
	[38808980] = { npc=14222, name="Araga", title="最佳獵人寵物", icon=5, class="HUNTER", guide=ns.bestPet },
}

points[ 1417 ] = { -- Arathi Highlands
	[22502420] = { name="Hastily Rolled-Up Stachel", title="舒適的睡袋", icon=6, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" }, continent=true,
						tip="第六步。請參閱希爾斯布萊德丘陵地圖以了解從哪裡開始此步驟" },
}

points[ 1418 ] = { -- Badlands
	[45203520] = { npc=2850, name="Broken Tooth", title="最佳獵人寵物", icon=5, class="HUNTER", guide=ns.bestPet },
	[54801480] = { npc=2850, name="Broken Tooth", title="最佳獵人寵物", icon=5, class="HUNTER", guide=ns.bestPet, continent=true },
	[63003020] = { npc=2850, name="Broken Tooth", title="最佳獵人寵物", icon=5, class="HUNTER", guide=ns.bestPet },
}

points[ 1419 ] = { -- Blasted Lands
	[35005480] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[41303350] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[43602530] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[46603910] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[48804830] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[56203660] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[60204640] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[62003920] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals, continent=true },
}

points[ 1430 ] = { -- Deadwind Pass
}

points[ 1426 ] = { -- Dun Morogh
	[21705200] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[23105200] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[23305420] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[23505240] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[26005120] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[26104120] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[26803640] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[34005110] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[36104010] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[38704330] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[39204650] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[40104810] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[41004890] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[41504440] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[42003590] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[42804710] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[43504920] = { title="破損的箱子", icon=1, tip=ns.chest1, continent=true },
	[66905960] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[67506070] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[68905940] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[71005900] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[71205050] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[71605180] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[72104990] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[73005350] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[74606170] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[74805650] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[76005810] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[77906190] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[79305870] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[79705470] = { title="破損的箱子", icon=1, tip=ns.chest1 },
}

points[ 1431 ] = { -- Duskwood
	[18002560] = { title=ns.twoMeditateTitle, name="恐狼 (各種)", icon=8, class="PRIEST", level=17, guide=ns.twoMeditate,
					tip="從這些怪物身上收集爪子。用於第一個任務", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },
	[37602240] = { title=ns.twoMeditateTitle, name="恐狼 (各種)", icon=8, class="PRIEST", level=17, guide=ns.twoMeditate,
					tip="從這些怪物身上收集爪子。用於第一個任務", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },
	[55406160] = { title=ns.twoMeditateTitle, name="恐狼 (各種)", icon=8, class="PRIEST", level=17, guide=ns.twoMeditate,
					tip="從這些怪物身上收集爪子。用於第一個任務", faction="Alliance", continent=true,
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },
	[59001960] = { title=ns.twoMeditateTitle, name="恐狼 (各種)", icon=8, class="PRIEST", level=17, guide=ns.twoMeditate,
					tip="從這些怪物身上收集爪子。用於第一個任務", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },
	[68203400] = { title=ns.twoMeditateTitle, name="恐狼 (各種)", icon=8, class="PRIEST", level=17, guide=ns.twoMeditate,
					tip="從這些怪物身上收集爪子。用於第一個任務", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },

	[81801980] = { npc=3134, name="克齊克斯", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
					tip="鍊金術士可以購買融合的悔恨\n藥劑配方",
					quest={ 78909 }, questName={ "幻變之鱗護符" }, continent=true },
}

points[ 1429 ] = { -- Elwynn Forest
	[12463405] = { title=ns.twoMeditateTitle, npc=11397, name="娜拉·梅德羅斯", icon=8, class="PRIEST", level=17, 
					guide=ns.twoMeditate, tip="從這裡開始", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },
	[19392475] = { title=ns.twoMeditateTitle, npc=376, name="大祭司勞倫納", icon=8, class="PRIEST", level=17, 
					guide=ns.twoMeditate, tip="在這裡完成第二個任務。始終 /跪下！", faction="Alliance",
					quest={ ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race=="Night elf") and 78193 or 0 ) }, 
					questName={ ( ( ns.race == "Night elf" ) and "聖光的秘密 (1)" or "" ), 
							( ( ns.race == "Night Elf") and "聖光的秘密 (2)" or "" ) }, continent=true, },

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
	[33003600] = { title=ns.twoMeditateTitle, name="希爾斯布萊德丘陵怪物 (各種)", icon=8, class="PRIEST", level=18,
					faction="Horde", guide=ns.twoMeditate, continent=true,
					quest={ ( ( ns.race == "Undead" ) and 78198 or 0 ), ( ( ns.race == "Undead" ) and 78199 or 0 ) }, 
					questName={ ( ( ns.race == "Undead" ) and "Secrets of the Loa (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of the Loa (2)" or "" ) } },
	[35204700] = { title=ns.twoMeditateTitle, name="希爾斯布萊德丘陵怪物 (各種)", icon=8, class="PRIEST", level=18,
					faction="Horde", guide=ns.twoMeditate,
					quest={ ( ( ns.race == "Undead" ) and 78198 or 0 ), ( ( ns.race == "Undead" ) and 78199 or 0 ) }, 
					questName={ ( ( ns.race == "Undead" ) and "Secrets of the Loa (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of the Loa (2)" or "" ) } },

	[50514971] = { npc=3537, name="齊克希爾", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
					tip="鍊金術士可以購買融合的悔恨\n藥劑配方",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" } },
	[52714131] = { npc=3537, name="齊克希爾", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
					tip="鍊金術士可以購買融合的悔恨\n藥劑配方",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" } },
	[55511881] = { npc=3537, name="齊克希爾", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
					tip="鍊金術士可以購買融合的悔恨\n藥劑配方",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" } },
	[55612661] = { npc=3537, name="齊克希爾", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
					tip="鍊金術士可以購買融合的悔恨\n藥劑配方",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" }, continent=true },
	[55613461] = { npc=3537, name="齊克希爾", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
					tip="鍊金術士可以購買融合的悔恨\n藥劑配方",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" } },
	[60712021] = { npc=3537, name="齊克希爾", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
					tip="鍊金術士可以購買融合的悔恨\n藥劑配方",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" } },
	[88557351] = { name="暗影人物 / 純淨之光碎片", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
					tip="通過 Ravenholdt 莊園前往" },

	[87304960] = { name="舊的破損馬車", title="舒適的睡袋", icon=6, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" }, continent=true,
						tip="第六步。從這裡開始第六步，\n而不是從阿拉希高地一側" },
}

points[ 1455 ] = { -- Ironforge
}

points[ 1432 ] = { -- Loch Modan
	[24803070] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[26004930] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[26504420] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[26905760] = { title="破損的箱子", icon=2, tip=ns.chest2, continent=true },
	[27908330] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[28308740] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[31507550] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[34402710] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[34509000] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[34609110] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[34908250] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[35102680] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[35602480] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[35701650] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[35909370] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[36008460] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[36302350] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[37608650] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[37701610] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[39801240] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[48002090] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[49002970] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[54502600] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[48103950] = { title="破損的箱子", icon=3, tip=ns.chest3, continent=true },
	[59201360] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[68006590] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[68301860] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[68806250] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[69302280] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[69806630] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[73306440] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[75502500] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[77001440] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[77701840] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[79501610] = { title="破損的箱子", icon=3, tip=ns.chest3 },

	[49501280] = { name="雕刻雕像", title="舒適的睡袋", icon=6, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" }, tip="第五步", continent=true },
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

	[29803040] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[30802180] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[42801680] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[71408350] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[71605830] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[79003350] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[79603280] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[79007300] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[81606060] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[83104450] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[83204560] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[86305250] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[86605300] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals, continent=true },
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

	[38801840] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals, continent=true },
	[38802340] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[44202520] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[44602550] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[45503180] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[49801340] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[50205680] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[50206520] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[54403580] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[55602460] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[60800700] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
}

points[ 1453 ] = { -- Stormwind City
	[20685007] = { title=ns.twoMeditateTitle, npc=11397, name="娜拉·梅德羅斯", icon=8, class="PRIEST", level=17, 
					guide=ns.twoMeditate, tip="從這裡開始", faction="Alliance", continent=true,
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },
	[38582606] = { title=ns.twoMeditateTitle, npc=376, name="大祭司勞倫納", icon=8, class="PRIEST", level=17,
					guide=ns.twoMeditate, tip="在這裡完成第二個任務。始終 /跪下！", faction="Alliance",
					quest={ ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race=="Night elf") and 78193 or 0 ) }, 
					questName={ ( ( ns.race == "Night elf" ) and "Secrets of the Light (1)" or "" ), 
							( ( ns.race == "Night Elf") and "Secrets of the Light (2)" or "" ) } },
}

points[ 1434 ] = { -- Stranglethorn Vale
	[38603560] = { npc=731, name="King Bangalash", title="最佳獵人寵物", icon=5, class="HUNTER", guide=ns.bestPet, continent=true },
	[47602880] = { npc=728, name="Bhag'thera", title="最佳獵人寵物", icon=5, class="HUNTER", guide=ns.bestPet },
	[49002060] = { npc=728, name="Bhag'thera", title="最佳獵人寵物", icon=5, class="HUNTER", guide=ns.bestPet },
	[49802460] = { npc=728, name="Bhag'thera", title="最佳獵人寵物", icon=5, class="HUNTER", guide=ns.bestPet },

	[27507740] = { title=ns.gnomereganTitle, npc=7853, name="史酷提", icon=9, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					questName={ "The Salvagematic 9000!", "Salvaging the Salvagematic", "The Corroded Core",
						"Quadrangulation", "Warranty Claim" }, },

	[26807720] = { npc=222444, name="受傷的侏儒", title=ns.nightmareTitle, icon=10,
					guide=ns.nightmare, tip="鹹水手的中層",
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "An Amalgamation of Nightmares", "Itharius", "Going Under",
						"Return to Moonglade", "A Fortuitous Turn of Events", "The Bad News...",
						"The Lost Vambraces", "Waking the Nightmare" }, },
	[40808560] = { npc=222451, name="小小魚人", title=ns.nightmareTitle, icon=10,
					guide=ns.nightmare, continent=true,
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "An Amalgamation of Nightmares", "Itharius", "Going Under",
						"Return to Moonglade", "A Fortuitous Turn of Events", "The Bad News...",
						"The Lost Vambraces", "Waking the Nightmare" }, },
}

points[ 1435 ] = { -- Swamp of Sorrows
	[10506030] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[12302960] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[16606330] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[22806430] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals, continent=true },
	[27004930] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[34402840] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[36405030] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[49603840] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[56606540] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[60402770] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[60904370] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[69607840] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[72501070] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[77308960] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[81303430] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[83406650] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[87202630] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[90906540] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[91405670] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },

	[13607150] = { npc=5353, name="伊薩裡奧斯", title=ns.nightmareTitle, icon=10,
					guide=ns.nightmare, continent=true,
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "An Amalgamation of Nightmares", "Itharius", "Going Under",
						"Return to Moonglade", "A Fortuitous Turn of Events", "The Bad News...",
						"The Lost Vambraces", "Waking the Nightmare" }, },
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

	[56204940] = { title=ns.twoMeditateTitle, npc=6491, name="靈魂醫者 (布瑞爾)", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="來這裡交第二個任務。/跪下",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) }, continent=true, },							

}

points[ 1458 ] = { -- Undercity
	[47201960] = { title=ns.twoMeditateTitle, npc=211225, name="巴朱拉", icon=8, class="PRIEST", level=18,
					faction="Horde", guide=ns.twoMeditate, tip="在這裡開始第一個任務", continent=true,
					quest={ ( ( ns.race == "Undead" ) and 78198 or 0 ), ( ( ns.race == "Undead" ) and 78199 or 0 ) }, 
					questName={ ( ( ns.race == "Undead" ) and "Secrets of the Loa (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of the Loa (2)" or "" ) } },
}

points[ 1422 ] = { -- Western Plaguelands
}

points[ 1436 ] = { -- Westfall
	[29104880] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[29204590] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[29304960] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[29704730] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[30904620] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[31004410] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[33205650] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[36403190] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[38202860] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[38806980] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[41504100] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[42306880] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[42701220] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[43000800] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[43906830] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[44102350] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[44507020] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[44702550] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[44900760] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[45002190] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[45502090] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[45507030] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[45901910] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[46103850] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[46805340] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[48204710] = { title="破損的箱子", icon=2, tip=ns.chest2, continent=true },
	[48302030] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[48506090] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[51103900] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[52503450] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[53106250] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[55600770] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[56501340] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[56501920] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[60605830] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[60905020] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[34808570] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[36808280] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[53007890] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[56307450] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[56506990] = { title="破損的箱子", icon=3, tip=ns.chest3, continent=true },
	[60707440] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[63807030] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[65307510] = { title="破損的箱子", icon=3, tip=ns.chest3 },

	[37505070] = { name="燒毀的殘骸", title="舒適的睡袋", icon=6, guide=ns.cozySleepingBag,
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" },
						tip="聯盟：第一步\n部落：第二步", continent=true },
						
	[28604400] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[28904750] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[29005850] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[29606940] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[29803440] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[31403940] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[31506540] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[31603920] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[32207600] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[32208020] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[32402920] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals, continent=true },
	[34008220] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[34806140] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[35803260] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[37508530] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[41501530] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[44804640] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[46801240] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[46903950] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[47502170] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[47506750] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[47507930] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[47801380] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[51003240] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[51607150] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[53008020] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[57001050] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[62502630] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
}

points[ 1437 ] = { -- Wetlands
	[72009400] = { name="雕刻雕像", title="舒適的睡袋", icon=6, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" }, tip="第五步", continent=true },
}

--=======================================================================================================
--
-- KALIMDOR
--
--=======================================================================================================

points[ 1440 ] = { -- Ashenvale
	[07101230] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[10402260] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[11102690] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[11603180] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[14202040] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[18503160] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[22403630] = { title="破損的箱子", icon=3, tip=ns.chest3, continent=true },
	[31902320] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[31903120] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	
	[17202660] = { npc=212334, name="死去的暮光教徒", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
					quest={ 78909 }, questName={ "Shifting Scale Talisman" }, continent=true },
	[86006700] = { name=ns.L["AoPD"], title=ns.nightmareTitle, icon=10, guide=ns.nightmare,
					tip="這是進入\n"
						.."夢魘後獲得減益效果的大致位置", continent=true,
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "An Amalgamation of Nightmares", "Itharius", "Going Under",
						"Return to Moonglade", "A Fortuitous Turn of Events", "The Bad News...",
						"The Lost Vambraces", "Waking the Nightmare" }, },
	[89404060] = { npc=221477, name="戰地指揮官漢娜拉", title=ns.nightmareTitle, icon=10,
					guide=ns.nightmare,
					tip="她位於“常規”\n灰谷，夢魘之外。\n\n"
						.."符文插件也使用了標記，因此一個\n標記可能大部分與另一個重疊",
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "An Amalgamation of Nightmares", "Itharius", "Going Under",
						"Return to Moonglade", "A Fortuitous Turn of Events", "The Bad News...",
						"The Lost Vambraces", "Waking the Nightmare" }, },

	[24406340] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals, continent=true },
	[27606260] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[30203020] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[33502840] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[44506420] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[51204700] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[52506280] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[55504020] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[67004600] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[67205100] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[77407300] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[80507080] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[84807020] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },

	[31602300] = { title=ns.twoMeditateTitle, name="被遺忘者怪物 (各種)", icon=8, class="PRIEST", level=18,
					guide=ns.twoMeditate,
					quest={ ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race == "Night elf" ) and 78193 or 0 ) }, 
					questName={ ( ( ns.race == "Night elf" ) and "Secrets of the Light (1)" or "" ), 
							( ( ns.race == "Night Elf" ) and "Secrets of the Light (2)" or "" ) } },
	[33406820] = { title=ns.twoMeditateTitle, name="幽影谷怪物 (各種)", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="從怪物身上收集陰影葉", continent=true,
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },							
	[61007620] = { title=ns.twoMeditateTitle, name="幽影谷怪物 (各種)", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="從怪物身上收集陰影葉",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },									
	[64206840] = { title=ns.twoMeditateTitle, name="幽影谷怪物 (各種)", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="從怪物身上收集陰影葉",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },							
	[67208280] = { title=ns.twoMeditateTitle, name="幽影谷怪物 (各種)", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="從怪物身上收集陰影葉",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },						
	[71405400] = { title=ns.twoMeditateTitle, name="幽影谷怪物 (各種)", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="從怪物身上收集陰影葉",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },
	[76604520] = { title=ns.twoMeditateTitle, name="幽影谷怪物 (各種)", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="從怪物身上收集陰影葉",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },
	[79007360] = { title=ns.twoMeditateTitle, name="幽影谷怪物 (各種)", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="從怪物身上收集陰影葉",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },
	[79406200] = { title=ns.twoMeditateTitle, name="幽影谷怪物 (各種)", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="從怪物身上收集陰影葉",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },
	[85406640] = { title=ns.twoMeditateTitle, name="幽影谷怪物 (各種)", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="從怪物身上收集陰影葉",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },

	[80105000] = { name="Resonating Nightmare Bloom", title="夢魘種子", icon=11, tip=ns.nightmareSeed, continent=true },
	[82106510] = { name="Resonating Nightmare Bloom", title="夢魘種子", icon=11, tip=ns.nightmareSeed },
	[82905170] = { name="Resonating Nightmare Bloom", title="夢魘種子", icon=11, tip=ns.nightmareSeed },
	[84506070] = { name="Resonating Nightmare Bloom", title="夢魘種子", icon=11, tip=ns.nightmareSeed },
	[85805090] = { name="Resonating Nightmare Bloom", title="夢魘種子", icon=11, tip=ns.nightmareSeed },
	[86106570] = { name="Resonating Nightmare Bloom", title="夢魘種子", icon=11, tip=ns.nightmareSeed },
	[87304630] = { name="Resonating Nightmare Bloom", title="夢魘種子", icon=11, tip=ns.nightmareSeed },
	[88504300] = { name="Resonating Nightmare Bloom", title="夢魘種子", icon=11, tip=ns.nightmareSeed },
	[88904610] = { name="Resonating Nightmare Bloom", title="夢魘種子", icon=11, tip=ns.nightmareSeed },
	[90104950] = { name="Resonating Nightmare Bloom", title="夢魘種子", icon=11, tip=ns.nightmareSeed },
	[90805240] = { name="Resonating Nightmare Bloom", title="夢魘種子", icon=11, tip=ns.nightmareSeed },
	[91005680] = { name="Resonating Nightmare Bloom", title="夢魘種子", icon=11, tip=ns.nightmareSeed },
	[91404970] = { name="Resonating Nightmare Bloom", title="夢魘種子", icon=11, tip=ns.nightmareSeed },
	[93205130] = { name="Resonating Nightmare Bloom", title="夢魘種子", icon=11, tip=ns.nightmareSeed },
}

points[ 1447 ] = { -- Azshara
	[16505100] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[17505870] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[21205400] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[24804780] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[25108150] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[30207980] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals, continent=true },
	[33008150] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals },
}

points[ 1439 ] = { -- Darkshore
	[37604380] = { title=ns.twoMeditateTitle, npc=211298, name="希爾諾亞", icon=8, class="PRIEST", level=17, continent=true,
					guide=ns.twoMeditate, tip="在這裡完成第二個任務。始終 /跪下！", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ),
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "Secrets of Elune (2)" or "" ) } },

	[36702740] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[39607830] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[41605820] = { title="破損的箱子", icon=2, tip=ns.chest2, continent=true },
	[42003120] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[42506200] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[43005870] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[44703730] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[46003770] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[47103700] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[48103650] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[50802560] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[54703690] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[55503620] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[56603510] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[35408480] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[36308650] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[38402930] = { title="破損的箱子", icon=3, tip=ns.chest3, continent=true },
	[38408680] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[42608680] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[42808450] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[44202040] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[44308500] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[44708690] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[56402620] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[57102250] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[58102000] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[58401770] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[58500750] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[58801580] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[60301850] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[60502240] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[61501930] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[61902160] = { title="破損的箱子", icon=3, tip=ns.chest3 },

	[40604080] = { npc=2175, name="Shadowclaw", title="最佳獵人寵物", icon=5, class="HUNTER", guide=ns.bestPet, continent=true },

	[35808280] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[37606380] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals, continent=true },
	[40608980] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[43202700] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[44208200] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[45002620] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[45205800] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[46204680] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[47402880] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[49803680] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[56402480] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[59802180] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
}

points[ 1457 ] = { -- Darnassus
	[38608880] = { title=ns.twoMeditateTitle, npc=211188, name="瑪斯拉·熔渣之心", icon=8, class="PRIEST", level=17,
					guide=ns.twoMeditate, tip="在這裡開始第一個任務", faction="Alliance", continent=true,
					quest={ ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race == "Night elf" ) and 78193 or 0 ) }, 
					questName={ ( ( ns.race == "Night elf" ) and "Secrets of the Light (1)" or "" ), 
							( ( ns.race == "Night Elf" ) and "Secrets of the Light (2)" or "" ) } },
}

points[ 1443 ] = { -- Desolace
	[47402220] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals, continent=true },
	[48808220] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[49507460] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[52008550] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[52207250] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[52808100] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[54401920] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[54602880] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[56107460] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[71501860] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[72502190] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[73502460] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[74501030] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[76501920] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[80501710] = { name="Fel Tear", title="邪能傳送門", icon=7, tip=ns.felPortals },

	[32017272] = { title=ns.gnomereganTitle, object=424075, name="四邊定位信標 002", icon=9, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					questName={ "The Salvagematic 9000!", "Salvaging the Salvagematic", "The Corroded Core",
						"Quadrangulation", "Warranty Claim" }, },
}

points[ 1411 ] = { -- Durotar
	[39405380] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[40803040] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[42102710] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[42502690] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[43303940] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[43603560] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[43705070] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[43903920] = { title="破損的箱子", icon=1, tip=ns.chest1, continent=true },
	[44102400] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[44205030] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[46607900] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[47104980] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[47503100] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[47604980] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[47803330] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[47807720] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[49104840] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[49702430] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[49708070] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[50702590] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[51201900] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[51202360] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[51302100] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[51401030] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[51501030] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[51901990] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[52002540] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[52400920] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[52602640] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[52700850] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[53202500] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[53802820] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[54102220] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[57805870] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[59605810] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[59605630] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[61804550] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[61805110] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[62105590] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[62404210] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[62406050] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[63205680] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[64105040] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[64505310] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[65508320] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[67108670] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[68308510] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[68407150] = { title="破損的箱子", icon=1, tip=ns.chest1 },

	[68607160] = { npc=208124, name="Raluk", title="最佳獵人寵物", icon=5, class="HUNTER", guide=ns.bestPet, continent=true },

	[68707110] = { title=ns.twoMeditateTitle, object=410168, name="巫毒堆", icon=8, class="PRIEST", level=18,
					faction="Horde", guide=ns.twoMeditate, tip="忽略任務指示。爬上\n最北端島嶼上的小山",
					quest={ ( ( ns.race == "Undead" ) and 78198 or 0 ), ( ( ns.race == "Undead" ) and 78199 or 0 ) }, 
					questName={ ( ( ns.race == "Undead" ) and "Secrets of the Loa (1)" or "" ), 
							( ( ns.race == "Undead" ) and "Secrets of the Loa (2)" or "" ) }, continent=true, },
}

points[ 1445 ] = { -- Dustwallow Marsh
	[58601300] = { title=ns.gnomereganTitle, object=424074, name="四邊定位信標 001", icon=9, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					questName={ "The Salvagematic 9000!", "Salvaging the Salvagematic", "The Corroded Core",
						"Quadrangulation", "Warranty Claim" }, },
}

points[ 1444 ] = { -- Feralas
	[68205880] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals, continent=true },
	[70606250] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[72506380] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[73205440] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[74205060] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[74205680] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[74206000] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[76205650] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[76606360] = { name="Fel Scar", title="邪能傳送門", icon=7, tip=ns.felPortals },

	[29309380] = { title=ns.gnomereganTitle, object=424077, name="四邊定位信標 004", icon=9, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					tip="沿著海岸走以避開 60 級精英。\n洞穴也是一個死胡同",
					questName={ "The Salvagematic 9000!", "Salvaging the Salvagematic", "The Corroded Core",
						"Quadrangulation", "Warranty Claim" }, },
	[84204380] = { title=ns.gnomereganTitle, npc=218237, name="威爾達·奇蹟裝備", icon=9, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					tip="沿著海岸走以避開 60 級精英。\n洞穴也是一個死胡同",
					questName={ "The Salvagematic 9000!", "Salvaging the Salvagematic", "The Corroded Core",
						"Quadrangulation", "Warranty Claim" }, },
}

points[ 1450 ] = { -- Moonglade
	[52404050] = { npc=12042, name="洛迦納爾", title=ns.nightmareTitle, icon=10,
					guide=ns.nightmare, continent=true,
					tip="確保你與塞納里奧議會友好", 
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "An Amalgamation of Nightmares", "Itharius", "Going Under",
						"Return to Moonglade", "A Fortuitous Turn of Events", "The Bad News...",
						"The Lost Vambraces", "Waking the Nightmare" }, },
}

points[ 1412 ] = { -- Mulgore					
	[28502120] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[29302350] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[29602590] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[30902290] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[31006080] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[31206180] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[31306340] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[31504200] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[31704270] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[32506100] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[33104740] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[35506240] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[36101120] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[36601290] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[37701040] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[38400800] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[40101530] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[40601610] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[48407230] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[53200930] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[53304810] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[53307310] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[53707320] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[53804850] = { title="破損的箱子", icon=1, tip=ns.chest1, continent=true },
	[55101610] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[55201150] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[56701480] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[59804810] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[60903790] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[61204730] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[62303830] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[63107150] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[63504110] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[64206890] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[65506920] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[65604090] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[66906860] = { title="破損的箱子", icon=1, tip=ns.chest1 },

	[36605660] = { npc=205382, name="Mokwa", title="最佳獵人寵物", icon=5, class="HUNTER", guide=ns.bestPet, continent=true },
	[51801840] = { npc=5807, name="The Rake", title="最佳獵人寵物", icon=5, class="HUNTER", guide=ns.bestPet },
}

points[ 1454 ] = { -- Orgrimmar
	[35748823] = { title=ns.twoMeditateTitle, npc=211229, name="迪特里希·普雷斯", icon=8, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="在這裡開始第一個任務", continent=true,
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "Secrets of Undeath (1)" or "" ), 
							( ( ns.race == "Troll" ) and "Secrets of Undeath (2)" or "" ) } },							
}

points[ 1442 ] = { -- Stonetalon Mountains
	[43303880] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[45104600] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[50904380] = { title="破損的箱子", icon=3, tip=ns.chest3, continent=true },
	[53603580] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[63504020] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[66304550] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[66505080] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[71906270] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[72206040] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[72906140] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[73006000] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[73006150] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[73006280] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[73305900] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[73608560] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[74105930] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[77009150] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[80608950] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[84308420] = { title="破損的箱子", icon=3, tip=ns.chest3 },

	[39604990] = { name="土堆", title="舒適的睡袋", icon=6, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" }, tip="第四步" },
	[40805250] = { name="口袋垃圾", title="舒適的睡袋", icon=6, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" }, tip="第三步", continent=true },
}

points[ 1446 ] = { -- Tanaris
	[37802730] = { title=ns.gnomereganTitle, object=424076, name="四邊定位信標 003", icon=9, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					questName={ "The Salvagematic 9000!", "Salvaging the Salvagematic", "The Corroded Core",
						"Quadrangulation", "Warranty Claim" }, },
}

points[ 1438 ] = { -- Teldrassil
	[31503170] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[33202850] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[33903560] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[34202820] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[34203440] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[35403480] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[35603880] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[36303790] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[37204300] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[37504160] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[43806130] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[43905990] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[43906190] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[44506040] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[44606260] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[44805890] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[47207780] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[47907790] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[50006300] = { title="破損的箱子", icon=1, tip=ns.chest1, continent=true },
	[51605000] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[51904860] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[52005130] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[53005020] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[56307550] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[65806480] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[66006350] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[68705190] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[69605320] = { title="破損的箱子", icon=1, tip=ns.chest1 },

	[53807680] = { npc=14430, name="Duskstalker", title="最佳獵人寵物", icon=5, class="HUNTER", guide=ns.bestPet, continent=true },
	[60207560] = { npc=14430, name="Duskstalker", title="最佳獵人寵物", icon=5, class="HUNTER", guide=ns.bestPet },
}

points[ 1413 ] = { -- The Barrens
	[42102470] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[43402370] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[43602650] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[43702120] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[45102000] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[46603900] = { title="破損的箱子", icon=2, tip=ns.chest2, continent=true },
	[46502280] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[46601810] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[47001590] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[47701950] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[47901790] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[48903880] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[52501070] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[52501160] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[52904440] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[53404050] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[53904300] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[54504680] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[55902700] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[55904580] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[56600880] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[56804350] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[56902550] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[57104120] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[58802750] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[59102440] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[62804970] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[63504610] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[63704920] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[64304730] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[37601630] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[38401310] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[39201190] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[40001600] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[42905510] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[43304830] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[43305220] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[45005140] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[45305430] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[46905360] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[51105750] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[51305490] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[52605230] = { title="破損的箱子", icon=3, tip=ns.chest3, continent=true },
	[53605400] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[59605400] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[59600280] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[60400350] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[61700520] = { title="破損的箱子", icon=3, tip=ns.chest3 },
	[62000420] = { title="破損的箱子", icon=3, tip=ns.chest3 },

	[62043955] = { npc=214208, name="諾拉·安妮哈特", title=ns.voidTouchedTitle, icon=4, guide=ns.voidTouched,
					tip="在你完成\n之前的步驟之前不要來找她。\n\n"
						.."幻變之鱗護符是一個\n非常有價值的 +5 精神飾品",
					quest={ 78909 }, questName={ "Shifting Scale Talisman" }, continent=true },

	[50001660] = { npc=5865, name="Dishu", title="最佳獵人寵物", icon=5, class="HUNTER", guide=ns.bestPet, continent=true },
	[51802800] = { npc=5865, name="Dishu", title="最佳獵人寵物", icon=5, class="HUNTER", guide=ns.bestPet },
	[62603440] = { npc=5828, name="Humar the Pridelord", title="最佳獵人寵物", icon=5, class="HUNTER", guide=ns.bestPet },

	[46407390] = { name="燒毀的殘骸", title="舒適的睡袋", icon=6, guide=ns.cozySleepingBag,
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...and that note you found", "Stepping Stones", "Scramble", "Wet Job", "Eagle's Fist",
						"This Must Be The Place" },
						tip="聯盟：第二步\n部落：第一步", continent=true },

	[42808180] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals, continent=true },
	[43208020] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[43808380] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[46108550] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[47808360] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[48408120] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[48408300] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[48608300] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[50208060] = { name="Fel Crack", title="邪能傳送門", icon=7, tip=ns.felPortals },

	[38601540] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[39501380] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals, continent=true },
	[40001840] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[40801440] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[42001420] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[43404420] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[44405000] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[44405460] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[45004580] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[45805120] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[46405260] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[47604940] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[51805340] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[53005080] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[54205260] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[54404850] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[55602560] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[55805100] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[56002480] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[57602350] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[58204980] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[58802560] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[59002920] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[59003200] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[59203650] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[59802750] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[60203600] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[60802900] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
	[61803200] = { name="Fel Sliver", title="邪能傳送門", icon=7, tip=ns.felPortals },
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
