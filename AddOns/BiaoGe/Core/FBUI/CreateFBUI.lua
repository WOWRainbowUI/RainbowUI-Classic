local _, ADDONSELF = ...

local Size = ADDONSELF.Size
local RGB = ADDONSELF.RGB
local GetClassRGB = ADDONSELF.GetClassRGB
local SetClassCFF = ADDONSELF.SetClassCFF
local TongBao = ADDONSELF.TongBao
local XiaoFei = ADDONSELF.XiaoFei
local Classpx = ADDONSELF.Classpx
local WCLpm = ADDONSELF.WCLpm
local WCLcolor = ADDONSELF.WCLcolor
local Trade = ADDONSELF.Trade
local Maxt = ADDONSELF.Maxt
local Maxb = ADDONSELF.Maxb
local Maxi = ADDONSELF.Maxi
local BossNum = ADDONSELF.BossNum
local FrameHide = ADDONSELF.FrameHide

local pt = print

BG.zaxiang = {} -- 杂项如果太多，则需要换行

local buttonCount = {}
if BG.IsVanilla_Sod() then
    buttonCount.Temple = {
        [1] = 5,
        [2] = 5,
        [3] = 5,
        [4] = 4,
        [5] = 4,
        [6] = 4,
        [7] = 4,
        [8] = 6,
        [9] = 25,
        [10] = 9,
    }
    BG.zaxiang.Temple = { i = 20 }

    buttonCount.Gno = {
        [1] = 5,
        [2] = 5,
        [3] = 5,
        [4] = 5,
        [5] = 5,
        [6] = 10,
        [7] = 8,
        [8] = 8,
    }
    buttonCount.BD = {
        [1] = 5,
        [2] = 5,
        [3] = 5,
        [4] = 5,
        [5] = 5,
        [6] = 5,
        [7] = 5,
        [8] = 5,
        [9] = 10,
    }
elseif BG.IsVanilla_60() then
    buttonCount.MC = {
        [1] = 3,
        [2] = 3,
        [3] = 3,
        [4] = 4,
        [5] = 3,
        [6] = 3,
        [7] = 3,
        [8] = 4,
        [9] = 4,
        [10] = 5,
        [11] = 7,
        [12] = 12,
        [13] = 15,
    }
    buttonCount.BWL = {
        [1] = 5,
        [2] = 5,
        [3] = 5,
        [4] = 5,
        [5] = 5,
        [6] = 5,
        [7] = 5,
        [8] = 5,
        [9] = 10,
        [10] = 12,
    }
    buttonCount.ZUG = {
        [1] = 4,
        [2] = 4,
        [3] = 4,
        [4] = 4,
        [5] = 4,
        [6] = 4,
        [7] = 4,
        [8] = 4,
        [9] = 4,
        [10] = 4,
        [11] = 9,
        [12] = 10,
    }
    buttonCount.AQL = {
        [1] = 5,
        [2] = 5,
        [3] = 5,
        [4] = 5,
        [5] = 5,
        [6] = 5,
        [7] = 10,
        [8] = 11,
    }
    buttonCount.TAQ = {
        [1] = 4,
        [2] = 4,
        [3] = 4,
        [4] = 4,
        [5] = 4,
        [6] = 4,
        [7] = 4,
        [8] = 4,
        [9] = 5,
        [10] = 12,
        [11] = 12,
    }
    buttonCount.NAXX = {
        [1] = 4,
        [2] = 4,
        [3] = 4,
        [4] = 4,
        [5] = 4,
        [6] = 4,
        [7] = 4,
        [8] = 4,
        [9] = 4,
        [10] = 4,
        [11] = 4,
        [12] = 4,
        [13] = 4,
        [14] = 4,
        [15] = 5,
        [16] = 12,
        [17] = 12,
    }
elseif BG.IsWLK() then
    buttonCount.ICC = {
        [1] = 3,
        [2] = 3,
        [3] = 3,
        [4] = 5,
        [5] = 3,
        [6] = 3,
        [7] = 5,
        [8] = 3,
        [9] = 5,
        [10] = 3,
        [11] = 5,
        [12] = 8,
        [13] = 3,
        [14] = 8,
        [15] = 7,
    }
    buttonCount.TOC = {
        [1] = 5,
        [2] = 5,
        [3] = 5,
        [4] = 5,
        [5] = 5,
        [6] = 7,
        [7] = 8,
        [8] = 12,
        [9] = 14,
    }
    buttonCount.ULD = {
        [1] = 4,
        [2] = 3,
        [3] = 3,
        [4] = 4,
        [5] = 5,
        [6] = 3,
        [7] = 3,
        [8] = 4,
        [9] = 4,
        [10] = 4,
        [11] = 4,
        [12] = 4,
        [13] = 6,
        [14] = 4,
        [15] = 6,
        [16] = 5,
    }
    buttonCount.NAXX = {
        [1] = 5,
        [2] = 5,
        [3] = 5,
        [4] = 5,
        [5] = 5,
        [6] = 5,
        [7] = 5,
        [8] = 5,
        [9] = 5,
        [10] = 5,
        [11] = 5,
        [12] = 5,
        [13] = 5,
        [14] = 6,
        [15] = 6,
        [16] = 11,
        [17] = 5,
        [18] = 6,
        [19] = 3,
    }
