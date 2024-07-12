--[[----------------------------------------------------------------------------

    LiteButtonAuras
    Copyright 2021 Mike "Xodiv" Battersby

----------------------------------------------------------------------------]]--

local _, LBA = ...

local C_Spell = LBA.C_Spell or C_Spell

local fontPath, fontSize, fontFlags = NumberFontNormal:GetFont()

local defaultAdjust = ( WOW_PROJECT_ID == 1 and 5 or 2 )

local defaults = {
    global = {
    },
    profile = {
        denySpells = {
            [116]       = true, -- Frostbolt (Mage)
            [152175]    = true, -- Whirling Dragon Punch (Monk)
            [190356]    = true, -- Blizzard (Mage)
        },
        auraMap = { },
        color = {
            buff    = { r=0.00, g=0.70, b=0.00 },
            debuff  = { r=1.00, g=0.00, b=0.00 },
            enrage  = { r=1.00, g=0.25, b=0.00 }, -- unused
        },
        glowAlpha = 0.5,
        minAuraDuration = 1.5,
        showTimers = true,
        showStacks = true, -- 更改預設值,
        showSuggestions = true,
        colorTimers = true,
        decimalTimers = true,
        timerAnchor = "BOTTOMLEFT",
        timerAdjust = defaultAdjust,
        stacksAnchor = "TOPLEFT",
        stacksAdjust = defaultAdjust,
        fontPath = fontPath,
        fontSize = 14,
        fontFlags = "THICKOUTLINE",
    },
    char = {
    },
}

LBA.anchorSettings = {
    TOPLEFT     = { "TOPLEFT",       1, -1,     "LEFT" },
    TOP         = { "TOP",           0, -1,     "CENTER" },
    TOPRIGHT    = { "TOPRIGHT",     -1, -1,     "RIGHT" },
    LEFT        = { "LEFT",          1,  0,     "LEFT", },
    CENTER      = { "CENTER",        0,  0,     "CENTER" },
    RIGHT       = { "RIGHT",        -1,  0,     "RIGHT" },
    BOTTOMLEFT  = { "BOTTOMLEFT",    1,  1,     "LEFT" },
    BOTTOM      = { "BOTTOM",        0,  1,     "CENTER" },
    BOTTOMRIGHT = { "BOTTOMRIGHT",  -1,  1,     "RIGHT" },
}

local function IsTrue(x)
    if x == nil or x == false or x == "0" or x == "off" or x == "false" then
        return false
    else
        return true
    end
end


function LBA.InitializeOptions()
    LBA.db = LibStub("AceDB-3.0"):New("LiteButtonAurasDB", defaults, true)
    -- Migrations
    for _, p in pairs(LBA.db.profiles) do
        if p.font then
            if type(p.font) == 'string' then
                if _G[p.font] and _G[p.font].GetFont then
                    p.fontPath, p.fontSize, p.fontFlags = _G[p.font]:GetFont()
                    p.fontSize = math.floor(p.fontSize + 0.5)
                end
            elseif type(p.font) == 'table' then
                p.fontPath, p.fontSize, p.fontFlags = unpack(p.font)
                p.fontSize = math.floor(p.fontSize + 0.5)
            end
            p.font = nil
        end
    end
end

function LBA.SetOption(option, value, key)
    key = key or "profile"
    if not defaults[key] then return end
    if value == "default" or value == DEFAULT:lower() or value == nil then
        value = defaults[key][option]
    end
    if type(defaults[key][option]) == 'boolean' then
        LBA.db[key][option] = IsTrue(value)
    elseif type(defaults[key][option]) == 'number' then
        if tonumber(value) then
            LBA.db[key][option] = tonumber(value)
        end
    elseif LBA.anchorSettings[defaults[key][option]] then
        if  LBA.anchorSettings[value] then
            LBA.db[key][option] = value
        end
    else
        LBA.db[key][option] = value
    end
    LBA.db.callbacks:Fire("OnModified")
