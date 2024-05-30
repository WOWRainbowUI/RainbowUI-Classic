if not BG.IsCTM() then return end

local _, ADDONSELF = ...

local LibBG = ADDONSELF.LibBG
local L = ADDONSELF.L

local pt = print

-- 副本掉落
do
    -- P1
    do
        local FB = "BOT"
        -- 团本
        do
            BG.Loot[FB].H.boss1 = { 67424, 67423, 67425, 65139, 65133, 65136, 65134, 65142, 65135, 65143, 65138, 65141, 65137, 65144, 65140, }
            BG.Loot[FB].H.boss2 = { 65091, 65094, 65095, 65096, 65093, 65107, 65112, 65108, 65092, 65106, 65109, 65105, }
            BG.Loot[FB].H.boss3 = { 65111, 65115, 65120, 65114, 65117, 65113, 65119, 65122, 65121, 65116, 65110, 65118, }
            BG.Loot[FB].H.boss4 = { 65087, 65088, 65089, 65145, 65090, 68600, 65129, 65130, 65131, 65127, 65126, 65132, 65125, 65128, 65123, 65124, }
            BG.Loot[FB].H.boss5 = { 60237, 60227, 60232, 60234, 60228, 60238, 60231, 60230, 60229, 60236, 60235, 60226, 60233, }
            BG.Loot[FB].H.boss6 = {}
            BG.Loot[FB].H.boss1other = { 65204, 65179, 65192, 65212, 65224, 65264, 65262, 65232, 65184, 65244, 65239, 65269, 65202, 65214, 65254, 65237, 65219, 65249, 65197 }
            BG.Loot[FB].H.boss4other = { 65208, 65253, 65268, 65248, 65258, 65273, 65263, 65223, 65233, 65238, 65218, 65228, 65193, 65183, 65188, 65213, 65243, 65203, 65198, }

            BG.Loot[FB].N.boss1 = { 59474, 59484, 59481, 59483, 59471, 59482, 59470, 59475, 59472, 59476, 59469, 59473, }
            BG.Loot[FB].N.boss2 = { 63536, 63533, 63532, 63531, 63534, 59517, 59512, 59516, 63535, 59518, 59515, 59519, }
            BG.Loot[FB].N.boss3 = { 59513, 59509, 59504, 59510, 59507, 59511, 59505, 59502, 59503, 59508, 59514, 59506, }
            BG.Loot[FB].N.boss4 = { 64316, 64315, 64314, 59330, 63680, 59494, 59490, 59487, 59486, 59497, 59498, 59485, 59499, 59495, 59501, 59500, }
            BG.Loot[FB].N.boss5 = {}
            BG.Loot[FB].N.boss6 = {}
            BG.Loot[FB].N.boss4other = { 60343, 60246, 60353, 60306, 60327, 60302, 60262, 60284, 60252, 60362, 60289, 60311, 60358, 60279, 60317, 60322, 60348, 60253, 60331 }

            local FB = "BWD"
            BG.Loot[FB].H.boss1 = { 65081, 65077, 65078, 65083, 65004, 65084, 65085, 65079, 65086, 65080, 65076, 65082, }
            BG.Loot[FB].H.boss2 = { 65007, 65041, 65047, 65020, 65042, 65045, 65050, 65046, 65044, 65049, 65051, 65048, }
            BG.Loot[FB].H.boss3 = { 67431, 67429, 67430, 65058, 65052, 65066, 65059, 65054, 65060, 65062, 65056, 65055, 65061, 65063, 65053, }
            BG.Loot[FB].H.boss4 = { 65064, 65067, 65028, 65021, 65068, 65073, 65065, 65071, 65075, 65069, 65070, 65072, }
            BG.Loot[FB].H.boss5 = { 67426, 67427, 67428, 65036, 65038, 65035, 65037, 65031, 65040, 65034, 65039, 65030, 65032, 65033, 65029, }
            BG.Loot[FB].H.boss6 = { 65000, 65001, 65002, 65003, 65017, 65024, 65023, 65025, 65074, 65027, 65043, 65018, 65019, 65057, 65022, 65026, }
            BG.Loot[FB].H.boss7 = {}
            BG.Loot[FB].H.boss3other = { 65205, 65265, 65245, 65250, 65255, 65270, 65259, 65229, 65234, 65220, 65215, 65225, 65189, 65240, 65180, 65185, 65209, 65199, 65194, }
            BG.Loot[FB].H.boss5other = { 65267, 65207, 65247, 65252, 65257, 65272, 65231, 65217, 65236, 65261, 65222, 65227, 65191, 65187, 65182, 65211, 65196, 65201, 65242, }
            BG.Loot[FB].H.boss6other = { 65206, 65266, 65246, 65256, 65251, 65271, 65216, 65221, 65260, 65230, 65235, 65226, 65241, 65181, 65190, 65210, 65186, 65195, 65200, }

            BG.Loot[FB].N.boss1 = { 59122, 59219, 59120, 59218, 59119, 63540, 59118, 59217, 59117, 59216, 59220, 59121, }
            BG.Loot[FB].N.boss2 = { 59492, 59341, 59333, 59452, 59340, 59335, 59329, 59334, 59336, 59331, 59328, 59332, }
            BG.Loot[FB].N.boss3 = { 59320, 59327, 59312, 59319, 59325, 59318, 59316, 59322, 59324, 59317, 59315, 59326, }
            BG.Loot[FB].N.boss4 = { 59314, 59311, 59451, 59355, 59310, 59223, 59225, 59313, 59234, 59221, 59233, 59224, }
            BG.Loot[FB].N.boss5 = { 59347, 59344, 59348, 59346, 59352, 59349, 59342, 59353, 59343, 59351, 59350, 59354, }
            BG.Loot[FB].N.boss6 = { 63684, 63683, 63682, 63679, 59459, 59443, 59444, 59442, 59222, 59356, 59337, 59457, 59454, 59321, 59450, 59441, }
            BG.Loot[FB].N.boss7 = {}
            BG.Loot[FB].N.boss6other = { 60243, 60258, 60256, 60249, 60282, 60286, 60277, 60299, 60308, 60315, 60320, 60303, 60328, 60325, 60351, 60341, 60356, 60359, 60346 }

            local FB = "TOF"
            BG.Loot[FB].H.boss1 = { 65374, 65369, 65376, 65368, 65377, 65370, 65375, 65371, 65372, 65367, 65373, }
            BG.Loot[FB].H.boss2 = { 63041, 66998, 65000, 65087, 65001, 65088, 65002, 65089, 68130, 68131, 68132, 69883, 69880, 69885, 69882, 69878, 69884, 69879, 69881, 65384, 65379, 65383, 65378, 65386, 65380, 65385, 65381, 65382, }
            BG.Loot[FB].H.boss3 = {}
            BG.Loot[FB].H.boss2other = { 65206, 65266, 65246, 65256, 65251, 65271, 65216, 65221, 65260, 65230, 65235, 65226, 65241, 65181, 65190, 65210, 65186, 65195, 65200, 65208, 65253, 65268, 65248, 65258, 65273, 65263, 65223, 65233, 65238, 65218, 65228, 65193, 65183, 65188, 65213, 65243, 65203, 65198, }

            BG.Loot[FB].N.boss1 = { 63495, 63496, 63497, 63498, 63493, 63490, 63491, 63492, 63494, 63488, 63489, }
            BG.Loot[FB].N.boss2 = { 63041, 63684, 64316, 63683, 64315, 63682, 64314, 68127, 68128, 68129, 69828, 69827, 69829, 69830, 69833, 69831, 69834, 69835, 63506, 63500, 63507, 63502, 63505, 63501, 63504, 63503, 63499, }
            BG.Loot[FB].N.boss3 = {}
            BG.Loot[FB].N.boss2other = { 60343, 60246, 60353, 60306, 60327, 60302, 60262, 60284, 60252, 60362, 60289, 60311, 60358, 60279, 60317, 60322, 60348, 60253, 60331, 60243, 60258, 60256, 60249, 60282, 60286, 60277, 60299, 60308, 60315, 60320, 60303, 60328, 60325, 60351, 60341, 60356, 60359, 60346 }

            -- 兑换物
            BG.Loot[FB].ExchangeItems = {
                -- 肩
                [64316] = { 60327, 60331, 60306, 60311, 60317, 60322 },
                [64315] = { 60362, 60348, 60358, 60252, 60262, 60253 },
                [64314] = { 60246, 60302, 60343, 60353, 60279, 60284, 60289 },
                -- 头
                [63684] = { 60328, 60325, 60303, 60308, 60315, 60320 },
                [63683] = { 60356, 60359, 60346, 60249, 60258, 60256 },
                [63682] = { 60243, 60299, 60282, 60286, 60277, 60351, 60341 },

                -- 头
                [65000] = { 65206, 65266, 65246, 65256, 65251, 65271, },
                [65001] = { 65216, 65221, 65260, 65230, 65235, 65226, },
                [65002] = { 65241, 65181, 65190, 65210, 65186, 65195, 65200, },

                -- 肩
                [65087] = { 65208, 65253, 65268, 65248, 65258, 65273, },
                [65088] = { 65263, 65223, 65233, 65238, 65218, 65228, },
                [65089] = { 65193, 65183, 65188, 65213, 65243, 65203, 65198, },

                -- 胸
                [67424] = { 65204, 65264, 65244, 65269, 65254, 65249, },
                [67423] = { 65224, 65262, 65232, 65214, 65237, 65219, },
                [67425] = { 65179, 65192, 65212, 65184, 65239, 65202, 65197, },

                -- 手
                [67430] = { 65205, 65265, 65245, 65250, 65255, 65270, },
                [67429] = { 65259, 65229, 65234, 65220, 65215, 65225, },
                [67431] = { 65189, 65240, 65180, 65185, 65209, 65199, 65194, },

                -- 腿
                [67427] = { 65267, 65207, 65247, 65252, 65257, 65272, },
                [67428] = { 65231, 65217, 65236, 65261, 65222, 65227, },
                [67426] = { 65191, 65187, 65182, 65211, 65196, 65201, 65242, },


                -- -- 头
                -- [] = {},
                -- [] = {},
                -- [] = {},
            }
            for item, v in pairs(BG.Loot[FB].ExchangeItems) do -- 提前缓存
                GetItemInfo(item)
            end

            -- 总是记录到杂项
            BG.Loot.BOT.ZaXiangItems = {
                67424, 67423, 67425, 65087, 65088, 65089, 67430, 67429, 67431, 67427, 67428, 67426, 65000, 65001, 65002,
                64316, 64315, 64314, 63684, 63683, 63682,
            }
            BG.Loot.BWD.ZaXiangItems = BG.Loot.BOT.ZaXiangItems
            BG.Loot.TOF.ZaXiangItems = BG.Loot.BOT.ZaXiangItems
        end

        -- 5人本
        do
            -- 巨石之核
            do
                local FB_5 = GetRealZoneText(725)
                BG.Loot[FB].Team[FB_5] = {
                    [L["克伯鲁斯"]] = { 56329, 56330, 56331, 56332, 56328, },
                    [L["岩皮"]] = { 63043, 56335, 56337, 56334, 56336, 56333, },
                    [L["欧泽鲁克"]] = { 56342, 56338, 56340, 56341, 56339, },
                    [L["高阶女祭司艾苏尔"]] = { 56343, 56346, 56349, 56350, 56352, 56344, 56348, 56347, 56345, 56351, },
                }
            end
            -- 影牙城堡
            do
                local FB_5 = GetRealZoneText(33)
                BG.Loot[FB].Team[FB_5] = {
                    [L["灰葬男爵"]] = { 63433, 63437, 63436, 63434, 63435, },
                    [L["席瓦莱恩男爵"]] = { 63441, 63438, 63439, 63444, 63440, },
                    [L["指挥官斯普林瓦尔"]] = { 63445, 63449, 63448, 63447, 63446, },
                    [L["沃登勋爵"]] = { 63455, 63452, 63450, 63454, 63453, },
                    [L["高弗雷勋爵"]] = { 63461, 63456, 63460, 63462, 63459, 63463, 63465, 63458, 63457, 63464, },
                }
            end
            -- 托维尔失落之城
            do
                local FB_5 = GetRealZoneText(755)
                BG.Loot[FB].Team[FB_5] = {
                    [L["胡辛姆将军"]] = { 56382, 56379, 56383, 56381, 56380, },
                    [L["锁喉"]] = { 56390, 56389, 56392, 56391, 56393, },
                    [L["高阶预言者巴林姆"]] = { 56384, 56385, 56386, 56387, 56388, },
                    [L["希亚玛特"]] = { 56396, 56402, 56399, 56397, 56403, 56401, 56395, 56398, 56400, 56394, },
                }
            end
            -- 旋云之巅
            do
                local FB_5 = GetRealZoneText(657)
                BG.Loot[FB].Team[FB_5] = {
                    [L["大宰相埃尔坦"]] = { 56357, 56358, 56360, 56359, 56356, },
                    [L["阿尔泰鲁斯"]] = { 63040, 56364, 56362, 56361, 56363, 56365, },
                    [L["西风君王阿萨德"]] = { 56366, 56376, 56372, 56374, 56371, 56369, 56368, 56367, 56375, 56373, 56370, },
                }
            end
            -- 格瑞姆巴托
            do
                local FB_5 = GetRealZoneText(670)
                BG.Loot[FB].Team[FB_5] = {
                    [L["乌比斯将军"]] = { 56441, 56443, 56442, 56444, 56440, },
                    [L["铸炉之主索朗格斯"]] = { 56446, 56447, 56448, 56445, 56449, },
                    [L["达加·燃影者"]] = { 56454, 56452, 56450, 56453, 56451, },
                    [L["地狱公爵埃鲁达克"]] = { 56456, 56461, 56459, 56460, 56455, 56464, 56457, 56458, 56462, 56463, },
                }
            end
            -- 死亡矿井
            do
                local FB_5 = GetRealZoneText(36)
                BG.Loot[FB].Team[FB_5] = {
                    [L["格拉布托克"]] = { 65163, 63470, 63467, 63471, 63468, },
                    [L["赫利克斯·破甲"]] = { 65164, 63473, 63476, 63474, 63475, },
                    [L["死神5000"]] = { 65165, 65167, 65166, },
                    [L["撕心狼将军"]] = { 65168, 65170, 65169, },
                    [L["“船长”曲奇"]] = { 65171, 65173, 65172, 65177, 65174, },
                    [L["梵妮莎·范克里夫"]] = { 63480, 63487, 63485, 63478, 63479, 63484, 63486, 63482, 63483, 65178, },
                }
            end
            -- 潮汐王座
            do
                local FB_5 = GetRealZoneText(643)
                BG.Loot[FB].Team[FB_5] = {
                    [L["纳兹夏尔女士"]] = { 56266, 56269, 56267, 56268, 56270, },
                    [L["指挥官乌尔索克，腐烂王子"]] = { 56271, 56273, 56272, 56275, 56274, },
                    [L["蛊心魔古厄夏"]] = { 56279, 56278, 56277, 56276, 56280, },
                    [L["厄祖玛特"]] = { 56284, 56289, 56288, 56281, 56291, 56286, 56283, 56282, 56285, 56290, },
                }
            end
            -- 起源大厅
            do
                local FB_5 = GetRealZoneText(644)
                BG.Loot[FB].Team[FB_5] = {
                    [L["神殿守护者安努尔"]] = { 56411, 56409, 56410, 56408, 56407, },
                    [L["地怒者塔赫"]] = { 56424, 56426, 56422, 56425, 56423, },
                    [L["安拉斐特"]] = { 57866, 57868, 57869, 57870, 57867, },
                    [L["伊希斯特，魔法的造物"]] = { 56416, 56413, 56415, 56412, 56414, },
                    [L["阿穆纳伊，生命的造物"]] = { 56420, 56421, 56419, 56417, 56418, },
                    [L["塞特斯，毁灭的造物"]] = { 57872, 57873, 57871, 57874, 57875, },
                    [L["拉夏，太阳的造物"]] = { 56433, 56430, 56434, 56428, 56429, 56435, 56436, 56432, 56431, 56427, },
                }
            end
            -- 黑石岩窟
            do
                local FB_5 = GetRealZoneText(645)
                BG.Loot[FB].Team[FB_5] = {
                    [L["摧骨者罗姆欧格"]] = { 56312, 56314, 56311, 56313, 56310, },
                    [L["柯尔拉，暮光之兆"]] = { 56296, 56298, 56297, 56299, 56295, },
                    [L["卡尔什·断钢"]] = { 56302, 56300, 56304, 56301, 56303, },
                    [L["如花"]] = { 56306, 56308, 56305, 56309, 56307, },
                    [L["升腾者领主奥西迪斯"]] = { 56317, 56322, 56316, 56321, 56319, 56318, 56324, 56315, 56323, 56320, },
                }
            end
        end

        --[[         do
            local tbl = { 65191, 65187, 65231, 65267, 65217, 65182, 65207, 65211, 65236, 65247, 65252, 65261, 65196, 65257, 65201, 65242, 65222, 65272, 65227 }
            local classtbl = {
                [1] = { "战士", "猎人", "萨满" },
                [2] = { "圣骑士", "术士", "牧师" },
                [3] = { "潜行者", "法师", "德鲁伊", "死亡骑士" },
            }
            local classtbl2 = {
                [1] = "ZLS",
                [2] = "QSM",
                [3] = "ZFD",
            }
            for _, itemID in ipairs(tbl) do -- 提前缓存
                GetItemInfo(itemID)
            end

            local f = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
            f:SetBackdrop({
                bgFile = "Interface/ChatFrame/ChatFrameBackground",
                edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
                edgeSize = 16,
                insets = { left = 3, right = 3, top = 3, bottom = 3 }
            })
            f:SetBackdropColor(0, 0, 0, 0.8)
            f:SetSize(300, 500)
            f:SetPoint("CENTER")
            f:EnableMouse(true)

            local s = CreateFrame("ScrollFrame", nil, f, "UIPanelScrollFrameTemplate") -- 滚动
            s:SetWidth(f:GetWidth() - 31)
            s:SetHeight(f:GetHeight() - 9)
            s:SetPoint("TOPLEFT", f, "TOPLEFT", 5, -5)
            s.ScrollBar.scrollStep = BG.scrollStep

            local edit = CreateFrame("EditBox", nil, f) -- 子框架
            edit:SetWidth(s:GetWidth())
            edit:SetHeight(s:GetHeight())
            edit:SetFontObject(BG.FontGold13)
            edit:SetMultiLine(true)
            edit:SetAutoFocus(false)
            s:SetScrollChild(edit)

            edit:SetScript("OnEscapePressed", function(self)
                self:ClearFocus()
            end)

            local function abc(type, tbl)
                edit:Insert(BG.STC_w1(classtbl2[type] .. "\n"))
                for _, itemID in ipairs(tbl) do
                    BG.Tooltip_SetItemByID(itemID)
                    local tab = {}
                    local ii = 1
                    while _G["BiaoGeTooltipTextLeft" .. ii] do
                        local tx = _G["BiaoGeTooltipTextLeft" .. ii]:GetText()
                        if tx and tx ~= "" and (not tx:find(WARDROBE_SETS)) and
                            (not tx:find(ITEM_MOD_FERAL_ATTACK_POWER:gsub("%%s", "(.+)"))) then -- 小德的武器词缀：在猎豹、熊等等攻击强度提高%s点
                            tinsert(tab, tx)
                        end
                        ii = ii + 1
                    end
                    local TooltipText = table.concat(tab)
                    if strfind(TooltipText, CLASS) then
                        for i, class in ipairs(classtbl[type]) do
                            if strfind(TooltipText, class) then
                                edit:Insert(itemID .. ",")
                            end
                        end
                    end
                end
                edit:Insert("\n\n")
            end
            C_Timer.After(5, function()
                abc(1, tbl)
                abc(2, tbl)
                abc(3, tbl)
            end)
        end ]]
    end
