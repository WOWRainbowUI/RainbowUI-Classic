local localAddonName, Addon = ...
local EngraverDisplayModes = Addon.EngraverDisplayModes 

EngraverOptions = {} -- SavedVariable
EngraverSharedOptions = {} -- SavedVariable
EngraverOptionsCallbackRegistry = CreateFromMixins(CallbackRegistryMixin)
EngraverOptionsCallbackRegistry:OnLoad()
EngraverOptionsCallbackRegistry:SetUndefinedEventsAllowed(true)

local EngraverDisplayModes = {
	{ text = "全部顯示", mixin = EngraverCategoryFrameShowAllMixin },
	{ text = "彈出選單", mixin = EngraverCategoryFramePopUpMenuMixin }
}
Addon.EngraverDisplayModes = EngraverDisplayModes
Addon.GetCurrentDisplayMode = function() return EngraverDisplayModes[Addon:GetOptions().DisplayMode+1] end

local ENGRAVER_SHOW_HIDE = "顯示/隱藏一鍵符文" -- TODO localization
local ENGRAVER_NEXT_FILTER = "啟用下一個過濾方式" -- TODO localization
local ENGRAVER_PREV_FILTER = "啟用前一個過濾方式" -- TODO localization
_G.BINDING_NAME_ENGRAVER_SHOW_HIDE = ENGRAVER_SHOW_HIDE
_G.BINDING_NAME_ENGRAVER_NEXT_FILTER = ENGRAVER_NEXT_FILTER
_G.BINDING_NAME_ENGRAVER_PREV_FILTER = ENGRAVER_PREV_FILTER

Addon.EngraverVisibilityModes = {
	["ShowAlways"] = { text = "總是顯示", tooltip = "永遠都能看見一鍵符文。" },
	["HideInCombat"] = { text = "戰鬥中隱藏", tooltip = "戰鬥開始/結束時隱藏/顯示。" },
	["SyncCharacterPane"] = { text = "與角色面板同步", tooltip = "打開/關閉角色面板時顯示/隱藏。" },
	["ToggleKeybind"] = { text = "切換快速鍵", tooltip = string.format("按下 %q 的按鍵綁定時切換顯示。", ENGRAVER_SHOW_HIDE) },
	["HoldKeybind"] = { text = "按住快速鍵", tooltip = string.format("只有按住不放 %q 的按鍵綁定時才顯示。", ENGRAVER_SHOW_HIDE) },
	["ShowOnMouseOver"] = { text = "滑鼠指向時顯示", tooltip = "隱藏一鍵符文，只有滑鼠游標停留在上面時才顯示。" },
}

local DefaultEngraverOptions = {
	CurrentFilter = 0,
	UseCharacterSpecificSettings = false
}

local DefaultSettings = {
	DisplayMode = 1,
	LayoutDirection = 3,
	VisibilityMode = "HideInCombat",
	HideUndiscoveredRunes = true, -- 更改預設值
	HideTooltip = false,
	HideDragTab = false,
	ShowFilterSelector = false,
	HideSlotLabels = false,
	EnableRightClickDrag = false,
	UIScale = 1.0,
	PreventSpellPlacement = false
}

function Addon:GetOptions()
	return EngraverOptions.UseCharacterSpecificSettings and EngraverOptions or EngraverSharedOptions
end

------------------
-- OptionsFrame --
------------------

EngraverOptionsFrameMixin = {}

function EngraverOptionsFrameMixin:OnLoad()
	self.isSettingDefaults = false
	self:RegisterEvent("ADDON_LOADED")
	self.name = localAddonName
	self.category, self.layout = Settings.RegisterCanvasLayoutCategory(self, "符文", localAddonName);
	self.category.ID = localAddonName
	Settings.RegisterAddOnCategory(self.category);
	self:InitSettingsList()
	self:CreateSettingsInitializers()
	self.settingsList:Display(self.initializers);
end

StaticPopupDialogs["ENGRAVER_SETTINGS_APPLY_DEFAULTS"] = {
	text = "\你的 %s 設定將會重置。\n此操作無法還原。\n不會影響過濾方式。",
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function(self)
		self.data.optionsFrame:ChangeMultipleSettings(function()
			SettingsPanel:SetCurrentCategorySettingsToDefaults();
		end)
	end,
	exclusive = 1,
	whileDead = 1,
	showAlert = 1,
	hideOnEscape = 1
};

