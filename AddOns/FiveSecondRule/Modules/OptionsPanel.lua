-- CONFIGURE
local ADDON_NAME = "FiveSecondRule"
local NAMESPACE = FiveSecondRule

-- STATE
local frame = CreateFrame("Frame", nil, InterfaceOptionsFrame)
local colorPickerStateSet = false

-- LOADER
local OptionsPanelFrame = CreateFrame("Frame", ADDON_NAME.."OptionsPanelFrame")

-- EXPOSE OPTIONS PANEL TO NAMESPACE
NAMESPACE.OptionsPanelFrame = OptionsPanelFrame

OptionsPanelFrame:RegisterEvent("PLAYER_LOGIN")
OptionsPanelFrame:SetScript("OnEvent",
    function(self, event, arg1, ...)
        if event == "PLAYER_LOGIN" then
            if not OptionsPanelFrame.optionsPanel then
                OptionsPanelFrame.optionsPanel = OptionsPanelFrame:CreateGUI(ADDON_NAME, "5 秒回魔監控")
                InterfaceOptions_AddCategory(OptionsPanelFrame.optionsPanel);
            end
        end
    end
);

-- LOADING VALUES

function OptionsPanelFrame:UpdateOptionValues()
    if frame == nil or frame.content == nil then
        return
    end
    
    frame.content.ticks:SetChecked(FiveSecondRule_Options.showTicks == true)
    frame.content.flat:SetChecked(FiveSecondRule_Options.flat == true)
    frame.content.showText:SetChecked(FiveSecondRule_Options.showText == true)
    frame.content.showSpark:SetChecked(FiveSecondRule_Options.showSpark == true)
    frame.content.alwaysShowTicks:SetChecked(FiveSecondRule_Options.alwaysShowTicks == true)
    frame.content.enableCountdown:SetChecked(FiveSecondRule_Options.enableCountdown == true)
    frame.content.forceTrackDruidEnergy:SetChecked(FiveSecondRule_Options.forceTrackDruidEnergy == true)
    
    frame.content.barWidth:SetText(tostring(FiveSecondRule_Options.barWidth))
    frame.content.barHeight:SetText(tostring(FiveSecondRule_Options.barHeight))

    frame.content.barLeft:SetText(tostring(FiveSecondRule_Options.barLeft))
    frame.content.barTop:SetText(tostring(FiveSecondRule_Options.barTop))

    local sfgc = FiveSecondRule_Options.statusBarColor
    frame.content.statusBarForegroundColorFrame:SetBackdropColor(sfgc[1], sfgc[2], sfgc[3], sfgc[4])

    local sbgc = FiveSecondRule_Options.statusBarBackgroundColor
    frame.content.statusBarBackgroundColorFrame:SetBackdropColor(sbgc[1], sbgc[2], sbgc[3], sbgc[4])

    local mtfgc = FiveSecondRule_Options.manaTicksColor
    frame.content.manaTicksForegroundColorFrame:SetBackdropColor(mtfgc[1], mtfgc[2], mtfgc[3], mtfgc[4])

    local mtbgc = FiveSecondRule_Options.manaTicksBackgroundColor
    frame.content.manaTicksBackgroundColorFrame:SetBackdropColor(mtbgc[1], mtbgc[2], mtbgc[3], mtbgc[4])

    FiveSecondRule:Refresh()
end