end


-- 牌子装备
do
    local function AddCurrency(FB, currencyID, itemID, count)
        BG.Loot[FB].Currency[itemID] = { count = count, currencyID = currencyID }
    end

    -- P1
    do
        local FB = "BOT"
        -- 勇气点数
        do
            AddCurrency(FB, 396, 58180, 1650)
            AddCurrency(FB, 396, 58181, 1650)
            AddCurrency(FB, 396, 58182, 1650)
            AddCurrency(FB, 396, 58183, 1650)
            AddCurrency(FB, 396, 58184, 1650)
            AddCurrency(FB, 396, 58185, 1250)
            AddCurrency(FB, 396, 58187, 1250)
            AddCurrency(FB, 396, 58188, 1250)
            AddCurrency(FB, 396, 58189, 1250)
            AddCurrency(FB, 396, 58190, 1250)
            AddCurrency(FB, 396, 58191, 1250)
            AddCurrency(FB, 396, 58192, 1250)
            AddCurrency(FB, 396, 58193, 1250)
            AddCurrency(FB, 396, 58194, 1250)
            AddCurrency(FB, 396, 58195, 1650)
            AddCurrency(FB, 396, 58197, 1650)
            AddCurrency(FB, 396, 58198, 1650)
            AddCurrency(FB, 396, 58199, 1650)
            AddCurrency(FB, 396, 58481, 1650)
            AddCurrency(FB, 396, 58482, 1650)
            AddCurrency(FB, 396, 58484, 1650)
            AddCurrency(FB, 396, 58485, 1650)
            AddCurrency(FB, 396, 58486, 1650)
            AddCurrency(FB, 396, 64671, 700)
            AddCurrency(FB, 396, 64672, 700)
            AddCurrency(FB, 396, 64673, 700)
            AddCurrency(FB, 396, 64674, 700)
            AddCurrency(FB, 396, 64676, 700)
            AddCurrency(FB, 396, 68812, 1250)
            -- 359套装（用勇气换）
            local tbl = { 60340, 60355, 60326, 60345, 60280, 60248, 60290, 60247, 60275, 60307, 60312, 60298, 60350, 60257, 60363, 60319, 60314, 60332, 60285 }
            for i, itemID in ipairs(tbl) do -- 手
                AddCurrency(FB, 396, itemID, 1650)
            end
            local tbl = { 60339, 60323, 60244, 60287, 60259, 60276, 60349, 60344, 60354, 60251, 60254, 60329, 60309, 60360, 60304, 60301, 60318, 60281, 60313 }
            for i, itemID in ipairs(tbl) do -- 胸
                AddCurrency(FB, 396, itemID, 2200)
            end
            local tbl = { 60357, 60324, 60245, 60352, 60255, 60278, 60342, 60305, 60250, 60316, 60261, 60310, 60288, 60300, 60283, 60347, 60321, 60361, 60330 }
            for i, itemID in ipairs(tbl) do -- 腿
                AddCurrency(FB, 396, itemID, 2200)
            end
        end

        -- 正义点数
        do
            AddCurrency(FB, 395, 57913, 1650)
            AddCurrency(FB, 395, 57914, 1650)
            AddCurrency(FB, 395, 57915, 1650)
            AddCurrency(FB, 395, 57916, 1650)
            AddCurrency(FB, 395, 57917, 1650)
            AddCurrency(FB, 395, 57918, 1650)
            AddCurrency(FB, 395, 57919, 1650)
            AddCurrency(FB, 395, 57921, 1650)
            AddCurrency(FB, 395, 57922, 1650)
            AddCurrency(FB, 395, 57923, 950)
            AddCurrency(FB, 395, 57924, 950)
            AddCurrency(FB, 395, 57925, 950)
            AddCurrency(FB, 395, 57926, 950)
            AddCurrency(FB, 395, 57927, 950)
            AddCurrency(FB, 395, 57928, 950)
            AddCurrency(FB, 395, 57929, 950)
            AddCurrency(FB, 395, 57930, 1250)
            AddCurrency(FB, 395, 57931, 1250)
            AddCurrency(FB, 395, 57932, 1250)
            AddCurrency(FB, 395, 57933, 1250)
            AddCurrency(FB, 395, 57934, 1250)
            AddCurrency(FB, 395, 58096, 2200)
            AddCurrency(FB, 395, 58097, 2200)
            AddCurrency(FB, 395, 58098, 2200)
            AddCurrency(FB, 395, 58099, 1650)
            AddCurrency(FB, 395, 58100, 1650)
            AddCurrency(FB, 395, 58101, 2200)
            AddCurrency(FB, 395, 58102, 2200)
            AddCurrency(FB, 395, 58103, 2200)
            AddCurrency(FB, 395, 58104, 1650)
            AddCurrency(FB, 395, 58105, 1650)
            AddCurrency(FB, 395, 58106, 2200)
            AddCurrency(FB, 395, 58107, 2200)
            AddCurrency(FB, 395, 58108, 2200)
            AddCurrency(FB, 395, 58109, 1650)
            AddCurrency(FB, 395, 58110, 1650)
            AddCurrency(FB, 395, 58121, 2200)
            AddCurrency(FB, 395, 58122, 2200)
            AddCurrency(FB, 395, 58123, 2200)
            AddCurrency(FB, 395, 58124, 1650)
            AddCurrency(FB, 395, 58125, 1650)
            AddCurrency(FB, 395, 58126, 2200)
            AddCurrency(FB, 395, 58127, 2200)
            AddCurrency(FB, 395, 58128, 2200)
            AddCurrency(FB, 395, 58129, 1650)
            AddCurrency(FB, 395, 58130, 1650)
            AddCurrency(FB, 395, 58131, 2200)
            AddCurrency(FB, 395, 58132, 2200)
            AddCurrency(FB, 395, 58133, 2200)
            AddCurrency(FB, 395, 58134, 1650)
            AddCurrency(FB, 395, 58138, 1650)
            AddCurrency(FB, 395, 58139, 2200)
            AddCurrency(FB, 395, 58140, 2200)
            AddCurrency(FB, 395, 58150, 2200)
            AddCurrency(FB, 395, 58151, 1650)
            AddCurrency(FB, 395, 58152, 1650)
            AddCurrency(FB, 395, 58153, 2200)
            AddCurrency(FB, 395, 58154, 2200)
            AddCurrency(FB, 395, 58155, 2200)
            AddCurrency(FB, 395, 58157, 1650)
            AddCurrency(FB, 395, 58158, 1650)
            AddCurrency(FB, 395, 58159, 2200)
            AddCurrency(FB, 395, 58160, 2200)
            AddCurrency(FB, 395, 58161, 2200)
            AddCurrency(FB, 395, 58162, 1650)
            AddCurrency(FB, 395, 58163, 1650)
        end

        -- 荣誉点数
        do
            AddCurrency(FB, 1901, 64712)
            AddCurrency(FB, 1901, 64709)
            AddCurrency(FB, 1901, 64731)
            AddCurrency(FB, 1901, 64708)
            AddCurrency(FB, 1901, 64772)
            AddCurrency(FB, 1901, 64811)
            AddCurrency(FB, 1901, 64773)
            AddCurrency(FB, 1901, 64988)
            AddCurrency(FB, 1901, 64769)
            AddCurrency(FB, 1901, 64735)
            AddCurrency(FB, 1901, 64737)
            AddCurrency(FB, 1901, 64829)
            AddCurrency(FB, 1901, 64788)
            AddCurrency(FB, 1901, 64853)
            AddCurrency(FB, 1901, 64776)
            AddCurrency(FB, 1901, 64687)
            AddCurrency(FB, 1901, 64839)
            AddCurrency(FB, 1901, 64710)
            AddCurrency(FB, 1901, 64799)
            AddCurrency(FB, 1901, 64813)
            AddCurrency(FB, 1901, 64770)
            AddCurrency(FB, 1901, 64847)
            AddCurrency(FB, 1901, 64771)
            AddCurrency(FB, 1901, 64746)
            AddCurrency(FB, 1901, 64798)
            AddCurrency(FB, 1901, 64780)
            AddCurrency(FB, 1901, 64843)
            AddCurrency(FB, 1901, 64727)
            AddCurrency(FB, 1901, 64728)
            AddCurrency(FB, 1901, 64812)
            AddCurrency(FB, 1901, 64845)
            AddCurrency(FB, 1901, 64819)
            AddCurrency(FB, 1901, 64762)
            AddCurrency(FB, 1901, 64800)
            AddCurrency(FB, 1901, 64854)
            AddCurrency(FB, 1901, 64703)
            AddCurrency(FB, 1901, 64765)
            AddCurrency(FB, 1901, 64846)
            AddCurrency(FB, 1901, 64748)
            AddCurrency(FB, 1901, 64856)
            AddCurrency(FB, 1901, 64711)
            AddCurrency(FB, 1901, 64723)
            AddCurrency(FB, 1901, 64730)
            AddCurrency(FB, 1901, 64815)
            AddCurrency(FB, 1901, 64768)
            AddCurrency(FB, 1901, 64875)
            AddCurrency(FB, 1901, 64982)
            AddCurrency(FB, 1901, 64991)
            AddCurrency(FB, 1901, 64685)
            AddCurrency(FB, 1901, 64802)
            AddCurrency(FB, 1901, 64827)
            AddCurrency(FB, 1901, 64828)
            AddCurrency(FB, 1901, 64831)
            AddCurrency(FB, 1901, 64947)
            AddCurrency(FB, 1901, 64689)
            AddCurrency(FB, 1901, 64764)
            AddCurrency(FB, 1901, 64844)
            AddCurrency(FB, 1901, 64841)
            AddCurrency(FB, 1901, 64851)
            AddCurrency(FB, 1901, 64763)
            AddCurrency(FB, 1901, 64796)
            AddCurrency(FB, 1901, 64784)
            AddCurrency(FB, 1901, 64720)
            AddCurrency(FB, 1901, 64787)
            AddCurrency(FB, 1901, 64690)
            AddCurrency(FB, 1901, 64724)
            AddCurrency(FB, 1901, 64785)
            AddCurrency(FB, 1901, 64692)
            AddCurrency(FB, 1901, 64833)
            AddCurrency(FB, 1901, 64865)
            AddCurrency(FB, 1901, 64992)
            AddCurrency(FB, 1901, 64683)
            AddCurrency(FB, 1901, 64747)
            AddCurrency(FB, 1901, 64736)
            AddCurrency(FB, 1901, 64786)
            AddCurrency(FB, 1901, 64952)
            AddCurrency(FB, 1901, 64704)
            AddCurrency(FB, 1901, 64761)
            AddCurrency(FB, 1901, 64821)
            AddCurrency(FB, 1901, 64832)
            AddCurrency(FB, 1901, 64866)
            AddCurrency(FB, 1901, 65149)
            AddCurrency(FB, 1901, 64713)
            AddCurrency(FB, 1901, 64754)
            AddCurrency(FB, 1901, 64795)
            AddCurrency(FB, 1901, 64820)
            AddCurrency(FB, 1901, 64929)
            AddCurrency(FB, 1901, 64691)
            AddCurrency(FB, 1901, 64729)
            AddCurrency(FB, 1901, 64778)
            AddCurrency(FB, 1901, 64855)
            AddCurrency(FB, 1901, 64870)
            AddCurrency(FB, 1901, 64753)
            AddCurrency(FB, 1901, 64814)
            AddCurrency(FB, 1901, 64830)
            AddCurrency(FB, 1901, 64836)
            AddCurrency(FB, 1901, 64688)
            AddCurrency(FB, 1901, 64777)
            AddCurrency(FB, 1901, 64739)
            AddCurrency(FB, 1901, 64745)
            AddCurrency(FB, 1901, 64964)
            AddCurrency(FB, 1901, 64852)
            AddCurrency(FB, 1901, 64932)
            AddCurrency(FB, 1901, 64966)
            AddCurrency(FB, 1901, 69790)
            AddCurrency(FB, 1901, 64749)
            AddCurrency(FB, 1901, 64684)
            AddCurrency(FB, 1901, 64706)
            AddCurrency(FB, 1901, 64797)
            AddCurrency(FB, 1901, 64822)
            AddCurrency(FB, 1901, 64834)
            AddCurrency(FB, 1901, 64868)
            AddCurrency(FB, 1901, 64877)
            AddCurrency(FB, 1901, 64967)
            AddCurrency(FB, 1901, 64984)
            AddCurrency(FB, 1901, 65152)
            AddCurrency(FB, 1901, 64837)
            AddCurrency(FB, 1901, 64857)
            AddCurrency(FB, 1901, 64869)
            AddCurrency(FB, 1901, 64876)
            AddCurrency(FB, 1901, 64968)
            AddCurrency(FB, 1901, 64732)
            AddCurrency(FB, 1901, 64781)
            AddCurrency(FB, 1901, 64805)
            AddCurrency(FB, 1901, 64838)
            AddCurrency(FB, 1901, 64931)
            AddCurrency(FB, 1901, 64937)
            AddCurrency(FB, 1901, 64987)
            AddCurrency(FB, 1901, 64803)
            AddCurrency(FB, 1901, 64804)
            AddCurrency(FB, 1901, 64958)
            AddCurrency(FB, 1901, 64981)
            AddCurrency(FB, 1901, 64990)
            AddCurrency(FB, 1901, 64681)
            AddCurrency(FB, 1901, 64696)
            AddCurrency(FB, 1901, 64719)
            AddCurrency(FB, 1901, 64756)
            AddCurrency(FB, 1901, 64954)
            AddCurrency(FB, 1901, 65147)
            AddCurrency(FB, 1901, 64734)
            AddCurrency(FB, 1901, 64767)
            AddCurrency(FB, 1901, 64842)
            AddCurrency(FB, 1901, 64872)
            AddCurrency(FB, 1901, 64878)
            AddCurrency(FB, 1901, 64945)
            AddCurrency(FB, 1901, 64740)
            AddCurrency(FB, 1901, 64750)
            AddCurrency(FB, 1901, 64807)
            AddCurrency(FB, 1901, 64935)
            AddCurrency(FB, 1901, 64963)
            AddCurrency(FB, 1901, 69788)
            AddCurrency(FB, 1901, 69789)
            AddCurrency(FB, 1901, 64699)
            AddCurrency(FB, 1901, 64705)
            AddCurrency(FB, 1901, 64714)
            AddCurrency(FB, 1901, 64718)
            AddCurrency(FB, 1901, 64721)
            AddCurrency(FB, 1901, 64738)
            AddCurrency(FB, 1901, 64742)
            AddCurrency(FB, 1901, 64801)
            AddCurrency(FB, 1901, 64806)
            AddCurrency(FB, 1901, 64863)
            AddCurrency(FB, 1901, 64938)
            AddCurrency(FB, 1901, 64986)
            AddCurrency(FB, 1901, 69787)
            AddCurrency(FB, 1901, 64682)
            AddCurrency(FB, 1901, 64697)
            AddCurrency(FB, 1901, 64707)
            AddCurrency(FB, 1901, 64867)
            AddCurrency(FB, 1901, 64927)
            AddCurrency(FB, 1901, 64980)
            AddCurrency(FB, 1901, 64702)
            AddCurrency(FB, 1901, 64715)
            AddCurrency(FB, 1901, 64725)
            AddCurrency(FB, 1901, 64733)
            AddCurrency(FB, 1901, 64779)
            AddCurrency(FB, 1901, 64782)
            AddCurrency(FB, 1901, 64835)
            AddCurrency(FB, 1901, 64873)
            AddCurrency(FB, 1901, 64949)
            AddCurrency(FB, 1901, 64956)
            AddCurrency(FB, 1901, 64962)
            AddCurrency(FB, 1901, 64975)
            AddCurrency(FB, 1901, 65151)
            AddCurrency(FB, 1901, 64686)
            AddCurrency(FB, 1901, 64698)
            AddCurrency(FB, 1901, 64757)
            AddCurrency(FB, 1901, 64808)
            AddCurrency(FB, 1901, 64809)
            AddCurrency(FB, 1901, 64840)
            AddCurrency(FB, 1901, 64862)
            AddCurrency(FB, 1901, 64864)
            AddCurrency(FB, 1901, 64940)
            AddCurrency(FB, 1901, 64943)
            AddCurrency(FB, 1901, 64957)
            AddCurrency(FB, 1901, 64972)
            AddCurrency(FB, 1901, 64985)
            AddCurrency(FB, 1901, 65155)
            AddCurrency(FB, 1901, 64716)
            AddCurrency(FB, 1901, 64874)
            AddCurrency(FB, 1901, 64926)
            AddCurrency(FB, 1901, 64928)
            AddCurrency(FB, 1901, 64934)
            AddCurrency(FB, 1901, 64939)
            AddCurrency(FB, 1901, 64948)
            AddCurrency(FB, 1901, 64950)
            AddCurrency(FB, 1901, 64951)
            AddCurrency(FB, 1901, 64953)
            AddCurrency(FB, 1901, 65156)
            AddCurrency(FB, 1901, 69792)
            AddCurrency(FB, 1901, 64766)
            AddCurrency(FB, 1901, 64923)
            AddCurrency(FB, 1901, 64942)
            AddCurrency(FB, 1901, 64946)
            AddCurrency(FB, 1901, 64960)
            AddCurrency(FB, 1901, 64971)
            AddCurrency(FB, 1901, 65148)
            AddCurrency(FB, 1901, 65154)
            AddCurrency(FB, 1901, 69791)
            AddCurrency(FB, 1901, 64722)
            AddCurrency(FB, 1901, 64924)
            AddCurrency(FB, 1901, 64936)
            AddCurrency(FB, 1901, 64955)
            AddCurrency(FB, 1901, 64959)
            AddCurrency(FB, 1901, 64961)
            AddCurrency(FB, 1901, 64965)
            AddCurrency(FB, 1901, 64970)
            AddCurrency(FB, 1901, 64974)
            AddCurrency(FB, 1901, 64976)
            AddCurrency(FB, 1901, 64978)
            AddCurrency(FB, 1901, 65150)
            AddCurrency(FB, 1901, 65153)
            AddCurrency(FB, 1901, 64741)
            AddCurrency(FB, 1901, 64751)
            AddCurrency(FB, 1901, 64925)
            AddCurrency(FB, 1901, 64930)
            AddCurrency(FB, 1901, 64933)
            AddCurrency(FB, 1901, 64941)
            AddCurrency(FB, 1901, 64944)
            AddCurrency(FB, 1901, 64969)
            AddCurrency(FB, 1901, 64973)
            AddCurrency(FB, 1901, 64977)
            AddCurrency(FB, 1901, 64979)
            AddCurrency(FB, 1901, 64983)
            AddCurrency(FB, 1901, 64989)

            if BG.IsAlliance() then
                AddCurrency(FB, 1901, 64793)
                AddCurrency(FB, 1901, 64790)
                AddCurrency(FB, 1901, 64791)
            else
                AddCurrency(FB, 1901, 64794)
                AddCurrency(FB, 1901, 64789)
                AddCurrency(FB, 1901, 64792)
            end
        end
    end
