local AddOnName, XIVBar = ...;
local _G = _G;
local xb = XIVBar;
local L = XIVBar.L;

local SystemModule = xb:NewModule("SystemModule", 'AceEvent-3.0', 'AceHook-3.0')

local GetNumAddOns = C_AddOns.GetNumAddOns
local GetAddOnInfo = C_AddOns.GetAddOnInfo

function SystemModule:GetName()
    return SYSTEMOPTIONS_MENU;
end

function SystemModule:OnInitialize()
    self.elapsed = 0
end

function SystemModule:OnEnable()
    if self.systemFrame == nil then
        self.systemFrame = CreateFrame("FRAME", nil, xb:GetFrame('bar'))
        xb:RegisterFrame('systemFrame', self.systemFrame)
    end

    self.systemFrame:Show()
    self:CreateFrames()
    self:RegisterFrameEvents()
    self:Refresh()
end

function SystemModule:OnDisable()
    self.systemFrame:Hide()
    self.fpsFrame:SetScript('OnUpdate', nil)
end

function SystemModule:Refresh()
    local db = xb.db.profile
    if self.systemFrame == nil then
        return
    end
    if not db.modules.system.enabled then
        self:Disable();
        return
    end

    if InCombatLockdown() then
        self:UpdateTexts()
        return
    end

    local iconSize = db.text.fontSize -- + db.general.barPadding

    self.fpsIcon:SetTexture(xb.constants.mediaPath .. 'datatexts\\fps')
    self.fpsIcon:SetSize(iconSize, iconSize)
    self.fpsIcon:SetPoint('LEFT')
    self.fpsIcon:SetVertexColor(xb:GetColor('normal'))

    self.fpsText:SetFont(xb:GetFont(db.text.fontSize))

    self.fpsText:SetPoint('RIGHT', -5, 0)
    self.fpsText:SetText('000' .. FPS_ABBR) -- get the widest we can be
    local fpsWidest = self.fpsText:GetStringWidth() + 5

    self.pingIcon:SetTexture(xb.constants.mediaPath .. 'datatexts\\ping')
    self.pingIcon:SetSize(iconSize, iconSize)
    self.pingIcon:SetPoint('LEFT')
    self.pingIcon:SetVertexColor(xb:GetColor('normal'))

    self.pingText:SetFont(xb:GetFont(db.text.fontSize))
    if db.modules.system.showWorld then
        self.worldPingText:SetFont(xb:GetFont(db.text.fontSize))
    end

    self.fpsText:SetTextColor(xb:GetColor('normal'))
    self.pingText:SetTextColor(xb:GetColor('normal'))
    if db.modules.system.showWorld then
        self.worldPingText:SetTextColor(xb:GetColor('normal'))
    end

    if self.fpsFrame:IsMouseOver() then
        self.fpsText:SetTextColor(unpack(xb:HoverColors()))
    end

    if self.pingFrame:IsMouseOver() then
        self.pingText:SetTextColor(unpack(xb:HoverColors()))
        if db.modules.system.showWorld then
            self.worldPingText:SetTextColor(unpack(xb:HoverColors()))
        end
    end

    if db.modules.system.showWorld then
        self.worldPingText:SetText('000' .. MILLISECONDS_ABBR)
    elseif self.worldPing then
        self.worldPingText:SetText('')
    end

    self.pingText:SetText('000' .. MILLISECONDS_ABBR) -- get the widest we can be

    local pingWidest = self.pingText:GetStringWidth() + 5
    if db.modules.system.showWorld then
        self.worldPingText:SetPoint('LEFT', self.pingText, 'RIGHT', 5, 0)
        pingWidest = pingWidest + self.worldPingText:GetStringWidth() + 5
    end
    self.pingText:SetPoint('LEFT', self.pingIcon, 'RIGHT', 5, 0)

    self:UpdateTexts()

    self.fpsFrame:SetSize(fpsWidest + iconSize + 5, xb:GetHeight())
    self.fpsFrame:SetPoint('LEFT')

    self.pingFrame:SetSize(pingWidest + iconSize, xb:GetHeight())
    self.pingFrame:SetPoint('LEFT', self.fpsFrame, 'RIGHT', 5, 0)

    self.systemFrame:SetSize(self.fpsFrame:GetWidth() + self.pingFrame:GetWidth(), xb:GetHeight())

    -- self.systemFrame:SetSize()
    local relativeAnchorPoint = 'LEFT'
    local xOffset = db.general.moduleSpacing
    local parentFrame = xb:GetFrame('goldFrame');
    if not xb.db.profile.modules.gold.enabled then
        if xb.db.profile.modules.travel.enabled then
            parentFrame = xb:GetFrame('travelFrame');
        else
            relativeAnchorPoint = 'RIGHT'
            xOffset = 15
            parentFrame = self.systemFrame:GetParent();
        end
    end
    self.systemFrame:SetPoint('RIGHT', parentFrame, relativeAnchorPoint, -(xOffset)-30, 0)
