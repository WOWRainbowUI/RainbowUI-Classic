local HBDP = LibStub("HereBeDragons-Pins-2.0")
local AceLocale = LibStub("AceLocale-3.0")
local L = AceLocale:GetLocale("Spy")
local _

function Spy:RefreshCurrentList(player, source)
	local MainWindow = Spy.MainWindow
	if not MainWindow:IsShown() then
		return
	end

	local mode = Spy.db.profile.CurrentList
	local manageFunction = Spy.ListTypes[mode][2]
	if manageFunction then
		manageFunction()
	end

	local button = 1
	for index, data in pairs(Spy.CurrentList) do
		if button <= Spy.ButtonLimit then
			local description = ""
			local level = "??"
			local class = "UNKNOWN"
			local guild = "??"
			local rank = 0
			local opacity = 1

			local playerData = SpyPerCharDB.PlayerData[data.player]
			if playerData then
				if playerData.level then
					level = playerData.level
					if playerData.isGuess == true and tonumber(playerData.level) < Spy.MaximumPlayerLevel then
						level = level.."+"
					end
				end
				if playerData.class then
					class = playerData.class
				end
				if playerData.guild then
					guild = playerData.guild
				end
				if playerData.rank then
					rank = playerData.rank
				end
			end
			
			if Spy.db.profile.DisplayListData == "1NameLevelClass" then
				description = level.." "
				if L[class] and type(L[class]) == "string" then
					description = description..L[class]
				end
			elseif Spy.db.profile.DisplayListData == "2NameLevelGuild" then
				description = level.." "..guild
			elseif Spy.db.profile.DisplayListData == "3NameLevelOnly" then
				description = level.." "
			elseif Spy.db.profile.DisplayListData == "4NamePvPRank" then
				description = L["Rank"].." "..rank
			elseif Spy.db.profile.DisplayListData == "5NameGuild" then
				description = guild
			end
			if mode == 1 and Spy.InactiveList[data.player] then
				opacity = 0.5
			end
			if player == data.player then
				if not source or source ~= Spy.CharacterName then
					Spy:AlertPlayer(player, source)
					if not source then
						Spy:AnnouncePlayer(player)
					end
				end
			end

			Spy:SetBar(button, data.player, description, 100, "Class", class, nil, opacity)
			Spy.ButtonName[button] = data.player
			button = button + 1
		end
	end
	Spy.ListAmountDisplayed = button - 1

	if Spy.db.profile.ResizeSpy then
		Spy:AutomaticallyResize()
	else
		if not Spy.db.profile.InvertSpy then
			if not InCombatLockdown() and Spy.MainWindow:GetHeight()< 34 then
				Spy:RestoreMainWindowPosition(Spy.MainWindow:GetLeft(), Spy.MainWindow:GetTop(), Spy.MainWindow:GetWidth(), 34)
			end
		else
			if not InCombatLockdown() and Spy.MainWindow:GetHeight()< 34 then 
				Spy:RestoreMainWindowPosition(Spy.MainWindow:GetLeft(), Spy.MainWindow:GetBottom(), Spy.MainWindow:GetWidth(), 34)
			end
		end	
	end
	Spy:ManageBarsDisplayed()
end

function Spy:ManageNearbyList()
	local prioritiseKoS = Spy.db.profile.PrioritiseKoS

	local activeKoS = {}
	local active = {}
	for player in pairs(Spy.ActiveList) do
		local position = Spy.NearbyList[player]
		if position ~= nil then
			if prioritiseKoS and SpyPerCharDB.KOSData[player] then
				table.insert(activeKoS, { player = player, time = position })
			else
				table.insert(active, { player = player, time = position })
			end
		end
	end

	local inactiveKoS = {}
	local inactive = {}
	for player in pairs(Spy.InactiveList) do
		local position = Spy.NearbyList[player]
		if position ~= nil then
			if prioritiseKoS and SpyPerCharDB.KOSData[player] then
				table.insert(inactiveKoS, { player = player, time = position })
			else
				table.insert(inactive, { player = player, time = position })
			end
		end
	end

	table.sort(activeKoS, function(a, b) return a.time < b.time end)
	table.sort(inactiveKoS, function(a, b) return a.time < b.time end)
	table.sort(active, function(a, b) return a.time < b.time end)
	table.sort(inactive, function(a, b) return a.time < b.time end)

	local list = {}
	for player in pairs(activeKoS) do table.insert(list, activeKoS[player]) end
	for player in pairs(inactiveKoS) do table.insert(list, inactiveKoS[player]) end
	for player in pairs(active) do table.insert(list, active[player]) end
	for player in pairs(inactive) do table.insert(list, inactive[player]) end
	Spy.CurrentList = list
end

function Spy:ManageLastHourList()
	local list = {}
	for player in pairs(Spy.LastHourList) do
		table.insert(list, { player = player, time = Spy.LastHourList[player] })
	end
	table.sort(list, function(a, b) return a.time > b.time end)
	Spy.CurrentList = list
end

function Spy:ManageIgnoreList()
	local list = {}
	for player in pairs(SpyPerCharDB.IgnoreData) do
		local playerData = SpyPerCharDB.PlayerData[player]
		local position = time()
		if playerData then position = playerData.time end
		table.insert(list, { player = player, time = position })
	end
	table.sort(list, function(a, b) return a.time > b.time end)
	Spy.CurrentList = list
end

function Spy:ManageKillOnSightList()
	local list = {}
	for player in pairs(SpyPerCharDB.KOSData) do
		local playerData = SpyPerCharDB.PlayerData[player]
		local position = time()
		if playerData then position = playerData.time end
		table.insert(list, { player = player, time = position })
	end
	table.sort(list, function(a, b) return a.time > b.time end)
	Spy.CurrentList = list
end

function Spy:GetNearbyListSize()
	local entries = 0
	for v in pairs(Spy.NearbyList) do
		entries = entries + 1
	end
	return entries
end

function Spy:UpdateActiveCount()
    local activeCount = 0
    for k in pairs(Spy.ActiveList) do
        activeCount = activeCount + 1
    end
	local theFrame = Spy.MainWindow
    if activeCount > 0 then 
		theFrame.CountFrame.Text:SetText("|cFF0070DE" .. activeCount .. "|r") 
    else 
        theFrame.CountFrame.Text:SetText("|cFF0070DE0|r")
    end
end

function Spy:ManageExpirations()
	local mode = Spy.db.profile.CurrentList
	local expirationFunction = Spy.ListTypes[mode][3]
	if expirationFunction then
		expirationFunction()
	end
end

function Spy:ManageNearbyListExpirations()
	local expired = false
	local currentTime = time()
	for player in pairs(Spy.ActiveList) do
		if (currentTime - Spy.ActiveList[player]) > Spy.ActiveTimeout then
			Spy.InactiveList[player] = Spy.ActiveList[player]
			Spy.ActiveList[player] = nil
			expired = true
		end
	end
	if Spy.db.profile.RemoveUndetected ~= "Never" then
		for player in pairs(Spy.InactiveList) do
			if (currentTime - Spy.InactiveList[player]) > Spy.InactiveTimeout then
				if Spy.PlayerCommList[player] ~= nil then
					Spy.MapNoteList[Spy.PlayerCommList[player]].displayed = false
					Spy.MapNoteList[Spy.PlayerCommList[player]].worldIcon:Hide()
					HBDP:RemoveMinimapIcon(self, Spy.MapNoteList[Spy.PlayerCommList[player]].miniIcon)
					Spy.PlayerCommList[player] = nil
				end
				Spy.InactiveList[player] = nil
				Spy.NearbyList[player] = nil
				expired = true
			end
		end
	end
	if expired then
		Spy:RefreshCurrentList()
		Spy:UpdateActiveCount()
		if Spy.db.profile.HideSpy and Spy:GetNearbyListSize() == 0 then 
			if not InCombatLockdown() then
				Spy.MainWindow:Hide()
			else	
				Spy:HideSpyCombatCheck()
			end
		end
	end
end

function Spy:ManageLastHourListExpirations()
	local expired = false
	local currentTime = time()
	for player in pairs(Spy.LastHourList) do
		if (currentTime - Spy.LastHourList[player]) > 3600 then
			Spy.LastHourList[player] = nil
			expired = true
		end
	end
	if expired then
		Spy:RefreshCurrentList()
	end
end

function Spy:RemovePlayerFromList(player)
	Spy.NearbyList[player] = nil
	Spy.ActiveList[player] = nil
	Spy.InactiveList[player] = nil
	if Spy.PlayerCommList[player] ~= nil then
		Spy.MapNoteList[Spy.PlayerCommList[player]].displayed = false
		Spy.MapNoteList[Spy.PlayerCommList[player]].worldIcon:Hide()
		HBDP:RemoveMinimapIcon(self, Spy.MapNoteList[Spy.PlayerCommList[player]].miniIcon)
		Spy.PlayerCommList[player] = nil
	end
	Spy:RefreshCurrentList()
	Spy:UpdateActiveCount()	
end

function Spy:ClearList()
	if IsShiftKeyDown () then
		Spy:EnableSound(not Spy.db.profile.EnableSound, false)
	else	
		Spy.NearbyList = {}
		Spy.ActiveList = {}
		Spy.InactiveList = {}
		Spy.PlayerCommList = {}
		Spy.ListAmountDisplayed = 0
		for i = 1, Spy.MapNoteLimit do
			Spy.MapNoteList[i].displayed = false
			Spy.MapNoteList[i].worldIcon:Hide()
			HBDP:RemoveMinimapIcon(self, Spy.MapNoteList[i].miniIcon)
		end
		Spy:SetCurrentList(1)
		if IsControlKeyDown() then
			Spy:EnableSpy(not Spy.db.profile.Enabled, false)
		end
		Spy:UpdateActiveCount()
	end	
end

function Spy:AddPlayerData(name, class, level, race, guild, faction, isEnemy, isGuess, rank)
	local info = {}
	info.name = name  --++ added to normalize data
	info.class = class
	if type(level) == "number" then info.level = level end
	info.race = race
	info.guild = guild
	info.faction = faction
	info.isEnemy = isEnemy
	info.isGuess = isGuess
	info.rank = rank
	SpyPerCharDB.PlayerData[name] = info
	return SpyPerCharDB.PlayerData[name]
end

function Spy:UpdatePlayerData(name, class, level, race, guild, faction, isEnemy, isGuess, rank)
	local detected = true
	local playerData = SpyPerCharDB.PlayerData[name]
	if not playerData then
		playerData = Spy:AddPlayerData(name, class, level, race, guild, faction, isEnemy, isGuess, rank)
	else
		if name ~= nil then playerData.name = name end  
		if class ~= nil then playerData.class = class end
		if type(level) == "number" then playerData.level = level end
		if race ~= nil then playerData.race = race end
		if guild ~= nil then playerData.guild = guild end
		if faction ~= nil then playerData.faction = faction end
		if isEnemy ~= nil then playerData.isEnemy = isEnemy end
		if isGuess ~= nil then playerData.isGuess = isGuess end
		if rank ~= nil then playerData.rank = rank end
	end
	if playerData then
		playerData.time = time()
		if not Spy.ActiveList[name] then
			if (WorldMapFrame:IsVisible() and Spy.db.profile.SwitchToZone) then
				WorldMapFrame:SetMapID(C_Map.GetBestMapForUnit("player"))
			end
			if (nil == C_Map.GetBestMapForUnit("player")) or (nil == C_Map.GetPlayerMapPosition(C_Map.GetBestMapForUnit("player"), "player")) then
				local x,y = 0,0
				local InsName = GetInstanceInfo()
				playerData.zone = InsName
				playerData.subZone = ""
			else
				local mapX, mapY = C_Map.GetPlayerMapPosition(C_Map.GetBestMapForUnit("player"), "player"):GetXY()			
				if mapX ~= 0 and mapY ~= 0 then
					mapX = math.floor(tonumber(mapX) * 100) / 100
					mapY = math.floor(tonumber(mapY) * 100) / 100
					playerData.mapX = mapX
					playerData.mapY = mapY
					playerData.zone = GetZoneText()
					playerData.mapID = C_Map.GetBestMapForUnit("player") --++8.0
					playerData.subZone = GetSubZoneText()
				else
					detected = false
				end
			end
		end	
	end
	return detected
end

function Spy:UpdatePlayerStatus(name, class, level, race, guild, faction, isEnemy, isGuess, rank)
	local playerData = SpyPerCharDB.PlayerData[name]
	if not playerData then
		playerData = Spy:AddPlayerData(name, class, level, race, guild, faction, isEnemy, isGuess, rank)
	else
		if name ~= nil then playerData.name = name end  
		if class ~= nil then playerData.class = class end
		if type(level) == "number" then playerData.level = level end
		if race ~= nil then playerData.race = race end
		if guild ~= nil then playerData.guild = guild end
		if faction ~= nil then playerData.faction = faction end
		if isEnemy ~= nil then playerData.isEnemy = isEnemy end
		if isGuess ~= nil then playerData.isGuess = isGuess end
		if rank ~= nil then playerData.rank = rank end
	end
	if playerData.time == nil then
		playerData.time = time()
	end	
end

function Spy:RemovePlayerData(name)
	local playerData = SpyPerCharDB.PlayerData[name]
		if ((playerData.loses == nil) and (playerData.wins == nil)) then
			SpyPerCharDB.PlayerData[name] = nil
		else
			playerData.isEnemy = false
		end
end

function Spy:RemovePlayerDataFromStats(name)
	SpyPerCharDB.PlayerData[name] = nil
end

function Spy:AddIgnoreData(name)
	SpyPerCharDB.IgnoreData[name] = true
end

function Spy:RemoveIgnoreData(name)
	if SpyPerCharDB.IgnoreData[name] then
		SpyPerCharDB.IgnoreData[name] = nil
	end
end

function Spy:AddKOSData(name)
	SpyPerCharDB.KOSData[name] = time()
--	SpyPerCharDB.PlayerData[name].kos = 1 
	if Spy.db.profile.ShareKOSBetweenCharacters then
		SpyDB.removeKOSData[Spy.RealmName][Spy.FactionName][name] = nil
	end
end

function Spy:RemoveKOSData(name)
	if SpyPerCharDB.KOSData[name] then
		local playerData = SpyPerCharDB.PlayerData[name]
		if playerData and playerData.reason then
			playerData.reason = nil
		end
		SpyPerCharDB.KOSData[name] = nil
		if SpyPerCharDB.PlayerData[name] then
			SpyPerCharDB.PlayerData[name].kos = nil
		end
		if Spy.db.profile.ShareKOSBetweenCharacters then
			SpyDB.removeKOSData[Spy.RealmName][Spy.FactionName][name] = time()
		end
	end
end

function Spy:SetKOSReason(name, reason, other)
	local playerData = SpyPerCharDB.PlayerData[name]
	if playerData then
		if not reason then
			playerData.reason = nil
		else
			if not playerData.reason then playerData.reason = {} end
			if reason == L["KOSReasonOther"] then
				if not other then 
					local dialog = StaticPopup_Show("Spy_SetKOSReasonOther", name)
					if dialog then
						dialog.playerName = name
					end
				else
					if other == "" then
						playerData.reason[L["KOSReasonOther"]] = nil
					else
						playerData.reason[L["KOSReasonOther"]] = other
					end
					Spy:RegenerateKOSCentralList(name)
				end
			else
				if playerData.reason[reason] then
					playerData.reason[reason] = nil
				else
					playerData.reason[reason] = true
				end
				Spy:RegenerateKOSCentralList(name)
			end
		end
	end
end

function Spy:AlertPlayer(player, source)
	local playerData = SpyPerCharDB.PlayerData[player]
	if SpyPerCharDB.KOSData[player] and Spy.db.profile.WarnOnKOS then
