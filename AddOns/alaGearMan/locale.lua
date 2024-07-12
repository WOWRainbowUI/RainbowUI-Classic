--[[--
	by ALA 
--]]--
----------------------------------------------------------------------------------------------------
local ADDON, NS = ...;
local L = setmetatable({  }, { __newindex = function(t, k, v) rawset(t, k, (v == true) and k or v); end});
local LOCALE = GetLocale();
if LOCALE == 'zhCN' then
	L["UseBLZEquipmentManager"] = "3.40版本客户端自带装备管理器，ESC-界面-特色-启用装备管理器";
	L["INVENTORY_IS_FULL"] = "背包已满！";
	L["IN_COMBAT"] = "战斗状态中无法换装！";
	L["BE_DEAD"] = "你已经死亡！";
	L["Add a new outfit"] = "添加一个套装";
	L["Delete this outfit?"] = "删除此套装？";
	L["OK"] = "确定";
	L["Cancel"] = "取消";
	L["Save"] = "保存";
	L["Equip"] = "装备";
	L["Style"] = "风格";
	L["UseMacro"] = "自动创建宏";
	L["UseMacro_false"] = "不自动创建宏";
	L["useBar"] = "显示按钮";
	L["useBar_false"] = "隐藏按钮";
	L["Style_TC"] = "文字+图标风格";
	L["Style_T"] = "图标风格";
	L["Style_C"] = "文字风格";
	L["Take_Off_All"] = "一键脱光";
	L["Take_Off_All_ButtonText"] = "脱";
	L["Take-off-all On Right"] = "一键脱光按钮在\124cffff0000右边\124r";
	L["Take-off-all On Left"] = "一键脱光按钮在\124cffff0000左边\124r";
	L["takeoffAll_include_neck_finger_and_trinket"] = "一键脱光\124cffff0000包括\124r戒指饰品披风和耐久度为0的装备";
	L["takeoffAll_include_neck_finger_and_trinket_false"] = "一键脱光\124cffff0000不包括\124r戒指饰品披风和耐久度为0的装备";
	L["show_outfit_in_tooltip"] = "在物品提示中\124cffff0000显示\124r保存的套装信息";
	L["show_outfit_in_tooltip_false"] = "在物品提示中\124cffff0000不显示\124r保存的套装信息";
	L["multi_lines"] = "按钮分多行";
	L["multi_lines_false"] = "按钮放在一排";
	L["reset_pos"] = "重置快速切换栏的位置";
	L["CTRL-DRAG-TO-MOVE"] = "\124cffff40ff按住ctrl拖动来移动位置，保存为账号通用位置\124r\n\124cffff40ff按住shift拖动来移动位置，保存为角色专用位置\124r";
	L["WAITING_FOR_REGEN_ENABLED"] = "战斗结束时更新";
	L["IN_OUTFIT"] = "装备配置方案：";
	L["TOOLTIP_MISSING"] = " 缺失";
	L["IN_BAG"] = "在背包中"
	L["CURRENT_OUTFIT"] = "当前装备中";
	L["SHOULD_TAKE_OFF"] = "应脱下";
	L["UP_TO_120_MACROS"] = "当前帐号有超过|cff00ff00120|r个宏，[|cffff7f00alaGearMan|r]不会创建装备切换宏(不影响插件功能)。";

	L.slot = {
		[0] = "子弹",
		[1] = "头部",
		[2] = "颈部",
		[3] = "肩部",
		[4] = "衬衣",
		[5] = "胸甲",
		[6] = "腰带",
		[7] = "腿部",
		[8] = "靴子",
		[9] = "护腕",
		[10] = "手套",
		[11] = "戒指1",
		[12] = "戒指2",
		[13] = "饰品1",
		[14] = "饰品2",
		[15] = "披风",
		[16] = "主手",
		[17] = "副手",
		[18] = "远程",
		[19] = "战袍",
	};

	_G.BINDING_HEADER_ALAGEARMAN_QUICK = "<\124cff00ff00alaGearMan\124r>一键换装";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_1 = "套装1";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_2 = "套装2";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_3 = "套装3";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_4 = "套装4";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_5 = "套装5";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_6 = "套装6";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_7 = "套装7";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_8 = "套装8";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_9 = "套装9";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_X = "一键脱光";
