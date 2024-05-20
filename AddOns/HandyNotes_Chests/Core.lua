--[[
                                ----o----(||)----oo----(||)----o----

                                        Chests, Gear and More

                                        v1.11 - 10th May 2024
                                Copyright (C) Taraezor / Chris Birch
                                         All Rights Reserved

                                ----o----(||)----oo----(||)----o----
]]

local myName, ns = ...
ns.db = {}
-- From Data.lua
ns.points = {}
ns.textures = {}
ns.scaling = {}
-- Brown theme #2
ns.colour = {}
ns.colour.prefix	= "\124cFFB86500" -- Dark Bisque
ns.colour.highlight = "\124cFF954535" -- Chestnut
ns.colour.plaintext = "\124cFF7F5217" -- Red Dirt

local defaults = { profile = { iconScale = 2.5, iconAlpha = 1, showCoords = false,
								chest1 = 1, chest2 = 2, chest3 = 3, voidTouched = 4,
								bestPets = 5, cozySleeping = 6, felPortal = 10,
								priest = 9, gnomeregan = 13, nightmare = 12,
								nightmareSeed = 7 } }
local pluginHandler = {}

ns.continents = {}
ns.continents[ 947 ] = true -- World Map
ns.continents[ 1414 ] = true -- Kalimdor
ns.continents[ 1415 ] = true -- Eastern Kingdoms

-- Upvalues
local GameTooltip = _G.GameTooltip
local GetMapChildrenInfo = C_Map.GetMapChildrenInfo
local IsQuestFlaggedCompleted = C_QuestLog.IsQuestFlaggedCompleted
local LibStub = _G.LibStub
local UIParent = _G.UIParent
local next = next
local HandyNotes = _G.HandyNotes

ns.faction = UnitFactionGroup( "player" )
ns.classLocal, ns.class = UnitClass( "player" )
ns.raceList = { "Human", "Orc", "Dwarf", "Night Elf", "Undead", "Tauren", "Gnome", "Troll" }
ns.race = ns.raceList[ select( 3, UnitRace( "player" ) ) ]

-- ---------------------------------------------------------------------------------------------------------------------------------

function pluginHandler:OnEnter(mapFile, coord)
	if self:GetCenter() > UIParent:GetCenter() then
		GameTooltip:SetOwner(self, "ANCHOR_LEFT")
	else
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
	end

	local pin = ns.points[mapFile] and ns.points[mapFile][coord]
	
	GameTooltip:SetText( ns.colour.prefix ..pin.title )
	if pin.icon < 4 then
		GameTooltip:AddLine( ns.colour.highlight ..ns.L["Chest Rank"] ..pin.icon )
	else
		GameTooltip:AddLine( ns.colour.highlight ..pin.name )
	end
	
	if pin.quest then
		GameTooltip:AddLine( "\n" )
		local completed = false	
		if type( pin.quest ) == "table" then
			for j,w in ipairs( pin.quest ) do
				if w > 0 then
					completed = IsQuestFlaggedCompleted( w )
					GameTooltip:AddDoubleLine( ns.colour.highlight ..ns.L[ pin.questName[ j ] ],
							( completed == true ) and ( "\124cFF00FF00" ..ns.L["Completed"] )
							or ( "\124cFFFF0000" ..ns.L["Not Completed"] ) )
				end
			end
		else
			completed = IsQuestFlaggedCompleted( pin.quest )
			GameTooltip:AddDoubleLine( ns.colour.highlight ..ns.L[ pin.questName[ j ] ],
					( completed == true ) and ( "\124cFF00FF00" ..ns.L["Completed"] )
					or ( "\124cFFFF0000" ..ns.L["Not Completed"] ) )
		end
	end
	
	if pin.tip then
		GameTooltip:AddLine( "\n" ..ns.colour.plaintext ..pin.tip )
	end
	if pin.guide then
		GameTooltip:AddLine( "\n" ..ns.colour.highlight .."Guide\n\n" ..ns.colour.plaintext ..pin.guide )
	end
	
	if ( ns.db.showCoords == true ) then
		local mX, mY = HandyNotes:getXY(coord)
		mX, mY = mX*100, mY*100
		GameTooltip:AddLine( ns.colour.highlight .."(" ..format( "%.02f", mX ) .."," ..format( "%.02f", mY ) ..")" )
	end
	
	GameTooltip:Show()
