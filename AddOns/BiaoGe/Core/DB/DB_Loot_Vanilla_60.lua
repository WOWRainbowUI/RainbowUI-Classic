if not BG.IsVanilla_60 then return end

local _, ns = ...

local LibBG = ns.LibBG
local L = ns.L

local pt = print

-- 副本掉落
do
    -- MC
    local FB = "MC"
    BG.Loot[FB].N.boss1 = { 16800, 16805, 16829, 16837, 16859, 16863, 18870, 17109, 19145, 19146, 18872, 18875, 18861, 18879, 19147, 17077, 18878, 16665 }
    BG.Loot[FB].N.boss2 = { 16814, 16796, 16810, 16822, 16835, 16847, 16843, 16855, 16867, 18203, 17065, 18829, 18823, 19143, 19136, 18861, 19144, 18824, 18821, 18820, 19142, 17069, 17073, 18822 }
    BG.Loot[FB].N.boss3 = { 16812, 16826, 16849, 16839, 16860, 16862, 18870, 19145, 19146, 18872, 18875, 18861, 18879, 19147, 17077, 18878 }
    BG.Loot[FB].N.boss4 = { 18564, 16813, 16795, 16808, 16821, 16834, 16846, 16842, 16854, 16866, 18829, 18823, 19143, 19136, 18861, 19144, 18824, 18821, 18820, 19142, 17066, 17071, 17105, 18832, 18822 }
    BG.Loot[FB].N.boss5 = { 16811, 16801, 16803, 16824, 16831, 16852, 18870, 19145, 19146, 18872, 18875, 18861, 18879, 19147, 17077, 18878 }
    BG.Loot[FB].N.boss6 = { 18563, 16797, 16807, 16836, 16844, 16856, 18829, 18823, 19143, 19136, 18861, 19144, 18824, 18821, 17110, 18820, 19142, 18822 }
    BG.Loot[FB].N.boss7 = { 16815, 16798, 16809, 16820, 16833, 16845, 16841, 16853, 16865, 17203, 18829, 18823, 19143, 19136, 18861, 19144, 18824, 18821, 18820, 19142, 17072, 17103, 18822, 18842 }
    BG.Loot[FB].N.boss8 = { 16816, 16823, 16848, 16868, 18870, 19145, 19146, 18872, 18875, 18861, 18879, 19147, 17077, 18878, 17074 }
    BG.Loot[FB].N.boss9 = { 19139, 18810, 18811, 18808, 18809, 18812, 18806, 19140, 18805, 18803, 18703, 18646 }
    BG.Loot[FB].N.boss10 = { 17204, 16922, 16915, 16930, 16909, 16901, 16938, 16946, 16954, 16962, 17082, 18817, 18814, 17102, 17107, 19137, 17063, 19138, 18815, 17106, 18816, 17104, 17076 }
    BG.Loot[FB].N.boss11 = { 16921, 16914, 16929, 16908, 16900, 16939, 16947, 16955, 16963, 18205, 17078, 18813, 17064, 17067, 17068, 17075, 18423, 18705, 15410, 17966 }
    BG.Loot[FB].N.boss12 = { 17011, 17010, 11382, 17012, 16817, 16802, 16806, 16827, 16828, 16851, 16838, 16858, 16864, 16819, 16799, 16804, 16825, 16830, 16850, 16840, 16857, 16861 }

    -- BWL
    BG.Loot.BWL.N.boss1 = { 16926, 16918, 16934, 16911, 16904, 16935, 16943, 16951, 16959, 19336, 19337, 19370, 19369, 19335, 19334 }
    BG.Loot.BWL.N.boss2 = { 16925, 16818, 16933, 16910, 16903, 16936, 16944, 16952, 16960, 19339, 19340, 19372, 19371, 19348, 19346 }
    BG.Loot.BWL.N.boss3 = { 16919, 16912, 16927, 16906, 16898, 16941, 16949, 16957, 16965, 19341, 19342, 19373, 19374, 19350, 19351, 20383 }
    BG.Loot.BWL.N.boss4 = { 16920, 16913, 16928, 16907, 16899, 16940, 16948, 16956, 16964, 19344, 19343, 19394, 19398, 19399, 19400, 19396, 19401, 19402, 19365, 19353, 19355, 19397, 19395 }
    BG.Loot.BWL.N.boss5 = { 16920, 16913, 16928, 16907, 16899, 16940, 16948, 16956, 16964, 19345, 19406, 19395, 19394, 19407, 19396, 19405, 19368, 19353, 19355, 19403, 19397 }
    BG.Loot.BWL.N.boss6 = { 16920, 16913, 16928, 16907, 16899, 16940, 16948, 16956, 16964, 19395, 19431, 19394, 19430, 19396, 19433, 19367, 19353, 19357, 19355, 19432, 19397 }
    BG.Loot.BWL.N.boss7 = { 16924, 16917, 16932, 16832, 16902, 16937, 16945, 16953, 16961, 19389, 19386, 19390, 19388, 19393, 19392, 19385, 19391, 19387, 19361, 19349, 19347, 19352 }
    BG.Loot.BWL.N.boss8 = { 16923, 16916, 16931, 16905, 16897, 16942, 16950, 16958, 16966, 19360, 19363, 19364, 19356, 19375, 19377, 19378, 19380, 19381, 19376, 19382, 19379, 19003 }
    BG.Loot.BWL.N.boss9 = { 19436, 19439, 19437, 19438, 19434, 19435, 19362, 19354, 19358, 18562, }
    BG.Loot.BWL.N.boss8other = { 19383, 19384, 19366, }

    -- ZUG
    BG.Loot.ZUG.N.boss1 = { 19721, 19724, 19723, 19722, 19717, 19716, 19718, 19719, 19720, 22721, 22722, 22720, 22718, 22711, 22712, 22715, 22714, 22716, 22713, 19918, 19923, 19928, 20262, 20265, 19920, 19915 }
    BG.Loot.ZUG.N.boss2 = { 19721, 19724, 19723, 19722, 19717, 19716, 19718, 19719, 19720, 22721, 22722, 22720, 22718, 22711, 22712, 22715, 22714, 22716, 22713, 19904, 19903, 19907, 19906, 19905, 19900 }
    BG.Loot.ZUG.N.boss3 = { 19721, 19724, 19723, 19722, 19717, 19716, 19718, 19719, 19720, 22721, 22722, 22720, 22718, 22711, 22712, 22715, 22714, 22716, 22713, 20032, 19927, 19871, 19919, 19925, 19930 }
    BG.Loot.ZUG.N.boss4 = { 19721, 19724, 19723, 19722, 19717, 19716, 19718, 19719, 19720, 22721, 22722, 22720, 22718, 22711, 22712, 22715, 22714, 22716, 22713, 22637, 19872, 20038, 19867, 19866, 19874, 19878, 19870, 19869, 19895, 19877, 19873, 19863, 19893 }
    BG.Loot.ZUG.N.boss5 = { 19961, 19962, 19939, 19967, 19968, 19942, 19964, 19963, 19940, 19993, 19965, 19941 }
    BG.Loot.ZUG.N.boss6 = { 19945, 19944, 19947, 19946, 22739 }
    BG.Loot.ZUG.N.boss7 = { 19721, 19724, 19723, 19722, 19717, 19716, 19718, 19719, 19720, 22721, 22722, 22720, 22718, 22711, 22712, 22715, 22714, 22716, 22713, 19902, 19897, 19896, 19899, 20260, 20266, 19898, 19901 }
    BG.Loot.ZUG.N.boss8 = { 19721, 19724, 19723, 19722, 19717, 19716, 19718, 19719, 19720, 22721, 22722, 22720, 22718, 22711, 22712, 22715, 22714, 22716, 22713, 19910, 19909, 19913, 19912, 19922, 19914 }
    BG.Loot.ZUG.N.boss9 = { 19721, 19724, 19723, 19722, 19717, 19716, 19718, 19719, 19720, 22721, 22722, 22720, 22718, 22711, 22712, 22715, 22714, 22716, 22713, 22637, 19885, 19891, 19890, 19884, 19886, 19875, 19888, 19929, 19894, 19889, 19887, 19892 }
    BG.Loot.ZUG.N.boss10 = { 19857, 20264, 19855, 19876, 19856, 19861, 19853, 19862, 19864, 19865, 19866, 19852, 19859, 19854, 19802, }
    BG.Loot.ZUG.N.boss11 = { 20263, 20259, 20261, 19921, 19908, 20258, }
    BG.Loot.ZUG.N.boss10other = { 19950, 19949, 19948, }

    -- AQL
    BG.Loot.AQL.N.boss1 = { 21499, 21498, 21502, 21501, 21500, 21503, 20885, 20889, 20888, 20884 }
    BG.Loot.AQL.N.boss2 = { 21493, 21492, 21496, 21494, 21495, 21497, 21810, 21809, 21806, 20885, 20889, 20888, 20884 }
    BG.Loot.AQL.N.boss3 = { 21472, 21467, 21479, 21471, 21455, 21468, 21474, 21470, 21469, 21476, 21475, 21477, 21473, 20890, 20886, 20888, 20884, 22220 }
    BG.Loot.AQL.N.boss4 = { 21486, 21485, 21491, 21489, 21490, 21488, 20890, 20886, 20885, 20889, 20888, 20884 }
    BG.Loot.AQL.N.boss5 = { 21479, 21478, 21466, 21484, 21480, 21482, 21481, 21483, 20890, 20886, 20885, 20889, 20888, 20884 }
    BG.Loot.AQL.N.boss6 = { 21460, 21453, 21456, 21464, 21457, 21462, 21458, 21463, 21461, 21459, 21715, 21452, 20890, 20886, 20888, 20884, 21220 }
    BG.Loot.AQL.N.boss7 = { 21803, 21805, 21801, 21800, 21802, }
    BG.Loot.AQL.N.boss1other = { 21394, 21406, 21412, 21415, 21397, 21403, 21400, 21418, 21409, 21402, 21405, 21411, 21417, 21393, 21396, 21399, 21414, 21408, }
    BG.Loot.AQL.N.boss2other = { 21394, 21406, 21412, 21415, 21397, 21403, 21400, 21418, 21409, 21402, 21405, 21411, 21417, 21393, 21396, 21399, 21414, 21408, }
    BG.Loot.AQL.N.boss3other = { 21402, 21405, 21411, 21417, 21393, 21396, 21399, 21414, 21408, 21410, 21413, 21416, 21407, 21392, 21395, 21401, 21404, 21398, }
    BG.Loot.AQL.N.boss4other = { 21394, 21406, 21412, 21415, 21397, 21403, 21400, 21418, 21409, 21402, 21405, 21411, 21417, 21393, 21396, 21399, 21414, 21408, 21410, 21413, 21416, 21407, 21392, 21395, 21401, 21404, 21398, }
    BG.Loot.AQL.N.boss5other = { 21394, 21406, 21412, 21415, 21397, 21403, 21400, 21418, 21409, 21402, 21405, 21411, 21417, 21393, 21396, 21399, 21414, 21408, 21410, 21413, 21416, 21407, 21392, 21395, 21401, 21404, 21398, }
    BG.Loot.AQL.N.boss6other = { 21504, 21507, 21505, 21506, 21402, 21405, 21411, 21417, 21393, 21396, 21399, 21414, 21408, 21410, 21413, 21416, 21407, 21392, 21395, 21401, 21404, 21398, }

    -- TAQ
    BG.Loot.TAQ.N.boss1 = { 21699, 21814, 21708, 21698, 21705, 21704, 21706, 21702, 21700, 21701, 21707, 21703, 21128, 21237, 21232, 22222 }
    BG.Loot.TAQ.N.boss2 = { 21693, 21694, 21697, 21696, 21692, 21695, 21686, 21684, 21683, 21682, 21690, 21689, 21691, 21688, 21687, 21680, 21681, 21685, 21603, 21237, 21232, }
    BG.Loot.TAQ.N.boss3 = { 21669, 21678, 21671, 21672, 21674, 21675, 21676, 21668, 21667, 21648, 21670, 21666, 21673, 21237, 21232 }
    BG.Loot.TAQ.N.boss4 = { 21665, 21639, 21627, 21663, 21652, 21651, 21645, 21650, 21635, 21664, 21647, 22402, 22396, 21237, 21232 }
    BG.Loot.TAQ.N.boss5 = { 21624, 21623, 21626, 21622, 21677, 21625, 22399, 21237, 21232, 20928, 20932 }
    BG.Loot.TAQ.N.boss6 = { 21621, 21618, 21619, 21617, 21620, 21616, 21237, 21232, 20932, 20928 }
    BG.Loot.TAQ.N.boss7 = { 21602, 21599, 21598, 21600, 21601, 21597, 21608, 21604, 21605, 21609, 21607, 21606, 21679, 21237, 21232, 20930, 20926, 20735, 20726, }
    BG.Loot.TAQ.N.boss8 = { 21615, 21611, 23558, 23570, 21610, 23557, 21237, 21232, 20927, 20931 }
    BG.Loot.TAQ.N.boss9 = { 22732, 21583, 22731, 22730, 21582, 21586, 21585, 21581, 21596, 21579, 21839, 21126, 21134, 20929, 20933, 21221 }
    BG.Loot.TAQ.N.boss10 = { 21838, 21888, 21889, 21856, 21837, 21836, 21891, }
    BG.Loot.TAQ.N.boss1other = { 21268, 21273, 21275, 21242, 21244, 21272, 21269, }
    BG.Loot.TAQ.N.boss2other = { 21268, 21273, 21275, 21242, 21244, 21272, 21269, }
    BG.Loot.TAQ.N.boss3other = { 21268, 21273, 21275, 21242, 21244, 21272, 21269, }
    BG.Loot.TAQ.N.boss4other = { 21268, 21273, 21275, 21242, 21244, 21272, 21269, }
    BG.Loot.TAQ.N.boss5other = { 21268, 21273, 21275, 21242, 21244, 21272, 21269, 21330, 21333, 21367, 21365, 21361, 21359, 21350, 21349, 21391, 21388, 21376, 21373, 21345, 21344, 21335, 21338, 21354, 21355, }
    BG.Loot.TAQ.N.boss6other = { 21268, 21273, 21275, 21242, 21244, 21272, 21269, 21330, 21333, 21367, 21365, 21361, 21359, 21350, 21349, 21391, 21388, 21376, 21373, 21345, 21344, 21335, 21338, 21354, 21355, }
    BG.Loot.TAQ.N.boss7other = { 21268, 21273, 21275, 21242, 21244, 21272, 21269, 21387, 21366, 21360, 21372, 21353, 21329, 21348, 21347, 21337, }
    BG.Loot.TAQ.N.boss8other = { 21268, 21273, 21275, 21242, 21244, 21272, 21269, 21332, 21362, 21352, 21346, 21390, 21368, 21375, 21336, 21356, }
    BG.Loot.TAQ.N.boss9other = { 21712, 21710, 21709, 21331, 21389, 21370, 21364, 21374, 21351, 21343, 21334, 21357, }

    -- NAXX
    BG.Loot.NAXX.N.boss1 = { 22935, 22938, 22936, 22939, 22937, 22369, 22362, 22355, }
    BG.Loot.NAXX.N.boss2 = { 22943, 22941, 22940, 22942, 22806, 22369, 22362, 22355, }
    BG.Loot.NAXX.N.boss3 = { 22947, 23220, 22954, 22807, 22804, 22371, 22364, 22357, }
    BG.Loot.NAXX.N.boss4 = { 23030, 23031, 23028, 23029, 23006, 23005, 22816, 22370, 22363, 22356, }
    BG.Loot.NAXX.N.boss5 = { 23035, 23033, 23019, 23036, 23068, 22370, 22363, 22356, }
    BG.Loot.NAXX.N.boss6 = { 23038, 23037, 23042, 23039, 22800, 22366, 22359, 22352, }
    BG.Loot.NAXX.N.boss7 = { 23017, 23219, 23018, 23004, 23009, 23014, 22372, 22365, 22358, }
    BG.Loot.NAXX.N.boss8 = { 23032, 23020, 23023, 23021, 23073, 22372, 22365, 22358, }
    BG.Loot.NAXX.N.boss9 = { 23071, 23025, 23027, 22811, 22809, 22691, 22351, 22350, 22349, }
    BG.Loot.NAXX.N.boss10 = { 22960, 22961, 22820, 22818, 22815, 22368, 22361, 22354, }
    BG.Loot.NAXX.N.boss11 = { 22968, 22967, 22810, 22803, 22988, 22368, 22361, 22354, }
    BG.Loot.NAXX.N.boss12 = { 22983, 22981, 22994, 23075, 22813, 22368, 22369, 22370, 22372, 22361, 22362, 22363, 22365, 22354, 22355, 22356, 22358 }
    BG.Loot.NAXX.N.boss13 = { 23000, 23070, 23001, 22808, 22801, 22367, 22360, 22353, }
    BG.Loot.NAXX.N.boss14 = { 23050, 23045, 23040, 23047, 23041, 23046, 23049, 23048, 23043, 23242, 23549, 23548, 23545, 23547 }
    BG.Loot.NAXX.N.boss15 = { 23057, 23053, 22812, 22821, 22819, 22802, 23056, 23054, 23577, 22798, 22799, 23061, 23062, 23063, 23060, 23064, 23067, 23065, 23066, 23059, 22520 }
    BG.Loot.NAXX.N.boss16 = { 22726, 23664, 23667, 23069, 23226, 23663, 23666, 23665, 23668, 23237, 23238, 23044, 23221, }
    BG.Loot.NAXX.N.boss1other = { 22519, 22503, 22511, 22424, 22443, 22471, 22495, 22423, 22483, }
    BG.Loot.NAXX.N.boss2other = { 22519, 22503, 22511, 22424, 22443, 22471, 22495, 22423, 22483, }
    BG.Loot.NAXX.N.boss3other = { 22517, 22501, 22509, 22426, 22441, 22469, 22493, 22421, 22481, }
    BG.Loot.NAXX.N.boss4other = { 22518, 22502, 22510, 22431, 22442, 22470, 22494, 22422, 22482, }
    BG.Loot.NAXX.N.boss5other = { 22518, 22502, 22510, 22431, 22442, 22470, 22494, 22422, 22482, }
    BG.Loot.NAXX.N.boss6other = { 22513, 22497, 22505, 22427, 22437, 22465, 22489, 22417, 22477, }
    BG.Loot.NAXX.N.boss7other = { 22516, 22500, 22508, 22430, 22440, 22468, 22492, 22420, 22480, }
    BG.Loot.NAXX.N.boss8other = { 22516, 22500, 22508, 22430, 22440, 22468, 22492, 22420, 22480, }
    BG.Loot.NAXX.N.boss9other = { 22512, 22496, 22504, 22425, 22436, 22464, 22488, 22416, 22476, }
    BG.Loot.NAXX.N.boss10other = { 22515, 22499, 22507, 22429, 22439, 22467, 22491, 22419, 22479, }
    BG.Loot.NAXX.N.boss11other = { 22515, 22499, 22507, 22429, 22439, 22467, 22491, 22419, 22479, }
    BG.Loot.NAXX.N.boss12other = { 22519, 22503, 22511, 22424, 22443, 22471, 22495, 22423, 22483, 22518, 22502, 22510, 22431, 22442, 22470, 22494, 22422, 22482, 22515, 22499, 22507, 22429, 22439, 22467, 22491, 22419, 22479, }
    BG.Loot.NAXX.N.boss13other = { 22514, 22498, 22506, 22428, 22438, 22466, 22490, 22418, 22478, }
    BG.Loot.NAXX.N.boss15other = { 23207, 23206, }
