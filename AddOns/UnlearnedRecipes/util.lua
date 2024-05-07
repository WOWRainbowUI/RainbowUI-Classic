local addonName, addon = ...
local sources = addon.Enums.Sources

local UNLEARNED_TRAINER = TRADE_SKILLS_UNLEARNED_TAB .. " - " .. TUTORIAL_TITLE14
local UNLEARNED_RECIPE_VENDOR = TRADE_SKILLS_UNLEARNED_TAB .. " - " .. AUCTION_CATEGORY_RECIPES .. " - " .. TUTORIAL_TITLE20 
local UNLEARNED_RECIPE_WORLDDROP = TRADE_SKILLS_UNLEARNED_TAB .. " - " .. AUCTION_CATEGORY_RECIPES .. " - " .. TRANSMOG_SOURCE_4
local UNLEARNED_RECIPE_OTHER = TRADE_SKILLS_UNLEARNED_TAB .. " - " .. AUCTION_CATEGORY_RECIPES .. " - " .. BINDING_HEADER_OTHER
local UNLEARNED_UNKNOWN = TRADE_SKILLS_UNLEARNED_TAB .. " - " .. COMBATLOG_FILTER_STRING_UNKNOWN_UNITS

function addon.GetRecipeRequirementText(data, itemCallback)
    local requirement, source, vendors
    if data.source == sources.Trainer then
        requirement = addon.Strings.Sources.Trainer
    elseif data.source == sources.Item then
        requirement = addon.Strings.Sources.Recipe
            
        local item = Item:CreateFromItemID(data.sourceItemID)
        item:ContinueOnItemLoad(function()
            itemCallback(item)
        end)
        
        if data.itemSource == sources.Vendors then
            local itemVendors = CopyTable(data.itemVendors)
            local numVendors = 0
            for key, vendorID in pairs(itemVendors) do
                local vendorData = addon.db.Vendors[vendorID]
                if not vendorData then
                    itemVendors[key] = nil
                else
                    numVendors = numVendors + 1
                end
            end
            if numVendors > 0 then
                source = addon.Strings.Sources.Vendors..": "
                vendors = {}
                local first = false
                for key, vendorID in pairs(itemVendors) do
                    local vendorData = addon.db.Vendors[vendorID]
                    table.insert(vendors, vendorData)
                    if not first then
                        source = source..vendorData.name
                        first = true
                    else
                        source = source..", "..vendorData.name
                    end
                end
            else
                source = FACTION .. " " .. LOCKED
            end
        elseif data.itemSource == sources.WorldDrop then
            source = addon.Strings.Sources.WorldDrop
        elseif type(data.itemSource) == "string" then
            source = data.itemSource
        elseif data.itemSource == sources.Quest then
            source = addon.Strings.Sources.Quest
        elseif data.itemSource == sources.ZoneDrop then
            source = addon.Strings.Sources.ZoneDrop
        elseif data.itemSource == sources.Drop then
            source = addon.Strings.Sources.Drop .. " " .. data.itemSourceDropName
        else
            source = "[NYI] " .. data.itemSource 
        end
        if data.itemSourceZoneID then
            source = source .. ": " .. C_Map.GetAreaInfo(data.itemSourceZoneID)
        end
    end
    return requirement, source, vendors
end

function addon.GetRecipeDB(professionName, getCraftInfoFunc, currentSkill, includeHeaders, numCrafts)
    local skipCache = false
    local db
    for key, spellName in pairs(addon.Strings.Professions) do
        if spellName == professionName then
            db = addon.db[key]
            if db then
                for i = 1, numCrafts do
                    local craftName = getCraftInfoFunc(i)
                    if not craftName or craftName == "" then
                        skipCache = true
                    end
                    for tableIndex, data in pairs(db) do
                        if GetSpellInfo(data.spellID) == nil then
                            skipCache = true
                        end
                        if GetSpellInfo(data.spellID) == craftName then
                            db[tableIndex] = nil
                        end
                    end
                end
            end
            break
        end
    end
    
    if db then
        db = CopyTable(db)
        
        for tableIndex, data in pairs(db) do
            if data.minSkill > currentSkill then
                db[tableIndex] = nil
            end
        end
        
        local trainerDB, recipeVendorDB, recipeWorldDropDB, recipeOtherDB, unknownDB = {}, {}, {}, {}, {}
        for tableIndex, data in pairs(db) do
            if data.source == sources.Trainer then
                table.insert(trainerDB, data)
            elseif data.source == sources.Item then
                if (data.itemSource == sources.WorldDrop) or (data.itemSource == sources.Drop) then
                    table.insert(recipeWorldDropDB, data)
                elseif data.itemSource == sources.Vendors then
                    table.insert(recipeVendorDB, data)
                else
                    table.insert(recipeOtherDB, data)
                end
            elseif data.source == sources.Unknown then
                table.insert(unknownDB, data)
            end
        end

        if includeHeaders then
            if #trainerDB > 0 then
                table.insert(trainerDB, 1, {header = UNLEARNED_TRAINER})
            end
            if #recipeVendorDB > 0 then
               table.insert(recipeVendorDB, 1, {header = UNLEARNED_RECIPE_VENDOR})
            end
            if #recipeWorldDropDB > 0 then
               table.insert(recipeWorldDropDB, 1, {header = UNLEARNED_RECIPE_WORLDDROP})
            end
            if #recipeOtherDB > 0 then
               table.insert(recipeOtherDB, 1, {header = UNLEARNED_RECIPE_OTHER})
            end
            if #unknownDB > 0 then
                table.insert(unknownDB, 1, {header = UNLEARNED_UNKNOWN})
            end
        end
        
        db = {}
        for _, d in ipairs({trainerDB, recipeVendorDB, recipeWorldDropDB, recipeOtherDB, unknownDB}) do
            for _, data in ipairs(d) do
                table.insert(db, data)
            end
        end
    end
    
    return db, skipCache
end