--		if Spy.db.profile.DisplayWarningsInErrorsFrame then
		if Spy.db.profile.DisplayWarnings == "ErrorFrame" then
			local text = Spy.db.profile.Colors.Warning["Warning Text"]
			local msg = L["KOSWarning"]..player
			UIErrorsFrame:AddMessage(msg, text.r, text.g, text.b, 1.0, UIERRORS_HOLD_TIME)
		else
			if source ~= nil and source ~= Spy.CharacterName then
				Spy:ShowAlert("kosaway", player, source, Spy:GetPlayerLocation(playerData))
			else
				local reasonText = ""
				if playerData.reason then
					for reason in pairs(playerData.reason) do
						if reasonText ~= "" then reasonText = reasonText..", " end
						if reason == L["KOSReasonOther"] then
							reasonText = reasonText..playerData.reason[reason]
						else
							reasonText = reasonText..reason
						end
					end
				end
				Spy:ShowAlert("kos", player, nil, reasonText)
			end
		end
		if Spy.db.profile.EnableSound then
			if source ~= nil and source ~= Spy.CharacterName then
				PlaySoundFile("Interface\\AddOns\\Spy\\Sounds\\detected-kosaway.mp3", Spy.db.profile.SoundChannel)
			else
				PlaySoundFile("Interface\\AddOns\\Spy\\Sounds\\detected-kos.mp3", Spy.db.profile.SoundChannel)
			end
		end
		if Spy.db.profile.ShareKOSBetweenCharacters then Spy:RegenerateKOSCentralList(player) end
	elseif Spy.db.profile.WarnOnKOSGuild then
		if playerData and playerData.guild and Spy.KOSGuild[playerData.guild] then
--			if Spy.db.profile.DisplayWarningsInErrorsFrame then
			if Spy.db.profile.DisplayWarnings == "ErrorFrame" then
				local text = Spy.db.profile.Colors.Warning["Warning Text"]
				local msg = L["KOSGuildWarning"].."<"..playerData.guild..">"
				UIErrorsFrame:AddMessage(msg, text.r, text.g, text.b, 1.0, UIERRORS_HOLD_TIME)				
			else
				if source ~= nil and source ~= Spy.CharacterName then
					Spy:ShowAlert("kosguildaway", "<"..playerData.guild..">", source, Spy:GetPlayerLocation(playerData))
				else
					Spy:ShowAlert("kosguild", "<"..playerData.guild..">")
				end
			end
			if Spy.db.profile.EnableSound then
				if source ~= nil and source ~= Spy.CharacterName then
					PlaySoundFile("Interface\\AddOns\\Spy\\Sounds\\detected-kosaway.mp3", Spy.db.profile.SoundChannel)
				else
					PlaySoundFile("Interface\\AddOns\\Spy\\Sounds\\detected-kosguild.mp3", Spy.db.profile.SoundChannel)
				end
			end
		else
			if Spy.db.profile.EnableSound and not Spy.db.profile.OnlySoundKoS then 
				if source == nil or source == Spy.CharacterName then
					if playerData and Spy.db.profile.WarnOnRace and playerData.race == Spy.db.profile.SelectWarnRace then --++
						PlaySoundFile("Interface\\AddOns\\Spy\\Sounds\\detected-race.mp3", Spy.db.profile.SoundChannel) 
					else
						PlaySoundFile("Interface\\AddOns\\Spy\\Sounds\\detected-nearby.mp3", Spy.db.profile.SoundChannel)
					end
				end
			end
		end 
	elseif Spy.db.profile.EnableSound and not Spy.db.profile.OnlySoundKoS then 
		if source == nil or source == Spy.CharacterName then
			if playerData and Spy.db.profile.WarnOnRace and playerData.race == Spy.db.profile.SelectWarnRace then
				PlaySoundFile("Interface\\AddOns\\Spy\\Sounds\\detected-race.mp3", Spy.db.profile.SoundChannel) 
			else
				PlaySoundFile("Interface\\AddOns\\Spy\\Sounds\\detected-nearby.mp3", Spy.db.profile.SoundChannel)
			end
		end
	elseif Spy.db.profile.EnableSound and not Spy.db.profile.OnlySoundKoS then
		if source == nil or source == Spy.CharacterName then
			PlaySoundFile("Interface\\AddOns\\Spy\\Sounds\\detected-nearby.mp3", Spy.db.profile.SoundChannel)
		end
	end
end

function Spy:AlertStealthPlayer(player)
	if Spy.db.profile.WarnOnStealth then
--		if Spy.db.profile.DisplayWarningsInErrorsFrame then
		if Spy.db.profile.DisplayWarnings == "ErrorFrame" then
			local text = Spy.db.profile.Colors.Warning["Warning Text"]
			local msg = L["StealthWarning"]..player
			UIErrorsFrame:AddMessage(msg, text.r, text.g, text.b, 1.0, UIERRORS_HOLD_TIME)
		else
			Spy:ShowAlert("stealth", player)
		end
		if Spy.db.profile.EnableSound then
			PlaySoundFile("Interface\\AddOns\\Spy\\Sounds\\detected-stealth.mp3", Spy.db.profile.SoundChannel)
		end
	end
end

function Spy:AlertProwlPlayer(player)
	if Spy.db.profile.WarnOnStealth then
--		if Spy.db.profile.DisplayWarningsInErrorsFrame then
		if Spy.db.profile.DisplayWarnings == "ErrorFrame" then
			local text = Spy.db.profile.Colors.Warning["Warning Text"]
			local msg = L["StealthWarning"]..player
			UIErrorsFrame:AddMessage(msg, text.r, text.g, text.b, 1.0, UIERRORS_HOLD_TIME)
		else
			Spy:ShowAlert("prowl", player)
		end
		if Spy.db.profile.EnableSound then
			PlaySoundFile("Interface\\AddOns\\Spy\\Sounds\\detected-stealth.mp3", Spy.db.profile.SoundChannel)
		end
	end
end

function Spy:AnnouncePlayer(player, channel)
	if not Spy_IgnoreList[player] then
		local msg = ""
		local isKOS = SpyPerCharDB.KOSData[player]
		local playerData = SpyPerCharDB.PlayerData[player]

		local announce = Spy.db.profile.Announce  
		if channel or announce == "Self" or announce == "LocalDefense" or (announce == "Guild" and GetGuildInfo("player") ~= nil and not Spy.InInstance) or (announce == "Party" and GetNumGroupMembers() > 0) or (announce == "Raid" and UnitInRaid("player")) then --++
			if announce == "Self" and not channel then
				if isKOS then
					msg = msg..L["SpySignatureColored"]..L["KillOnSightDetectedColored"]..player.." "
				else
					msg = msg..L["SpySignatureColored"]..L["PlayerDetectedColored"]..player.." "
				end
			else
				if isKOS then
					msg = msg..L["KillOnSightDetected"]..player.." "
				else
					msg = msg..L["PlayerDetected"]..player.." "
				end
			end
			if playerData then
				if playerData.guild and playerData.guild ~= "" then
					msg = msg.."<"..playerData.guild.."> "
				end
				if playerData.level or playerData.race or (playerData.class and playerData.class ~= "") then
					msg = msg.."- "
					if playerData.level and playerData.isGuess == false then
						msg = msg..L["Level"].." "..playerData.level.." "
					end
					if playerData.race and playerData.race ~= "" then
						msg = msg..playerData.race.." "
					end
					if playerData.class and playerData.class ~= "" then
						msg = msg..L[playerData.class].." "
					end
				end
				if playerData.zone then
					if playerData.subZone and playerData.subZone ~= "" and playerData.subZone ~= playerData.zone then
						msg = msg.."- "..playerData.subZone..", "..playerData.zone
					else
						msg = msg.."- "..playerData.zone
					end
				end
				if playerData.mapX and playerData.mapY then
					msg = msg.." ("..math.floor(tonumber(playerData.mapX) * 100)..","..math.floor(tonumber(playerData.mapY) * 100)..")"
				end
			end

			if channel then
				-- announce to selected channel
				if (channel == "PARTY" and GetNumGroupMembers() > 0) or (channel == "RAID" and UnitInRaid("player")) or (channel == "GUILD" and GetGuildInfo("player") ~= nil) then
					SendChatMessage(msg, channel)
				elseif channel == "LOCAL" then
					SendChatMessage(msg, "CHANNEL", nil, GetChannelName(L["LocalDefenseChannelName"].." - "..GetZoneText()))
				end
			else
				-- announce to standard channel
				if isKOS or not Spy.db.profile.OnlyAnnounceKoS then
					if announce == "Self" then
						DEFAULT_CHAT_FRAME:AddMessage(msg)
					elseif announce == "LocalDefense" then
						SendChatMessage(msg, "CHANNEL", nil, GetChannelName(L["LocalDefenseChannelName"].." - "..GetZoneText()))
					else
						SendChatMessage(msg, strupper(announce))
					end
				end
			end
		end

		-- announce to other Spy users
		if Spy.db.profile.ShareData then
			local class, level, race, zone, subZone, mapX, mapY, guild, mapID = "", "", "", "", "", "", "", "", ""
			if playerData then
				if playerData.class then class = playerData.class end
				if playerData.level and playerData.isGuess == false then level = playerData.level end
				if playerData.race then race = playerData.race end
				if playerData.zone then zone = playerData.zone end
				if playerData.mapID then mapID = playerData.mapID end
				if playerData.subZone then subZone = playerData.subZone end
				if playerData.mapX then mapX = playerData.mapX end
				if playerData.mapY then mapY = playerData.mapY end
				if playerData.guild then guild = playerData.guild end
			end
			local details = Spy.Version.."|"..player.."|"..class.."|"..level.."|"..race.."|"..zone.."|"..subZone.."|"..mapX.."|"..mapY.."|"..guild.."|"..mapID
			if strlen(details) < 240 then
				if channel then
					if (channel == "PARTY" and GetNumGroupMembers() > 0) or (channel == "RAID" and UnitInRaid("player")) or (channel == "GUILD" and GetGuildInfo("player") ~= nil) then
						Spy:SendCommMessage(Spy.Signature, details, channel)
					end
				else
					if GetNumGroupMembers() > 0 then
						Spy:SendCommMessage(Spy.Signature, details, "PARTY")
					end
					if UnitInRaid("player") then
						Spy:SendCommMessage(Spy.Signature, details, "RAID")
					end
					if Spy.InInstance == false and GetGuildInfo("player") ~= nil then
						Spy:SendCommMessage(Spy.Signature, details, "GUILD")
					end
				end
			end
		end
	end	
end

function Spy:SendKoStoGuild(player)
	local playerData = SpyPerCharDB.PlayerData[player]
	local class, level, race, zone, subZone, mapX, mapY, guild, mapID = "", "", "", "", "", "", "", "", ""	 			
	if playerData then
		if playerData.class then class = playerData.class end
		if playerData.level and playerData.isGuess == false then level = playerData.level end
		if playerData.race then race = playerData.race end
		if playerData.zone then zone = playerData.zone end
		if playerData.mapID then mapID = playerData.mapID end
		if playerData.subZone then subZone = playerData.subZone end
		if playerData.mapX then mapX = playerData.mapX end
		if playerData.mapY then mapY = playerData.mapY end
		if playerData.guild then guild = playerData.guild end
	end
	local details = Spy.Version.."|"..player.."|"..class.."|"..level.."|"..race.."|"..zone.."|"..subZone.."|"..mapX.."|"..mapY.."|"..guild.."|"..mapID
	if strlen(details) < 240 then
		if Spy.InInstance == false and GetGuildInfo("player") ~= nil then
			Spy:SendCommMessage(Spy.Signature, details, "GUILD")
		end
	end
end

function Spy:ToggleIgnorePlayer(ignore, player)
	if ignore then
		Spy:AddIgnoreData(player)
		Spy:RemoveKOSData(player)
		if Spy.db.profile.EnableSound then
			PlaySoundFile("Interface\\AddOns\\Spy\\Sounds\\list-add.mp3", Spy.db.profile.SoundChannel)
		end
		DEFAULT_CHAT_FRAME:AddMessage(L["SpySignatureColored"]..L["PlayerAddedToIgnoreColored"]..player)
	else
		Spy:RemoveIgnoreData(player)
		if Spy.db.profile.EnableSound then
			PlaySoundFile("Interface\\AddOns\\Spy\\Sounds\\list-remove.mp3", Spy.db.profile.SoundChannel)
		end
		DEFAULT_CHAT_FRAME:AddMessage(L["SpySignatureColored"]..L["PlayerRemovedFromIgnoreColored"]..player)
	end
	Spy:RegenerateKOSGuildList()
	if Spy.db.profile.ShareKOSBetweenCharacters then
		Spy:RegenerateKOSCentralList()
	end
	Spy:RefreshCurrentList()
end

function Spy:ToggleKOSPlayer(kos, player)
	if kos then
		Spy:AddKOSData(player)
		Spy:RemoveIgnoreData(player)
		if player ~= SpyPerCharDB.PlayerData[name] then
--			Spy:UpdatePlayerData(player, nil, nil, nil, nil, nil, true, nil, nil)
			Spy:UpdatePlayerStatus(player, nil, nil, nil, nil, nil, true, nil, nil)
			SpyPerCharDB.PlayerData[player].kos = 1
		end	
		if Spy.db.profile.EnableSound then
			PlaySoundFile("Interface\\AddOns\\Spy\\Sounds\\list-add.mp3", Spy.db.profile.SoundChannel)
		end
		DEFAULT_CHAT_FRAME:AddMessage(L["SpySignatureColored"]..L["PlayerAddedToKOSColored"]..player)
	else
		Spy:RemoveKOSData(player)
		if Spy.db.profile.EnableSound then
			PlaySoundFile("Interface\\AddOns\\Spy\\Sounds\\list-remove.mp3", Spy.db.profile.SoundChannel)
		end
		DEFAULT_CHAT_FRAME:AddMessage(L["SpySignatureColored"]..L["PlayerRemovedFromKOSColored"]..player)
	end
	Spy:RegenerateKOSGuildList()
	if Spy.db.profile.ShareKOSBetweenCharacters then
		Spy:RegenerateKOSCentralList()
	end
	Spy:RefreshCurrentList()
end

function Spy:PurgeUndetectedData()
	local secondsPerDay = 60 * 60 * 24
	local timeout = 90 * secondsPerDay
	if Spy.db.profile.PurgeData == "OneDay" then
		timeout = secondsPerDay
	elseif Spy.db.profile.PurgeData == "FiveDays" then
		timeout = 5 * secondsPerDay
	elseif Spy.db.profile.PurgeData == "TenDays" then
		timeout = 10 * secondsPerDay
	elseif Spy.db.profile.PurgeData == "ThirtyDays" then
		timeout = 30 * secondsPerDay
	elseif Spy.db.profile.PurgeData == "SixtyDays" then
		timeout = 60 * secondsPerDay
	elseif Spy.db.profile.PurgeData == "NinetyDays" then
		timeout = 90 * secondsPerDay
	end

	-- remove expired players held in character data
	local currentTime = time()
	for player in pairs(SpyPerCharDB.PlayerData) do
		local playerData = SpyPerCharDB.PlayerData[player]
		if Spy.db.profile.PurgeWinLossData then
--			if not playerData.time or (currentTime - playerData.time) > timeout or not playerData.isEnemy then
			if not playerData.time or (currentTime - playerData.time) > timeout then
				Spy:RemoveIgnoreData(player)
				Spy:RemoveKOSData(player)
				SpyPerCharDB.PlayerData[player] = nil
			end
		else
			if ((playerData.loses == nil) and (playerData.wins == nil)) then