end

-- 声望装备
do
    local FB = "TAQ"
    -- 诺兹多姆的子嗣
    local factionID = 910
    BG.Loot[FB].Faction[factionID .. ":1"] = { 21206, 21201, 21196, }
    BG.Loot[FB].Faction[factionID .. ":2"] = { 21207, 21202, 21197, }
    BG.Loot[FB].Faction[factionID .. ":3"] = { 21208, 21203, 21198, }
    BG.Loot[FB].Faction[factionID .. ":4"] = { 21199, 21204, 21209, }
    BG.Loot[FB].Faction[factionID .. ":5"] = { 21210, 21205, 21200, }
    -- 塞纳里奥议会
    local factionID = 609
    BG.Loot[FB].Faction[factionID .. ":2"] = { 21178, 21187, 21179, }
    BG.Loot[FB].Faction[factionID .. ":3"] = { 21181, 21183, 21182, }
    BG.Loot[FB].Faction[factionID .. ":4"] = { 21184, 21186, 21185, 21189, }
    BG.Loot[FB].Faction[factionID .. ":5"] = { 21188, 21180, 21190, }
    -- 木喉要塞
    local factionID = 576
    BG.Loot[FB].Faction[factionID .. ":5"] = { 21326, }

    if UnitFactionGroup("player") == "Alliance" then
        -- 奥山
        local factionID = 730
        BG.Loot[FB].Faction[factionID .. ":3"] = { 19098, 19097, 19086, 19084, 19094, 19093, 19092, 19091, }
        BG.Loot[FB].Faction[factionID .. ":4"] = { 19100, 19104, 19102, }
        BG.Loot[FB].Faction[factionID .. ":5"] = { 19312, 19315, 19308, 19311, 19309, 19310, 19325, 21563, 19321, 19324, 19323, }

        -- 战歌
        local factionID = 890
        BG.Loot[FB].Faction[factionID .. ":3"] = { 19538, 19530, 19522, 19514, }
        BG.Loot[FB].Faction[factionID .. ":4"] = { 19562, 19546, 19554, 19570, }
        BG.Loot[FB].Faction[factionID .. ":5"] = { 19595, 19587, 19582, 19578, 22752, 22749, 22750, 22748, 22753, 22672, }

        -- 阿拉希
        local factionID = 509
        BG.Loot[FB].Faction[factionID .. ":3"] = { 20047, 20045, 20046, 20043, 20042, 20041, }
        BG.Loot[FB].Faction[factionID .. ":4"] = { 20054, 20052, 20053, 20050, 20049, 20048, }
        BG.Loot[FB].Faction[factionID .. ":5"] = { 20061, 20060, 20059, 20055, 20058, 20057, 20073, 20070, 20069, }
    end

    if UnitFactionGroup("player") == "Horde" then
        -- 奥山
        local factionID = 729
        BG.Loot[FB].Faction[factionID .. ":3"] = { 19096, 19095, 19085, 19083, 19090, 19089, 19088, 19087, }
        BG.Loot[FB].Faction[factionID .. ":4"] = { 19099, 19103, 19101, }
        BG.Loot[FB].Faction[factionID .. ":5"] = { 19312, 19315, 19308, 19311, 19309, 19310, 19325, 21563, 19321, 19324, 19323, }

        -- 战歌
        local factionID = 889
        BG.Loot[FB].Faction[factionID .. ":3"] = { 19534, 19526, 19518, 19510, }
        BG.Loot[FB].Faction[factionID .. ":4"] = { 19558, 19542, 19550, 19566, }
        BG.Loot[FB].Faction[factionID .. ":5"] = { 19595, 19587, 19582, 19578, 22747, 22740, 22741, 22673, 22676, 22651, }

        -- 阿拉希
        local factionID = 510
        BG.Loot[FB].Faction[factionID .. ":3"] = { 20163, 20190, 20171, 20150, 20195, 20204, }
        BG.Loot[FB].Faction[factionID .. ":4"] = { 20159, 20186, 20167, 20154, 20199, 20208, }
        BG.Loot[FB].Faction[factionID .. ":5"] = { 20176, 20175, 20194, 20158, 20203, 20212, 20068, 20214, 20220, }
    end
    --[[
        --
        local factionID =
        BG.Loot[FB].Faction[factionID .. ":2"] = {  }
        BG.Loot[FB].Faction[factionID .. ":3"] = {  }
        BG.Loot[FB].Faction[factionID .. ":4"] = {  }
        BG.Loot[FB].Faction[factionID .. ":5"] = {  }
            ]]
