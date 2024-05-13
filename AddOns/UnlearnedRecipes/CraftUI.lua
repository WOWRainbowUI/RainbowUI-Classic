-- Modifies _classic_era_\BlizzardInterfaceCode\Interface_Vanilla\AddOns\Blizzard_CraftUI\Blizzard_CraftUI.lua

local addonName, addon = ...
local sources = addon.Enums.Sources

local dbCache = {}
local redColor = {r = 1, g = 0, b = 0, font = "GameFontNormalLeftRed"}

EventUtil.ContinueOnAddOnLoaded("Blizzard_CraftUI", function()

function CraftFrame_Update()
	local numCrafts = GetNumCrafts();
    local craftName = GetCraftName()
	local db = dbCache[craftName]
    
    if not db then
        local skipCache
        local currentSkill = select(2, GetCraftDisplaySkillLine())
        db, skipCache = addon.GetRecipeDB(craftName, GetCraftInfo, currentSkill, false, numCrafts)
                
        if not skipCache then
            dbCache[craftName] = db
        end
    end

	SetPortraitTexture(CraftFramePortrait, "player");
	CraftFrameTitleText:SetText(craftName)

	local craftOffset = FauxScrollFrame_GetOffset(CraftListScrollFrame);
	-- Set the action button text
	CraftCreateButton:SetText(getglobal(GetCraftButtonToken()));
	-- Set the craft skill line status bar info
	local name, rank, maxRank = GetCraftDisplaySkillLine();
	if ( name ) then
		CraftRankFrameSkillName:SetText(name);
		CraftRankFrame:SetStatusBarColor(0.0, 0.0, 1.0, 0.5);
		CraftRankFrameBackground:SetVertexColor(0.0, 0.0, 0.75, 0.5);
		CraftRankFrame:SetMinMaxValues(0, maxRank);
		CraftRankFrame:SetValue(rank);
		CraftRankFrameSkillRank:SetText(rank.."/"..maxRank);
		CraftRankFrame:Show();
		CraftSkillBorderLeft:Show();
		CraftSkillBorderRight:Show();
	else
		CraftRankFrame:Hide();
		CraftSkillBorderLeft:Hide();
		CraftSkillBorderRight:Hide();
	end

	-- Hide the expand all button if less than 2 crafts learned
	if ( numCrafts <=1 ) then
		CraftExpandButtonFrame:Hide();
	else
		CraftExpandButtonFrame:Show();
	end
	-- If no Crafts
	if ( numCrafts == 0 ) then
		CraftName:Hide();
		CraftRequirements:Hide();
		CraftIcon:Hide();
		CraftReagentLabel:Hide();
		CraftDescription:Hide();
		for i=1, MAX_CRAFT_REAGENTS, 1 do
			getglobal("CraftReagent"..i):Hide();
		end
		CraftDetailScrollFrameScrollBar:Hide();
		CraftDetailScrollFrameTop:Hide();
		CraftDetailScrollFrameBottom:Hide();
		CraftListScrollFrame:Hide();
		for i=1, CRAFTS_DISPLAYED, 1 do
			getglobal("Craft"..i):Hide();
		end
		CraftHighlightFrame:Hide();
		CraftRequirements:Hide();
		return;
	end

	-- If has crafts
	CraftName:Show();
	CraftRequirements:Show();
	CraftIcon:Show();
	CraftDescription:Show();
	CraftCollapseAllButton:Enable();

	-- ScrollFrame update
	FauxScrollFrame_Update(CraftListScrollFrame, numCrafts + (db and #db or 0), CRAFTS_DISPLAYED, CRAFT_SKILL_HEIGHT, nil, nil, nil, CraftHighlightFrame, 293, 316 );

	CraftHighlightFrame:Hide();

	local craftIndex, craftName, craftButton, craftButtonSubText, craftButtonCost, craftButtonText;
	for i=1, CRAFTS_DISPLAYED, 1 do
		craftIndex = i + craftOffset;
		craftName, craftSubSpellName, craftType, numAvailable, isExpanded, trainingPointCost, requiredLevel = GetCraftInfo(craftIndex);
		craftButton = getglobal("Craft"..i);
		craftButtonSubText = getglobal("Craft"..i.."SubText");
		craftButtonCost = getglobal("Craft"..i.."Cost");
		craftButtonText = getglobal("Craft"..i.."Text");
		if ( craftIndex <= numCrafts ) then
			-- Set button widths if scrollbar is shown or hidden
			if ( CraftListScrollFrame:IsVisible() ) then
				craftButton:SetWidth(293);
				-- HACK to fix a bug with (Rank) rendering in Beast Training --
				if ( not trainingPointCost ) then
					craftButtonText:SetWidth(290);
				end
			else
				craftButton:SetWidth(323);
				-- HACK to fix a bug with (Rank) rendering in Beast Training --
				if ( not trainingPointCost ) then
					craftButtonText:SetWidth(320);
				end
			end
			craftButtonCost:SetPoint("RIGHT", CRAFT_COST_OFFSET, 0);
			local color = CraftTypeColor[craftType];

			craftButton:SetNormalFontObject(color.font);
			craftButtonCost:SetTextColor(color.r, color.g, color.b);
			Craft_SetSubTextColor(craftButton, color.r, color.g, color.b);
			craftButton:SetID(craftIndex);
			craftButton:Show();
			-- Handle headers
			if ( craftType == "header" ) then
				craftButton:SetText(craftName);
				craftButtonSubText:SetText("");
				craftButtonText:SetWidth(0);
				if ( isExpanded ) then
					craftButton:SetNormalTexture("Interface\\Buttons\\UI-MinusButton-Up");
				else
					craftButton:SetNormalTexture("Interface\\Buttons\\UI-PlusButton-Up");
				end
				getglobal("Craft"..i.."Highlight"):SetTexture("Interface\\Buttons\\UI-PlusButton-Hilight");
				getglobal("Craft"..i):UnlockHighlight();
			else
				craftButton:ClearNormalTexture();
				getglobal("Craft"..i.."Highlight"):SetTexture("");
				if ( numAvailable == 0 ) then
					craftButton:SetText(" "..craftName);
				else
					craftButton:SetText(" "..craftName.." ["..numAvailable.."]");
				end
				if ( craftSubSpellName and craftSubSpellName ~= "" ) then
					craftButtonSubText:SetText(format(PARENS_TEMPLATE, craftSubSpellName));
					craftButtonText:SetWidth(0);
				else
					craftButtonSubText:SetText("");

					-- A bit of a hack. If there's no subtext, we'll set a width to ensure that we don't overflow.
					craftButtonText:SetWidth(CRAFT_TEXT_WIDTH);
				end
				if ( trainingPointCost > 0 ) then
					craftButtonCost:SetText(format(TRAINER_LIST_TP, trainingPointCost));
				else
					craftButtonCost:SetText("");
				end

				craftButtonSubText:SetPoint("LEFT", "Craft"..i.."Text", "RIGHT", CRAFT_SUBTEXT_OFFSET, 0);
				-- Place the highlight and lock the highlight state
				if ( GetCraftSelectionIndex() == craftIndex ) then
					CraftHighlightFrame:SetPoint("TOPLEFT", "Craft"..i, "TOPLEFT", 0, 0);
					CraftHighlightFrame:Show();
					Craft_SetSubTextColor(craftButton, 1.0, 1.0, 1.0);
					craftButtonCost:SetTextColor(1.0, 1.0, 1.0);
					getglobal("Craft"..i):LockHighlight();
				else
					getglobal("Craft"..i):UnlockHighlight();
				end
			end
        
        elseif db and (craftIndex <= (numCrafts + #db)) then
            local data = db[craftIndex - numCrafts]
            local craftName = GetSpellInfo(data.spellID)
            
            -- Set button widths if scrollbar is shown or hidden
			if ( CraftListScrollFrame:IsVisible() ) then
				craftButton:SetWidth(293);
			else
				craftButton:SetWidth(323);
			end
			craftButtonCost:SetPoint("RIGHT", CRAFT_COST_OFFSET, 0);
			local color = redColor

			craftButton:SetNormalFontObject(color.font);
			craftButtonCost:SetTextColor(color.r, color.g, color.b);
			Craft_SetSubTextColor(craftButton, color.r, color.g, color.b);
			craftButton:SetID(craftIndex);
			craftButton:Show();
			craftButton:ClearNormalTexture();
			getglobal("Craft"..i.."Highlight"):SetTexture("");
			craftButton:SetText(" "..craftName);

			craftButtonSubText:SetText("");
			craftButtonText:SetWidth(CRAFT_TEXT_WIDTH);

			craftButtonCost:SetText("");

			craftButtonSubText:SetPoint("LEFT", "Craft"..i.."Text", "RIGHT", CRAFT_SUBTEXT_OFFSET, 0);
			-- Place the highlight and lock the highlight state
			if ( GetCraftSelectionIndex() == craftIndex ) then
				CraftHighlightFrame:SetPoint("TOPLEFT", "Craft"..i, "TOPLEFT", 0, 0);
				CraftHighlightFrame:Show();
				Craft_SetSubTextColor(craftButton, 1.0, 1.0, 1.0);
				craftButtonCost:SetTextColor(1.0, 1.0, 1.0);
				getglobal("Craft"..i):LockHighlight();
			else
				getglobal("Craft"..i):UnlockHighlight();
			end
        
		else
			craftButton:Hide();
		end
	end

	-- If player has training points show them here
	Craft_UpdateTrainingPoints();

	-- Set the expand/collapse all button texture
	local numHeaders = 0;
	local notExpanded = 0;
	for i=1, numCrafts, 1 do
		local craftName, craftSubSpellName, craftType, numAvailable, isExpanded = GetCraftInfo(i);
		if ( craftName and craftType == "header" ) then
			numHeaders = numHeaders + 1;
			if ( not isExpanded ) then
				notExpanded = notExpanded + 1;
			end
		end
	end
	-- If all headers are not expanded then show collapse button, otherwise show the expand button
	if ( notExpanded ~= numHeaders ) then
		CraftCollapseAllButton.collapsed = nil;
		CraftCollapseAllButton:SetNormalTexture("Interface\\Buttons\\UI-MinusButton-Up");
	else
		CraftCollapseAllButton.collapsed = 1;
		CraftCollapseAllButton:SetNormalTexture("Interface\\Buttons\\UI-PlusButton-Up");
	end

	-- If has headers show the expand all button
	if ( numHeaders > 0 ) then
		-- If has headers then move all the names to the right
		for i=1, CRAFTS_DISPLAYED, 1 do
			getglobal("Craft"..i.."Text"):SetPoint("TOPLEFT", "Craft"..i, "TOPLEFT", 21, 0);
		end
		CraftExpandButtonFrame:Show();
	else
		-- If no headers then move all the names to the left
		for i=1, CRAFTS_DISPLAYED, 1 do
			getglobal("Craft"..i.."Text"):SetPoint("TOPLEFT", "Craft"..i, "TOPLEFT", 3, 0);
		end
		CraftExpandButtonFrame:Hide();
	end
end

function CraftFrame_SetSelection(id)
	if ( not id ) then
		return;
	end
    CraftFrame.selectedSkill = id
    CraftFrame.unlearnedSelected = nil
    
    CraftSourceText:Hide()
    CraftRecipeIcon:Hide()

    if id > GetNumCrafts() then
        local db = dbCache[GetCraftName()]
        if not db then return end
        
        local data = db[id - GetNumCrafts()]
        
        local craftName = GetSpellInfo(data.spellID)
        local skillSource = data.source
        
        CraftHighlightFrame:Show();
    	local color = redColor
    	CraftHighlight:SetVertexColor(color.r, color.g, color.b);

    	-- General Info
    	CraftName:SetText(craftName);
    	
        local icon = C_Item.GetItemIconByID(data.itemID)
        if data.itemID == 0 then
            icon = GetSpellTexture(data.spellID)
        end
        if icon then
            if (icon == 134400) and data.sourceItemID then
                icon = C_Item.GetItemIconByID(data.sourceItemID)
                if icon then
                    CraftIcon:SetNormalTexture(icon)
                else
                    CraftIcon:ClearNormalTexture()
                end
            else
                CraftIcon:SetNormalTexture(icon)
            end
        else
            CraftIcon:ClearNormalTexture()
        end

        CraftDescription:SetText(" ");
    	CraftReagentLabel:SetPoint("TOPLEFT", "CraftDescription", "TOPLEFT", 0, 0)

    	-- Reagents
    	local reagents = data.reagents
        local numReagents = #reagents

    	for i=1, numReagents, 1 do
    		local item = Item:CreateFromItemID(reagents[i])
            item:ContinueOnItemLoad(function()
                local reagentName, reagentTexture, reagentCount, playerReagentCount = item:GetItemName(), item:GetItemIcon(), data.reagentQuantities[i], GetItemCount(reagents[i])
        		
                local reagent = getglobal("CraftReagent"..i)
        		local name = getglobal("CraftReagent"..i.."Name");
        		local count = getglobal("CraftReagent"..i.."Count");
        		
                if ( not reagentName or not reagentTexture ) then
        			reagent:Hide();
        		else
        			reagent:Show();
        			SetItemButtonTexture(reagent, reagentTexture);
        			name:SetText(reagentName);
        			-- Grayout items
        			if ( playerReagentCount < reagentCount ) then
        				SetItemButtonTextureVertexColor(reagent, GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b);
        				name:SetTextColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b);
        			else
        				SetItemButtonTextureVertexColor(reagent, 1.0, 1.0, 1.0);
        				name:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
        			end
        			if ( playerReagentCount >= 100 ) then
        				playerReagentCount = "*";
        			end
        			count:SetText(playerReagentCount.." /"..reagentCount);
        		end
            end)
    	end

    	if ( numReagents > 0 ) then
    		CraftReagentLabel:Show();
    	else
    		CraftReagentLabel:Hide();
    	end
    	for i=numReagents + 1, MAX_CRAFT_REAGENTS, 1 do
    		getglobal("CraftReagent"..i):Hide();
    	end

    	local requirement, source, vendors = addon.GetRecipeRequirementText(data, function(item)
            if item then
                CraftRecipeIcon.itemLink = item:GetItemLink()
                CraftRecipeIcon:SetNormalTexture(item:GetItemIcon())
                CraftRecipeIcon:Show()
            else
                CraftRecipeIcon:Hide()
            end
        end)
        CraftRequirements:SetText(requirement)
        if source then
            CraftSourceText:Show()
            CraftSourceText:SetText(source)
            CraftSourceText.vendors = vendors
        end

    	CraftCost:Hide();

    	CraftCreateButton:Disable();
        
    	CraftDetailScrollFrame:UpdateScrollChildRect();
    	-- Show or hide scrollbar
    	if ((CraftDetailScrollFrameScrollBarScrollUpButton:IsEnabled() == 0) and (CraftDetailScrollFrameScrollBarScrollDownButton:IsEnabled() == 0) ) then
    		CraftDetailScrollFrameScrollBar:Hide();
    		CraftDetailScrollFrameTop:Hide();
    		CraftDetailScrollFrameBottom:Hide();
    	else
    		CraftDetailScrollFrameScrollBar:Show();
    		CraftDetailScrollFrameTop:Show();
    		CraftDetailScrollFrameBottom:Show();
    	end
        
        CraftFrame.unlearnedSelected = true
        
        return 
    else
    	local craftName, craftSubSpellName, craftType, numAvailable, isExpanded, trainingPointCost, requiredLevel = GetCraftInfo(id)
        
        CraftHighlightFrame:Show();
    	-- If the type of the selection is header, don't process all the craft details
    	if ( craftType == "header" ) then
    		CraftHighlightFrame:Hide();
    		if ( isExpanded ) then
    			CollapseCraftSkillLine(id);
    		else
    			ExpandCraftSkillLine(id);
    		end
    		return;
    	end
    	SelectCraft(id);
    	if ( GetCraftSelectionIndex() > GetNumCrafts() ) then
    		return;
    	end
    	local color = CraftTypeColor[craftType];
    	CraftHighlight:SetVertexColor(color.r, color.g, color.b);

    	-- General Info
    	CraftName:SetText(craftName);
    	CraftIcon:SetNormalTexture(GetCraftIcon(id));

    	if ( GetCraftDescription(id) ) then
    		CraftDescription:SetText(GetCraftDescription(id));
    		CraftReagentLabel:SetPoint("TOPLEFT", "CraftDescription", "BOTTOMLEFT", 0, -10);
    	else
    		CraftDescription:SetText(" ");
    		CraftReagentLabel:SetPoint("TOPLEFT", "CraftDescription", "TOPLEFT", 0, 0);
    	end


    	-- Reagents
    	local creatable = 1;
    	local numReagents = GetCraftNumReagents(id);

    	for i=1, numReagents, 1 do
    		local reagentName, reagentTexture, reagentCount, playerReagentCount = GetCraftReagentInfo(id, i);
    		local reagent = getglobal("CraftReagent"..i)
    		local name = getglobal("CraftReagent"..i.."Name");
    		local count = getglobal("CraftReagent"..i.."Count");
    		if ( not reagentName or not reagentTexture ) then
    			reagent:Hide();
    		else
    			reagent:Show();
    			SetItemButtonTexture(reagent, reagentTexture);
    			name:SetText(reagentName);
    			-- Grayout items
    			if ( playerReagentCount < reagentCount ) then
    				SetItemButtonTextureVertexColor(reagent, GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b);
    				name:SetTextColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b);
    				creatable = nil;
    			else
    				SetItemButtonTextureVertexColor(reagent, 1.0, 1.0, 1.0);
    				name:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
    			end
    			if ( playerReagentCount >= 100 ) then
    				playerReagentCount = "*";
    			end
    			count:SetText(playerReagentCount.." /"..reagentCount);
    		end
    	end

    	if ( numReagents > 0 ) then
    		CraftReagentLabel:Show();
    	else
    		CraftReagentLabel:Hide();
    	end
    	for i=numReagents + 1, MAX_CRAFT_REAGENTS, 1 do
    		getglobal("CraftReagent"..i):Hide();
    	end

    	local requiredTotems = BuildColoredListString(GetCraftSpellFocus(id));
    	if ( requiredTotems ) then
    		CraftRequirements:SetText(REQUIRES_LABEL.." "..requiredTotems);
    	elseif ( requiredLevel and requiredLevel > 0 ) then
    		if ( UnitLevel("pet") >= requiredLevel ) then
    			CraftRequirements:SetText(REQUIRES_LABEL.." "..format(TRAINER_REQ_LEVEL --[[TRAINER_PET_LEVEL]], requiredLevel));
    		else
    			CraftRequirements:SetText(REQUIRES_LABEL.." "..format(TRAINER_REQ_LEVEL --[[TRAINER_PET_LEVEL_RED]], requiredLevel));
    		end
    	else
    		CraftRequirements:SetText("");
    	end

    	if ( trainingPointCost > 0 ) then
    		local totalPoints, spent = GetPetTrainingPoints();
    		local usablePoints = totalPoints - spent;
    		if ( usablePoints >= trainingPointCost ) then
    			CraftCost:SetText(COSTS_LABEL.." "..trainingPointCost.." "..TRAINING_POINTS_LABEL);
    		else
    			CraftCost:SetText(COSTS_LABEL.." "..RED_FONT_COLOR_CODE..trainingPointCost..FONT_COLOR_CODE_CLOSE.." "..TRAINING_POINTS_LABEL);
    		end

    		CraftCost:Show();
    	else
    		CraftCost:Hide();
    	end

    	if ( craftType == "used" ) then
    		creatable = nil;
    	end

    	if ( creatable ) then
    		CraftCreateButton:Enable();
    	else
    		CraftCreateButton:Disable();
    	end
    	CraftDetailScrollFrame:UpdateScrollChildRect();
    	-- Show or hide scrollbar
    	if ((CraftDetailScrollFrameScrollBarScrollUpButton:IsEnabled() == 0) and (CraftDetailScrollFrameScrollBarScrollDownButton:IsEnabled() == 0) ) then
    		CraftDetailScrollFrameScrollBar:Hide();
    		CraftDetailScrollFrameTop:Hide();
    		CraftDetailScrollFrameBottom:Hide();
    	else
    		CraftDetailScrollFrameScrollBar:Show();
    		CraftDetailScrollFrameTop:Show();
    		CraftDetailScrollFrameBottom:Show();
    	end
    end
end

local craftIconOnEnterHandler = function()
    local id = CraftFrame.selectedSkill
    if ( id ~= 0 ) then
        local numTradeSkills = GetNumCrafts();
        if id > numTradeSkills then
            local db = dbCache[GetCraftName()]
            if not db then return end
            
            local data = db[id - numTradeSkills]
            if not data.itemID then return end
            
            GameTooltip:SetOwner(CraftIcon, "ANCHOR_RIGHT");
            if data.itemID == 0 then
                GameTooltip:SetSpellByID(data.spellID)
            else
                GameTooltip:SetItemByID(data.itemID)
            end
		    CursorUpdate(CraftIcon);
            
            return
        end
		GameTooltip:SetOwner(CraftIcon, "ANCHOR_RIGHT");
		GameTooltip:SetCraftSpell(GetCraftSelectionIndex())
		CursorUpdate(CraftIcon);
    end
end

CraftIcon:SetScript("OnEnter", craftIconOnEnterHandler)
CraftIcon.UpdateTooltip = craftIconOnEnterHandler

CraftFrame:SetScript("OnEvent", function(self, event, ...)
	if ( not self:IsVisible() ) then
		return;
	end

	if ( event == "CRAFT_UPDATE" ) then
		CraftCreateButton:Disable();
		if not self.unlearnedSelected then
            if ( GetCraftSelectionIndex() > 1 ) then
    			CraftFrame_SetSelection(GetCraftSelectionIndex());
    		else
    			if ( GetNumCrafts() > 0 ) then
    				-- Check to see if has headers, if so select the second slot if not select the first slot
    				local indexToSelect;
    				local craftName, craftSubSpellName, craftType, numAvailable, isExpanded = GetCraftInfo(1);
    				if ( craftType == "header" ) then
    					indexToSelect = 2;
    				else
    					indexToSelect = 1;
    				end
    				CraftFrame_SetSelection(indexToSelect);
    				FauxScrollFrame_SetOffset(CraftListScrollFrame, 0);
    			end
    			CraftListScrollFrameScrollBar:SetValue(0);
    		end
        end
		CraftFrame_Update();
	elseif ( event == "UNIT_PORTRAIT_UPDATE" ) then
		if ( arg1 == "player" ) then
			SetPortraitTexture(CraftFramePortrait, "player");
		end
	elseif ( event == "SPELLS_CHANGED" ) then
		CraftFrame_Update();
	elseif ( event == "UNIT_PET_TRAINING_POINTS" ) then
		Craft_UpdateTrainingPoints();
	end
end)

CreateFrame("Button", "CraftRecipeIcon", CraftDetailScrollChildFrame)
CraftRecipeIcon:SetSize(37, 37)
CraftRecipeIcon:SetPoint("TOPRIGHT", CraftDetailScrollChildFrame, "TOPRIGHT", -8, -3)
CraftRecipeIcon:SetScript("OnClick", function(self)
    if self.itemLink then
        HandleModifiedItemClick(self.itemLink)
    end
end)
CraftRecipeIcon:SetScript("OnEnter", function(self)
    if self.itemLink then
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        GameTooltip:SetHyperlink(self.itemLink)
        CursorUpdate(self)
    end
end)
CraftRecipeIcon:SetScript("OnLeave", function(self)
    GameTooltip:Hide()
    ResetCursor()
end)

CraftDetailScrollChildFrame:CreateFontString("CraftSourceText", "BACKGROUND", "GameFontHighlightSmall")
CraftSourceText:SetSize(180, 0)
CraftSourceText:SetPoint("TOPLEFT", CraftRequirements, "BOTTOMLEFT", 0, -2)
CraftSourceText:SetJustifyV("TOP")
CraftSourceText:SetJustifyH("LEFT")
CraftSourceText:SetScript("OnEnter", function(self)
    local vendors = CraftSourceText.vendors
    if not vendors then return end
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
    for _, vendorData in ipairs(vendors) do
        GameTooltip:AddDoubleLine(vendorData.name, C_Map.GetAreaInfo(vendorData.zoneID))
    end
    GameTooltip:Show()
end)
CraftSourceText:SetScript("OnLeave", function(self)
    GameTooltip:Hide()
end)

for i = 1, 8 do
    local button = _G["CraftReagent"..i]
    button:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT");
        if not CraftFrame.unlearnedSelected then 
			GameTooltip:SetCraftItem(GetCraftSelectionIndex(), self:GetID());
        else
            local numTradeSkills = GetNumCrafts();
            local db = dbCache[GetCraftName()]
            local data = db[CraftFrame.selectedSkill - numTradeSkills]
            if data.reagents then
                GameTooltip:SetItemByID(data.reagents[self:GetID()])
            end
        end
        CursorUpdate(self);
    end)
    button.UpdateTooltip = function (self)
        GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT");
        if not CraftFrame.unlearnedSelected then 
			GameTooltip:SetCraftItem(GetCraftSelectionIndex(), self:GetID());
        else
            local numTradeSkills = GetNumCrafts();
            local db = dbCache[GetCraftName()]
            local data = db[CraftFrame.selectedSkill - numTradeSkills]
            GameTooltip:SetItemByID(data.reagents[self:GetID()])
        end
        CursorUpdate(self);
	end
end

CraftFrame:HookScript("OnHide", function()
    wipe(dbCache)
end)

hooksecurefunc("CraftFrame_OnHide", function()
    wipe(dbCache)
end)

end) -- end ContinueOnAddOnLoaded