end

function SystemModule:UpdateTexts()
    local db = xb.db.profile
    if not db.modules.system.enabled then
        return;
    end

    self.fpsText:SetText(floor(GetFramerate()) .. FPS_ABBR)
    local _, _, homePing, worldPing = GetNetStats()
    self.pingText:SetText(L['L'] .. ": " .. floor(homePing) .. MILLISECONDS_ABBR)
    if xb.db.profile.modules.system.showWorld then
        self.worldPingText:SetText(L['W'] .. ": " .. floor(worldPing) .. MILLISECONDS_ABBR)
    end
end

function SystemModule:CreateFrames()
    self.fpsFrame = self.fpsFrame or CreateFrame('BUTTON', nil, self.systemFrame)
    self.fpsIcon = self.fpsIcon or self.fpsFrame:CreateTexture(nil, 'OVERLAY')
    self.fpsText = self.fpsText or self.fpsFrame:CreateFontString(nil, 'OVERLAY')

    self.pingFrame = self.pingFrame or CreateFrame('BUTTON', nil, self.systemFrame)
    self.pingIcon = self.pingIcon or self.pingFrame:CreateTexture(nil, 'OVERLAY')
    self.pingText = self.pingText or self.pingFrame:CreateFontString(nil, 'OVERLAY')
    self.worldPingText = self.worldPingText or self.pingFrame:CreateFontString(nil, 'OVERLAY')
end

function SystemModule:HoverFunction()
    if InCombatLockdown() then
        return;
    end
    if self.fpsFrame:IsMouseOver() then
        self.fpsText:SetTextColor(unpack(xb:HoverColors()))
    end
    if self.pingFrame:IsMouseOver() then
        self.pingText:SetTextColor(unpack(xb:HoverColors()))
        if xb.db.profile.modules.system.showWorld then
            self.worldPingText:SetTextColor(unpack(xb:HoverColors()))
        end
    end
    if xb.db.profile.modules.system.showTooltip then
        self:ShowTooltip()
    end
end

function SystemModule:LeaveFunction()
    if InCombatLockdown() then
        return
    end
    local db = xb.db.profile
    self.fpsText:SetTextColor(xb:GetColor('normal'))
    self.pingText:SetTextColor(xb:GetColor('normal'))
    if xb.db.profile.modules.system.showWorld then
        self.worldPingText:SetTextColor(xb:GetColor('normal'))
    end
    if xb.db.profile.modules.system.showTooltip then
        GameTooltip:Hide()
    end
end

function SystemModule:SetOnClickScript(prefix)
    self[prefix .. 'Frame']:SetScript('OnClick', function(_, button)
        if InCombatLockdown() then
            return
        end
        if button == 'LeftButton' then
            UpdateAddOnMemoryUsage()
            local before = collectgarbage('count')
            collectgarbage()
            local after = collectgarbage('count')
            local memDiff = before - after
            local memString = ''
            if memDiff > 1024 then
                memString = string.format("%.2f MB", (memDiff / 1024))
            else
                memString = string.format("%.0f KB", floor(memDiff))
            end
            print("|cff6699FFXIV_Databar|r: " .. L['Cleaned'] .. ": |cffffff00" .. memString)
        end
    end)
end

function SystemModule:RegisterFrameEvents()
    self.fpsFrame:EnableMouse(true)
    self.fpsFrame:RegisterForClicks("AnyUp")

    self.pingFrame:EnableMouse(true)
    self.pingFrame:RegisterForClicks("AnyUp")

    self.fpsFrame:SetScript('OnEnter', function()
        self:HoverFunction()
    end)

    self.fpsFrame:SetScript('OnLeave', function()
        self:LeaveFunction()
    end)

    self.pingFrame:SetScript('OnEnter', function()
        self:HoverFunction()
    end)

    self.pingFrame:SetScript('OnLeave', function()
        self:LeaveFunction()
    end)

    self:SetOnClickScript('fps')
    self:SetOnClickScript('ping')

    self.fpsFrame:SetScript('OnUpdate', function(self, elapsed)
        SystemModule.elapsed = SystemModule.elapsed + elapsed
        if SystemModule.elapsed >= 1 then
            if InCombatLockdown() then
                SystemModule:UpdateTexts()
            else
                SystemModule:Refresh()
            end
            SystemModule.elapsed = 0
        end
    end)

    self:RegisterMessage('XIVBar_FrameHide', function(_, name)
        if name == 'goldFrame' then
            self:Refresh()
        end
    end)

    self:RegisterMessage('XIVBar_FrameShow', function(_, name)
        if name == 'goldFrame' then
            self:Refresh()
        end
    end)