end

-- PVP
do
    local FB = "MC"
    if UnitFactionGroup("player") == "Alliance" then
        local faction = "Alliance"
        BG.Loot[FB].Pvp = {
            [faction .. ":2"] = { 18854, 18856, 18857, 18858, 18862, 18863, 18864, 18859 },
            [faction .. ":3"] = { 16342, },
            [faction .. ":4"] = { 18443, },
            [faction .. ":5"] = { 18456, 18445, 18452, 18454, 18448, },
            [faction .. ":6"] = {},
            [faction .. ":7"] = { 23274, 23275, 23286, 23287, 23279, 23278, 23284, 23285, 23280, 23281, 23288,
                23289, 23282, 23283, 23290, 23291, },
            [faction .. ":8"] = { 23297, 23296, 23305, 23304, 23303, 23302, 23298, 23299, 23294, 23295,
                23292, 23293, 23300, 23301, 23272, 23273, },
            [faction .. ":9"] = {},
            [faction .. ":10"] = { 23310, 23311, 23318, 23319, 23316, 23317, 23312, 23313, 23308, 23309,
                23306, 23307, 23314, 23315, 23276, 23277, },
            [faction .. ":11"] = {},
            [faction .. ":12"] = { 16471, 16475, 16472, 16484, 16479, 16483, 16463, 16467, 16462, 16448,
                16450, 16459, 16454, 16456, 16446, 17608, 17603, 17607, 16440, 16442, 16437, 17584, 17579, 17583, },
            [faction .. ":13"] = { 17578, 17580, 17581, 16441, 16444, 16443, 17602, 17604, 17605, 16455,
                16457, 16453, 16451, 16449, 16452, 16465, 16468, 16466, 16478, 16480, 16477, 16474, 16476, 16473, },
            [faction .. ":14"] = { 18827, 18830, 18838, 23451, 18843, 18847, 18865, 23454, 23455, 18867, 12584, 23456,
                18876, 18869, 18873, 18833, 18836, 18855, 18825, 23452, 23453, },
        }
    end

    if UnitFactionGroup("player") == "Horde" then
        local faction = "Alliance"
        BG.Loot[FB].Pvp = {
            [faction .. ":2"] = { 18834, 18846, 18849, 18852, 18851, 18853, 18845, 18850 },
            [faction .. ":3"] = { 18461, },
            [faction .. ":4"] = { 16335, },
            [faction .. ":5"] = { 16486, 16532, 16497, 18434, 18429, },
            [faction .. ":6"] = {},
            [faction .. ":7"] = { 22868, 22858, 22867, 22857, 22862, 22843, 22864, 22856, 22863, 22852,
                22869, 22859, 22865, 22855, 22870, 22860, },
            [faction .. ":8"] = { 22872, 22873, 22876, 22887, 22874, 22875, 22879, 22880, 22877, 22878,
                22885, 22882, 22884, 22881, 22886, 22883, },
            [faction .. ":9"] = {},
            [faction .. ":10"] = { 23244, 23243, 23259, 23260, 23251, 23252, 23257, 23258, 23253, 23254,
                23261, 23262, 23255, 23256, 23263, 23264, },
            [faction .. ":11"] = {},
            [faction .. ":12"] = { 16548, 16543, 16545, 16574, 16579, 16573, 16571, 16567, 16569, 16560, 16564,
                16558, 16555, 16552, 16554, 17620, 17625, 17618, 17588, 17593, 17586, 16540, 16534, 16539, },
            [faction .. ":13"] = { 17591, 17590, 17592, 16533, 16536, 16535, 17623, 17622, 17624, 16561,
                16562, 16563, 16550, 16551, 16549, 16566, 16568, 16565, 16578, 16580, 16577, 16542, 16544, 16541, },
            [faction .. ":14"] = { 18828, 18831, 18840, 23466, 18844, 18848, 18866, 23464, 23465, 18868, 16345, 23467,
                18877, 18871, 18874, 18835, 18837, 18860, 18826, 23468, 23469, },
        }
    end