end

-- 声望装备
do
    -- P1
    do
        -- 海加尔守护者
        BG.Loot.BOT.Faction["1158:3"] = { 62375, 62374, 62377, 62376, }
        BG.Loot.BOT.Faction["1158:4"] = { 62378, 62382, 62380, 62381, }
        BG.Loot.BOT.Faction["1158:5"] = { 62384, 62383, 62385, 62386 }
        -- 大地之环
        BG.Loot.BOT.Faction["1135:3"] = { 62356, 62354, 62353, 62355 }
        BG.Loot.BOT.Faction["1135:4"] = { 62357, 62361, 62359, 62358, }
        BG.Loot.BOT.Faction["1135:5"] = { 62362, 62364, 62365, 62363, }
        -- 塞拉赞恩
        BG.Loot.BOT.Faction["1171:4"] = { 62352, 62350, 62348, 62351, }
        -- 拉穆卡恒
        BG.Loot.BOT.Faction["1173:4"] = { 62440, 62441, 62446, 62445, }
        BG.Loot.BOT.Faction["1173:5"] = { 62447, 62450, 62448, 62449, }
        -- -- 拉穆卡恒
        -- BG.Loot.BOT.Faction[":3"] = {},
        -- BG.Loot.BOT.Faction[":4"] = {},
        -- BG.Loot.BOT.Faction[":5"] = {},
        if BG.IsAlliance() then
            -- 巴拉丁典狱官
            BG.Loot.BOT.Faction["1177:3"] = { 65175, }
            BG.Loot.BOT.Faction["1177:4"] = { 62473, 62479, 62478, 62474, 62477, 62475, 62476, 68739 }
            BG.Loot.BOT.Faction["1177:5"] = { 62471, 62468, 62470, 62469, 62472 }
            -- 蛮锤部族
            BG.Loot.BOT.Faction["1174:3"] = { 62424, 62425, 62423, 62426 }
            BG.Loot.BOT.Faction["1174:4"] = { 62429, 62427, 62430, 62428 }
            BG.Loot.BOT.Faction["1174:5"] = { 62434, 62433, 62432, 62431 }

            -- -- 蛮锤部族
            -- BG.Loot.BOT.Faction[":3"]={}
            -- BG.Loot.BOT.Faction[":4"]={}
            -- BG.Loot.BOT.Faction[":5"]={}
        else
            -- 地狱咆哮近卫军
            BG.Loot.BOT.Faction["1178:3"] = { 65176, }
            BG.Loot.BOT.Faction["1178:4"] = { 62454, 62455, 62460, 62458, 62457, 62459, 68740, 62456 }
            BG.Loot.BOT.Faction["1178:5"] = { 62466, 62465, 62464, 62463, 62467 }
            -- 龙喉氏族
            BG.Loot.BOT.Faction["1172:3"] = { 62405, 62407, 62406, 62404 }
            BG.Loot.BOT.Faction["1172:4"] = { 62415, 62408, 62409, 62410 }
            BG.Loot.BOT.Faction["1172:5"] = { 62416, 62417, 62418, 62420 }
        end
    end
