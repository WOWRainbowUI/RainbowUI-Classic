local ADDON, MinArch = ...

local ldb = LibStub:GetLibrary("LibDataBroker-1.1");
local dataobj = ldb:NewDataObject("MinimalArchaeology", {label = "MinArch", type = "data source", icon = "Interface\\Icons\\Trade_Archaeology_Dinosaurskeleton", text = ""});
local icon = LibStub("LibDBIcon-1.0", true);

function MinArch:InitLDB()
	icon:Register("MinArch", dataobj, MinArch.db.profile.minimap)

	MinArch:RefreshMinimapButton();
end

function MinArch:RefreshMinimapButton()
	icon:Refresh("MinArch", MinArch.db.profile.minimap)
	if (MinArch.db.profile.minimap.hide) then
		icon:Hide("MinArch");
	else
		icon:Show("MinArch");
	end
end

function MinArch:RefreshLDBButton()
	local digSite, distance, digSiteData = MinArch:GetNearestDigsite();
	if (digSiteData) then
		local text = digSiteData.race;

		local raceID = MinArch:GetRaceIdByName(digSiteData.race);
		if (MinArch['artifacts'][raceID]) then
			local progress = MinArch['artifacts'][raceID]['progress'] or 0;
			if (MinArch.db.profile.raceOptions.cap[raceID] == true) then
				text = text .. " " .. progress .. "/" .. MinArchRaceConfig[raceID].fragmentCap;
            else
                if (MinArch['artifacts'][raceID]['canSolve']) then
					text = text .. " (Solvable)";
                end

                if (MinArch['artifacts'][raceID]['progress'] ~= nil and MinArch['artifacts'][raceID]['total'] ~= nil) then
					if (MinArch['artifacts'][raceID]['appliedKeystones'] > 0) then
						progress = progress + (MinArch['artifacts'][raceID]['modifier'])
					end
					text = text .. " " .. progress .. "/" .. MinArch['artifacts'][raceID]['total'];
                end
			end
		end

		dataobj.text = text;
	else
		dataobj.text = 'n/a';
	end
end

-- Hide/Show the minimap button
function dataobj:OnClick(button)
	MinArch:OpenWindow(button)
end

function dataobj:OnLeave()
	GameTooltip:Hide()
end

function dataobj:OnEnter()
	GameTooltip:SetOwner(self, "ANCHOR_NONE")
	GameTooltip:SetPoint("TOPLEFT", self, "BOTTOMLEFT")
	GameTooltip:ClearLines();
	GameTooltip:AddLine("考古小幫手", 1, 0.819, 0.003);
	GameTooltip:AddLine(" ");
	GameTooltip:AddLine("提示：左鍵點擊    切換考古小幫手主視窗。", 0, 1, 0)
	GameTooltip:AddLine("Shift + 左鍵點擊  切換考古小幫手歷史記錄視窗。", 0, 1, 0)
	GameTooltip:AddLine("Ctrl + 左鍵點擊   切換考古小幫手挖掘地點視窗。", 0, 1, 0)
	GameTooltip:AddLine("Alt + 左鍵點擊    隱藏所有考古小幫手視窗。", 0, 1, 0)
	GameTooltip:AddLine("右鍵點擊          打開設定", 0, 1, 0)

	GameTooltip:Show()
end