end

-- 专业制造
do
    local FB = "MC"
    BG.Loot[FB].Profession = {
        ["锻造"] = { 19166, 12783, 17016, 12798, 19169, 12784, 19170, 12794, 22384, 17193, 12796,
            19168, 17015, 22383, 12797, 12790, 19167, 12636, 19691, 16988, 22191, 19690, 12641, 19048,
            22194, 19692, 22195, 16989, 22198, },
        ["制皮"] = { 18510, 18511, 18509, 15138, 22661, 19685, 19688, 15059, 22760, 18506, 16982,
            22662, 19686, 19049, 21278, 15063, 22759, 16983, 15062, 19689, 19058, 15058, 19162, 19163,
            22761, 19149, 18504, 22663, 19687, 15057, 15056, },
        ["裁缝"] = { 22658, 22660, 22757, 14140, 22758, 19050, 19059, 16980, 14139, 18413, 22652, 22756,
            19156, 19682, 14152, 14154, 14153, 18486, 14138, 19684, 20537, 22654, 18409, 18407, 16979, 18408,
            14146, 19165, 19683, 20538, 14137, 20539, 18405, 22655, 18263, },

        ["工程"] = { 18168, 19998, 19999, 16022, 18282, 16007, }
    }
end

-- 任务
do
    local FB = "MC"
    BG.Loot[FB].Quest.All = {
        FBname = BG.GetFBinfo(FB, "localName"),
        color = "00BFFF",
        players = 40,
    }
    BG.Loot[FB].Quest.All.itemID = { 19019, 17182, }

    local FB = "ZUG"
    BG.Loot[FB].Quest.All = {
        FBname = "ZUG+AQL",
        color = "00BFFF",
        players = 20,
    }
    BG.Loot[FB].Quest.All.itemID = { 22378, 22377, 22347, 22379, 22348, 22380, }

    local FB = "NAXX"
    BG.Loot[FB].Quest.All = {
        FBname = BG.GetFBinfo(FB, "localName"),
        color = "00BFFF",
        players = 40,
    }
    BG.Loot[FB].Quest.All.itemID = { 22631, 22589, 22630, 22632, }
