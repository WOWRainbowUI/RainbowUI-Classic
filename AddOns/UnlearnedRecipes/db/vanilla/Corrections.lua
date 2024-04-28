local addonName, addon = ...
local sources = addon.Enums.Sources

-- Alchemist's Stone, from TBC, included in the Classic game files but unavailable
addon.db.Alchemy[24266] = nil

-- Tailoring starting recipes
addon.db.Tailoring[2963] = nil
addon.db.Tailoring[2387] = nil
addon.db.Tailoring[3915] = nil
addon.db.Tailoring[12044] = nil

-- Tailoring version of Gordok Ogre Suit, comes from a quest in Dire Maul
addon.db.Tailoring[22813].source = sources.Quest
addon.db.Tailoring[22813].sourceQuestID = 5518

-- Merge the relevant Engineering specialisation recipes into Engineering
if C_QuestLog.IsQuestFlaggedCompleted(3639) then
    for k, v in pairs(addon.db.GoblinEngineering) do
        addon.db.Engineering[k] = v
    end
end
if C_QuestLog.IsQuestFlaggedCompleted(3643) then
    for k, v in pairs(addon.db.GnomishEngineering) do
        addon.db.Engineering[k] = v
    end
end
addon.db.GoblinEngineering = nil
addon.db.GnomishEngineering = nil

-- Basic Campfire does not need to be included
addon.db.Cooking[818] = nil

-- Discard all vendor data of the opposite faction
local playersFaction = (UnitFactionGroup("player") == "Horde") and addon.Enums.Reacts.Horde or addon.Enums.Reacts.Ally
for vendorID, vendorData in pairs(addon.db.Vendors) do
    if vendorData.react and (vendorData.react ~= playersFaction) then
        addon.db.Vendors[vendorID] = nil
    end
end

-- Discard season restricted recipes on non-seasonal servers
local isSoD = C_Seasons.GetActiveSeason() == 2
if isSoD then
    addon.db.Tailoring[8764] = nil -- Earthen Vest, has a different recipe 439100 on SoD
    addon.db.Blacksmithing[3503] = nil -- Golden Scale Coif
else
    for _, prof in pairs(addon.db) do
        for id, data in pairs(prof) do
            if data.requiresSeason == addon.Enums.Restrictions.SoD then
                prof[id] = nil
            end
        end
    end

end

-- Pearl-handled dagger, requires 115, wowhead lists 110 for some reason?
-- https://www.wowhead.com/classic/spell=6517/pearl-handled-dagger#comments
addon.db.Blacksmithing[6517].minSkill = 115

-- Smelt Truesilver is taught by the trainer but not listed on wowhead for some reason
addon.db.Mining[10098].source = sources.Trainer