--				if not playerData.time or (currentTime - playerData.time) > timeout or not playerData.isEnemy then
				if not playerData.time or (currentTime - playerData.time) > timeout then
					Spy:RemoveIgnoreData(player)
					if Spy.db.profile.PurgeKoS then
						Spy:RemoveKOSData(player)
						SpyPerCharDB.PlayerData[player] = nil
					else
						if (playerData.kos == nil) then
							SpyPerCharDB.PlayerData[player] = nil
						end	
					end	
				end
			end
		end
	end
	
	-- remove expired kos players held in central data
	local kosData = SpyDB.kosData[Spy.RealmName][Spy.FactionName]
	for characterName in pairs(kosData) do
		local characterKosData = kosData[characterName]
		for player in pairs(characterKosData) do
			local kosPlayerData = characterKosData[player]
			if Spy.db.profile.PurgeKoS then
				if not kosPlayerData.time or (currentTime - kosPlayerData.time) > timeout or not kosPlayerData.isEnemy then
					SpyDB.kosData[Spy.RealmName][Spy.FactionName][characterName][player] = nil
					SpyDB.removeKOSData[Spy.RealmName][Spy.FactionName][player] = nil
				end
			end
		end
	end
	if not Spy.db.profile.AppendUnitNameCheck then 	
		Spy:AppendUnitNames() end
	if not Spy.db.profile.AppendUnitKoSCheck then
		Spy:AppendUnitKoS() end
end

function Spy:RegenerateKOSGuildList()
	Spy.KOSGuild = {}
	for player in pairs(SpyPerCharDB.KOSData) do
		local playerData = SpyPerCharDB.PlayerData[player]
		if playerData and playerData.guild then
			Spy.KOSGuild[playerData.guild] = true
		end
	end
end

function Spy:RemoveLocalKOSPlayers()
	for player in pairs(SpyPerCharDB.KOSData) do
		if SpyDB.removeKOSData[Spy.RealmName][Spy.FactionName][player] then
			Spy:RemoveKOSData(player)
		end
	end
end

function Spy:RegenerateKOSCentralList(player)
	if player then
		local playerData = SpyPerCharDB.PlayerData[player]
		SpyDB.kosData[Spy.RealmName][Spy.FactionName][Spy.CharacterName][player] = {}
		if playerData then
			SpyDB.kosData[Spy.RealmName][Spy.FactionName][Spy.CharacterName][player] = playerData
		end
		SpyDB.kosData[Spy.RealmName][Spy.FactionName][Spy.CharacterName][player].added = SpyPerCharDB.KOSData[player]
	else
		for player in pairs(SpyPerCharDB.KOSData) do
			local playerData = SpyPerCharDB.PlayerData[player]
			SpyDB.kosData[Spy.RealmName][Spy.FactionName][Spy.CharacterName][player] = {}
			if playerData then
				SpyDB.kosData[Spy.RealmName][Spy.FactionName][Spy.CharacterName][player] = playerData
			end
			SpyDB.kosData[Spy.RealmName][Spy.FactionName][Spy.CharacterName][player].added = SpyPerCharDB.KOSData[player]
		end
	end
end

function Spy:RegenerateKOSListFromCentral()
	local kosData = SpyDB.kosData[Spy.RealmName][Spy.FactionName]
	for characterName in pairs(kosData) do
		if characterName ~= Spy.CharacterName then
			local characterKosData = kosData[characterName]
			for player in pairs(characterKosData) do
				if not SpyDB.removeKOSData[Spy.RealmName][Spy.FactionName][player] then
					local playerData = SpyPerCharDB.PlayerData[player]
					if not playerData then
						playerData = Spy:AddPlayerData(player, class, level, race, guild, faction, isEnemy, isGuess, rank)
					end
					local kosPlayerData = characterKosData[player]
					if kosPlayerData.time and (not playerData.time or (playerData.time and playerData.time < kosPlayerData.time)) then
						playerData.time = kosPlayerData.time
						if kosPlayerData.class then
							playerData.class = kosPlayerData.class
						end
						if type(kosPlayerData.level) == "number" and (type(playerData.level) ~= "number" or playerData.level < kosPlayerData.level) then
							playerData.level = kosPlayerData.level
						end
						if kosPlayerData.race then
							playerData.race = kosPlayerData.race
						end
						if kosPlayerData.guild then
							playerData.guild = kosPlayerData.guild
						end
						if kosPlayerData.faction then
							playerData.faction = kosPlayerData.faction
						end
						if kosPlayerData.isEnemy then
							playerData.isEnemy = kosPlayerData.isEnemy
						end
						if kosPlayerData.isGuess then
							playerData.isGuess = kosPlayerData.isGuess
						end
						if type(kosPlayerData.wins) == "number" and (type(playerData.wins) ~= "number" or playerData.wins < kosPlayerData.wins) then
							playerData.wins = kosPlayerData.wins
						end
						if type(kosPlayerData.loses) == "number" and (type(playerData.loses) ~= "number" or playerData.loses < kosPlayerData.loses) then
							playerData.loses = kosPlayerData.loses
						end
						if kosPlayerData.mapX then
							playerData.mapX = kosPlayerData.mapX
						end
						if kosPlayerData.mapY then
							playerData.mapY = kosPlayerData.mapY
						end
						if kosPlayerData.zone then
							playerData.zone = kosPlayerData.zone
						end
						if kosPlayerData.mapID then
							playerData.mapID = kosPlayerData.mapID
						end
						if kosPlayerData.subZone then
							playerData.subZone = kosPlayerData.subZone
						end
						if kosPlayerData.reason then
							playerData.reason = {}
							for reason in pairs(kosPlayerData.reason) do
								playerData.reason[reason] = kosPlayerData.reason[reason]
							end
						end
					end
					local characterKOSPlayerData = SpyPerCharDB.KOSData[player]
					if kosPlayerData.added and (not characterKOSPlayerData or characterKOSPlayerData < kosPlayerData.added) then
						SpyPerCharDB.KOSData[player] = kosPlayerData.added
					end
				end
			end
		end
	end
end

function Spy:ButtonClicked(self, button)
	local name = Spy.ButtonName[self.id]
	if name and name ~= "" then
		if button == "LeftButton" then
			if IsShiftKeyDown() then
				if SpyPerCharDB.KOSData[name] then
					Spy:ToggleKOSPlayer(false, name)
				else
					Spy:ToggleKOSPlayer(true, name)
				end
			elseif IsControlKeyDown() then
				if SpyPerCharDB.IgnoreData[name] then
					Spy:ToggleIgnorePlayer(false, name)
				else
					Spy:ToggleIgnorePlayer(true, name)
				end
			else
				if not InCombatLockdown() then
					self:SetAttribute("macrotext", "/targetexact "..name)
				end
			end
		elseif button == "RightButton" then
			Spy:BarDropDownOpen(self)
			CloseDropDownMenus(1)
			ToggleDropDownMenu(1, nil, Spy_BarDropDownMenu)
		end
	end
end

function Spy:ParseMinimapTooltip(tooltip)
	local newTooltip = ""
	local newLine = false
	for text in string.gmatch(tooltip, "[^\n]*") do
		local name = text
		if string.len(text) > 0 then
			if strsub(text, 1, 2) == "|T" then
			name = strtrim(gsub(gsub(text, "|T.-|t", ""), "|r", ""))
			end
			local playerData = SpyPerCharDB.PlayerData[name]
			if not playerData then
				for index, v in pairs(Spy.LastHourList) do
					local realmSeparator = strfind(index, "-")
					if realmSeparator and realmSeparator > 1 and strsub(index, 1, realmSeparator - 1) == strsub(name, 1, realmSeparator - 1) then
						playerData = SpyPerCharDB.PlayerData[index]
						break
					end
				end
			end
			if playerData and playerData.isEnemy then
				local desc = ""
				if playerData.class and playerData.level then
					desc = L["MinimapClassText"..playerData.class].." ["..playerData.level.." "..L[playerData.class].."]|r"
				elseif playerData.class then
					desc = L["MinimapClassText"..playerData.class].." ["..L[playerData.class].."]|r"
				elseif playerData.level then
					desc = " ["..playerData.level.."]|r"
				end
				if (newTooltip and desc == "") then
					newTooltip = text 
				elseif (newTooltip == "") then	
					newTooltip = text.."|r"..desc
				else
					newTooltip = newTooltip.."\r"..text.."|r"..desc
				end	
				if not SpyPerCharDB.IgnoreData[name] and not Spy.InInstance then
					local detected = Spy:UpdatePlayerData(name, nil, nil, nil, nil, nil, true, nil, nil)
					if detected and Spy.db.profile.MinimapDetection then
						Spy:AddDetected(name, time(), false)
					end
				end
			else
				if (newTooltip == "") then
					newTooltip = text
				else	
					newTooltip = newTooltip.."\n"..text
				end
			end
			newLine = false
		elseif not newLine then
			newTooltip = newTooltip
			newLine = true
		end
	end
	return newTooltip
end

function Spy:ParseUnitAbility(analyseSpell, event, player, class, race, spellId, spellName)
	local learnt = false
	if player then
--		local class = nil
		local level = nil
--		local race = nil
		local isEnemy = true
		local isGuess = true

		local playerData = SpyPerCharDB.PlayerData[player]
		if not playerData or playerData.isEnemy == nil then
			learnt = true
		end

		if analyseSpell then
			local abilityType = strsub(event, 1, 5)
			if abilityType == "SWING" or abilityType == "SPELL" or abilityType == "RANGE" then
--				local ability = Spy_AbilityList[spellName]
				local ability = Spy_AbilityList[spellId]
				if ability then
					if class == nil then
						if ability.class and not (playerData and playerData.class) then
							class = ability.class
							learnt = true
						end
					end
					if ability.level then
						local playerLevelNumber = nil
						if playerData and playerData.level then
							playerLevelNumber = tonumber(playerData.level)
						end
						if type(playerLevelNumber) ~= "number" or playerLevelNumber < ability.level then
							level = ability.level
							learnt = true
						end
					end
					if race == nil then
						if ability.race and not (playerData and playerData.race) then
							race = ability.race
							learnt = true
						end
					end	
				else	
--					print(spellId, " - ", spellName)
				end
				if class and race and level == Spy.MaximumPlayerLevel then
					isGuess = false
					learnt = true
				end
			end
		end

		Spy:UpdatePlayerData(player, class, level, race, nil, nil, isEnemy, isGuess)
		return learnt, playerData
	end
	return learnt, nil
end

function Spy:ParseUnitDetails(player, class, level, race, zone, subZone, mapX, mapY, guild, mapID)
	if player then
		local playerData = SpyPerCharDB.PlayerData[player]
		if not playerData then
			playerData = Spy:AddPlayerData(player, class, level, race, guild, nil, true, true)
		else
			if not playerData.class then playerData.class = class end
			if level then
				local levelNumber = tonumber(level)
				if type(levelNumber) == "number" then
					if playerData.level then
						local playerLevelNumber = tonumber(playerData.level)
						if type(playerLevelNumber) == "number" and playerLevelNumber < levelNumber then playerData.level = levelNumber end
					else
						playerData.level = levelNumber
					end
				end
			end
			if not playerData.race then
				playerData.race = race
			end
			if not playerData.guild then
				playerData.guild = guild
			end
		end
		playerData.isEnemy = true
		playerData.time = time()
		playerData.zone = zone
		playerData.mapID = mapID
		playerData.subZone = subZone
		playerData.mapX = mapX
		playerData.mapY = mapY

		return true, playerData
	end
	return true, nil
end

function Spy:AddDetected(player, timestamp, learnt, source)
	if Spy.db.profile.StopAlertsOnTaxi then
		if not UnitOnTaxi("player") then 
			Spy:AddDetectedToLists(player, timestamp, learnt, source)
		end
	else
		Spy:AddDetectedToLists(player, timestamp, learnt, source)
	end
--[[if Spy.db.profile.ShowOnlyPvPFlagged then
		if UnitIsPVP("target") then
			Spy:AddDetectedToLists(player, timestamp, learnt, source)
		end	
	else
		Spy:AddDetectedToLists(player, timestamp, learnt, source)
	end ]]--
end

function Spy:AddDetectedToLists(player, timestamp, learnt, source)
	if not Spy.NearbyList[player] then
		if Spy.db.profile.ShowOnDetection and not Spy.db.profile.MainWindowVis then
			Spy:SetCurrentList(1)
			Spy:EnableSpy(true, true, true)
		end
		if Spy.db.profile.CurrentList ~= 1 and Spy.db.profile.MainWindowVis and Spy.db.profile.ShowNearbyList then
			Spy:SetCurrentList(1)
		end

		if source and source ~= Spy.CharacterName and not Spy.ActiveList[player] then
			Spy.NearbyList[player] = timestamp
			Spy.LastHourList[player] = timestamp
			Spy.InactiveList[player] = timestamp
		else
			Spy.NearbyList[player] = timestamp
			Spy.LastHourList[player] = timestamp
			Spy.ActiveList[player] = timestamp
			Spy.InactiveList[player] = nil
		end

		if Spy.db.profile.CurrentList == 1 then
			Spy:RefreshCurrentList(player, source)
			Spy:UpdateActiveCount()			
		else
			if not source or source ~= Spy.CharacterName then
				Spy:AlertPlayer(player, source)
				if not source then Spy:AnnouncePlayer(player) end
			end
		end
	elseif not Spy.ActiveList[player] then
		if Spy.db.profile.ShowOnDetection and not Spy.db.profile.MainWindowVis then
			Spy:SetCurrentList(1)
			Spy:EnableSpy(true, true, true)
		end
		if Spy.db.profile.CurrentList ~= 1 and Spy.db.profile.MainWindowVis and Spy.db.profile.ShowNearbyList then
			Spy:SetCurrentList(1)
		end

		Spy.LastHourList[player] = timestamp
		Spy.ActiveList[player] = timestamp
		Spy.InactiveList[player] = nil

		if Spy.PlayerCommList[player] ~= nil then
			if Spy.db.profile.CurrentList == 1 then
				Spy:RefreshCurrentList(player, source)
			else
				if not source or source ~= Spy.CharacterName then
					Spy:AlertPlayer(player, source)
					if not source then Spy:AnnouncePlayer(player) end
				end
			end
		else
			if Spy.db.profile.CurrentList == 1 then
				Spy:RefreshCurrentList()
				Spy:UpdateActiveCount()
			end
		end
	else
		Spy.ActiveList[player] = timestamp
		Spy.LastHourList[player] = timestamp
		if learnt and Spy.db.profile.CurrentList == 1 then
			Spy:RefreshCurrentList()
			Spy:UpdateActiveCount()
		end
	end
end

function Spy:AppendUnitNames()
	for key, unit in pairs(SpyPerCharDB.PlayerData) do	
		-- find any units without a name
		if not unit.name then
			local name = key
		-- if unit.name does not exist update info
			if (not unit.name) and name then
				unit.name = key
			end
		end
    end
	-- set profile so it only runs once
	Spy.db.profile.AppendUnitNameCheck=true
end

function Spy:AppendUnitKoS()
	for kosName, value in pairs(SpyPerCharDB.KOSData) do
		if kosName then	
			local playerData = SpyPerCharDB.PlayerData[kosName]
			if not playerData then 
				Spy:UpdatePlayerData(kosName, nil, nil, nil, nil, nil, true, nil, nil) 
				SpyPerCharDB.PlayerData[kosName].kos = 1
				SpyPerCharDB.PlayerData[kosName].time = value
			end
		end
    end
	-- set profile so it only runs once
	Spy.db.profile.AppendUnitKoSCheck=true
end