end

-- 世界BOSS
do
    local FB = "MC"
    BG.Loot[FB].WorldBoss[L["艾索雷葛斯"]] = { 19132, 18208, 18541, 18547, 18545, 19131, 19130, 17070, 18202, 18542, }
    BG.Loot[FB].WorldBoss[L["卡扎克"]] = { 18546, 17111, 18204, 19135, 18544, 19134, 19133, 18543, 17112, 17113, }
    BG.Loot[FB].WorldBoss[L["莱索恩"]] = { 20628, 20626, 20630, 20625, 20627, 20629, 20579, 20615, 20616, 20618, 20617, 20619, 20582, 20600, 20580, 20581, }
    BG.Loot[FB].WorldBoss[L["艾莫莉丝"]] = { 20623, 20622, 20624, 20621, 20599, 20579, 20615, 20616, 20618, 20617, 20619, 20582, 20600, 20580, 20581, }
    BG.Loot[FB].WorldBoss[L["泰拉尔"]] = { 20633, 20631, 20634, 20632, 20577, 20579, 20615, 20616, 20618, 20617, 20619, 20582, 20600, 20580, 20581, }
    BG.Loot[FB].WorldBoss[L["伊森德雷"]] = { 20637, 20635, 20638, 20639, 20636, 20578, 20579, 20615, 20616, 20618, 20617, 20619, 20582, 20600, 20580, 20581, }
end

-- 世界掉落
do
    local FB = "MC"
    BG.Loot[FB].World = {
        -- 51-60级掉落的紫装
        1728, 3475, 2801, 14558, 14555, 20698, 14557, 2243, 14554, 944, 14553,
        1263, 1443, 1168, 2245, 2099, 2246, 647, 811, 2244, 833,
        -- 55-60级掉落的蓝装（包含了开大风石）
        23197, 23199, 23203, 20722, 20720, 20721, 6622, 13023, 20697, 5267, 20696, 23091, 13075, 13113,
        20695, 23090, 23093, 23092, 13006, 13000, 13083, 13107, 13123, 13001, 13015, 13028, 13116, 13133,
        13053, 13072, 18702, 13060, 9402, 13096, 18742
    }
end

--[[
[""] = {
    [""] = 1,
    [""] = 2,
    [""] = 3,
    [""] = 4,
    [""] = 5,
    [""] = 6,
    [""] = 7,
    [""] = 8,
    [""] = 9,
    [""] = 10,
    [""] = 11,
    [""] = 12,
},
 ]]