end

-- 专业制造
do
    -- P1
    local FB = "BOT"
    BG.Loot[FB].Profession = {
        ["锻造"] = { 55058, 55059, 55060, 55061, 55062, 55063, 55069, 55070, 55064, 55065, 55066, 55067, 55068, 67602, 67605, 55071, 55072, 55073, 55074, 55075, 55076, 55077, 55079, 55080, 55081, 55082, 55083, 55084, 55085, 55043, 55044, 55045, 55046, 55052, 55246, 54876, 55023 },
        ["制皮"] = { 56562, 56537, 56561, 56539, 56564, 56536, 56538, 56563, 56548, 56549, 56546, 56534, 56526, 56559, 56535, 56547, 56558, 56527, 56542, 56530, 56522, 56554, 56523, 56543, 56555, 56531, 56533, 56532, 56524, 56556, 56525, 56557, 56545, 56544, 56521, 56529, 56520, 56541, 56528, 56553, 56552, 56540, 56518, 56519, 56513, 56504, 56484, 56498 },
        ["裁缝"] = { 54503, 54504, 54505, 54506, 54487, 54488, 54489, 54490, 54491, 54492, 54493, 54494, 54495, 54496, 54497, 54498, 54499, 54500, 54501, 54502, 54485, 54479, 54475, 54478 },
        ["工程"] = { 59359, 59448, 59449, 59453, 59455, 59456, 59458, 59364, 59367, 59598, 59599, 60403 },
        ["珠宝加工"] = { 52318, 52319, 52320, 52321, 52322, 52323, 52348, 52350, 69852, 52311, 52493 },
        ["铭文"] = { 75066, 75069, 75079, 62234, 62235, 62243, 62244, 62245, 62236, 62231, 62233, 62240, 62241, 62242 },
        ["考古"] = { 64377, 64489, 64645, 64880, 64885, 64904, 69764 },
    }