end

function SystemModule:ShowTooltip()
    local totalAddons = GetNumAddOns()
    local totalUsage = 0
    local memTable = {}

    UpdateAddOnMemoryUsage()

    for i = 1, totalAddons do
        local _, aoName, _ = GetAddOnInfo(i)
        local mem = GetAddOnMemoryUsage(i)
        table.insert(memTable, {
            memory = mem,
            name = aoName
        })
    end

    table.sort(memTable, function(a, b)
        return a.memory > b.memory
    end)

    GameTooltip:SetOwner(self.systemFrame, 'ANCHOR_' .. xb.miniTextPosition)
    GameTooltip:ClearLines()
    local r, g, b, _ = unpack(xb:HoverColors())
    GameTooltip:AddLine("|cFFFFFFFF[|r" .. L['Memory Usage'] .. "|cFFFFFFFF]|r", r, g, b)
    GameTooltip:AddLine(" ")

    local toLoop = xb.db.profile.modules.system.addonsToShow
    if IsShiftKeyDown() and xb.db.profile.modules.system.showAllOnShift then
        toLoop = totalAddons
    end

    for i = 1, toLoop do
        local memString = ''
        if memTable[i] then
            if memTable[i].memory > 0 then
                if memTable[i].memory > 1024 then
                    memString = string.format("%.2f MB", (memTable[i].memory / 1024))
                else
                    memString = string.format("%.0f KB", floor(memTable[i].memory))
                end
                GameTooltip:AddDoubleLine(memTable[i].name, memString, r, g, b, 1, 1, 1)
            end
        end
    end

    GameTooltip:AddLine(" ")
    GameTooltip:AddDoubleLine('<' .. L['Left-Click'] .. '>', L['Garbage Collect'], r, g, b, 1, 1, 1)
    GameTooltip:Show()
end

function SystemModule:GetDefaultOptions()
    return 'system', {
        enabled = false,
        showTooltip = true,
        showWorld = true,
        addonsToShow = 10,
        showAllOnShift = true
    }
end

function SystemModule:GetConfig()
    return {
        name = self:GetName(),
        type = "group",
        args = {
            enable = {
                name = ENABLE,
                order = 0,
                type = "toggle",
                get = function()
                    return xb.db.profile.modules.system.enabled;
                end,
                set = function(_, val)
                    xb.db.profile.modules.system.enabled = val
                    if val then
                        self:Enable()
                    else
                        self:Disable()
                    end
                end,
                width = "full"
            },
            showTooltip = {
                name = L['Show Tooltips'],
                order = 1,
                type = "toggle",
                get = function()
                    return xb.db.profile.modules.system.showTooltip;
                end,
                set = function(_, val)
                    xb.db.profile.modules.system.showTooltip = val;
                    self:Refresh();
                end
            },
            showWorld = {
                name = L['Show World Ping'],
                order = 2,
                type = "toggle",
                get = function()
                    return xb.db.profile.modules.system.showWorld;
                end,
                set = function(_, val)
                    xb.db.profile.modules.system.showWorld = val;
                    self:Refresh();
                end
            },
            addonsToShow = {
                name = L['Addons to Show in Tooltip'], -- DROPDOWN, GoldModule:GetCurrencyOptions
                type = "range",
                order = 3,
                min = 1,
                max = 25,
                step = 1,
                get = function()
                    return xb.db.profile.modules.system.addonsToShow;
                end,
                set = function(info, value)
                    xb.db.profile.modules.system.addonsToShow = value;
                    self:Refresh();
                end
            },
            showAllOnShift = {
                name = L['Show All Addons in Tooltip with Shift'],
                order = 4,
                type = "toggle",
                get = function()
                    return xb.db.profile.modules.system.showAllOnShift;
                end,
                set = function(_, val)
                    xb.db.profile.modules.system.showAllOnShift = val;
                    self:Refresh();
                end
            }
        }
    }
end