function EngraverOptionsFrameMixin:InitSettingsList()
	self.settingsList.Header.Title:SetText("一鍵符文");	
	self.settingsList.Header.DefaultsButton.Text:SetText(SETTINGS_DEFAULTS);
	self.settingsList.Header.DefaultsButton:SetScript("OnClick", function(button, buttonName, down)
		StaticPopup_Show("ENGRAVER_SETTINGS_APPLY_DEFAULTS", EngraverOptions.UseCharacterSpecificSettings and "角色的" or "共用的", nil, { optionsFrame = self } )
	end);
	self.settingsList.Header.KeybindsButton = CreateFrame("Button", nil, self.settingsList.Header, "EngraverKeybindsButtonTemplate")
	self.settingsList.ScrollBox:SetScript("OnMouseWheel", function(scrollBox, delta)
		if not KeybindListener:OnForwardMouseWheel(delta) then
			ScrollControllerMixin.OnMouseWheel(scrollBox, delta);
		end
	end);
	self.settingsList:Show();
end

function EngraverOptionsFrameMixin:ChangeMultipleSettings(changeFunction)
	self.isChangingMultipleSettings = true
	if changeFunction then 
		changeFunction()
	end
	self.isChangingMultipleSettings = false
	EngraverOptionsCallbackRegistry:TriggerEvent("OnMultipleSettingsChanged")
end

local function AddEngraverOptionsSetting(self, variable, name, varType)
	local setting = Settings.RegisterAddOnSetting(self.category, name, variable, varType, DefaultSettings[variable]);
	self.engraverOptionsSettings[variable] = setting
	Settings.SetOnValueChangedCallback(variable, function (engraverOptionsFrame, setting, newValue, ...)
		Addon:GetOptions()[variable] = newValue;
		if not self.isChangingMultipleSettings then
			EngraverOptionsCallbackRegistry:TriggerEvent(variable, newValue)
		end
	end, self)
	return setting
end

local function AddInitializer(self, initializer)
	if initializer then	
		table.insert(self.initializers, initializer);
		if initializer.GetName then
			local name = initializer:GetName()
			if name then
				initializer:AddSearchTags(name:gmatch("%S+"))
			end
		end
	end
end

local function CreateInitializer(self, frameTemplate, data)
	local initializer = CreateFromMixins(SettingsListElementInitializer);
	initializer:Init(frameTemplate, data);
	AddInitializer(self, initializer)
end