-- GUI
function OptionsPanelFrame:CreateGUI(name, displayName, parent)
    if (not frame) then
        frame = CreateFrame("Frame", nil, InterfaceOptionsFrame)
    end

    frame:Hide()
    frame.parent = parent
    frame.name = displayName

    -- TITLE
    if (not frame.title) then
        local title = frame:CreateFontString(ADDON_NAME.."Title", "OVERLAY", "GameFontNormalLarge")
        title:SetPoint("TOPLEFT", 10, -15)
        title:SetPoint("BOTTOMRIGHT", frame, "TOPRIGHT", 10, -45)
        title:SetJustifyH("LEFT")
        title:SetJustifyV("TOP")
        title:SetText(displayName)
        frame.title = title
    end

    -- ROOT
    if (not frame.content) then
        local content = CreateFrame("Frame", "CADOptionsContent", frame)
        content:SetPoint("TOPLEFT", 10, -10)
        content:SetPoint("BOTTOMRIGHT", -10, 10)
        frame.content = content
    end

    -- WHETHER OR NOT TO SHOW THE MANA TICKS BAR
    if (not frame.content.ticks) then
        local ticks = FiveSecondRule.UIFactory:MakeCheckbox(ADDON_NAME.."Ticks", frame.content, "顯示何時才能完整的回魔一次。")
        local text = "顯示回魔進度"

        if (FiveSecondRule.IsWOTLK()) then
          text = text.." (巫妖王版本已停用)"
          ticks:Disable()
        end

        ticks.label:SetText(text)
        ticks:SetPoint("TOPLEFT", 10, -30)
        ticks:SetScript("OnClick",function(self,button)
            FiveSecondRule_Options.showTicks = self:GetChecked()
        end)
        frame.content.ticks = ticks
    end

    -- FLAT DESIGN
    if (not frame.content.flat) then
        local flat = FiveSecondRule.UIFactory:MakeCheckbox(ADDON_NAME.."flat", frame.content, "進度條顯示為平面的，而不是立體的。")
        flat.label:SetText("平面的進度條")
        flat:SetPoint("TOPLEFT", 10, -60)
        flat:SetScript("OnClick",function(self,button)
            FiveSecondRule_Options.flat = self:GetChecked()
            FiveSecondRule:Refresh()
        end)
        frame.content.flat = flat
    end

    -- SHOW TEXT?
    if (not frame.content.showText) then
        local showText = FiveSecondRule.UIFactory:MakeCheckbox(ADDON_NAME.."showText", frame.content, "在進度條上顯示文字 (剩餘幾秒)")
        showText.label:SetText("顯示文字")
        showText:SetPoint("TOPLEFT", 10, -90)
        showText:SetScript("OnClick",function(self,button)
            FiveSecondRule_Options.showText = self:GetChecked()
            FiveSecondRule:Refresh()
        end)
        frame.content.showText = showText
    end

    -- SHOW SPARK?
    if (not frame.content.showSpark) then
        local showSpark = FiveSecondRule.UIFactory:MakeCheckbox(ADDON_NAME.."showSpark", frame.content, "在進度條上顯示亮點")
        showSpark.label:SetText("顯示亮點")
        showSpark:SetPoint("TOPLEFT", 10, -120)
        showSpark:SetScript("OnClick",function(self,button)
            FiveSecondRule_Options.showSpark = self:GetChecked()
            FiveSecondRule:Refresh()
        end)
        frame.content.showSpark = showSpark        
    end   

    -- ALWAYS SHOW MANA TICKS?
    if (not frame.content.alwaysShowTicks) then
        local alwaysShowTicks = FiveSecondRule.UIFactory:MakeCheckbox(ADDON_NAME.."alwaysShowTicks", frame.content, "一直保持顯示回魔進度，即使法力已滿。")
        local text = "總是顯示回魔進度"

        if (FiveSecondRule.IsWOTLK()) then
          text = text.." (巫妖王版本已停用)"
          alwaysShowTicks:Disable()
        end

        alwaysShowTicks.label:SetText(text)
        alwaysShowTicks:SetPoint("TOPLEFT", 10, -150)
        alwaysShowTicks:SetScript("OnClick",function(self,button)
            FiveSecondRule_Options.alwaysShowTicks = self:GetChecked()
            FiveSecondRule:Refresh()
        end)
        frame.content.alwaysShowTicks = alwaysShowTicks        
    end  

    -- ENABLE COUNTDOWN?
    if (not frame.content.enableCountdown) then
        local enableCountdown = FiveSecondRule.UIFactory:MakeCheckbox(ADDON_NAME.."enableCountdown", frame.content, "顯示 5 秒回魔的冷卻倒數。")
        enableCountdown.label:SetText("啟用 5 秒回魔冷卻")
        enableCountdown:SetPoint("TOPLEFT", 10, -180)
        enableCountdown:SetScript("OnClick",function(self,button)
            FiveSecondRule_Options.enableCountdown = self:GetChecked()
            FiveSecondRule:Refresh()
        end)
        frame.content.enableCountdown = enableCountdown        
    end     

    -- FORCE TRACK ENERGY FOR DRUIDS?
    if (not frame.content.forceTrackDruidEnergy) then
        local forceTrackDruidEnergy = FiveSecondRule.UIFactory:MakeCheckbox(ADDON_NAME.."forceTrackDruidEnergy", frame.content, "德魯伊監控能量而不是法力")
        forceTrackDruidEnergy.label:SetText("強制監控德魯伊能量")
        forceTrackDruidEnergy:SetPoint("TOPLEFT", 10, -210)
        forceTrackDruidEnergy:SetScript("OnClick",function(self,button)
            FiveSecondRule_Options.forceTrackDruidEnergy = self:GetChecked()
            FiveSecondRule:Refresh()
        end)
        frame.content.forceTrackDruidEnergy = forceTrackDruidEnergy
        
        if (select(2, UnitClass("player")) ~= "DRUID") then 
            frame.content.forceTrackDruidEnergy:Hide()
        end

    end     
    

    -- BAR
    local barWidth = FiveSecondRule.UIFactory:MakeEditBox(ADDON_NAME.."CountdownWidth", frame.content, "寬度", 75, 25, function(self)
        FiveSecondRule_Options.barWidth = tonumber(self:GetText())
        FiveSecondRule:Refresh()
    end)
    barWidth:SetPoint("TOPLEFT", 315, -30)
    barWidth:SetCursorPosition(0)
    frame.content.barWidth = barWidth

    local barHeight = FiveSecondRule.UIFactory:MakeEditBox(ADDON_NAME.."CountdownHeight", frame.content, "高度", 75, 25, function(self)
        FiveSecondRule_Options.barHeight = tonumber(self:GetText())
        FiveSecondRule:Refresh()
    end)
    barHeight:SetPoint("TOPLEFT", 400, -30)
    barHeight:SetCursorPosition(0)
    frame.content.barHeight = barHeight

    -- LOCK / UNLOCK BUTTON
    local function lockToggled(self)
        if (FiveSecondRule_Options.unlocked) then
            FiveSecondRule:Lock()
            self:SetText("解鎖")
        else
            FiveSecondRule:Unlock()
            self:SetText("鎖定")
        end
    end

    local toggleLockText = (FiveSecondRule_Options.unlocked and "鎖定" or "解鎖")
    local toggleLock = FiveSecondRule.UIFactory:MakeButton(ADDON_NAME.."LockButton", frame.content, 60, 20, toggleLockText, 14, FiveSecondRule.UIFactory:MakeColor(1,1,1,1), function(self)
        lockToggled(self)
    end)
    toggleLock:SetPoint("BOTTOMLEFT", 12, 12)
    frame.content.toggleLock = toggleLock

    -- RESET BUTTON
    local resetButton = FiveSecondRule.UIFactory:MakeButton(ADDON_NAME.."ResetButton", frame.content, 60, 20, "重置", 14, FiveSecondRule.UIFactory:MakeColor(1,1,1,1), function(self) 
        if (FiveSecondRule_Options.unlocked) then
            lockToggled(toggleLock)
        end

        FiveSecondRule:Reset()
        OptionsPanelFrame:UpdateOptionValues(frame.content)
    end)
    resetButton:SetPoint("TOPRIGHT", -5, 0)
    frame.content.resetButton = resetButton

    -- BAR LEFT
    local barLeft = FiveSecondRule.UIFactory:MakeEditBox(ADDON_NAME.."BarLeft", frame.content, "水平位置 (左)", 75, 25, function(self)
        FiveSecondRule_Options.barLeft = tonumber(self:GetText())
        FiveSecondRule:Refresh()
    end)
    barLeft:SetPoint("TOPLEFT", 315, -90)
    barLeft:SetCursorPosition(0)
    frame.content.barLeft = barLeft

    -- BAR TOP
    local barTop = FiveSecondRule.UIFactory:MakeEditBox(ADDON_NAME.."BarTop", frame.content, "垂直位置 (上)", 75, 25, function(self)
        FiveSecondRule_Options.barTop = tonumber(self:GetText())
        FiveSecondRule:Refresh()
    end)
    barTop:SetPoint("TOPLEFT", 400, -90)
    barTop:SetCursorPosition(0)
    frame.content.barTop = barTop

    -- STATUSBAR STYLE TITLE
    frame.content.statusBarTitle = FiveSecondRule.UIFactory:MakeText(frame.content, "5 秒狀態條樣式", 16)
    frame.content.statusBarTitle:SetPoint("TOPLEFT", 12, -240)

    -- STATUSBAR COLOR PICKER
    if (not frame.content.statusBarForegroundColorFrame) then
        frame.content.statusBarForegroundColorFrame = FiveSecondRule.UIFactory:MakeColorPicker(ADDON_NAME.."StatusBarColorFrame", frame.content, "前景", FiveSecondRule_Options.statusBarColor)
        frame.content.statusBarForegroundColorFrame:SetPoint("TOPLEFT", 12, -270)
        frame.content.statusBarForegroundColorFrame:SetScript("OnMouseDown",  
            function (self, button)
                colorPickerStateSet = false

                local editColor = FiveSecondRule_Options.statusBarColor

                FiveSecondRule.UIFactory:ShowColorPicker(editColor[1], editColor[2], editColor[3], editColor[4], function (restore)
                    if (not colorPickerStateSet) then
                        colorPickerStateSet = true
                        return
                    end

                    FiveSecondRule_Options.statusBarColor = FiveSecondRule.UIFactory:UnpackColor(restore)
                    OptionsPanelFrame:UpdateOptionValues()
                end)
            end
        )
    end

    -- STATUSBAR BACKGROUND COLOR PICKER
    if (not frame.content.statusBarBackgroundColorFrame) then
        frame.content.statusBarBackgroundColorFrame = FiveSecondRule.UIFactory:MakeColorPicker(ADDON_NAME.."StatusBarBackgroundColorFrame",  frame.content, "背景", FiveSecondRule_Options.statusBarBackgroundColor)
        frame.content.statusBarBackgroundColorFrame:SetPoint("TOPLEFT", 100, -270)
        frame.content.statusBarBackgroundColorFrame:SetScript("OnMouseDown",  
            function (self, button)
                colorPickerStateSet = false

                local editColor = FiveSecondRule_Options.statusBarBackgroundColor

                FiveSecondRule.UIFactory:ShowColorPicker(editColor[1], editColor[2], editColor[3], editColor[4], function (restore)
                    if (not colorPickerStateSet) then
                        colorPickerStateSet = true
                        return
                    end

                    FiveSecondRule_Options.statusBarBackgroundColor = FiveSecondRule.UIFactory:UnpackColor(restore)
                    OptionsPanelFrame:UpdateOptionValues()
                end)
            end
        )
    end

    -- MANA TICKS BAR STYLE TITLE
    frame.content.manaTicksTitle = FiveSecondRule.UIFactory:MakeText(frame.content, "回魔進度條樣式", 16)
    frame.content.manaTicksTitle:SetPoint("TOPLEFT", 12, -300)

    -- MANA TICKS BAR COLOR PICKER
    if (not frame.content.manaTicksForegroundColorFrame) then
        frame.content.manaTicksForegroundColorFrame = FiveSecondRule.UIFactory:MakeColorPicker(ADDON_NAME.."ManaTicksColorFrame",  frame.content, "前景", FiveSecondRule_Options.manaTicksColor)
        frame.content.manaTicksForegroundColorFrame:SetPoint("TOPLEFT", 12, -330)
        frame.content.manaTicksForegroundColorFrame:SetScript("OnMouseDown",  
            function (self, button)
                colorPickerStateSet = false

                local editColor = FiveSecondRule_Options.manaTicksColor

                FiveSecondRule.UIFactory:ShowColorPicker(editColor[1], editColor[2], editColor[3], editColor[4], function (restore)
                    if (not colorPickerStateSet) then
                        colorPickerStateSet = true
                        return
                    end

                    FiveSecondRule_Options.manaTicksColor = FiveSecondRule.UIFactory:UnpackColor(restore)
                    OptionsPanelFrame:UpdateOptionValues()
                end)
            end
        )
    end

    -- MANA TICKS BAR BACKGROUND COLOR PICKER
    if (not frame.content.manaTicksBackgroundColorFrame) then
        frame.content.manaTicksBackgroundColorFrame = FiveSecondRule.UIFactory:MakeColorPicker(ADDON_NAME.."ManaTicksBackgroundColorFrame", frame.content, "背景",  FiveSecondRule_Options.manaTicksBackgroundColor)
        frame.content.manaTicksBackgroundColorFrame:SetPoint("TOPLEFT", 100, -330)
        frame.content.manaTicksBackgroundColorFrame:SetScript("OnMouseDown",  
            function (self, button)
                colorPickerStateSet = false

                local editColor = FiveSecondRule_Options.manaTicksBackgroundColor

                FiveSecondRule.UIFactory:ShowColorPicker(editColor[1], editColor[2], editColor[3], editColor[4], function (restore)
                    if (not colorPickerStateSet) then
                        colorPickerStateSet = true
                        return
                    end

                    FiveSecondRule_Options.manaTicksBackgroundColor = FiveSecondRule.UIFactory:UnpackColor(restore)
                    OptionsPanelFrame:UpdateOptionValues()
                end)
            end
        )
    end

    -- UPDATE VALUES ON SHOW
    frame:SetScript("OnShow", function(self) OptionsPanelFrame:UpdateOptionValues() end)

    return frame
end