Spy.ListTypes = {
	{L["Nearby"], Spy.ManageNearbyList, Spy.ManageNearbyListExpirations},
	{L["LastHour"], Spy.ManageLastHourList, Spy.ManageLastHourListExpirations},
	{L["Ignore"], Spy.ManageIgnoreList},
	{L["KillOnSight"], Spy.ManageKillOnSightList},
}
Spy_AbilityList = {
--++ Racial Traits ++	
	[20580]={ race = "Night Elf", level = 1, },
	[20572]={ race = "Orc", level = 1, },
	[7744]={ race = "Undead", level = 1, },
	[20594]={ race = "Dwarf", level = 1, },
	[20554]={ race = "Troll", level = 1, },
	[20573]={ race = "Orc", level = 1, },
	[20597]={ race = "Human", level = 1, },
	[20589]={ race = "Gnome", level = 1, },
	[26297]={ race = "Troll", level = 1, },
	[20598]={ race = "Human", level = 1, },
	[20591]={ race = "Gnome", level = 1, },
	[26296]={ race = "Troll", level = 1, },
	[20555]={ race = "Troll", level = 1, },
	[20600]={ race = "Human", level = 1, },
	[20550]={ race = "Tauren", level = 1, },
	[26290]={ race = "Troll", level = 1, },
	[20552]={ race = "Tauren", level = 1, },
	[20593]={ race = "Gnome", level = 1, },
	[20557]={ race = "Troll", level = 1, },
	[2481]={ race = "Dwarf", level = 1, },
	[20574]={ race = "Orc", level = 1, },
	[20577]={ race = "Undead", level = 1, },
	[20599]={ race = "Human", level = 1, },
	[20582]={ race = "Night Elf", level = 1, },
	[20558]={ race = "Troll", level = 1, },
	[20864]={ race = "Human", level = 1, },
	[20595]={ race = "Dwarf", level = 1, },
	[5227]={ race = "Undead", level = 1, },
	[20575]={ race = "Orc", level = 1, },
	[20583]={ race = "Night Elf", level = 1, },
	[20596]={ race = "Dwarf", level = 1, },
	[20579]={ race = "Undead", level = 1, },
	[20592]={ race = "Gnome", level = 1, },
	[20551]={ race = "Tauren", level = 1, },
	[20585]={ race = "Night Elf", level = 1, },
--++ Druid Abilities ++	
	[5185]={ class = "DRUID", level = 1, },
   	[5176]={ class = "DRUID", level = 1, },
	[5177]={ class = "DRUID", level = 6, },
	[5186]={ class = "DRUID", level = 8, },
	[5487]={ class = "DRUID", level = 10, },
	[16870]={ class = "DRUID", level = 10, },
	[6795]={ class = "DRUID", level = 10, },
	[6807]={ class = "DRUID", level = 10, },
	[18960]={ class = "DRUID", level = 10, },
	[5229]={ class = "DRUID", level = 12, },
	[8946]={ class = "DRUID", level = 14, },
	[5187]={ class = "DRUID", level = 14, },
	[5178]={ class = "DRUID", level = 14, },
	[1066]={ class = "DRUID", level = 16, },
	[779]={ class = "DRUID", level = 16, },
	[6808]={ class = "DRUID", level = 18, },
	[16810]={ class = "DRUID", level = 18, },
	[768]={ class = "DRUID", level = 20, },
	[1082]={ class = "DRUID", level = 20, },
	[5188]={ class = "DRUID", level = 20, },
	[5215]={ class = "DRUID", level = 20, },
	[20484]={ class = "DRUID", level = 20, },
	[2912]={ class = "DRUID", level = 20, },
	[5221]={ class = "DRUID", level = 22, },
	[2908]={ class = "DRUID", level = 22, },
	[5179]={ class = "DRUID", level = 22, },
	[2782]={ class = "DRUID", level = 24, },
	[780]={ class = "DRUID", level = 24, },
	[5217]={ class = "DRUID", level = 24, },
	[2893]={ class = "DRUID", level = 26, },
	[1850]={ class = "DRUID", level = 26, },
	[5189]={ class = "DRUID", level = 26, },
	[6809]={ class = "DRUID", level = 26, },
	[8949]={ class = "DRUID", level = 26, },
	[3029]={ class = "DRUID", level = 28, },
	[8998]={ class = "DRUID", level = 28, },
	[16811]={ class = "DRUID", level = 28, },
	[20739]={ class = "DRUID", level = 30, },
	[6800]={ class = "DRUID", level = 30, },
	[783]={ class = "DRUID", level = 30, },
	[5180]={ class = "DRUID", level = 30, },
	[22568]={ class = "DRUID", level = 32, },
	[6778]={ class = "DRUID", level = 32, },
	[6785]={ class = "DRUID", level = 32, },
	[5225]={ class = "DRUID", level = 32, },
	[8972]={ class = "DRUID", level = 34, },
	[8950]={ class = "DRUID", level = 34, },
	[769]={ class = "DRUID", level = 34, },
	[22842]={ class = "DRUID", level = 36, },
	[6793]={ class = "DRUID", level = 36, },
	[5201]={ class = "DRUID", level = 38, },
	[8903]={ class = "DRUID", level = 38, },
	[16812]={ class = "DRUID", level = 38, },
	[8992]={ class = "DRUID", level = 38, },
	[8955]={ class = "DRUID", level = 38, },
	[6780]={ class = "DRUID", level = 38, },
	[9000]={ class = "DRUID", level = 40, },
	[9634]={ class = "DRUID", level = 40, },
	[22827]={ class = "DRUID", level = 40, },
	[6783]={ class = "DRUID", level = 40, },
	[20742]={ class = "DRUID", level = 40, },
	[9745]={ class = "DRUID", level = 42, },
	[6787]={ class = "DRUID", level = 42, },
	[8951]={ class = "DRUID", level = 42, },
	[22812]={ class = "DRUID", level = 44, },
	[22839]={ class = "DRUID", level = 44, },
	[9758]={ class = "DRUID", level = 44, },
	[9754]={ class = "DRUID", level = 44, },
	[9821]={ class = "DRUID", level = 46, },
	[22895]={ class = "DRUID", level = 46, },
	[9829]={ class = "DRUID", level = 46, },
	[8905]={ class = "DRUID", level = 46, },
	[9849]={ class = "DRUID", level = 48, },
	[22828]={ class = "DRUID", level = 48, },
	[16813]={ class = "DRUID", level = 48, },
	[9845]={ class = "DRUID", level = 48, },
	[9888]={ class = "DRUID", level = 50, },
	[9880]={ class = "DRUID", level = 50, },
	[9866]={ class = "DRUID", level = 50, },
	[20747]={ class = "DRUID", level = 50, },
	[9875]={ class = "DRUID", level = 50, },
	[9892]={ class = "DRUID", level = 52, },
	[9830]={ class = "DRUID", level = 54, },
	[9901]={ class = "DRUID", level = 54, },
	[9908]={ class = "DRUID", level = 54, },
	[9912]={ class = "DRUID", level = 54, },
	[22829]={ class = "DRUID", level = 56, },
	[22896]={ class = "DRUID", level = 56, },
	[9889]={ class = "DRUID", level = 56, },
	[9850]={ class = "DRUID", level = 58, },
	[9881]={ class = "DRUID", level = 58, },
	[17329]={ class = "DRUID", level = 58, },
	[9867]={ class = "DRUID", level = 58, },
	[9876]={ class = "DRUID", level = 58, },
	[31018]={ class = "DRUID", level = 60, },
	[25297]={ class = "DRUID", level = 60, },
	[9913]={ class = "DRUID", level = 60, },
	[20748]={ class = "DRUID", level = 60, },
	[25298]={ class = "DRUID", level = 60, },
	[9846]={ class = "DRUID", level = 60, },
--++ Druid Talents ++	
	[17056]={ class = "DRUID", level = 10, },
	[16689]={ class = "DRUID", level = 10, },
	[16864]={ class = "DRUID", level = 20, },
	[16880]={ class = "DRUID", level = 30, },
	[17116]={ class = "DRUID", level = 30, },
	[24858]={ class = "DRUID", level = 40, },
	[18562]={ class = "DRUID", level = 40, },
--++ Hunter Abilities ++	
	[23989]={ class = "HUNTER", level = 1, },
	[75]={ class = "HUNTER", level = 1, },
	[2973]={ class = "HUNTER", level = 1, },
	[1494]={ class = "HUNTER", level = 1, },
	[13163]={ class = "HUNTER", level = 4, },
	[3044]={ class = "HUNTER", level = 6, },
	[14260]={ class = "HUNTER", level = 8, },
	[13165]={ class = "HUNTER", level = 10, },
	[883]={ class = "HUNTER", level = 10, },
	[2641]={ class = "HUNTER", level = 10, },
	[6991]={ class = "HUNTER", level = 10, },
	[982]={ class = "HUNTER", level = 10, },
	[1515]={ class = "HUNTER", level = 10, },
	[19883]={ class = "HUNTER", level = 10, },
	[14281]={ class = "HUNTER", level = 12, },
	[20736]={ class = "HUNTER", level = 12, },
	[136]={ class = "HUNTER", level = 12, },
	[6197]={ class = "HUNTER", level = 14, },
	[1002]={ class = "HUNTER", level = 14, },
	[13795]={ class = "HUNTER", level = 16, },
	[1495]={ class = "HUNTER", level = 16, },
	[14261]={ class = "HUNTER", level = 16, },
	[14318]={ class = "HUNTER", level = 18, },
	[2643]={ class = "HUNTER", level = 18, },
	[19884]={ class = "HUNTER", level = 18, },
	[14282]={ class = "HUNTER", level = 20, },
	[5118]={ class = "HUNTER", level = 20, },
	[781]={ class = "HUNTER", level = 20, },
	[14274]={ class = "HUNTER", level = 20, },
	[1499]={ class = "HUNTER", level = 20, },
	[3111]={ class = "HUNTER", level = 20, },
	[1462]={ class = "HUNTER", level = 24, },
	[14262]={ class = "HUNTER", level = 24, },
	[19885]={ class = "HUNTER", level = 24, },
	[14302]={ class = "HUNTER", level = 26, },
	[3045]={ class = "HUNTER", level = 26, },
	[19880]={ class = "HUNTER", level = 26, },
	[20900]={ class = "HUNTER", level = 28, },
	[14283]={ class = "HUNTER", level = 28, },
	[14319]={ class = "HUNTER", level = 28, },
	[13809]={ class = "HUNTER", level = 28, },
	[3661]={ class = "HUNTER", level = 28, },
	[13161]={ class = "HUNTER", level = 30, },
	[15629]={ class = "HUNTER", level = 30, },
	[5384]={ class = "HUNTER", level = 30, },
	[14269]={ class = "HUNTER", level = 30, },
	[14288]={ class = "HUNTER", level = 30, },
	[1543]={ class = "HUNTER", level = 32, },
	[14263]={ class = "HUNTER", level = 32, },
	[19878]={ class = "HUNTER", level = 32, },
	[14272]={ class = "HUNTER", level = 34, },
	[13813]={ class = "HUNTER", level = 34, },
	[20901]={ class = "HUNTER", level = 36, },
	[14284]={ class = "HUNTER", level = 36, },
	[14303]={ class = "HUNTER", level = 36, },
	[3662]={ class = "HUNTER", level = 36, },
	[14320]={ class = "HUNTER", level = 38, },
	[15630]={ class = "HUNTER", level = 40, },
	[14310]={ class = "HUNTER", level = 40, },
	[14264]={ class = "HUNTER", level = 40, },
	[19882]={ class = "HUNTER", level = 40, },
	[1510]={ class = "HUNTER", level = 40, },
	[14289]={ class = "HUNTER", level = 42, },
	[20902]={ class = "HUNTER", level = 44, },
	[14285]={ class = "HUNTER", level = 44, },
	[14316]={ class = "HUNTER", level = 44, },
	[13542]={ class = "HUNTER", level = 44, },
	[14270]={ class = "HUNTER", level = 44, },
	[20043]={ class = "HUNTER", level = 46, },
	[14304]={ class = "HUNTER", level = 46, },
	[14321]={ class = "HUNTER", level = 48, },
	[14273]={ class = "HUNTER", level = 48, },
	[14265]={ class = "HUNTER", level = 48, },
	[15631]={ class = "HUNTER", level = 50, },
	[19879]={ class = "HUNTER", level = 50, },
	[14294]={ class = "HUNTER", level = 50, },
	[20903]={ class = "HUNTER", level = 52, },
	[14286]={ class = "HUNTER", level = 52, },
	[13543]={ class = "HUNTER", level = 52, },
	[14317]={ class = "HUNTER", level = 54, },
	[14290]={ class = "HUNTER", level = 54, },
	[20190]={ class = "HUNTER", level = 56, },
	[14305]={ class = "HUNTER", level = 56, },
	[14266]={ class = "HUNTER", level = 56, },
	[14322]={ class = "HUNTER", level = 58, },
	[14271]={ class = "HUNTER", level = 58, },
	[14295]={ class = "HUNTER", level = 58, },
	[20904]={ class = "HUNTER", level = 60, },
	[14287]={ class = "HUNTER", level = 60, },
	[25296]={ class = "HUNTER", level = 60, },
	[15632]={ class = "HUNTER", level = 60, },
	[14311]={ class = "HUNTER", level = 60, },
	[13544]={ class = "HUNTER", level = 60, },
	[25294]={ class = "HUNTER", level = 60, },
	[19801]={ class = "HUNTER", level = 60, },
	[24352]={ class = "HUNTER", level = 50, },
	[23578]={ class = "HUNTER", level = 60, },
--++ Hunter Talents ++	
	[6150]={ class = "HUNTER ", level = 10, },
	[19434]={ class = "HUNTER", level = 20, },
	[19263]={ class = "HUNTER", level = 20, },
	[19574]={ class = "HUNTER", level = 40, },
--++ Mage Abilities ++	
	[168]={ class = "MAGE", level = 1, },
	[5504]={ class = "MAGE", level = 4, },
	[2136]={ class = "MAGE", level = 6, },
	[587]={ class = "MAGE", level = 6, },
	[5143]={ class = "MAGE", level = 8, },
	[12536]={ class = "MAGE", level = 10, },
	[7300]={ class = "MAGE", level = 10, },
	[5505]={ class = "MAGE", level = 10, },
	[130]={ class = "MAGE", level = 12, },
	[597]={ class = "MAGE", level = 12, },
	[1449]={ class = "MAGE", level = 14, },
	[2137]={ class = "MAGE", level = 14, },
	[5144]={ class = "MAGE", level = 16, },
	[2855]={ class = "MAGE", level = 16, },
	[475]={ class = "MAGE", level = 18, },
	[1953]={ class = "MAGE", level = 20, },
	[12051]={ class = "MAGE", level = 20, },
	[543]={ class = "MAGE", level = 20, },
	[7301]={ class = "MAGE", level = 20, },
	[1463]={ class = "MAGE", level = 20, },
	[3562]={ class = "MAGE", level = 20, },
	[3567]={ class = "MAGE", level = 20, },
	[3561]={ class = "MAGE", level = 20, },
	[3563]={ class = "MAGE", level = 20, },
	[5506]={ class = "MAGE", level = 20, },
	[8437]={ class = "MAGE", level = 22, },
	[2138]={ class = "MAGE", level = 22, },
	[6143]={ class = "MAGE", level = 22, },
	[2948]={ class = "MAGE", level = 22, },
	[990]={ class = "MAGE", level = 22, },
	[5145]={ class = "MAGE", level = 24, },
	[2139]={ class = "MAGE", level = 24, },
	[8494]={ class = "MAGE", level = 28, },
	[8444]={ class = "MAGE", level = 28, },
	[759]={ class = "MAGE", level = 28, },
	[8438]={ class = "MAGE", level = 30, },
	[8412]={ class = "MAGE", level = 30, },
	[8457]={ class = "MAGE", level = 30, },
	[7302]={ class = "MAGE", level = 30, },
	[3565]={ class = "MAGE", level = 30, },
	[3566]={ class = "MAGE", level = 30, },
	[6127]={ class = "MAGE", level = 30, },
	[8416]={ class = "MAGE", level = 32, },
	[8461]={ class = "MAGE", level = 32, },
	[6129]={ class = "MAGE", level = 32, },
	[6117]={ class = "MAGE", level = 34, },
	[8445]={ class = "MAGE", level = 34, },
	[8495]={ class = "MAGE", level = 36, },
	[8439]={ class = "MAGE", level = 38, },
	[8413]={ class = "MAGE", level = 38, },
	[3552]={ class = "MAGE", level = 38, },
	[8417]={ class = "MAGE", level = 40, },
	[8458]={ class = "MAGE", level = 40, },
	[7320]={ class = "MAGE", level = 40, },
	[11416]={ class = "MAGE", level = 40, },
	[11417]={ class = "MAGE", level = 40, },
	[10059]={ class = "MAGE", level = 40, },
	[11418]={ class = "MAGE", level = 40, },
	[8446]={ class = "MAGE", level = 40, },
	[10138]={ class = "MAGE", level = 40, },
	[8462]={ class = "MAGE", level = 42, },
	[10144]={ class = "MAGE", level = 42, },
	[10191]={ class = "MAGE", level = 44, },
	[10201]={ class = "MAGE", level = 46, },
	[10197]={ class = "MAGE", level = 46, },
	[13031]={ class = "MAGE", level = 46, },
	[22782]={ class = "MAGE", level = 46, },
	[10205]={ class = "MAGE", level = 46, },
	[10211]={ class = "MAGE", level = 48, },
	[10053]={ class = "MAGE", level = 48, },
	[10223]={ class = "MAGE", level = 50, },
	[10219]={ class = "MAGE", level = 50, },
	[11419]={ class = "MAGE", level = 50, },
	[11420]={ class = "MAGE", level = 50, },
	[10139]={ class = "MAGE", level = 50, },
	[10177]={ class = "MAGE", level = 52, },
	[13032]={ class = "MAGE", level = 52, },
	[10192]={ class = "MAGE", level = 52, },
	[10206]={ class = "MAGE", level = 52, },
	[10145]={ class = "MAGE", level = 52, },
	[10202]={ class = "MAGE", level = 54, },
	[10199]={ class = "MAGE", level = 54, },
	[10212]={ class = "MAGE", level = 56, },
	[25345]={ class = "MAGE", level = 56, },
	[13033]={ class = "MAGE", level = 58, },
	[22783]={ class = "MAGE", level = 58, },
	[10207]={ class = "MAGE", level = 58, },
	[10054]={ class = "MAGE", level = 58, },
	[10225]={ class = "MAGE", level = 60, },
	[28609]={ class = "MAGE", level = 60, },
	[10220]={ class = "MAGE", level = 60, },
	[10193]={ class = "MAGE", level = 60, },
	[28612]={ class = "MAGE", level = 60, },
	[10140]={ class = "MAGE", level = 60, },
	[28771]={ class = "MAGE", level = 60, },
--++ Mage Talents ++	
	[11071]={ class = "MAGE", level = 15, },
	[11119]={ class = "MAGE", level = 15, },
	[29441]={ class = "MAGE", level = 15, },
	[12472]={ class = "MAGE", level = 20, },
	[29074]={ class = "MAGE", level = 25, },
	[11958]={ class = "MAGE", level = 30, },
	[12043]={ class = "MAGE", level = 30, },
	[12579]={ class = "MAGE", level = 35, },
	[12042]={ class = "MAGE", level = 40, },
	[11129]={ class = "MAGE", level = 40, },
	[11426]={ class = "MAGE", level = 40, },
--++ Paladin Abilities ++	
	[635]={ class = "PALADIN", level = 1, },
	[20154]={ class = "PALADIN", level = 1, },
	[21084]={ class = "PALADIN", level = 1, },
	[20271]={ class = "PALADIN", level = 4, },
	[498]={ class = "PALADIN", level = 6, },
	[639]={ class = "PALADIN", level = 6, },
	[21082]={ class = "PALADIN", level = 6, },
	[1152]={ class = "PALADIN", level = 8, },
	[633]={ class = "PALADIN", level = 10, },
	[20287]={ class = "PALADIN", level = 10, },
	[7328]={ class = "PALADIN", level = 12, },
	[20162]={ class = "PALADIN", level = 12, },
	[647]={ class = "PALADIN", level = 14, },
	[25780]={ class = "PALADIN", level = 16, },
	[5573]={ class = "PALADIN", level = 18, },
	[20288]={ class = "PALADIN", level = 18, },
	[879]={ class = "PALADIN", level = 20, },
	[19750]={ class = "PALADIN", level = 20, },
	[5502]={ class = "PALADIN", level = 20, },
	[1026]={ class = "PALADIN", level = 22, },
	[20164]={ class = "PALADIN", level = 22, },
	[20305]={ class = "PALADIN", level = 22, },
	[10322]={ class = "PALADIN", level = 24, },
	[2878]={ class = "PALADIN", level = 24, },
	[1038]={ class = "PALADIN", level = 26, },
	[19939]={ class = "PALADIN", level = 26, },
	[20289]={ class = "PALADIN", level = 26, },
	[5614]={ class = "PALADIN", level = 28, },
	[1042]={ class = "PALADIN", level = 30, },
	[2800]={ class = "PALADIN", level = 30, },
	[20915]={ class = "PALADIN", level = 30, },
	[20165]={ class = "PALADIN", level = 30, },
	[20306]={ class = "PALADIN", level = 32, },
	[642]={ class = "PALADIN", level = 34, },
	[19940]={ class = "PALADIN", level = 34, },
	[20290]={ class = "PALADIN", level = 34, },
	[5615]={ class = "PALADIN", level = 36, },
	[10324]={ class = "PALADIN", level = 36, },
	[3472]={ class = "PALADIN", level = 38, },
	[20166]={ class = "PALADIN", level = 38, },
	[20186]={ class = "PALADIN", level = 38, },
	[5627]={ class = "PALADIN", level = 38, },
	[20918]={ class = "PALADIN", level = 40, },
	[20347]={ class = "PALADIN", level = 40, },
	[13819]={ class = "PALADIN", level = 40, },
	[4987]={ class = "PALADIN", level = 42, },
	[19941]={ class = "PALADIN", level = 42, },
	[20291]={ class = "PALADIN", level = 42, },
	[20307]={ class = "PALADIN", level = 42, },
	[10312]={ class = "PALADIN", level = 44, },
	[24275]={ class = "PALADIN", level = 44, },
	[10328]={ class = "PALADIN", level = 46, },
	[20929]={ class = "PALADIN", level = 48, },
	[20772]={ class = "PALADIN", level = 48, },
	[20356]={ class = "PALADIN", level = 48, },
	[1020]={ class = "PALADIN", level = 50, },
	[19942]={ class = "PALADIN", level = 50, },
	[2812]={ class = "PALADIN", level = 50, },
	[10310]={ class = "PALADIN", level = 50, },
	[20919]={ class = "PALADIN", level = 50, },
	[20348]={ class = "PALADIN", level = 50, },
	[20292]={ class = "PALADIN", level = 50, },
	[10313]={ class = "PALADIN", level = 52, },
	[24274]={ class = "PALADIN", level = 52, },
	[20308]={ class = "PALADIN", level = 52, },
	[10326]={ class = "PALADIN", level = 52, },
	[10329]={ class = "PALADIN", level = 54, },
	[20930]={ class = "PALADIN", level = 56, },
	[19943]={ class = "PALADIN", level = 58, },
	[20293]={ class = "PALADIN", level = 58, },
	[20357]={ class = "PALADIN", level = 58, },
	[10314]={ class = "PALADIN", level = 60, },
	[24239]={ class = "PALADIN", level = 60, },
	[25292]={ class = "PALADIN", level = 60, },
	[10318]={ class = "PALADIN", level = 60, },
	[20773]={ class = "PALADIN", level = 60, },
	[20920]={ class = "PALADIN", level = 60, },
	[20349]={ class = "PALADIN", level = 60, },
	[23214]={ class = "PALADIN", level = 60, },
	[28787]={ class = "PALADIN", level = 60, },
--++ Paladin Talents ++	
	[20127]={ class = "PALADIN", level = 10, },
	[20375]={ class = "PALADIN", level = 20, },
	[20216]={ class = "PALADIN", level = 30, },
	[20473]={ class = "PALADIN", level = 40, },
--++ Priest Abilities ++	
	[2050]={ class = "PRIEST", level = 1, },
	[585]={ class = "PRIEST", level = 1, },
	[2052]={ class = "PRIEST", level = 4, },
	[591]={ class = "PRIEST", level = 6, },
	[586]={ class = "PRIEST", level = 8, },
	[13908]={ class = "PRIEST", level = 10, },
	[2053]={ class = "PRIEST", level = 10, },
	[8092]={ class = "PRIEST", level = 10, },
	[2006]={ class = "PRIEST", level = 10, },
	[2652]={ class = "PRIEST", level = 10, },
	[588]={ class = "PRIEST", level = 12, },
	[528]={ class = "PRIEST", level = 14, },
	[598]={ class = "PRIEST", level = 14, },
	[2054]={ class = "PRIEST", level = 16, },
	[8102]={ class = "PRIEST", level = 16, },
	[19236]={ class = "PRIEST", level = 18, },
	[527]={ class = "PRIEST", level = 18, },
	[2651]={ class = "PRIEST", level = 20, },
	[9578]={ class = "PRIEST", level = 20, },
	[2061]={ class = "PRIEST", level = 20, },
	[7128]={ class = "PRIEST", level = 20, },
	[9484]={ class = "PRIEST", level = 20, },
	[18137]={ class = "PRIEST", level = 20, },
	[19261]={ class = "PRIEST", level = 20, },
	[2055]={ class = "PRIEST", level = 22, },
	[8103]={ class = "PRIEST", level = 22, },
	[2010]={ class = "PRIEST", level = 22, },
	[984]={ class = "PRIEST", level = 22, },
	[8129]={ class = "PRIEST", level = 24, },
	[19238]={ class = "PRIEST", level = 26, },
	[9472]={ class = "PRIEST", level = 26, },
	[6063]={ class = "PRIEST", level = 28, },
	[15430]={ class = "PRIEST", level = 28, },
	[8104]={ class = "PRIEST", level = 28, },
	[19308]={ class = "PRIEST", level = 28, },
	[19289]={ class = "PRIEST", level = 30, },
	[9579]={ class = "PRIEST", level = 30, },
	[602]={ class = "PRIEST", level = 30, },
	[596]={ class = "PRIEST", level = 30, },
	[1004]={ class = "PRIEST", level = 30, },
	[19262]={ class = "PRIEST", level = 30, },
	[9473]={ class = "PRIEST", level = 32, },
	[8131]={ class = "PRIEST", level = 32, },
	[19240]={ class = "PRIEST", level = 34, },
	[6064]={ class = "PRIEST", level = 34, },
	[1706]={ class = "PRIEST", level = 34, },
	[8105]={ class = "PRIEST", level = 34, },
	[10880]={ class = "PRIEST", level = 34, },
	[988]={ class = "PRIEST", level = 36, },
	[15431]={ class = "PRIEST", level = 36, },
	[19309]={ class = "PRIEST", level = 36, },
	[9474]={ class = "PRIEST", level = 38, },
	[6060]={ class = "PRIEST", level = 38, },
	[19291]={ class = "PRIEST", level = 40, },
	[9592]={ class = "PRIEST", level = 40, },
	[2060]={ class = "PRIEST", level = 40, },
	[1006]={ class = "PRIEST", level = 40, },
	[10874]={ class = "PRIEST", level = 40, },
	[8106]={ class = "PRIEST", level = 40, },
	[996]={ class = "PRIEST", level = 40, },
	[9485]={ class = "PRIEST", level = 40, },
	[19264]={ class = "PRIEST", level = 40, },
	[19241]={ class = "PRIEST", level = 42, },
	[10915]={ class = "PRIEST", level = 44, },
	[27799]={ class = "PRIEST", level = 44, },
	[19310]={ class = "PRIEST", level = 44, },
	[10963]={ class = "PRIEST", level = 46, },
	[10945]={ class = "PRIEST", level = 46, },
	[10881]={ class = "PRIEST", level = 46, },
	[10933]={ class = "PRIEST", level = 46, },
	[10875]={ class = "PRIEST", level = 48, },
	[19242]={ class = "PRIEST", level = 50, },
	[19292]={ class = "PRIEST", level = 50, },
	[10941]={ class = "PRIEST", level = 50, },
	[10916]={ class = "PRIEST", level = 50, },
	[10951]={ class = "PRIEST", level = 50, },
	[27870]={ class = "PRIEST", level = 50, },
	[10960]={ class = "PRIEST", level = 50, },
	[19265]={ class = "PRIEST", level = 50, },
	[10964]={ class = "PRIEST", level = 52, },
	[27800]={ class = "PRIEST", level = 52, },
	[10946]={ class = "PRIEST", level = 52, },
	[19311]={ class = "PRIEST", level = 52, },
	[10934]={ class = "PRIEST", level = 54, },
	[10917]={ class = "PRIEST", level = 56, },
	[10876]={ class = "PRIEST", level = 56, },
	[19243]={ class = "PRIEST", level = 58, },
	[10965]={ class = "PRIEST", level = 58, },
	[10947]={ class = "PRIEST", level = 58, },
	[20770]={ class = "PRIEST", level = 58, },
	[19293]={ class = "PRIEST", level = 60, },
	[10942]={ class = "PRIEST", level = 60, },
	[25314]={ class = "PRIEST", level = 60, },
	[27801]={ class = "PRIEST", level = 60, },
	[10952]={ class = "PRIEST", level = 60, },
	[27871]={ class = "PRIEST", level = 60, },
	[10961]={ class = "PRIEST", level = 60, },
	[25316]={ class = "PRIEST", level = 60, },
	[10955]={ class = "PRIEST", level = 60, },
	[19312]={ class = "PRIEST", level = 60, },
	[19266]={ class = "PRIEST", level = 60, },
	[23781]={ class = "PRIEST", level = 60, },
	[28802]={ class = "PRIEST", level = 60, },
	[21976]={ class = "PRIEST", level = 60, },
	[24546]={ class = "PRIEST", level = 60, },
--++ Priest Talents ++	
	[15270]={ class = "PRIEST", level = 10, },
	[14743]={ class = "PRIEST ", level = 15, },
	[27828]={ class = "PRIEST ", level = 16, },
	[27811]={ class = "PRIEST", level = 20, },
	[15237]={ class = "PRIEST", level = 20, },
	[14751]={ class = "PRIEST", level = 20, },
	[14892]={ class = "PRIEST", level = 20, },
	[724]={ class = "PRIEST", level = 40, },
	[15473]={ class = "PRIEST", level = 40, },
--++ Rogue Abilities ++	
	[2098]={ class = "ROGUE", level = 1, },
	[1804]={ class = "ROGUE", level = 1, },
	[1752]={ class = "ROGUE", level = 1, },
	[1784]={ class = "ROGUE", level = 1, },
	[53]={ class = "ROGUE", level = 4, },
	[921]={ class = "ROGUE", level = 4, },
	[1757]={ class = "ROGUE", level = 6, },
	[5277]={ class = "ROGUE", level = 8, },
	[6760]={ class = "ROGUE", level = 8, },
	[5171]={ class = "ROGUE", level = 10, },
	[2983]={ class = "ROGUE", level = 10, },
	[2589]={ class = "ROGUE", level = 12, },
	[1766]={ class = "ROGUE", level = 12, },
	[1758]={ class = "ROGUE", level = 14, },
	[6761]={ class = "ROGUE", level = 16, },
	[1966]={ class = "ROGUE", level = 16, },
	[8676]={ class = "ROGUE", level = 18, },
	[2590]={ class = "ROGUE", level = 20, },
	[2842]={ class = "ROGUE", level = 20, },
	[1785]={ class = "ROGUE", level = 20, },
	[3420]={ class = "ROGUE", level = 20, },
	[8681]={ class = "ROGUE", level = 20, },
	[1725]={ class = "ROGUE", level = 22, },
	[1759]={ class = "ROGUE", level = 22, },
	[1856]={ class = "ROGUE", level = 22, },
	[2836]={ class = "ROGUE", level = 24, },
	[6762]={ class = "ROGUE", level = 24, },
	[5763]={ class = "ROGUE", level = 24, },
	[8724]={ class = "ROGUE", level = 26, },
	[1767]={ class = "ROGUE", level = 26, },
	[2591]={ class = "ROGUE", level = 28, },
	[6768]={ class = "ROGUE", level = 28, },
	[8687]={ class = "ROGUE", level = 28, },
	[1842]={ class = "ROGUE", level = 30, },
	[1760]={ class = "ROGUE", level = 30, },
	[2835]={ class = "ROGUE", level = 30, },
	[8623]={ class = "ROGUE", level = 32, },
	[13220]={ class = "ROGUE", level = 32, },
	[8725]={ class = "ROGUE", level = 34, },
	[8696]={ class = "ROGUE", level = 34, },
	[6510]={ class = "ROGUE", level = 34, },
	[8721]={ class = "ROGUE", level = 36, },
	[8691]={ class = "ROGUE", level = 36, },
	[8621]={ class = "ROGUE", level = 38, },
	[2837]={ class = "ROGUE", level = 38, },
	[8694]={ class = "ROGUE", level = 38, },
	[8624]={ class = "ROGUE", level = 40, },
	[8637]={ class = "ROGUE", level = 40, },
	[1860]={ class = "ROGUE", level = 40, },
	[1786]={ class = "ROGUE", level = 40, },
	[13228]={ class = "ROGUE", level = 40, },
	[11267]={ class = "ROGUE", level = 42, },
	[1768]={ class = "ROGUE", level = 42, },
	[6774]={ class = "ROGUE", level = 42, },
	[1857]={ class = "ROGUE", level = 42, },
	[11279]={ class = "ROGUE", level = 44, },
	[11341]={ class = "ROGUE", level = 44, },
	[11293]={ class = "ROGUE", level = 46, },
	[11357]={ class = "ROGUE", level = 46, },
	[11299]={ class = "ROGUE", level = 48, },
	[13229]={ class = "ROGUE", level = 48, },
	[11268]={ class = "ROGUE", level = 50, },
	[3421]={ class = "ROGUE", level = 50, },
	[11280]={ class = "ROGUE", level = 52, },
	[11303]={ class = "ROGUE", level = 52, },
	[11342]={ class = "ROGUE", level = 52, },
	[11400]={ class = "ROGUE", level = 52, },
	[11294]={ class = "ROGUE", level = 54, },
	[11358]={ class = "ROGUE", level = 54, },
	[11300]={ class = "ROGUE", level = 56, },
	[13230]={ class = "ROGUE", level = 56, },
	[11269]={ class = "ROGUE", level = 58, },
	[1769]={ class = "ROGUE", level = 58, },
	[11305]={ class = "ROGUE", level = 58, },
	[11281]={ class = "ROGUE", level = 60, },
	[25300]={ class = "ROGUE", level = 60, },
	[31016]={ class = "ROGUE", level = 60, },
	[25302]={ class = "ROGUE", level = 60, },
	[1787]={ class = "ROGUE", level = 60, },
	[25347]={ class = "ROGUE", level = 60, },
	[11343]={ class = "ROGUE", level = 60, },
	[24532]={ class = "ROGUE", level = 60, },
	[23582]={ class = "ROGUE", level = 60, },
	[28813]={ class = "ROGUE", level = 60, },
	[27788]={ class = "ROGUE", level = 52, },
--++ Rogue Talents ++	
	[14143]={ class = "ROGUE", level = 10, },
	[14278]={ class = "ROGUE", level = 20, },
	[14181]={ class = "ROGUE", level = 20, },
	[13877]={ class = "ROGUE", level = 30, },
	[14177]={ class = "ROGUE", level = 30, },
	[14185]={ class = "ROGUE", level = 30, },
	[13750]={ class = "ROGUE", level = 40, },
	[14183]={ class = "ROGUE", level = 40, },
--++ Shaman Abilities ++	
	[16368]={ class = "SHAMAN", level = 1, },
	[331]={ class = "SHAMAN", level = 1, },
	[403]={ class = "SHAMAN", level = 1, },
	[8017]={ class = "SHAMAN", level = 1, },
	[8042]={ class = "SHAMAN", level = 4, },
	[8071]={ class = "SHAMAN", level = 4, },
	[2484]={ class = "SHAMAN", level = 6, },
	[332]={ class = "SHAMAN", level = 6, },
	[8044]={ class = "SHAMAN", level = 8, },
	[529]={ class = "SHAMAN", level = 8, },
	[8018]={ class = "SHAMAN", level = 8, },
	[5730]={ class = "SHAMAN", level = 8, },
	[16246]={ class = "SHAMAN", level = 10, },
	[8024]={ class = "SHAMAN", level = 10, },
	[3599]={ class = "SHAMAN", level = 10, },
	[8075]={ class = "SHAMAN", level = 10, },
	[2008]={ class = "SHAMAN", level = 12, },
	[1535]={ class = "SHAMAN", level = 12, },
	[547]={ class = "SHAMAN", level = 12, },
	[370]={ class = "SHAMAN", level = 12, },
	[8045]={ class = "SHAMAN", level = 14, },
	[548]={ class = "SHAMAN", level = 14, },
	[8154]={ class = "SHAMAN", level = 14, },
	[526]={ class = "SHAMAN", level = 16, },
	[8019]={ class = "SHAMAN", level = 16, },
	[8027]={ class = "SHAMAN", level = 18, },
	[913]={ class = "SHAMAN", level = 18, },
	[6390]={ class = "SHAMAN", level = 18, },
	[8143]={ class = "SHAMAN", level = 18, },
	[8033]={ class = "SHAMAN", level = 20, },
	[2645]={ class = "SHAMAN", level = 20, },
	[5394]={ class = "SHAMAN", level = 20, },
	[8004]={ class = "SHAMAN", level = 20, },
	[915]={ class = "SHAMAN", level = 20, },
	[6363]={ class = "SHAMAN", level = 20, },
	[2870]={ class = "SHAMAN", level = 22, },
	[8498]={ class = "SHAMAN", level = 22, },
	[8166]={ class = "SHAMAN", level = 22, },
	[20609]={ class = "SHAMAN", level = 24, },
	[8046]={ class = "SHAMAN", level = 24, },
	[8181]={ class = "SHAMAN", level = 24, },
	[939]={ class = "SHAMAN", level = 24, },
	[10399]={ class = "SHAMAN", level = 24, },
	[8155]={ class = "SHAMAN", level = 24, },
	[8160]={ class = "SHAMAN", level = 24, },
	[6196]={ class = "SHAMAN", level = 26, },
	[8030]={ class = "SHAMAN", level = 26, },
	[943]={ class = "SHAMAN", level = 26, },
	[8190]={ class = "SHAMAN", level = 26, },
	[5675]={ class = "SHAMAN", level = 26, },
	[8184]={ class = "SHAMAN", level = 28, },
	[8227]={ class = "SHAMAN", level = 28, },
	[8038]={ class = "SHAMAN", level = 28, },
	[8008]={ class = "SHAMAN", level = 28, },
	[6391]={ class = "SHAMAN", level = 28, },
	[556]={ class = "SHAMAN", level = 30, },
	[8177]={ class = "SHAMAN", level = 30, },
	[6375]={ class = "SHAMAN", level = 30, },
	[10595]={ class = "SHAMAN", level = 30, },
	[20608]={ class = "SHAMAN", level = 30, },
	[6364]={ class = "SHAMAN", level = 30, },
	[8232]={ class = "SHAMAN", level = 30, },
	[421]={ class = "SHAMAN", level = 32, },
	[8499]={ class = "SHAMAN", level = 32, },
	[959]={ class = "SHAMAN", level = 32, },
	[6041]={ class = "SHAMAN", level = 32, },
	[8012]={ class = "SHAMAN", level = 32, },
	[8512]={ class = "SHAMAN", level = 32, },
	[16314]={ class = "SHAMAN", level = 34, },
	[6495]={ class = "SHAMAN", level = 34, },
	[10406]={ class = "SHAMAN", level = 34, },
	[20610]={ class = "SHAMAN", level = 36, },
	[10412]={ class = "SHAMAN", level = 36, },
	[16339]={ class = "SHAMAN", level = 36, },
	[8010]={ class = "SHAMAN", level = 36, },
	[10585]={ class = "SHAMAN", level = 36, },
	[10495]={ class = "SHAMAN", level = 36, },
	[15107]={ class = "SHAMAN", level = 36, },
	[8170]={ class = "SHAMAN", level = 38, },
	[8249]={ class = "SHAMAN", level = 38, },
	[10478]={ class = "SHAMAN", level = 38, },
	[10456]={ class = "SHAMAN", level = 38, },
	[10391]={ class = "SHAMAN", level = 38, },
	[6392]={ class = "SHAMAN", level = 38, },
	[8161]={ class = "SHAMAN", level = 38, },
	[1064]={ class = "SHAMAN", level = 40, },
	[930]={ class = "SHAMAN", level = 40, },
	[6377]={ class = "SHAMAN", level = 40, },
	[8005]={ class = "SHAMAN", level = 40, },
	[6365]={ class = "SHAMAN", level = 40, },
	[8235]={ class = "SHAMAN", level = 40, },
	[11314]={ class = "SHAMAN", level = 42, },
	[10537]={ class = "SHAMAN", level = 42, },
	[8835]={ class = "SHAMAN", level = 42, },
	[10613]={ class = "SHAMAN", level = 42, },
	[10466]={ class = "SHAMAN", level = 44, },
	[10392]={ class = "SHAMAN", level = 44, },
	[10600]={ class = "SHAMAN", level = 44, },
	[16315]={ class = "SHAMAN", level = 44, },
	[10407]={ class = "SHAMAN", level = 44, },
	[10622]={ class = "SHAMAN", level = 46, },
	[16341]={ class = "SHAMAN", level = 46, },
	[10586]={ class = "SHAMAN", level = 46, },
	[10496]={ class = "SHAMAN", level = 46, },
	[15111]={ class = "SHAMAN", level = 46, },
	[20776]={ class = "SHAMAN", level = 48, },
	[2860]={ class = "SHAMAN", level = 48, },
	[10413]={ class = "SHAMAN", level = 48, },
	[10526]={ class = "SHAMAN", level = 48, },
	[16355]={ class = "SHAMAN", level = 48, },
	[10395]={ class = "SHAMAN", level = 48, },
	[17354]={ class = "SHAMAN", level = 48, },
	[10427]={ class = "SHAMAN", level = 48, },
	[10462]={ class = "SHAMAN", level = 50, },
	[15207]={ class = "SHAMAN", level = 50, },
	[10437]={ class = "SHAMAN", level = 50, },
	[25908]={ class = "SHAMAN", level = 50, },
	[10486]={ class = "SHAMAN", level = 50, },
	[11315]={ class = "SHAMAN", level = 52, },
	[10467]={ class = "SHAMAN", level = 52, },
	[10442]={ class = "SHAMAN", level = 52, },
	[10614]={ class = "SHAMAN", level = 52, },
	[10623]={ class = "SHAMAN", level = 54, },
	[10479]={ class = "SHAMAN", level = 54, },
	[16316]={ class = "SHAMAN", level = 54, },
	[10408]={ class = "SHAMAN", level = 54, },
	[10605]={ class = "SHAMAN", level = 56, },
	[16342]={ class = "SHAMAN", level = 56, },
	[10627]={ class = "SHAMAN", level = 56, },
	[10396]={ class = "SHAMAN", level = 56, },
	[15208]={ class = "SHAMAN", level = 56, },
	[10587]={ class = "SHAMAN", level = 56, },
	[10497]={ class = "SHAMAN", level = 56, },
	[15112]={ class = "SHAMAN", level = 56, },
	[10538]={ class = "SHAMAN", level = 58, },
	[16387]={ class = "SHAMAN", level = 58, },
	[16356]={ class = "SHAMAN", level = 58, },
	[17359]={ class = "SHAMAN", level = 58, },
	[10428]={ class = "SHAMAN", level = 58, },
	[20777]={ class = "SHAMAN", level = 60, },
	[10414]={ class = "SHAMAN", level = 60, },
	[25359]={ class = "SHAMAN", level = 60, },
	[10463]={ class = "SHAMAN", level = 60, },
	[25357]={ class = "SHAMAN", level = 60, },
	[10468]={ class = "SHAMAN", level = 60, },
	[10601]={ class = "SHAMAN", level = 60, },
	[10438]={ class = "SHAMAN", level = 60, },
	[25361]={ class = "SHAMAN", level = 60, },
	[16362]={ class = "SHAMAN", level = 60, },
	[26121]={ class = "SHAMAN", level = 60, },
	[23734]={ class = "SHAMAN", level = 60, },
--++ Shaman Talents ++	
	[16176]={ class = "SHAMAN", level = 15, },
	[30160]={ class = "SHAMAN", level = 25, },
	[16256]={ class = "SHAMAN", level = 25, },
	[29063]={ class = "SHAMAN", level = 25, },
	[16188]={ class = "SHAMAN", level = 30, },
	[29206]={ class = "SHAMAN", level = 30, },
	[16268]={ class = "SHAMAN", level = 30, },
	[16166]={ class = "SHAMAN", level = 40, },
	[16190]={ class = "SHAMAN", level = 40, },
	[17364]={ class = "SHAMAN", level = 40, },
--++ Warlock Abilities ++	
	[687]={ class = "WARLOCK", level = 1, },
	[686]={ class = "WARLOCK", level = 1, },
	[688]={ class = "WARLOCK", level = 1, },
	[1454]={ class = "WARLOCK", level = 6, },
	[695]={ class = "WARLOCK", level = 6, },
	[6201]={ class = "WARLOCK", level = 10, },
	[696]={ class = "WARLOCK", level = 10, },
	[18371]={ class = "WARLOCK", level = 10, },
	[697]={ class = "WARLOCK", level = 10, },
	[755]={ class = "WARLOCK", level = 12, },
	[705]={ class = "WARLOCK", level = 12, },
	[1455]={ class = "WARLOCK", level = 16, },
	[5676]={ class = "WARLOCK", level = 18, },
	[693]={ class = "WARLOCK", level = 18, },
	[706]={ class = "WARLOCK", level = 20, },
	[3698]={ class = "WARLOCK", level = 20, },
	[698]={ class = "WARLOCK", level = 20, },
	[1088]={ class = "WARLOCK", level = 20, },
	[712]={ class = "WARLOCK", level = 20, },
	[6202]={ class = "WARLOCK", level = 22, },
	[126]={ class = "WARLOCK", level = 22, },
	[5500]={ class = "WARLOCK", level = 24, },
	[18867]={ class = "WARLOCK", level = 24, },
	[132]={ class = "WARLOCK", level = 26, },
	[1456]={ class = "WARLOCK", level = 26, },
	[17919]={ class = "WARLOCK", level = 26, },
	[3699]={ class = "WARLOCK", level = 28, },
	[1106]={ class = "WARLOCK", level = 28, },
	[6366]={ class = "WARLOCK", level = 28, },
	[1086]={ class = "WARLOCK", level = 30, },
	[1098]={ class = "WARLOCK", level = 30, },
	[691]={ class = "WARLOCK", level = 30, },
	[20752]={ class = "WARLOCK", level = 30, },
	[6229]={ class = "WARLOCK", level = 32, },
	[18868]={ class = "WARLOCK", level = 32, },
	[5699]={ class = "WARLOCK", level = 34, },
	[17920]={ class = "WARLOCK", level = 34, },
	[3700]={ class = "WARLOCK", level = 36, },
	[11687]={ class = "WARLOCK", level = 36, },
	[7641]={ class = "WARLOCK", level = 36, },
	[17951]={ class = "WARLOCK", level = 36, },
	[2362]={ class = "WARLOCK", level = 36, },
	[2970]={ class = "WARLOCK", level = 38, },
	[11733]={ class = "WARLOCK", level = 40, },
	[18869]={ class = "WARLOCK", level = 40, },
	[5784]={ class = "WARLOCK", level = 40, },
	[20755]={ class = "WARLOCK", level = 40, },
	[17921]={ class = "WARLOCK", level = 42, },
	[11739]={ class = "WARLOCK", level = 42, },
	[11725]={ class = "WARLOCK", level = 44, },
	[11693]={ class = "WARLOCK", level = 44, },
	[11659]={ class = "WARLOCK", level = 44, },
	[11729]={ class = "WARLOCK", level = 46, },
	[11688]={ class = "WARLOCK", level = 46, },
	[17952]={ class = "WARLOCK", level = 46, },
	[18930]={ class = "WARLOCK", level = 48, },
	[18870]={ class = "WARLOCK", level = 48, },
	[6353]={ class = "WARLOCK", level = 48, },
	[17727]={ class = "WARLOCK", level = 48, },
	[18937]={ class = "WARLOCK", level = 50, },
	[11734]={ class = "WARLOCK", level = 50, },
	[11743]={ class = "WARLOCK", level = 50, },
	[1122]={ class = "WARLOCK", level = 50, },
	[17922]={ class = "WARLOCK", level = 50, },
	[20756]={ class = "WARLOCK", level = 50, },
	[11694]={ class = "WARLOCK", level = 52, },
	[11660]={ class = "WARLOCK", level = 52, },
	[11740]={ class = "WARLOCK", level = 52, },
	[18931]={ class = "WARLOCK", level = 54, },
	[11689]={ class = "WARLOCK", level = 56, },
	[18871]={ class = "WARLOCK", level = 56, },
	[17924]={ class = "WARLOCK", level = 56, },
	[17953]={ class = "WARLOCK", level = 56, },
	[11730]={ class = "WARLOCK", level = 58, },
	[11726]={ class = "WARLOCK", level = 58, },
	[17923]={ class = "WARLOCK", level = 58, },
	[18932]={ class = "WARLOCK", level = 60, },
	[18938]={ class = "WARLOCK", level = 60, },
	[11735]={ class = "WARLOCK", level = 60, },
	[11695]={ class = "WARLOCK", level = 60, },
	[18540]={ class = "WARLOCK", level = 60, },
	[11661]={ class = "WARLOCK", level = 60, },
	[25307]={ class = "WARLOCK", level = 60, },
	[28610]={ class = "WARLOCK", level = 60, },
	[23161]={ class = "WARLOCK", level = 60, },
	[20757]={ class = "WARLOCK", level = 60, },
	[17728]={ class = "WARLOCK", level = 60, },
	[28831]={ class = "WARLOCK", level = 60, },
--++ Warlock Talents ++	
	[18119]={ class = "WARLOCK", level = 15, },
	[18288]={ class = "WARLOCK", level = 20, },
	[18708]={ class = "WARLOCK", level = 20, },
	[18748]={ class = "WARLOCK", level = 20, },
	[17877]={ class = "WARLOCK", level = 20, },
	[18094]={ class = "WARLOCK", level = 25, },
	[17941]={ class = "WARLOCK", level = 25, },
	[18223]={ class = "WARLOCK", level = 30, },
	[18788]={ class = "WARLOCK", level = 30, },
	[17962]={ class = "WARLOCK", level = 40, },
	[18220]={ class = "WARLOCK", level = 40, },
	[19028]={ class = "WARLOCK", level = 40, },
--++ Warrior Abilities ++	
	[2457]={ class = "WARRIOR", level = 1, },
	[78]={ class = "WARRIOR", level = 1, },
	[12288]={ class = "WARRIOR", level = 1, },
	[12707]={ class = "WARRIOR", level = 1, },
	[12708]={ class = "WARRIOR", level = 1, },
	[100]={ class = "WARRIOR", level = 4, },
	[284]={ class = "WARRIOR", level = 8, },
	[2687]={ class = "WARRIOR", level = 10, },
	[71]={ class = "WARRIOR", level = 10, },
	[355]={ class = "WARRIOR", level = 10, },
	[7384]={ class = "WARRIOR", level = 12, },
	[72]={ class = "WARRIOR", level = 12, },
	[6572]={ class = "WARRIOR", level = 14, },
	[285]={ class = "WARRIOR", level = 16, },
	[2565]={ class = "WARRIOR", level = 16, },
	[845]={ class = "WARRIOR", level = 20, },
	[20230]={ class = "WARRIOR", level = 20, },
	[5308]={ class = "WARRIOR", level = 24, },
	[1608]={ class = "WARRIOR", level = 24, },
	[6574]={ class = "WARRIOR", level = 24, },
	[6178]={ class = "WARRIOR", level = 26, },
	[7887]={ class = "WARRIOR", level = 28, },
	[871]={ class = "WARRIOR", level = 28, },
	[2458]={ class = "WARRIOR", level = 30, },
	[7369]={ class = "WARRIOR", level = 30, },
	[20252]={ class = "WARRIOR", level = 30, },
	[1464]={ class = "WARRIOR", level = 30, },
	[18499]={ class = "WARRIOR", level = 32, },
	[20658]={ class = "WARRIOR", level = 32, },
	[11564]={ class = "WARRIOR", level = 32, },
	[1671]={ class = "WARRIOR", level = 32, },
	[7379]={ class = "WARRIOR", level = 34, },
	[1680]={ class = "WARRIOR", level = 36, },
	[6552]={ class = "WARRIOR", level = 38, },
	[8820]={ class = "WARRIOR", level = 38, },
	[11608]={ class = "WARRIOR", level = 40, },
	[20660]={ class = "WARRIOR", level = 40, },
	[11565]={ class = "WARRIOR", level = 40, },
	[20616]={ class = "WARRIOR", level = 42, },
	[11584]={ class = "WARRIOR", level = 44, },
	[11600]={ class = "WARRIOR", level = 44, },
	[11578]={ class = "WARRIOR", level = 46, },
	[11604]={ class = "WARRIOR", level = 46, },
	[23892]={ class = "WARRIOR", level = 48, },
	[20661]={ class = "WARRIOR", level = 48, },
	[11566]={ class = "WARRIOR", level = 48, },
	[23923]={ class = "WARRIOR", level = 48, },
	[11609]={ class = "WARRIOR", level = 50, },
	[1719]={ class = "WARRIOR", level = 50, },
	[20617]={ class = "WARRIOR", level = 52, },
	[1672]={ class = "WARRIOR", level = 52, },
	[23893]={ class = "WARRIOR", level = 54, },
	[11601]={ class = "WARRIOR", level = 54, },
	[23924]={ class = "WARRIOR", level = 54, },
	[11605]={ class = "WARRIOR", level = 54, },
	[20662]={ class = "WARRIOR", level = 56, },
	[11567]={ class = "WARRIOR", level = 56, },
	[6554]={ class = "WARRIOR", level = 58, },
	[23894]={ class = "WARRIOR", level = 60, },
	[20569]={ class = "WARRIOR", level = 60, },
	[25286]={ class = "WARRIOR", level = 60, },
	[11585]={ class = "WARRIOR", level = 60, },
	[25288]={ class = "WARRIOR", level = 60, },
	[23925]={ class = "WARRIOR", level = 60, },
	[23725]={ class = "WARRIOR", level = 60, },
	[21887]={ class = "WARRIOR", level = 60, },
--++ Warrior Talents ++	
	[12322]={ class = "WARRIOR", level = 15, },
	[16487]={ class = "WARRIOR", level = 20, },
	[12975]={ class = "WARRIOR", level = 20, },
	[12328]={ class = "WARRIOR", level = 30, },
	[12292]={ class = "WARRIOR", level = 30, },
	[12319]={ class = "WARRIOR", level = 35, },
	[23881]={ class = "WARRIOR", level = 40, },
	[23922]={ class = "WARRIOR", level = 40, },
--++++++++++	
	[2580]={ level = 1, },
	[8388]={ level = 1, },
	[2383]={ level = 1, },
	[8613]={ level = 1, },
	[13897]={ level = 1, },
	[20007]={ level = 1, },
	[20006]={ level = 1, },
	[5019]={ level = 1, },
	[2480]={ level = 1, },
	[7919]={ level = 1, },
	[2764]={ level = 1, },
	[5530]={ level = 1, },
	[12721]={ level = 1, },
	[14]={ level = 1, },
	[28158]={ level = 1, },
	[26170]={ level = 1, },
	[25]={ level = 1, },
	[30754]={ level = 1, },
	[30880]={ level = 1, },
	[22751]={ level = 1, },
	[20549]={ level = 1, },
	[5211]={ level = 1, },
	[6798]={ level = 1, },
	[8983]={ level = 1, },
	[28750]={ level = 1, },
	[5209]={ level = 1, },
	[99]={ level = 1, },
	[1735]={ level = 1, },
	[9490]={ level = 1, },
	[9747]={ level = 1, },
	[9898]={ level = 1, },
	[339]={ level = 1, },
	[1062]={ level = 1, },
	[5195]={ level = 1, },
	[5196]={ level = 1, },
	[9852]={ level = 1, },
	[9853]={ level = 1, },
	[770]={ level = 1, },
	[778]={ level = 1, },
	[9749]={ level = 1, },
	[9907]={ level = 1, },
	[16857]={ level = 1, },
	[17390]={ level = 1, },
	[17391]={ level = 1, },
	[17392]={ level = 1, },
	[16979]={ level = 1, },
	[19675]={ level = 1, },
	[21849]={ level = 1, },
	[21850]={ level = 1, },
	[2637]={ level = 1, },
	[18657]={ level = 1, },
	[18658]={ level = 1, },
	[16914]={ level = 1, },
	[17401]={ level = 1, },
	[17402]={ level = 1, },
	[29166]={ level = 1, },
	[5570]={ level = 1, },
	[24974]={ level = 1, },
	[24975]={ level = 1, },
	[24976]={ level = 1, },
	[24977]={ level = 1, },
	[24932]={ level = 1, },
	[1126]={ level = 1, },
	[5232]={ level = 1, },
	[6756]={ level = 1, },
	[5234]={ level = 1, },
	[8907]={ level = 1, },
	[9884]={ level = 1, },
	[9885]={ level = 1, },
	[8921]={ level = 1, },
	[8924]={ level = 1, },
	[8925]={ level = 1, },
	[8926]={ level = 1, },
	[8927]={ level = 1, },
	[8928]={ level = 1, },
	[8929]={ level = 1, },
	[9833]={ level = 1, },
	[9834]={ level = 1, },
	[9835]={ level = 1, },
	[24907]={ level = 1, },
	[9005]={ level = 1, },
	[9007]={ level = 1, },
	[9823]={ level = 1, },
	[9827]={ level = 1, },
	[1822]={ level = 1, },
	[1823]={ level = 1, },
	[1824]={ level = 1, },
	[9904]={ level = 1, },
	[8936]={ level = 1, },
	[8938]={ level = 1, },
	[8939]={ level = 1, },
	[8940]={ level = 1, },
	[8941]={ level = 1, },
	[9750]={ level = 1, },
	[9856]={ level = 1, },
	[9857]={ level = 1, },
	[9858]={ level = 1, },
	[774]={ level = 1, },
	[1058]={ level = 1, },
	[1430]={ level = 1, },
	[2090]={ level = 1, },
	[2091]={ level = 1, },
	[3627]={ level = 1, },
	[8910]={ level = 1, },
	[9839]={ level = 1, },
	[9840]={ level = 1, },
	[9841]={ level = 1, },
	[25299]={ level = 1, },
	[1079]={ level = 1, },
	[9492]={ level = 1, },
	[9493]={ level = 1, },
	[9752]={ level = 1, },
	[9894]={ level = 1, },
	[9896]={ level = 1, },
	[467]={ level = 1, },
	[782]={ level = 1, },
	[1075]={ level = 1, },
	[8914]={ level = 1, },
	[9756]={ level = 1, },
	[9910]={ level = 1, },
	[740]={ level = 1, },
	[8918]={ level = 1, },
	[9862]={ level = 1, },
	[9863]={ level = 1, },
	[13159]={ level = 1, },
	[5116]={ level = 1, },
	[19306]={ level = 1, },
	[20909]={ level = 1, },
	[20910]={ level = 1, },
	[19185]={ level = 1, },
	[1130]={ level = 1, },
	[14323]={ level = 1, },
	[14324]={ level = 1, },
	[14325]={ level = 1, },
	[23577]={ level = 1, },
	[24440]={ level = 1, },
	[3355]={ level = 1, },
	[14308]={ level = 1, },
	[14309]={ level = 1, },
	[13810]={ level = 1, },
	[13797]={ level = 1, },
	[14298]={ level = 1, },
	[14299]={ level = 1, },
	[14300]={ level = 1, },
	[14301]={ level = 1, },
	[22915]={ level = 1, },
	[19577]={ level = 1, },
	[1513]={ level = 1, },
	[14326]={ level = 1, },
	[14327]={ level = 1, },
	[19503]={ level = 1, },
	[3043]={ level = 1, },
	[14275]={ level = 1, },
	[14276]={ level = 1, },
	[14277]={ level = 1, },
	[1978]={ level = 1, },
	[13549]={ level = 1, },
	[13550]={ level = 1, },
	[13551]={ level = 1, },
	[13552]={ level = 1, },
	[13553]={ level = 1, },
	[13554]={ level = 1, },
	[13555]={ level = 1, },
	[25295]={ level = 1, },
	[19506]={ level = 1, },
	[3034]={ level = 1, },
	[14279]={ level = 1, },
	[14280]={ level = 1, },
	[2974]={ level = 1, },
	[14267]={ level = 1, },
	[14268]={ level = 1, },
	[19386]={ level = 1, },
	[24132]={ level = 1, },
	[24133]={ level = 1, },
	[1008]={ level = 1, },
	[8455]={ level = 1, },
	[10169]={ level = 1, },
	[10170]={ level = 1, },
	[23028]={ level = 1, },
	[1459]={ level = 1, },
	[1460]={ level = 1, },
	[1461]={ level = 1, },
	[10156]={ level = 1, },
	[10157]={ level = 1, },
	[11113]={ level = 1, },
	[13018]={ level = 1, },
	[13019]={ level = 1, },
	[13020]={ level = 1, },
	[13021]={ level = 1, },
	[10]={ level = 1, },
	[6141]={ level = 1, },
	[8427]={ level = 1, },
	[10185]={ level = 1, },
	[10186]={ level = 1, },
	[10187]={ level = 1, },
	[6136]={ level = 1, },
	[120]={ level = 1, },
	[8492]={ level = 1, },
	[10159]={ level = 1, },
	[10160]={ level = 1, },
	[10161]={ level = 1, },
	[18469]={ level = 1, },
	[604]={ level = 1, },
	[8450]={ level = 1, },
	[8451]={ level = 1, },
	[10173]={ level = 1, },
	[10174]={ level = 1, },
	[28772]={ level = 1, },
	[22959]={ level = 1, },
	[133]={ level = 1, },
	[143]={ level = 1, },
	[145]={ level = 1, },
	[3140]={ level = 1, },
	[8400]={ level = 1, },
	[8401]={ level = 1, },
	[8402]={ level = 1, },
	[10148]={ level = 1, },
	[10149]={ level = 1, },
	[10150]={ level = 1, },
	[10151]={ level = 1, },
	[25306]={ level = 1, },
	[2120]={ level = 1, },
	[2121]={ level = 1, },
	[8422]={ level = 1, },
	[8423]={ level = 1, },
	[10215]={ level = 1, },
	[10216]={ level = 1, },
	[122]={ level = 1, },
	[865]={ level = 1, },
	[6131]={ level = 1, },
	[10230]={ level = 1, },
	[116]={ level = 1, },
	[205]={ level = 1, },
	[837]={ level = 1, },
	[7322]={ level = 1, },
	[8406]={ level = 1, },
	[8407]={ level = 1, },
	[8408]={ level = 1, },
	[10179]={ level = 1, },
	[10180]={ level = 1, },
	[10181]={ level = 1, },
	[25304]={ level = 1, },
	[12355]={ level = 1, },
	[118]={ level = 1, },
	[12824]={ level = 1, },
	[12825]={ level = 1, },
	[12826]={ level = 1, },
	[28270]={ level = 1, },
	[28271]={ level = 1, },
	[28272]={ level = 1, },
	[11366]={ level = 1, },
	[12505]={ level = 1, },
	[12522]={ level = 1, },
	[12523]={ level = 1, },
	[12524]={ level = 1, },
	[12525]={ level = 1, },
	[12526]={ level = 1, },
	[18809]={ level = 1, },
	[1044]={ level = 1, },
	[20217]={ level = 1, },
	[19977]={ level = 1, },
	[19978]={ level = 1, },
	[19979]={ level = 1, },
	[19740]={ level = 1, },
	[19834]={ level = 1, },
	[19835]={ level = 1, },
	[19836]={ level = 1, },
	[19837]={ level = 1, },
	[19838]={ level = 1, },
	[25291]={ level = 1, },
	[1022]={ level = 1, },
	[5599]={ level = 1, },
	[10278]={ level = 1, },
	[6940]={ level = 1, },
	[20729]={ level = 1, },
	[20911]={ level = 1, },
	[20912]={ level = 1, },
	[20913]={ level = 1, },
	[20914]={ level = 1, },
	[19742]={ level = 1, },
	[19850]={ level = 1, },
	[19852]={ level = 1, },
	[19853]={ level = 1, },
	[19854]={ level = 1, },
	[25290]={ level = 1, },
	[20116]={ level = 1, },
	[20922]={ level = 1, },
	[20923]={ level = 1, },
	[20924]={ level = 1, },
	[26573]={ level = 1, },
	[19746]={ level = 1, },
	[19752]={ level = 1, },
	[465]={ level = 1, },
	[10290]={ level = 1, },
	[643]={ level = 1, },
	[10291]={ level = 1, },
	[1032]={ level = 1, },
	[10292]={ level = 1, },
	[10293]={ level = 1, },
	[19891]={ level = 1, },
	[19899]={ level = 1, },
	[19900]={ level = 1, },
	[19888]={ level = 1, },
	[19897]={ level = 1, },
	[19898]={ level = 1, },
	[25898]={ level = 1, },
	[25890]={ level = 1, },
	[25782]={ level = 1, },
	[25916]={ level = 1, },
	[25895]={ level = 1, },
	[25899]={ level = 1, },
	[25894]={ level = 1, },
	[25918]={ level = 1, },
	[853]={ level = 1, },
	[5588]={ level = 1, },
	[5589]={ level = 1, },
	[10308]={ level = 1, },
	[20927]={ level = 1, },
	[20928]={ level = 1, },
	[20925]={ level = 1, },
	[20066]={ level = 1, },
	[7294]={ level = 1, },
	[10298]={ level = 1, },
	[10299]={ level = 1, },
	[10300]={ level = 1, },
	[10301]={ level = 1, },
	[20218]={ level = 1, },
	[19876]={ level = 1, },
	[19895]={ level = 1, },
	[19896]={ level = 1, },
	[552]={ level = 1, },
	[28810]={ level = 1, },
	[15269]={ level = 1, },
	[2944]={ level = 1, },
	[19276]={ level = 1, },
	[19277]={ level = 1, },
	[19278]={ level = 1, },
	[19279]={ level = 1, },
	[19280]={ level = 1, },
	[14752]={ level = 1, },
	[14818]={ level = 1, },
	[14819]={ level = 1, },
	[27841]={ level = 1, },
	[28804]={ level = 1, },
	[13896]={ level = 1, },
	[19271]={ level = 1, },
	[19273]={ level = 1, },
	[19274]={ level = 1, },
	[19275]={ level = 1, },
	[6346]={ level = 1, },
	[9035]={ level = 1, },
	[19281]={ level = 1, },
	[19282]={ level = 1, },
	[19283]={ level = 1, },
	[19284]={ level = 1, },
	[19285]={ level = 1, },
	[14914]={ level = 1, },
	[15262]={ level = 1, },
	[15263]={ level = 1, },
	[15264]={ level = 1, },
	[15265]={ level = 1, },
	[15266]={ level = 1, },
	[15267]={ level = 1, },
	[15261]={ level = 1, },
	[14893]={ level = 1, },
	[605]={ level = 1, },
	[10911]={ level = 1, },
	[10912]={ level = 1, },
	[15407]={ level = 1, },
	[17311]={ level = 1, },
	[17312]={ level = 1, },
	[17313]={ level = 1, },
	[17314]={ level = 1, },
	[18807]={ level = 1, },
	[453]={ level = 1, },
	[8192]={ level = 1, },
	[10953]={ level = 1, },
	[2096]={ level = 1, },
	[10909]={ level = 1, },
	[10060]={ level = 1, },
	[1243]={ level = 1, },
	[1244]={ level = 1, },
	[1245]={ level = 1, },
	[2791]={ level = 1, },
	[10937]={ level = 1, },
	[10938]={ level = 1, },
	[17]={ level = 1, },
	[592]={ level = 1, },
	[600]={ level = 1, },
	[3747]={ level = 1, },
	[6065]={ level = 1, },
	[6066]={ level = 1, },
	[10898]={ level = 1, },
	[10899]={ level = 1, },
	[10900]={ level = 1, },
	[10901]={ level = 1, },
	[21562]={ level = 1, },
	[21564]={ level = 1, },
	[27683]={ level = 1, },
	[27681]={ level = 1, },
	[8122]={ level = 1, },
	[8124]={ level = 1, },
	[10888]={ level = 1, },
	[10890]={ level = 1, },
	[139]={ level = 1, },
	[6074]={ level = 1, },
	[6075]={ level = 1, },
	[6076]={ level = 1, },
	[6077]={ level = 1, },
	[6078]={ level = 1, },
	[10927]={ level = 1, },
	[10928]={ level = 1, },
	[10929]={ level = 1, },
	[25315]={ level = 1, },
	[976]={ level = 1, },
	[10957]={ level = 1, },
	[10958]={ level = 1, },
	[589]={ level = 1, },
	[594]={ level = 1, },
	[970]={ level = 1, },
	[992]={ level = 1, },
	[2767]={ level = 1, },
	[10892]={ level = 1, },
	[10893]={ level = 1, },
	[10894]={ level = 1, },
	[15258]={ level = 1, },
	[15487]={ level = 30, },
	[10797]={ level = 1, },
	[19296]={ level = 1, },
	[19299]={ level = 1, },
	[19302]={ level = 1, },
	[19303]={ level = 1, },
	[19304]={ level = 1, },
	[19305]={ level = 1, },
	[6788]={ level = 1, },
	[15286]={ level = 1, },
	[28418]={ level = 1, },
	[2094]={ level = 1, },
	[1833]={ level = 1, },
	[8647]={ level = 1, },
	[8649]={ level = 1, },
	[8650]={ level = 1, },
	[11197]={ level = 1, },
	[11198]={ level = 1, },
	[703]={ level = 1, },
	[8631]={ level = 1, },
	[8632]={ level = 1, },
	[8633]={ level = 1, },
	[11289]={ level = 1, },
	[11290]={ level = 1, },
	[26108]={ level = 1, },
	[1776]={ level = 1, },
	[1777]={ level = 1, },
	[8629]={ level = 1, },
	[11285]={ level = 1, },
	[11286]={ level = 1, },
	[16511]={ level = 1, },
	[17347]={ level = 1, },
	[17348]={ level = 1, },
	[408]={ level = 1, },
	[8643]={ level = 1, },
	[14251]={ level = 1, },
	[1943]={ level = 1, },
	[8639]={ level = 1, },
	[8640]={ level = 1, },
	[11273]={ level = 1, },
	[11274]={ level = 1, },
	[11275]={ level = 1, },
	[6770]={ level = 1, },
	[2070]={ level = 1, },
	[11297]={ level = 1, },
	[16177]={ level = 1, },
	[8050]={ level = 1, },
	[8052]={ level = 1, },
	[8053]={ level = 1, },
	[10447]={ level = 1, },
	[10448]={ level = 1, },
	[29228]={ level = 1, },
	[8056]={ level = 1, },
	[8058]={ level = 1, },
	[10472]={ level = 1, },
	[10473]={ level = 1, },
	[324]={ level = 1, },
	[325]={ level = 1, },
	[905]={ level = 1, },
	[945]={ level = 1, },
	[8134]={ level = 1, },
	[10431]={ level = 1, },
	[10432]={ level = 1, },
	[131]={ level = 1, },
	[546]={ level = 1, },
	[18111]={ level = 1, },
	[710]={ level = 1, },
	[18647]={ level = 1, },
	[172]={ level = 1, },
	[6222]={ level = 1, },
	[6223]={ level = 1, },
	[7648]={ level = 1, },
	[11671]={ level = 1, },
	[11672]={ level = 1, },
	[25311]={ level = 1, },
	[980]={ level = 1, },
	[1014]={ level = 1, },
	[6217]={ level = 1, },
	[11711]={ level = 1, },
	[11712]={ level = 1, },
	[11713]={ level = 1, },
	[603]={ level = 1, },
	[704]={ level = 1, },
	[7658]={ level = 1, },
	[7659]={ level = 1, },
	[11717]={ level = 1, },
	[17862]={ level = 1, },
	[17937]={ level = 1, },
	[1490]={ level = 1, },
	[11721]={ level = 1, },
	[11722]={ level = 1, },
	[1714]={ level = 1, },
	[11719]={ level = 1, },
	[702]={ level = 1, },
	[1108]={ level = 1, },
	[6205]={ level = 1, },
	[7646]={ level = 1, },
	[11707]={ level = 1, },
	[11708]={ level = 1, },
	[6789]={ level = 1, },
	[17925]={ level = 1, },
	[17926]={ level = 1, },
	[689]={ level = 1, },
	[699]={ level = 1, },
	[709]={ level = 1, },
	[7651]={ level = 1, },
	[11699]={ level = 1, },
	[11700]={ level = 1, },
	[5138]={ level = 1, },
	[6226]={ level = 1, },
	[11703]={ level = 1, },
	[11704]={ level = 1, },
	[1120]={ level = 1, },
	[8288]={ level = 1, },
	[8289]={ level = 1, },
	[11675]={ level = 1, },
	[5782]={ level = 1, },
	[6213]={ level = 1, },
	[6215]={ level = 1, },
	[1949]={ level = 1, },
	[11683]={ level = 1, },
	[11684]={ level = 1, },
	[5484]={ level = 1, },
	[17928]={ level = 1, },
	[348]={ level = 1, },
	[707]={ level = 1, },
	[1094]={ level = 1, },
	[2941]={ level = 1, },
	[11665]={ level = 1, },
	[11667]={ level = 1, },
	[11668]={ level = 1, },
	[25309]={ level = 1, },
	[5740]={ level = 1, },
	[6219]={ level = 1, },
	[11677]={ level = 1, },
	[11678]={ level = 1, },
	[6358]={ level = 1, },
	[18265]={ level = 1, },
	[18879]={ level = 1, },
	[18880]={ level = 1, },
	[18881]={ level = 1, },
	[18093]={ level = 1, },
	[5697]={ level = 1, },
	[6673]={ level = 1, },
	[5242]={ level = 1, },
	[6192]={ level = 1, },
	[11549]={ level = 1, },
	[11550]={ level = 1, },
	[11551]={ level = 1, },
	[25289]={ level = 1, },
	[1161]={ level = 1, },
	[7922]={ level = 1, },
	[12809]={ level = 1, },
	[1160]={ level = 1, },
	[6190]={ level = 1, },
	[11554]={ level = 1, },
	[11555]={ level = 1, },
	[11556]={ level = 1, },
	[676]={ level = 1, },
	[1715]={ level = 1, },
	[7372]={ level = 1, },
	[7373]={ level = 1, },
	[20253]={ level = 1, },
	[20614]={ level = 1, },
	[20615]={ level = 1, },
	[5246]={ level = 1, },
	[694]={ level = 1, },
	[7400]={ level = 1, },
	[7402]={ level = 1, },
	[20559]={ level = 1, },
	[20560]={ level = 1, },
	[21551]={ level = 1, },
	[21552]={ level = 1, },
	[21553]={ level = 1, },
	[12294]={ level = 1, },
	[12323]={ level = 1, },
	[772]={ level = 1, },
	[6546]={ level = 1, },
	[6547]={ level = 1, },
	[6548]={ level = 1, },
	[11572]={ level = 1, },
	[11573]={ level = 1, },
	[11574]={ level = 1, },
	[7386]={ level = 1, },
	[7405]={ level = 1, },
	[8380]={ level = 1, },
	[11596]={ level = 1, },
	[11597]={ level = 1, },
	[6343]={ level = 1, },
	[8198]={ level = 1, },
	[8204]={ level = 1, },
	[8205]={ level = 1, },
	[11580]={ level = 1, },
	[11581]={ level = 1, },
	[23097]={ level = 1, },
	[18798]={ level = 1, },
	[18799]={ level = 1, },
	[13278]={ level = 1, },
	[13141]={ level = 1, },
	[13004]={ level = 1, },
	[28142]={ level = 1, },
	[23273]={ level = 1, },
	[23276]={ level = 1, },
	[5579]={ level = 1, },
	[26481]={ level = 1, },
	[29637]={ level = 1, },
	[11790]={ level = 1, },
	[21992]={ level = 1, },
	[5405]={ level = 23, },
	[5024]={ level = 30, },
	[9632]={ level = 37, },
	[15600]={ level = 53, },
	[16739]={ level = 54, },
	[27675]={ level = 58, },
	[24658]={ level = 58, },
	[24427]={ level = 50, },
	[16604]={ level = 58, },
	[26480]={ level = 60, },
	[21153]={ level = 60, },
	[25891]={ level = 60, },
	[23271]={ level = 60, },
	[29602]={ level = 60, },
	[28777]={ level = 60, },
	[21185]={ level = 60, },
	[28780]={ level = 60, },
	[29625]={ level = 1, },
	[13241]={ level = 1, },
	[4068]={ level = 1, },
	[4062]={ level = 1, },
	[13327]={ level = 1, },
	[21167]={ level = 1, },
	[349981]={ level = 1, },
	[19769]={ level = 1, },
	[746]={ level = 1, },
	[439]={ level = 10, },
	[11196]={ level = 5, },
	[436]={ level = 5, },
	[23033]={ level = 9, },
	[23035]={ level = 10, },
	[3593]={ level = 15, },
	[24383]={ level = 15, },
	[6615]={ level = 20, },
	[3680]={ level = 23, },
	[26276]={ level = 25, },
	[21393]={ level = 35, },
	[16589]={ level = 35, },
	[23452]={ level = 37, },
	[11405]={ level = 38, },
	[3169]={ level = 45, },
	[15700]={ level = 45, },
	[16889]={ level = 46, },
	[17538]={ level = 46, },
	[17628]={ level = 46, },
	[24364]={ level = 47, },
	[22789]={ level = 56, },
};