function EngraverOptionsFrameMixin:CreateSettingsInitializers()
	self.engraverOptionsSettings = {}
	self.initializers = {}
	do -- UseCharacterSpecificSettings
		local variable, name, varType = "UseCharacterSpecificSettings", "角色專用設定", Settings.VarType.Boolean;
		local tooltip = "勾選時，會使用這個角色專用的設定。\n取消勾選時，會使用共用的設定。\n(更改此選項不會刪除任何設定)。"
		self.characterSpecificSettingsSetting = Settings.RegisterAddOnSetting(self.category, name, variable, varType);
		AddInitializer(self, Settings.CreateControlInitializer("EngraverCharacterSpecificControlTemplate", self.characterSpecificSettingsSetting, { optionsFrame = self }, tooltip))
		Settings.SetOnValueChangedCallback(variable, function (_, _, newValue, ...)
			EngraverOptions[variable] = newValue;
			self:ChangeMultipleSettings(function()
				for variable, setting in pairs(self.engraverOptionsSettings) do
					if setting.SetValue then
						setting:SetValue(Addon:GetOptions()[variable])
					end
				end
			end)
		end, self)
	end -- UseCharacterSpecificSettings
	do -- SettingsHeader
		AddInitializer(self, CreateSettingsListSectionHeaderInitializer("設定"));
	end -- SettingsHeader
	do -- DisplayMode
		local variable, name, tooltip = "DisplayMode", "符文顯示方式", "符文按鈕要如何呈現。";
		local tooltips = { "總是顯示符文。", "每個可銘刻的裝備部位只顯示一個按鈕，將游標移至按鈕上查看可用的符文。" }
		local setting = AddEngraverOptionsSetting(self, variable, name, Settings.VarType.Number)
		local options = function()
			local container = Settings.CreateControlTextContainer();
			for i, displayMode in ipairs(Addon.EngraverDisplayModes) do
				container:Add(i-1, displayMode.text, tooltips[i]);
			end
			return container:GetData();
		end
		AddInitializer(self, Settings.CreateDropDownInitializer(setting, options, tooltip))
	end -- DisplayMode
	do -- LayoutDirection
		local variable, name, tooltip = "LayoutDirection", "版面方向", "符文按鈕要朝哪個方向展開。";
		local setting = AddEngraverOptionsSetting(self, variable, name, Settings.VarType.Number)
		local options = function()
			local container = Settings.CreateControlTextContainer();
			for i, direction in ipairs(Addon.EngraverLayoutDirections) do
				container:Add(i-1, direction.text);
			end
			return container:GetData();
		end
		AddInitializer(self, Settings.CreateDropDownInitializer(setting, options, tooltip))
	end -- LayoutDirection
	do -- VisibilityMode
		local variable, name, tooltip = "VisibilityMode", "何時顯示", "何時要顯示/隱藏一鍵符文。";
		local setting = AddEngraverOptionsSetting(self, variable, name, Settings.VarType.Number)
		local options = function()
			local container = Settings.CreateControlTextContainer();
			for name, mode in pairs(Addon.EngraverVisibilityModes) do
				container:Add(name, mode.text, mode.tooltip);
			end
			return container:GetData();
		end
		AddInitializer(self, Settings.CreateDropDownInitializer(setting, options, tooltip))
	end -- VisibilityMode
	do -- HideUndiscoveredRunes
		AddInitializer(self, Settings.CreateCheckBoxInitializer(AddEngraverOptionsSetting(self, "HideUndiscoveredRunes", "隱藏未發現的符文", Settings.VarType.Boolean), nil, "防止劇透 - 隱藏尚未被發現的任何符文。即使符合過濾方式，仍會保持隱藏。"))
	end -- HideUndiscoveredRunes
	do -- HideTooltip
		AddInitializer(self, Settings.CreateCheckBoxInitializer(AddEngraverOptionsSetting(self, "HideTooltip", "隱藏浮動提示資訊", Settings.VarType.Boolean), nil, "滑鼠指向符文按鈕時不顯示浮動提示資訊。"))
	end -- HideTooltip
	do -- HideDragTab
		local dragTabSetting = AddEngraverOptionsSetting(self, "HideDragTab", "隱藏拖曳標籤頁", Settings.VarType.Boolean)
		local dragTabInitializer = Settings.CreateCheckBoxInitializer(dragTabSetting, nil, "拖曳標籤頁讓你可以用滑鼠拖曳移動一鍵符文的框架。")
		AddInitializer(self, dragTabInitializer)
		do -- ShowFilterSelector
			local setting = AddEngraverOptionsSetting(self, "ShowFilterSelector", "顯示過濾方式", Settings.VarType.Boolean)
			local initializer = Settings.CreateCheckBoxInitializer(setting, nil, "啟用時，拖曳標籤頁會顯示當前的過濾方式。\n標籤頁兩旁的箭頭可以用來切換過濾方式。")
			initializer:SetParentInitializer(dragTabInitializer, function() return not dragTabSetting:GetValue() end)
			initializer.IsParentInitializerInLayout = function() return true; end -- forces indent and small font
			AddInitializer(self, initializer)
		end -- ShowFilterSelector
	end -- HideDragTab
	do -- HideSlotLabels
		AddInitializer(self, Settings.CreateCheckBoxInitializer(AddEngraverOptionsSetting(self, "HideSlotLabels", "隱藏欄位文字", Settings.VarType.Boolean)))
	end -- HideSlotLabels
	do -- EnableRightClickDrag
		AddInitializer(self, Settings.CreateCheckBoxInitializer(AddEngraverOptionsSetting(self, "EnableRightClickDrag", "啟用右鍵點擊拖曳", Settings.VarType.Boolean), nil, "可以透過右鍵點擊並按住任何符文按鈕來拖曳框架。"))
	end -- EnableRightClickDrag
	do -- UIScale
		local variable, name, tooltip = "UIScale", "介面縮放", "調整一鍵符文使用介面的縮放大小。";
		local setting = AddEngraverOptionsSetting(self, variable, name, Settings.VarType.Number)
		local options = Settings.CreateSliderOptions(0.01, 2.5, 0.01) -- minValue, maxValue, step 
		options:SetLabelFormatter(MinimalSliderWithSteppersMixin.Label.Right, FormatPercentage);
		AddInitializer(self, Settings.CreateSliderInitializer(setting, options, tooltip))
	end	-- UIScale
	do -- PreventSpellPlacement
		AddInitializer(self, Settings.CreateCheckBoxInitializer(AddEngraverOptionsSetting(self, "PreventSpellPlacement", "避免放置法術", Settings.VarType.Boolean), nil, "這將防止自動將法術放到快捷列中。"))
	end -- PreventSpellPlacement
	do -- FiltersHeader
		local filtersHeaderData = { 
			name = "過濾方式", 
			tooltipSections = {
				{ 
					header = "建立過濾方式", 
					lines = {
						"按下新增建立新的過濾方式，並且輸入容易辨識的名稱。",
						"選擇過濾方式啟用時要看到的符文，其餘的會隱藏。"
					}
				},
				{ 
					header = "啟用過濾方式", 
					lines = {
						"一次只能啟用一個過濾方式，或不過濾。",
						"當前的過濾方式會在下方的清單中顯示綠色標記。",
						"右鍵點下方清單中的過濾方式來啟用或停用。",
						"也可以使用拖曳標籤頁旁的箭頭來切換當前的過濾方式。 "
					}
				}
			}
		}
		AddInitializer(self, Settings.CreateElementInitializer("SettingsListSectionHeaderWithInfoTemplate", filtersHeaderData));
	end -- FiltersHeader
	do -- FilterEditor
		CreateInitializer(self, "EngraverOptionsFilterEditorTemplate", { settings = {} } );
	end -- FilterEditor
	do -- InformationHeader
		AddInitializer(self, CreateSettingsListSectionHeaderInitializer("Information"));
	end -- InformationHeader
	do -- Discord
		CreateInitializer(self, "SettingsSelectableTextTemplate", 
		{
			name = "Community Discord",
			tooltip = "If you have any questions, suggestions, or comments please post in the Community Discord.",
			text = "https://discord.gg/QgDbJe5Nma"
		})
	end -- Discord
	do -- Github
		CreateInitializer(self, "SettingsSelectableTextTemplate", 
		{
			name = "Github",
			tooltip = "If encounter a bug please check if your issue is already posted. If it isn't then go ahead and open a new issue.",
			text = "https://github.com/mcd8604/wowengraver/issues?q="
		})
	end -- Github
