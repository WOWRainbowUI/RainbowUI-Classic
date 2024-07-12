local f = CreateFrame("Frame")
local validEquipLocs = {
    ["INVTYPE_HEAD"] = true,
    ["INVTYPE_SHOULDER"] = true,
    ["INVTYPE_BODY"] = true,
    ["INVTYPE_CHEST"] = true,
    ["INVTYPE_ROBE"] = true,
    ["INVTYPE_WAIST"] = true,
    ["INVTYPE_LEGS"] = true,
    ["INVTYPE_FEET"] = true,
    ["INVTYPE_WRIST"] = true,
    ["INVTYPE_HAND"] = true,
    ["INVTYPE_CLOAK"] = true,
    ["INVTYPE_WEAPON"] = true,
    ["INVTYPE_SHIELD"] = true,
    ["INVTYPE_2HWEAPON"] = true,
    ["INVTYPE_WEAPONMAINHAND"] = true,
    ["INVTYPE_WEAPONOFFHAND"] = true,
    ["INVTYPE_HOLDABLE"] = true,
    ["INVTYPE_TABARD"] = true,
    ["INVTYPE_RANGED"] = true, 
    ["INVTYPE_RANGEDRIGHT"] = true,
}
f:SetScript("OnEvent", function(self, event, ...)
    self[event](self, ...)
end)

local function isTransmogCollected(itemLink)
    
    local _, _, itemRarity, _, _, _, _, _, itemEquipLoc, _, _, _, _, _, bindType = GetItemInfo(itemLink)

    local isExactKnown = nil
    if bindType and bindType > 0 and itemRarity > 1 and validEquipLocs[itemEquipLoc] then
        local appearanceID, sourceID = C_TransmogCollection.GetItemInfo(itemLink)
        if (appearanceID ~= nil) and (sourceID ~= nil) then
            
            isExactKnown = C_TransmogCollection.PlayerHasTransmogItemModifiedAppearance(sourceID)
            local sources = C_TransmogCollection.GetAppearanceSources(appearanceID)
            if sources then
                for _, source in pairs(sources) do
                    if source.isCollected then
                        -- The player has collected this appearance.
                        return true, isExactKnown
                    end
                end

                -- The player has not collected this appearance
                return false, isExactKnown
            end
        end
    end

    -- The player is not eligible for this appearance
    return nil, isExactKnown
end


local orig_AuctionFrameBrowse_Update
local applyTransmogFilter = false 

f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, addonName)
    self:UnregisterEvent("ADDON_LOADED") -- We don't need this event anymore

    orig_AuctionFrameBrowse_Update = AuctionFrameBrowse_Update

    local function NewAuctionFrameBrowse_Update()
        orig_AuctionFrameBrowse_Update()
    
        local offset = FauxScrollFrame_GetOffset(BrowseScrollFrame)
        
        if applyTransmogFilter then 
            for i=1, NUM_BROWSE_TO_DISPLAY do
                local index = offset+i
                local button = _G["BrowseButton"..i.."Item"]
                if button then
                    if not button.transmogOverlay then
                        button.transmogOverlay = button:CreateTexture(nil, "OVERLAY")
                        button.transmogOverlay:SetAllPoints(true)
                    end
        
                    local itemLink = GetAuctionItemLink("list", index)
                    if itemLink then
                        local appearanceCollected, isExactKnown = isTransmogCollected(itemLink)
        
                        if appearanceCollected or isExactKnown then
                            button.transmogOverlay:SetColorTexture(0, 1, 0, 0.3) -- Green for collected items
                        elseif appearanceCollected == nil then
                            button.transmogOverlay:SetColorTexture(1, 0, 0, 0.3) -- Red for not eligible items
                        else
                            button.transmogOverlay:SetColorTexture(1, 1, 1, 0) -- Transparent for uncollected items
                        end
                    end
                end
            end
        else 
            for i=1, NUM_BROWSE_TO_DISPLAY do
                local index = offset+i
                local button = _G["BrowseButton"..i.."Item"]
                if button and button.transmogOverlay then
                    -- Reset to the default transparency (completely transparent)
                    button.transmogOverlay:SetColorTexture(0, 0, 0, 0)
                end
            end
        end
    end
    
    -- At load we keep both versions of the function, depending on needing filter or not.
    AuctionFrameBrowse_Update = NewAuctionFrameBrowse_Update -- Your filter code is now always available

    local toggleButton = CreateFrame("CheckButton", nil, AuctionFrame, "ChatConfigCheckButtonTemplate")

    toggleButton:SetSize(24, 24)
    toggleButton:SetPoint("TOPLEFT", AuctionFrame, "TOPLEFT", 540, -36)
    toggleButton.tooltip = "Hide items that are either already collected or not eligible for transmog."
    
    
    -- Create the FontString
    local checkboxText = toggleButton:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
    checkboxText:SetPoint("LEFT", toggleButton, "RIGHT", 5, 0)
    checkboxText:SetText("Not collected for transmog")
    -- Sets the text color to red
    checkboxText:SetTextColor(1, 0, 0, 1) 
    
    -- Initially hide the toggleButton
    toggleButton:Hide()

    -- Add a script to the AuctionFrame to show and hide toggleButton as tabs are switched
    AuctionFrame:HookScript("OnUpdate", function()
        if PanelTemplates_GetSelectedTab(AuctionFrame) == 1 then
        -- "Browse" tab is selected
        toggleButton:Show()
        else
        -- any other tab is selected
        toggleButton:Hide()
        end
    end)

            
    -- When the button is clicked or if state changes
    toggleButton:SetScript("OnClick", function(self)
        applyTransmogFilter = not applyTransmogFilter -- Toggle the flag's value when clicked
        AuctionFrameBrowse_Update()
    end)
end)

GameTooltip:HookScript("OnTooltipSetItem", function(tooltip)
    local _, link = tooltip:GetItem()

    if link then
        local _, _, itemRarity, _, _, _, _, _, itemEquipLoc, _, _, _, _, _, bindType = GetItemInfo(link)
        if bindType and bindType > 0 and itemRarity > 1 and validEquipLocs[itemEquipLoc] then
            local appearanceCollected, isExactKnown = isTransmogCollected(link)
            
            if appearanceCollected then
                tooltip:AddLine("|cFF00FF00Item Model: COLLECTED|r")
            elseif appearanceCollected == nil then
                tooltip:AddLine("|cFFFF0000Item Model: CLASS NOT ELIGIBLE TO COLLECT|r")
            else 
                tooltip:AddLine("|cFFFF7F00Item Model: NOT COLLECTED|r")
            end

            if isExactKnown then
                tooltip:AddLine("|cFF00FF00Exact Item Source: COLLECTED|r")
            else
                tooltip:AddLine("|cFFFF7F00Exact Item Source: NOT COLLECTED|r")
            end

            tooltip:Show()
        end
    end
end)