end

function pluginHandler:OnLeave()
	GameTooltip:Hide()
end

-- ---------------------------------------------------------------------------------------------------------------------------------

local function ShowPinForThisClassQuest( quests )

	-- I decided with v1.05 to not test for completion. If the player doesn't want
	-- to see the icon then he/she should just select the "no display" option.
	-- This code retained for easy future reference here or in my Runes AddOn

	local completed, allZero = false, true
	
	if type( quests ) == "table" then
		for j,w in ipairs( quests ) do
			if w > 0 then
				allZero = false
				completed = IsQuestFlaggedCompleted( w )
				if completed == true then return false end
			end
		end
	elseif quests > 0 then
		allZero = false
		completed = IsQuestFlaggedCompleted( quests )
		if completed == true then return false end
	end
	return not allZero
end

do	
	local function iterator(t, prev)
		if not t then return end
		local coord, pin = next(t, prev)

		while coord do
			if ( pin.faction == nil ) or ( pin.faction == ns.faction ) then
				if ( pin.class == nil ) or ( pin.class == ns.class ) then
					if pin.icon < 4 then
						ns.chestPin = "chest" ..tostring( pin.icon )
						if  ns.db[ ns.chestPin ] > 0 then
							if ns.continents[ ns.mapID ] then
								return coord, nil, ns.textures[ ns.db[ ns.chestPin ] ],
									ns.db.iconScale * ns.scaling[ ns.db[ ns.chestPin ] ], ns.db.iconAlpha
							else
								return coord, nil, ns.textures[ ns.db[ ns.chestPin ] ],
									ns.db.iconScale * ns.scaling[ ns.db[ ns.chestPin ] ] * 0.8, ns.db.iconAlpha
							end
						end
					elseif pin.icon == 4 then
						if ns.db.voidTouched > 0 then
							return coord, nil, ns.textures[ ns.db.voidTouched ],
								ns.db.iconScale * ns.scaling[ ns.db.voidTouched ], ns.db.iconAlpha
						end		
					elseif pin.icon == 5 then
						if ns.db.bestPets > 0 then
							return coord, nil, ns.textures[ ns.db.bestPets ],
								ns.db.iconScale * ns.scaling[ ns.db.bestPets ], ns.db.iconAlpha
						end		
					elseif pin.icon == 6 then
						if ns.db.cozySleeping > 0 then
							return coord, nil, ns.textures[ ns.db.cozySleeping ],
								ns.db.iconScale * ns.scaling[ ns.db.cozySleeping ], ns.db.iconAlpha
						end		
					elseif pin.icon == 7 then
						if ns.db.felPortal > 0 then
							if ns.continents[ ns.mapID ] then
								return coord, nil, ns.textures[ ns.db.felPortal ],
									ns.db.iconScale * ns.scaling[ ns.db.felPortal ], ns.db.iconAlpha
							else
								return coord, nil, ns.textures[ ns.db.felPortal ],
									ns.db.iconScale * ns.scaling[ ns.db.felPortal ] * 0.8, ns.db.iconAlpha
							end		
						end		
					elseif pin.icon == 8 then
						if ( ns.db.priest > 0 ) then
							return coord, nil, ns.textures[ ns.db.priest ],
								ns.db.iconScale * ns.scaling[ ns.db.priest ], ns.db.iconAlpha
						end		
					elseif pin.icon == 9 then
						if ( ns.db.gnomeregan > 0 ) then
							return coord, nil, ns.textures[ ns.db.gnomeregan ],
								ns.db.iconScale * ns.scaling[ ns.db.gnomeregan ], ns.db.iconAlpha
						end		
					elseif pin.icon == 10 then
						if ( ns.db.nightmare > 0 ) then
							return coord, nil, ns.textures[ ns.db.nightmare ],
								ns.db.iconScale * ns.scaling[ ns.db.nightmare ], ns.db.iconAlpha
						end		
					elseif pin.icon == 11 then
						if ( ns.db.nightmareSeed > 0 ) then
							return coord, nil, ns.textures[ ns.db.nightmareSeed ],
								ns.db.iconScale * ns.scaling[ ns.db.nightmareSeed ] * 0.8, ns.db.iconAlpha
						end		
					end
				end
			end
			coord, pin = next(t, coord)
		end
	end
	function pluginHandler:GetNodes2(mapID)
		ns.mapID = mapID
		return iterator, ns.points[mapID]
	end