elseif BG.IsCTM() then
    buttonCount.BOT = {
        [1] = 6,
        [2] = 6,
        [3] = 6,
        [4] = 6,
        [5] = 6,
        [6] = 20,
        [7] = 13,
    }
    buttonCount.BWD = {
        [1] = 6,
        [2] = 6,
        [3] = 6,
        [4] = 6,
        [5] = 6,
        [6] = 6,
        [7] = 13,
        [8] = 12,
    }
    buttonCount.TOF = {
        [1] = 6,
        [2] = 8,
        [3] = 11,
        [4] = 12,
    }

    buttonCount.ICC = {
        [1] = 3,
        [2] = 3,
        [3] = 3,
        [4] = 5,
        [5] = 3,
        [6] = 3,
        [7] = 5,
        [8] = 3,
        [9] = 5,
        [10] = 3,
        [11] = 5,
        [12] = 8,
        [13] = 3,
        [14] = 8,
        [15] = 7,
    }
    buttonCount.TOC = {
        [1] = 5,
        [2] = 5,
        [3] = 5,
        [4] = 5,
        [5] = 5,
        [6] = 7,
        [7] = 8,
        [8] = 12,
        [9] = 14,
    }
    buttonCount.ULD = {
        [1] = 4,
        [2] = 3,
        [3] = 3,
        [4] = 4,
        [5] = 5,
        [6] = 3,
        [7] = 3,
        [8] = 4,
        [9] = 4,
        [10] = 4,
        [11] = 4,
        [12] = 4,
        [13] = 6,
        [14] = 4,
        [15] = 6,
        [16] = 5,
    }
    buttonCount.NAXX = {
        [1] = 5,
        [2] = 5,
        [3] = 5,
        [4] = 5,
        [5] = 5,
        [6] = 5,
        [7] = 5,
        [8] = 5,
        [9] = 5,
        [10] = 5,
        [11] = 5,
        [12] = 5,
        [13] = 5,
        [14] = 6,
        [15] = 6,
        [16] = 11,
        [17] = 5,
        [18] = 6,
        [19] = 3,
    }
end

function BG.CreateFBUI(FB)
    if not buttonCount[FB] then return end
    tinsert(buttonCount[FB], 8) -- 设置支出格子为x个
    tinsert(buttonCount[FB], 5) -- 设置总览工资格子为x个
    for t = 1, Maxt[FB] do
        local _, bb = BossNum(FB, 0, t)
        for b = 1, bb do
            if BossNum(FB, b, t) > Maxb[FB] + 2 then
                break
            end
            local ii = buttonCount[FB][BossNum(FB, b, t)]
            for i = 1, ii do
                BG.FBBiaoTiUI(FB, t, b, bb, i, ii)
                BG.HistoryBiaoTiUI(FB, t, b, bb, i, ii)
                BG.ReceiveBiaoTiUI(FB, t, b, bb, i, ii)

                BG.FBZhuangBeiUI(FB, t, b, bb, i, ii)
                BG.HistoryZhuangBeiUI(FB, t, b, bb, i, ii)
                BG.ReceiveZhuangBeiUI(FB, t, b, bb, i, ii)

                BG.FBMaiJiaUI(FB, t, b, bb, i, ii)
                BG.HistoryMaiJiaUI(FB, t, b, bb, i, ii)
                BG.ReceiveMaiJiaUI(FB, t, b, bb, i, ii)

                BG.FBJinEUI(FB, t, b, bb, i, ii)
                BG.HistoryJinEUI(FB, t, b, bb, i, ii)
                BG.ReceiveJinEUI(FB, t, b, bb, i, ii)

                BG.FBDiSeUI(FB, t, b, bb, i, ii)
                BG.HistoryDiSeUI(FB, t, b, bb, i, ii)
                BG.ReceiveDiSeUI(FB, t, b, bb, i, ii)
            end

            -- 对账
            do
                for i = 1, ii do
                    BG.DuiZhangBiaoTiUI(FB, t, b, bb, i, ii)
                    if BossNum(FB, b, t) <= Maxb[FB] then
                        BG.DuiZhangZhuangBeiUI(FB, t, b, bb, i, ii)
                        BG.DuiZhangMyJinEUI(FB, t, b, bb, i, ii)
                        BG.DuiZhangOtherJinEUI(FB, t, b, bb, i, ii)
                        BG.DuiZhangDiSeUI(FB, t, b, bb, i, ii)
                    end
                end

                if BossNum(FB, b, t) == Maxb[FB] + 1 then
                    local ii = 2
                    for i = 1, ii do
                        BG.DuiZhangZhuangBeiUI(FB, t, b, bb, i, ii)
                        BG.DuiZhangMyJinEUI(FB, t, b, bb, i, ii)
                        BG.DuiZhangOtherJinEUI(FB, t, b, bb, i, ii)
                        BG.DuiZhangDiSeUI(FB, t, b, bb, i, ii)
                    end
                end
                BG.DuiZhangBossNameUI(FB, t, b, bb, i, ii)
            end

            BG.FBBossNameUI(FB, t, b, bb, i, ii)
            BG.HistoryBossNameUI(FB, t, b, bb, i, ii)
            BG.ReceiveBossNameUI(FB, t, b, bb, i, ii)

            BG.FBJiShaUI(FB, t, b, bb, i, ii)
            BG.HistoryJiShaUI(FB, t, b, bb, i, ii)
            BG.ReceiveJiShaUI(FB, t, b, bb, i, ii)
        end
    end
    BG.FBZhiChuZongLanGongZiUI(FB)
    BG.HistoryZhiChuZongLanGongZiUI(FB)
    BG.ReceiveZhiChuZongLanGongZiUI(FB)
end