elseif LOCALE == 'zhTW' then
	L["UseBLZEquipmentManager"] = "巫妖王開始遊戲內建裝備管理員，可以從 Esc>選項>介面>啟用裝備管理員。";
	L["INVENTORY_IS_FULL"] = "背包已滿!";
	L["IN_COMBAT"] = "戰鬥中無法更換裝備!";
	L["BE_DEAD"] = "你已經死亡";
	L["Add a new outfit"] = "新增套裝";
	L["Delete this outfit?"] = "是否要刪除此套裝?";
	L["OK"] = "確定";
	L["Cancel"] = "取消";
	L["Save"] = "儲存";
	L["Equip"] = "裝備";
	L["Style"] = "風格";
	L["UseMacro"] = "自動建立巨集";
	L["UseMacro_false"] = "不要自動建立巨集";
	L["useBar"] = "顯示按鈕";
	L["useBar_false"] = "隱藏按鈕";
	L["Style_TC"] = "文字+圖示風格";
	L["Style_T"] = "圖示風格";
	L["Style_C"] = "文字風格";
	L["Take_Off_All"] = "一鍵脫光";
	L["Take_Off_All_ButtonText"] = "脫";
	L["Take-off-all On Right"] = "一鍵脫光按鈕在\124cffff0000右邊\124r";
	L["Take-off-all On Left"] = "一鍵脫光按鈕在\124cffff0000左邊\124r";
	L["takeoffAll_include_neck_finger_and_trinket"] = "一鍵脫光\124cffff0000包括\124r戒指飾品披風和耐久度為0的裝備";
	L["takeoffAll_include_neck_finger_and_trinket_false"] = "一鍵脫光\124cffff0000不包括\124r戒指飾品披風和耐久度為0的裝備";
	L["show_outfit_in_tooltip"] = "在浮動提示資訊中\124cffff0000顯示\124r已儲存的套裝資訊";
	L["show_outfit_in_tooltip_false"] = "在浮動提示資訊中\124cffff0000不顯示\124r已儲存的套裝資訊";
	L["multi_lines"] = "按鈕分多行擺放";
	L["multi_lines_false"] = "按鈕全部放在一行";
	L["reset_pos"] = "重置快速切換欄的位置";
	L["CTRL-DRAG-TO-MOVE"] = "\124cffff40ff按住 Ctrl 拖曳來移動位置，儲存為帳號共用的位置\124r\n\124cffff40ff按住 Shift 拖曳來移動位置，儲存為角色專用的位置\124r";
	L["WAITING_FOR_REGEN_ENABLED"] = "戰鬥結束時更新";
	L["IN_OUTFIT"] = "裝備配置方案：";
	L["TOOLTIP_MISSING"] = " 缺少";
	L["IN_BAG"] = "在背包中"
	L["CURRENT_OUTFIT"] = "已裝備在身上";
	L["SHOULD_TAKE_OFF"] = "應脫下";
	L["UP_TO_120_MACROS"] = "當前帳號有超過|cff00ff00120|r個巨集，[|cffff7f00alaGearMan|r]不會建立裝備切換巨集 (不影響插件功能)。";

	L.slot = {
		[0] = "子彈",
		[1] = "頭部",
		[2] = "頸部",
		[3] = "肩部",
		[4] = "襯衣",
		[5] = "胸甲",
		[6] = "腰帶",
		[7] = "腿部",
		[8] = "靴子",
		[9] = "護腕",
		[10] = "手套",
		[11] = "戒指1",
		[12] = "戒指2",
		[13] = "飾品1",
		[14] = "飾品2",
		[15] = "披風",
		[16] = "主手",
		[17] = "副手",
		[18] = "遠程",
		[19] = "戰袍",
	};

	_G.BINDING_HEADER_ALAGEARMAN_QUICK = "<\124cff00ff00alaGearMan\124r>一鍵換裝";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_1 = "套裝1";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_2 = "套裝2";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_3 = "套裝3";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_4 = "套裝4";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_5 = "套裝5";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_6 = "套裝6";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_7 = "套裝7";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_8 = "套裝8";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_9 = "套裝9";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_X = "一鍵脫光";	
