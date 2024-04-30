local _, ns = ...
L = {}
ns.L = L

ns.locale = GetLocale()

ns.realm = GetNormalizedRealmName() -- On a fresh login this will return null
ns.oceania = { AmanThul = true, Barthilas = true, Caelestrasz = true, DathRemar = true,
			Dreadmaul = true, Frostmourne = true, Gundrak = true, JubeiThos = true, 
			Khazgoroth = true, Nagrand = true, Saurfang = true, Thaurissan = true,
			-- The following are Classic 1.15.x
			Yojamba = true, Remulos = true, Arugal = true, Felstriker = true,
			-- The following are Seasonal Classic 1.15.x
			Penance = true, Shadowstrike = true }
if ns.oceania[ ns.realm ] then
	ns.locale = "enGB"
end

setmetatable( L, { __index = function( L, key ) return key end } )

-- Firstly, translations I often use in all my AddOns

if ns.locale == "zhCN" then
	ns.L["Character"] = "角色"
	ns.L["Account"] = "账号"
	ns.L["Completed"] = "已完成"
	ns.L["Not Completed"] = "未完成"
	ns.L["Options"] = "选项"
	ns.L["Map Pin Size"] = "地图图钉的大小"
	ns.L["The Map Pin Size"] = "地图图钉的大小"
	ns.L["Map Pin Alpha"] = "地图图钉的透明度"
	ns.L["The alpha transparency of the map pins"] = "地图图钉的透明度"
	ns.L["Show Coordinates"] = "显示坐标"
	ns.L["Show Coordinates Description"] = "在世界地图和迷你地图上的工具提示中显示坐标"
	ns.L["Map Pin Selections"] = "地图图钉选择"
	ns.L["Gold"] = "金子"
	ns.L["Red"] = "红"
	ns.L["Blue"] = "蓝"
	ns.L["Green"] = "绿色"
	ns.L["Ring"] = "戒指"
	ns.L["Cross"] = "叉"
	ns.L["Diamond"] = "钻石"
	ns.L["Frost"] = "冰霜"
	ns.L["Cogwheel"] = "齿轮"
	ns.L["White"] = "白色"
	ns.L["Purple"] = "紫色"
	ns.L["Yellow"] = "黄色"
	ns.L["Grey"] = "灰色"
	ns.L["Mana Orb"] = "法力球"
	ns.L["Phasing"] = "同步"
	ns.L["Raptor egg"] = "迅猛龙蛋"
	ns.L["Stars"] = "星星"
	ns.L["Screw"] = "拧"
	ns.L["Left"] = "左"
	ns.L["Right"] = "右"
	ns.L["Try later"] = "目前不可能。稍后再试"

elseif ns.locale == "zhTW" then
	ns.L["Character"] = "角色"
	ns.L["Account"] = "帳號"
	ns.L["Completed"] = "完成"
	ns.L["Not Completed"] = "未完成"
	ns.L["Options"] = "選項"
	ns.L["Map Pin Size"] = "圖示大小"
	ns.L["The Map Pin Size"] = "地圖圖示的大小"
	ns.L["Map Pin Alpha"] = "圖示透明度"
	ns.L["The alpha transparency of the map pins"] = "地圖圖示的透明度"
	ns.L["Show Coordinates"] = "顯示坐標"
	ns.L["Show Coordinates Description"] = "在世界地圖和小地圖上的浮動提示資訊中顯示坐標 "
	ns.L["Map Pin Selections"] = "選擇圖示"
	ns.L["Gold"] = "金幣"
	ns.L["Red"] = "紅色"
	ns.L["Blue"] = "藍色"
	ns.L["Green"] = "綠色"
	ns.L["Ring"] = "戒指"
	ns.L["Cross"] = "叉叉"
	ns.L["Diamond"] = "鑽石"
	ns.L["Frost"] = "冰霜"
	ns.L["Cogwheel"] = "齒輪"
	ns.L["White"] = "白色"
	ns.L["Purple"] = "紫色"
	ns.L["Yellow"] = "黃色"
	ns.L["Grey"] = "灰色"
	ns.L["Mana Orb"] = "法力球"
	ns.L["Phasing"] = "鏡像"
	ns.L["Raptor egg"] = "迅猛龍蛋"
	ns.L["Stars"] = "星星"
	ns.L["Screw"] = "螺絲"
	ns.L["Left"] = "左"
	ns.L["Right"] = "右"
	ns.L["Try later"] = "目前無法，請稍後再試。"
	
	-- 自行加入
	ns.L["No Map Pin"] = "不顯示圖示"
	ns.L["Chests"] = "探索賽季寶箱"
	ns.L["Chest Rank "] = "寶箱等級 "
	ns.L["Guide"] = "指南"