end

function EngraverOptionsFrameMixin:OnEvent(event, ...)
	if event == "ADDON_LOADED" then
		self:HandleAddonLoaded(...)
	end
end

local function SetMissingOptionsToDefault(options, defaults)
	for k, v in pairs(defaults) do
		if options[k] == nil then
			options[k] = v
		end
	end
end

-- removes extraneous/deprecated data
local function SanitizeOptionsData(options, predicate)
	local keysToDelete = {}
	for k, v in pairs(options) do
		if predicate(k) then
			table.insert(keysToDelete, k)
		end
	end
	for i, k in ipairs(keysToDelete) do
		options[k] = nil
	end
end

function EngraverOptionsFrameMixin:HandleAddonLoaded(addonName)
	if addonName == localAddonName then
		-- If UseCharacterSpecificSettings isn't set and character settings exist but shared settings do not, then auto-copy to the shared.
		-- This is for users updating from a version that didn't have shared settings implemented (so it doesn't appear that all their settings were wiped, even though they weren't).
		if EngraverOptions.UseCharacterSpecificSettings == nil and not TableIsEmpty(EngraverOptions) then
			if TableIsEmpty(EngraverSharedOptions) then
				MergeTable(EngraverSharedOptions, EngraverOptions) -- auto-copy to the shared settings
			end
		end
		-- Ensure any missing settings are set with default values
		SetMissingOptionsToDefault(EngraverOptions, DefaultEngraverOptions)
		SetMissingOptionsToDefault(EngraverOptions, DefaultSettings)
		SetMissingOptionsToDefault(EngraverSharedOptions, DefaultSettings)
		-- Sanitize
		SanitizeOptionsData(EngraverOptions, function(k) return DefaultEngraverOptions[k] == nil and DefaultSettings[k] == nil; end)
		SanitizeOptionsData(EngraverSharedOptions, function(k) return DefaultSettings[k] == nil; end)
		-- Init characterSpecificSettingsSetting manually instead of via a default value (it purposely has no default because it should never be changed when setting defaults).
		self.characterSpecificSettingsSetting:SetValue(EngraverOptions.UseCharacterSpecificSettings)
	end