else
	L["UseBLZEquipmentManager"] = "The built-in GearManager could be enabled by step  ESC-Inteface-Features";
	L["INVENTORY_IS_FULL"] = "Inventory is full";
	L["IN_COMBAT"] = "In Combat";
	L["BE_DEAD"] = "You are DIED!";
	L["Add a new outfit"] = true;
	L["Delete this outfit?"] = true;
	L["OK"] = true;
	L["Cancel"] = true;
	L["Save"] = true;
	L["Equip"] = true;
	L["Style"] = true;
	L["UseMacro"] = "Auto Create Macro";
	L["UseMacro_false"] = "Donot Create Macro";
	L["useBar"] = "Show buttons";
	L["useBar_false"] = "Hide Buttons";
	L["Style_TC"] = "Text & Texture";
	L["Style_T"] = "Text Only";
	L["Style_C"] = "Texture Only";
	L["Take_Off_All"] = "Stripping";
	L["Take_Off_All_ButtonText"] = "S";
	L["Take-off-all On Right"] = "Stripping button On \124cffff0000Right\124r";
	L["Take-off-all On Left"] = "Stripping button On \124cffff0000Left\124r";
	L["takeoffAll_include_neck_finger_and_trinket"] = "Stripping \124cffff0000DONOT INCLUDES\124r finger, trinket, cloak and duration 0% gear";
	L["takeoffAll_include_neck_finger_and_trinket_false"] = "Stripping \124cffff0000DONOT INCLUDES\124r finger, trinket, cloak and duration 0% gear";
	L["show_outfit_in_tooltip"] = "\124cffff0000Show\124r outfit info in tooltip";
	L["show_outfit_in_tooltip_false"] = "\124cffff0000DONOT Show\124r outfit info in tooltip";
	L["multi_lines"] = "Put quick buttons on multi lines";
	L["multi_lines_false"] = "Put all quick buttons on one line";
	L["reset_pos"] = "Reset position of quick bar";
	L["CTRL-DRAG-TO-MOVE"] = "\124cffff40ffPress ctrl and left-drag to move, saving pos for account\124r\n\124cffff40ffPress shift and left-drag to move, saving pos for char\124r";
	L["WAITING_FOR_REGEN_ENABLED"] = "Update after combat";
	L["IN_OUTFIT"] = "Equipements Sets: ";
	L["TOOLTIP_MISSING"] = " missing";
	L["IN_BAG"] = "in bag"
	L["CURRENT_OUTFIT"] = "Current Equiped";
	L["SHOULD_TAKE_OFF"] = "Should take off";
	L["UP_TO_120_MACROS"] = "There are more than |cff00ff00120|r macors.[|cffff7f00alaGearMan|r] won't create macro of set switch.";

	L.slot = {
		[0] = "Ammo",
		[1] = "Head",
		[2] = "Neck",
		[3] = "Shoulder",
		[4] = "Skirt",
		[5] = "Chest",
		[6] = "Waist",
		[7] = "Leg",
		[8] = "Feet",
		[9] = "Wrist",
		[10] = "Glove",
		[11] = "Finger1",
		[12] = "Finger2",
		[13] = "Trinet1",
		[14] = "Trinet2",
		[15] = "Cloak",
		[16] = "MainHand",
		[17] = "OffHand",
		[18] = "Ranged",
		[19] = "Tabard",
	};

	_G.BINDING_HEADER_ALAGEARMAN_QUICK = "<\124cff00ff00alaGearMan\124r>";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_1 = "The 1st outfit";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_2 = "The 2nd outfit";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_3 = "The 3rd outfit";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_4 = "The 4th outfit";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_5 = "The 4th outfit";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_6 = "The 6th outfit";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_7 = "The 7th outfit";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_8 = "The 8th outfit";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_9 = "The 9th outfit";
	_G.BINDING_NAME_ALAGEARMAN_QUICK_X = "Stripping";
end

NS.L = L;