else
	ns.L["Character"] = "Character"
	ns.L["Account"] = "Account"
	ns.L["Completed"] = "Completed"
	ns.L["Not Completed"] = "Not Completed"
	ns.L["Options"] = "Options"
	ns.L["Map Pin Size"] = "Map Pin Size"
	ns.L["The Map Pin Size"] = "The Map Pin Size"
	ns.L["Map Pin Alpha"] = "Map Pin Alpha"
	ns.L["The alpha transparency of the map pins"] = "The alpha transparency of the map pins"
	ns.L["Show Coordinates"] = "Show Coordinates"
	ns.L["Show Coordinates Description"] = "Display coordinates in tooltips on the world map and the mini map"
	ns.L["Map Pin Selections"] = "Map Pin Selections"
	ns.L["Gold"] = "Gold"
	ns.L["Red"] = "Red"
	ns.L["Blue"] = "Blue"
	ns.L["Green"] = "Green"
	ns.L["Ring"] = "Ring"
	ns.L["Cross"] = "Cross"
	ns.L["Diamond"] = "Diamond"
	ns.L["Frost"] = "Frost"
	ns.L["Cogwheel"] = "Cogwheel"
	ns.L["White"] = "White"
	ns.L["Purple"] = "Purple"
	ns.L["Yellow"] = "Yellow"
	ns.L["Grey"] = ( ( ns.locale == "enUS" ) and "Gray" or "Grey" )
	ns.L["Mana Orb"] = "Mana Orb"
	ns.L["Phasing"] = "Phasing"
	ns.L["Raptor egg"] = "Raptor egg"
	ns.L["Stars"] = "Stars"
	ns.L["Screw"] = "Screw"
	ns.L["Left"] = "Left"
	ns.L["Right"] = "Right"
	ns.L["Try later"] = "Not possible at this time. Try later"
	
	-- 自行加入
	ns.L["No Map Pin"] = "No Map Pin"
	ns.L["Chests"] = "Chests"
	ns.L["Chest Rank "] = "Chest Rank "
	ns.L["Guide"] = "Guide"
end

-- Translations specific to the Chests AddOn

if ns.locale == "zhCN" then
	ns.L["AddOn Description"] = "所有破损的箱子"
	ns.L["AoPD"] = "痹体恐惧氛围"
	ns.L["Battered Chest"] = "破损的箱子"
	ns.L["Best Hunter Pets"] = "最佳猎人宠物"
	ns.L["Chest Rank"] = "宝箱的等级: "
	ns.L["Fel Portal"] = "邪能传送门"
	ns.L["Gnomeregan"] = "诺莫瑞根"
	ns.L["Nightmare"] = "恶梦"
	ns.L["Priest"] = "牧师"
	ns.L["Void Touched"] = "虚空触动"

elseif ns.locale == "zhTW" then
	ns.L["AddOn Description"] = "所有破損的箱子"
	ns.L["AoPD"] = "麻痺體恐懼氛圍"
	ns.L["Battered Chest"] = "破損的箱子"
	ns.L["Best Hunter Pets"] = "最佳獵人寵物"
	ns.L["Chest Rank"] = "寶箱的等級: "
	ns.L["Fel Portal"] = "邪能傳送門"
	ns.L["Gnomeregan"] = "諾莫瑞根"
	ns.L["Nightmare"] = "惡夢"
	ns.L["Priest"] = "牧師"
	ns.L["Void Touched"] = "虛空觸動"
	
	-- 自行加入
	ns.L["Cozy Sleeping Bag"] = "舒適的睡袋"
	ns.L["Nightmare Bloom / Seed"] = "共鳴的夢魘之花 / 夢魘種子"

else
	ns.L["AddOn Description"] = "Helps you to collect Battered Chests"
	ns.L["AoPD"] = "Aura of Paralyzing Dread"
	ns.L["Chest Rank"] = "Chest Rank: "
	ns.L["Void Touched"] = "Void-Touched"
	
	-- 自行加入
	ns.L["Cozy Sleeping Bag"] = "Cozy Sleeping Bag"
	ns.L["Nightmare Bloom / Seed"] = "Nightmare Bloom / Seed"
end

-- v1.09+ Quest Names