end

---------------------------------------
-- SettingsListSectionHeaderWithInfo --
---------------------------------------

SettingsListSectionHeaderWithInfoMixin = CreateFromMixins(SettingsListSectionHeaderMixin)

function SettingsListSectionHeaderWithInfoMixin:Init(initializer)
	SettingsListSectionHeaderMixin.Init(self, initializer)
	self.TooltipSections = initializer:GetData().tooltipSections
end

function SettingsListSectionHeaderInfoButton_OnEnter(self)
	SettingsTooltip:SetOwner(self, "ANCHOR_RIGHT",-22,-22);
	local sections = self:GetParent().TooltipSections
	for i, section in ipairs(sections) do
		GameTooltip_AddHighlightLine(SettingsTooltip, section.header);
		for _, line in ipairs(section.lines) do
			GameTooltip_AddNormalLine(SettingsTooltip, line);
		end
		if i < #sections then
			GameTooltip_AddBlankLinesToTooltip(SettingsTooltip, 1)
		end
	end
	SettingsTooltip:Show();
end

----------------------------
-- SettingsSelectableText --
----------------------------

SettingsSelectableTextMixin = CreateFromMixins(SettingsListElementMixin)

function SettingsSelectableTextMixin:Init(initializer)
	SettingsListElementMixin.Init(self, initializer)
	local text = initializer:GetData().text;
	self.editBox:SetText(text)
	self.editBox:SetScript("OnTextChanged", function(_, userInput)
		if userInput then
			self.editBox:SetText(text)
			self.editBox:HighlightText()
		end
	end)
end

function SettingsSelectableTextMixin:OnLoad()
	SettingsListElementMixin.OnLoad(self)
	self.editBox:SetPoint("LEFT", self, "CENTER", -80, 0);
end

------------------------------
-- CharacterSpecificControl --
------------------------------

EngraverCharacterSpecificControlMixin = CreateFromMixins(SettingsCheckBoxControlMixin)

function EngraverCharacterSpecificControlMixin:OnLoad()
	SettingsCheckBoxControlMixin.OnLoad(self)
	self.copyText:SetPoint("LEFT", self.CheckBox, "RIGHT", 40, 0)
	self.copyCharacterButton:SetPoint("BOTTOMLEFT", self.copyText, "RIGHT")
	self.copyCharacterButton:SetScript("OnClick", function() 
		StaticPopup_Show("ENGRAVER_COPY_CHARACTER_SETTINGS", nil, nil, { optionsFrame = self.optionsFrame } )
	end)
	self.copySharedButton:SetPoint("TOPLEFT", self.copyText, "RIGHT")
	self.copySharedButton:SetScript("OnClick", function() 
		StaticPopup_Show("ENGRAVER_COPY_SHARED_SETTINGS", nil , nil, { optionsFrame = self.optionsFrame } )
	end)
end

function EngraverCharacterSpecificControlMixin:Init(initializer)
	SettingsCheckBoxControlMixin.Init(self, initializer)
	self.optionsFrame = initializer:GetData().options.optionsFrame
end

StaticPopupDialogs["ENGRAVER_COPY_CHARACTER_SETTINGS"] = {
	text = "將會取代共用的設定。\n此操作無法還原。\n不會影響過濾方式。",
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function(self)
		self.data.optionsFrame:ChangeMultipleSettings(function()
			for k, _ in pairs(DefaultSettings) do
				local value = EngraverOptions[k]
				EngraverSharedOptions[k] = value
				self.data.optionsFrame.engraverOptionsSettings[k]:SetValue(value)
			end
		end)
	end,
	exclusive = 1,
	whileDead = 1,
	showAlert = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["ENGRAVER_COPY_SHARED_SETTINGS"] = {
	text = "是否要取代此角色的設定?\n此操作無法還原。\n不會影響過濾方式。",
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function(self)
		self.data.optionsFrame:ChangeMultipleSettings(function()
			for k, _ in pairs(DefaultSettings) do
				local value = EngraverSharedOptions[k]
				EngraverOptions[k] = value
				self.data.optionsFrame.engraverOptionsSettings[k]:SetValue(value)
			end
		end)
	end,
	exclusive = 1,
	whileDead = 1,
	showAlert = 1,
	hideOnEscape = 1
};