end

-- ---------------------------------------------------------------------------------------------------------------------------------

ns.choices = "0 = No Map Pin\n1 = " ..ns.L["White"] .."\n2 = " ..ns.L["Purple"] .."\n3 = " ..ns.L["Red"] .."\n4 = " 
				..ns.L["Yellow"] .."\n5 = " ..ns.L["Green"] .."\n6 = " ..ns.L["Grey"] .."\n7 = " ..ns.L["Mana Orb"]
				.."\n8 = " ..ns.L["Phasing"] .."\n9 = " ..ns.L["Raptor egg"] .."\n10 = " ..ns.L["Stars"]
				.."\n11 = " ..ns.L["Cogwheel"] .."\n12 = " ..ns.L["Frost"] .."\n13 = " ..ns.L["Diamond"]
				.."\n14 = " ..ns.L["Screw"] .."\n15 = " ..ns.L["Adrenaline"] .."\n16 = " ..ns.L["Arcane"] .."\n17 = "
				..ns.L["Demonic"] .."\n18 = " ..ns.L["Duty"] .."\n19 = " ..ns.L["Frozen"]
							
-- Interface -> Addons -> Handy Notes -> Plugins -> Chests options
ns.options = {
	type = "group",
	name = ns.L["Chests"],
	desc = ns.L["AddOn Description"],
	get = function(info) return ns.db[info[#info]] end,
	set = function(info, v)
		ns.db[info[#info]] = v
		pluginHandler:Refresh()
	end,
	args = {
		options = {
			type = "group",
			name = " " ..ns.L["Options"],
			inline = true,
			args = {
				iconScale = {
					type = "range",
					name = ns.L["Map Pin Size"],
					desc = ns.L["The Map Pin Size"],
					min = 1, max = 4, step = 0.1,
					arg = "iconScale",
					order = 1,
				},
				iconAlpha = {
					type = "range",
					name = ns.L["Map Pin Alpha"],
					desc = ns.L["The alpha transparency of the map pins"],
					min = 0, max = 1, step = 0.01,
					arg = "iconAlpha",
					order = 2,
				},
				showCoords = {
					type = "toggle",
					name = ns.L["Show Coordinates"],
					desc = ns.L["Show Coordinates Description"] 
							..ns.colour.highlight .."(xx.xx,yy.yy)",
					width = "full",
					arg = "showCoords",
					order = 3,
				},
			},
		},
		icon = {
			type = "group",
			name = ns.L["Map Pin Selections"],
			inline = true,
			args = {
				chest1 = {
					type = "range",
					name = ns.L["Battered Chest"].." 1",
					desc = ns.choices,
					min = 0, max = 19, step = 1,
					arg = "chest1",
					order = 4,
				},
				chest2 = {
					type = "range",
					name = ns.L["Battered Chest"].." 2",
					desc = ns.choices,
					min = 0, max = 19, step = 1,
					arg = "chest2",
					order = 5,
				},
				chest3 = {
					type = "range",
					name = ns.L["Battered Chest"].." 3",
					desc = ns.choices,
					min = 0, max = 19, step = 1,
					arg = "chest3",
					order = 6,
				},
				voidTouched = {
					type = "range",
					name = ns.L["Void Touched"],
					desc = ns.choices,
					min = 0, max = 19, step = 1,
					arg = "voidTouched",
					order = 7,
				},
				gnomeregan = {
					type = "range",
					name = ns.L["Gnomeregan"],
					desc = ns.choices,
					min = 0, max = 19, step = 1,
					arg = "gnomeregan",
					order = 8,
				},
				nightmare = {
					type = "range",
					name = ns.L["Nightmare"],
					desc = ns.choices,
					min = 0, max = 19, step = 1,
					arg = "nightmare",
					order = 9,
				},
				nightmareSeed = {
					type = "range",
					name = ns.L["Nightmare Bloom / Seed"],
					desc = ns.choices,
					min = 0, max = 19, step = 1,
					arg = "nightmareSeed",
					order = 10,
				},
				bestPets = {
					type = "range",
					name = ns.L["Best Hunter Pets"],
					desc = ns.choices,
					min = 0, max = 19, step = 1,
					arg = "bestPets",
					order = 11,
				},
				cozySleeping = {
					type = "range",
					name = ns.L["Cozy Sleeping Bag"],
					desc = ns.choices,
					min = 0, max = 19, step = 1,
					arg = "cozySleeping",
					order = 12,
				},
				felPortal = {
					type = "range",
					name = ns.L["Fel Portal"],
					desc = ns.choices,
					min = 0, max = 19, step = 1,
					arg = "felPortal",
					order = 13,
				},
				priest = {
					type = "range",
					name = ns.L["Priest"],
					desc = ns.choices,
					min = 0, max = 19, step = 1,
					arg = "priest",
					order = 14,
				},
			},
		},
	},
}

-- ---------------------------------------------------------------------------------------------------------------------------------

function pluginHandler:OnEnable()
	local HereBeDragons = LibStub("HereBeDragons-2.0", true)
	if not HereBeDragons then return end
	
	for continentMapID in next, ns.continents do
		local children = GetMapChildrenInfo(continentMapID, nil, true)
		for _, map in next, children do
			local coords = ns.points[map.mapID]
			if coords then
				for coord, pin in next, coords do
					if pin.continent then
						local mx, my = HandyNotes:getXY(coord)
						local cx, cy = HereBeDragons:TranslateZoneCoordinates(mx, my, map.mapID, continentMapID)
						if cx and cy then
							ns.points[continentMapID] = ns.points[continentMapID] or {}
							ns.points[continentMapID][HandyNotes:getCoord(cx, cy)] = pin
						end
					end
				end
			end
		end
	end
	HandyNotes:RegisterPluginDB("Chests", pluginHandler, ns.options)
	ns.db = LibStub("AceDB-3.0"):New("HandyNotes_ChestsDB", defaults, "Default").profile
	pluginHandler:Refresh()
end

function pluginHandler:Refresh()
	self:SendMessage("HandyNotes_NotifyUpdate", "Chests")
end

LibStub("AceAddon-3.0"):NewAddon(pluginHandler, "HandyNotes_ChestsDB", "AceEvent-3.0")

-- ---------------------------------------------------------------------------------------------------------------------------------

SLASH_Chests1, SLASH_Chests2, SLASH_Chests3 = "/chest", "/chests", "/cgm"

local function Slash( options )
	Settings.OpenToCategory( "HandyNotes" )
	LibStub( "AceConfigDialog-3.0" ):SelectGroup( "HandyNotes", "plugins", "Chests" )
end

SlashCmdList[ "Chests" ] = function( options ) Slash( options ) end