end

-- 任务
do
end

-- 世界掉落
do
    -- P1
    local FB = "BOT"
    BG.Loot[FB].World = { 67131, 67140, 67134, 67142, 67135, 67133, 67143, 67136, 67139, 67129, 67146, 67132, 69876, 67147, 67149, 67141, 67148, 67150, 69844, 67130, 67137, 67138, 67145, 67144, 69843, 69842, 69877, 67239, 67246, 67153, 67240, 67235, 55824, 55855, 67051, 55822, 55823, 66920, 66988, 55854, 55261, 66983, 55260, 66904, 66916, 55791, 55262, 55790, 67110, 66961, 55789, 67114, 66883, 67106, 67032, 67109, 67040, 66956, 66981, 67037, 66980, 66958, 66641, 66880, 66952, 67029, 66977, 66879, 67101, 67098, 67099, 66979, 66954 }
end


-- 马戏团
do
    local function AddDB(FB, get, itemID, count, coin, color, type)
        if type then
            GetItemInfo(count)
        end

        get = get or ""
        count = count or ""
        coin = coin or ""
        type = type or ""

        tinsert(BG.Loot[FB].Sod_Currency, {
            [itemID] = get .. "-" .. count .. "-" .. coin .. "-" .. color .. "-" .. type
        })
    end

    -- P1
    local FB = "BOT"
    local get = L["暗月马戏团"]
    local coin = 132119
    local color = "7B68EE"
    AddDB(FB, get, 62047, 62021, nil, color, 1) -- 2个物品ID，第一个是卡牌饰品，第二个某某套牌
    AddDB(FB, get, 62050, 62044, nil, color, 1)
    AddDB(FB, get, 62049, 62045, nil, color, 1)
    AddDB(FB, get, 62051, 62045, nil, color, 1)
    AddDB(FB, get, 62048, 62046, nil, color, 1)
end