if ns.locale == "zhCN" then
	ns.L["...and that note you found"] = "……你所找到的纸条"
	ns.L["A Fortuitous Turn of Events"] = "峰回路转"
	ns.L["An Amalgamation of Nightmares"] = "梦魇的融合怪"
	ns.L["Eagle's Fist"] = "鹰拳" -- No in game translation
	ns.L["Going Under"] = "深入其中"
	ns.L["Itharius"] = "伊萨里奥斯" -- No in game translation
	ns.L["Quadrangulation"] = "四边定位"
	ns.L["Return to Moonglade"] = "返回月光林地"
	ns.L["Salvaging the Salvagematic"] = "回收器回收记"
	ns.L["Scramble"] = "抢" -- No in game translation
	ns.L["Secrets of Elune (1)"] = "艾露恩的秘密 (1)"
	ns.L["Secrets of Elune (2)"] = "艾露恩的秘密 (2)"
	ns.L["Secrets of the Light (1)"] = "圣光的秘密 (1)" -- No in game translation
	ns.L["Secrets of the Light (2)"] = "圣光的秘密 (2)" -- No in game translation
	ns.L["Secrets of the Loa (1)"] = "洛阿神灵的秘密 (1)" -- No in game translation
	ns.L["Secrets of the Loa (2)"] = "洛阿神灵的秘密 (2)" -- No in game translation
	ns.L["Secrets of Undeath (1)"] = "亡灵的秘密 (1)" -- No in game translation
	ns.L["Secrets of Undeath (2)"] = "亡灵的秘密 (2)" -- No in game translation
	ns.L["Shifting Scale Talisman"] = "幻变之鳞护符"
	ns.L["Stepping Stones"] = "垫脚石" -- No in game translation
	ns.L["The Bad News..."] = "坏消息是……"
	ns.L["The Corroded Core"] = "腐蚀的核心"
	ns.L["The Lost Vambraces"] = "失落的腕铠"
	ns.L["The Salvagematic 9000!"] = "超级回收器9000型！"
	ns.L["This Must Be The Place"] = "这一定是这个地方" -- No in game translation
	ns.L["Waking the Nightmare"] = "梦魇乍醒"
	ns.L["Warranty Claim"] = "保修索赔" -- No in game translation
	ns.L["Wet Job"] = "湿工作" -- No in game translation
elseif ns.locale == "zhTW" then
	ns.L["...and that note you found"] = "……你所找到的紙條"
	ns.L["A Fortuitous Turn of Events"] = "峰迴路轉"
	ns.L["An Amalgamation of Nightmares"] = "夢魘的融合怪"
	ns.L["Eagle's Fist"] = "鷹拳"
	ns.L["Going Under"] = "深入其中"
	ns.L["Itharius"] = "伊薩裡奧斯"
	ns.L["Quadrangulation"] = "四邊定位"
	ns.L["Return to Moonglade"] = "返回月光林地"
	ns.L["Salvaging the Salvagematic"] = "回收器回收記"
	ns.L["Scramble"] = "搶"
	ns.L["Secrets of Elune (1)"] = "艾露恩的秘密 (1)"
	ns.L["Secrets of Elune (2)"] = "艾露恩的秘密 (2)"
	ns.L["Secrets of the Light (1)"] = "聖光的秘密 (1)"
	ns.L["Secrets of the Light (2)"] = "聖光的秘密 (2)"
	ns.L["Secrets of the Loa (1)"] = "洛阿神靈的秘密 (1)"
	ns.L["Secrets of the Loa (2)"] = "洛阿神靈的秘密 (2)"
	ns.L["Secrets of Undeath (1)"] = "亡靈的秘密 (1)"
	ns.L["Secrets of Undeath (2)"] = "亡靈的秘密 (2)"
	ns.L["Shifting Scale Talisman"] = "幻變之鱗護符"
	ns.L["Stepping Stones"] = "墊腳石"
	ns.L["The Bad News..."] = "壞消息是…"
	ns.L["The Corroded Core"] = "腐蝕的核心"
	ns.L["The Lost Vambraces"] = "失落的腕鎧"
	ns.L["The Salvagematic 9000!"] = "超級回收器9000型！"
	ns.L["This Must Be The Place"] = "這一定是這個地方"
	ns.L["Waking the Nightmare"] = "夢魘乍醒"
	ns.L["Warranty Claim"] = "保固索賠"
	ns.L["Wet Job"] = "濕工作"
else
--	ns.L["An Amalgamation of Nightmares"] = "An Amalagamation of Nightmares" -- Do I use Blizzard's typo?
end