end

function LBA.AddAuraMap(auraSpell, abilitySpell)
    auraSpell = tonumber(auraSpell) or auraSpell
    abilitySpell = tonumber(abilitySpell) or abilitySpell

    if LBA.db.profile.auraMap[auraSpell] then
        table.insert(LBA.db.profile.auraMap[auraSpell], abilitySpell)
    else
        LBA.db.profile.auraMap[auraSpell] = { abilitySpell }
    end
    LBA.UpdateAuraMap()
    LBA.db.callbacks:Fire("OnModified")
end

function LBA.RemoveAuraMap(auraSpell, abilitySpell)
    auraSpell = tonumber(auraSpell) or auraSpell
    abilitySpell = tonumber(abilitySpell) or abilitySpell
    if not LBA.db.profile.auraMap[auraSpell] then return end

    tDeleteItem(LBA.db.profile.auraMap[auraSpell], abilitySpell)

    if next(LBA.db.profile.auraMap[auraSpell]) == nil then
        if not defaults.profile.auraMap[auraSpell] then
            LBA.db.profile.auraMap[auraSpell] = nil
        else
            LBA.db.profile.auraMap[auraSpell] = { false }
        end
    end
    LBA.UpdateAuraMap()
    LBA.db.callbacks:Fire("OnModified")
end

function LBA.DefaultAuraMap()
    LBA.db.profile.auraMap = CopyTable(defaults.profile.auraMap)
    LBA.UpdateAuraMap()
    LBA.db.callbacks:Fire("OnModified")
end

function LBA.WipeAuraMap()
    LBA.db.profile.auraMap = {}
    LBA.UpdateAuraMap()
    LBA.db.callbacks:Fire("OnModified")
end

function LBA.AddDenySpell(auraID)
    LBA.db.profile.denySpells[auraID] = true
    LBA.db.callbacks:Fire("OnModified")
end

function LBA.RemoveDenySpell(auraID)
    LBA.db.profile.denySpells[auraID] = nil
    LBA.db.callbacks:Fire("OnModified")
end

function LBA.DefaultDenySpells()
    LBA.db.profile.denySpells = CopyTable(defaults.profile.denySpells)
    LBA.db.callbacks:Fire("OnModified")
end

function LBA.WipeDenySpells()
    table.wipe(LBA.db.profile.denySpells)
    LBA.db.callbacks:Fire("OnModified")
end

function LBA.SpellString(spellID, spellName)
    spellName = NORMAL_FONT_COLOR:WrapTextInColorCode(spellName)
    if spellID then
        return format("%s (%d)", spellName, spellID)
    else
        return spellName
    end
end

function LBA.AuraMapString(auraID, auraName, abilityID, abilityName)
    return format(
                "%s on %s",
                LBA.SpellString(auraID, auraName),
                LBA.SpellString(abilityID, abilityName)
            )
end

function LBA.GetAuraMapList()
    local out = { }
    for showAura, onAbilityTable in pairs(LBA.db.profile.auraMap) do
        for _, onAbility in ipairs(onAbilityTable) do
            local auraName, auraID, abilityName, abilityID
            if type(showAura) == 'number' then
                local info = C_Spell.GetSpellInfo(showAura)
                if info then
                    auraName = info.name
                    auraID = info.spellID
                end
            else
                auraName = showAura
            end
            if type(onAbility) == 'number' then
                local info = C_Spell.GetSpellInfo(onAbility)
                if info then
                    abilityName = info.name
                    abilityID = info.spellID
                end
            else
                abilityName = onAbility
            end
            if auraName and abilityName then
                table.insert(out, { auraID, auraName, abilityID, abilityName })
            end
        end
    end
    sort(out, function (a, b) return a[2]..a[4] < b[2]..b[4] end)
    return out
end

function LBA.ApplyDefaultSettings()
    LBA.db:ResetProfile()
end
