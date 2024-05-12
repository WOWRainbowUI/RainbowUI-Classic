local AddonName, SAO = ...

local aimedShot = 19434;
local aimedShotBang = 82928;
local arcaneShot = 3044;
local chimeraShot = 53209;
local counterattack = 19306;
local explosiveShot = 53301;
local flankingStrike = 415320;
local killShot = 53351;
local mongooseBite = 1495;

local function useKillShot()
    SAO:CreateEffect(
        "kill_shot",
        SAO.WRATH + SAO.CATA,
        killShot,
        "counter"
    );
end

local function useCounterattack()
    SAO:CreateEffect(
        "counterattack",
        SAO.ALL_PROJECTS,
        counterattack,
        "counter"
    );
end

local function useMongooseBite()
    SAO:CreateEffect(
        "mongoose_bite",
        SAO.ERA + SAO.TBC,
        mongooseBite,
        "counter"
    );
end

local function useImprovedSteadyShot()
    local improvedSteadyShotBuff = 53220;
    local improvedSteadyShotTalent = 53221;
    SAO:CreateEffect(
        "improved_steady_shot",
        SAO.WRATH,
        improvedSteadyShotBuff,
        "aura",
        {
            talent = improvedSteadyShotTalent,
            overlay = { texture = "master_marksman", position = "Top" },
            buttons = { aimedShot, arcaneShot, chimeraShot },
        }
    );
end

local function useMasterMarksman()
    -- local masterMarksmanBuff1to4 = 82925;
    local masterMarksmanBuff5 = 82926;
    local masterMarksmanTalent = 34485;
    SAO:CreateEffect(
        "master_marksman",
        SAO.CATA,
        masterMarksmanBuff5,
        "aura",
        {
            talent = masterMarksmanTalent,
            overlay = { stacks = 5, texture = "master_marksman", position = "Top" },
            button = aimedShotBang,
        }
    );
end

local function useFlankingStrike()
    SAO:CreateEffect(
        "flanking_strike",
        SAO.SOD,
        flankingStrike,
        "counter_with_overlay",
        {
            useName = false,
            combatOnly = true,
            overlay = { texture = "tooth_and_claw", position = "Left + Right (Flipped)" },
        }
    );
end

local function useCobraStrikes()
    local cobraStrikesBuff = 425714;
    local cobraStrikesTalent = 425713;
    SAO:CreateEffect(
        "cobra_strikes",
        SAO.SOD,
        cobraStrikesBuff,
        "aura",
        {
            talent = cobraStrikesTalent,
            overlays = {
                { stacks = 1, texture = "monk_serpent", position = "Left", scale = 0.7, option = false },
                { stacks = 2, texture = "monk_serpent", position = "Left + Right (Flipped)", scale = 0.7, option = { setupStacks = 0, testStacks = 2 } },
            },
        }
    );
end

local function useSniperTraining()
    local sniperTrainingBuff = 415401;
    local sniperTrainingRune = 415399;
    SAO:CreateEffect(
        "sniper_training",
        SAO.SOD,
        sniperTrainingBuff,
        "aura",
        {
            talent = sniperTrainingRune,
            combatOnly = true,
            button = {
                stacks = 5,
                spellID = aimedShot,
                useName = false,
            },
        }
    );
end

local function useLockAndLoad()
    local lockAndLoadBuff = SAO.IsSoD() and 415414 or 56453;
    local lockAndLoadTalent = SAO.IsSoD() and 415413 or 56342;
    SAO:CreateEffect(
        "lock_and_load",
        SAO.SOD + SAO.WRATH + SAO.CATA,
        lockAndLoadBuff,
        "aura",
        {
            talent = lockAndLoadTalent,
            overlays = {
                [SAO.SOD] = { texture = "lock_and_load", position = "Top" },
                [SAO.WRATH+SAO.CATA] = {
                    { stacks = 1, texture = "lock_and_load", position = "Top", option = false },
                    { stacks = 2, texture = "lock_and_load", position = "Top", option = { setupStacks = 0, testStacks = 2 } },
                },
            },
            buttons = {
                default = { stacks = 0 },
                [SAO.SOD] = nil, -- Don't glow buttons for Season of Discovery, there would be too many to suggest
                [SAO.WRATH] = { arcaneShot, explosiveShot },
                [SAO.CATA] = explosiveShot,
            },
        }
    );
end

local function registerClass(self)

    -- Kill Shot, Execute-like ability for targets at 20% hp or less
    useKillShot();

    -- Counterattack, registered as both aura and counter, but only used as counter
    useCounterattack();

    -- Mongoose Bite, before Wrath because there is no longer a proc since Wrath
    useMongooseBite();

    -- Improved Steady Shot, formerly Master Marksman
    useImprovedSteadyShot();

    -- Master Marksman, from Cataclysm
    useMasterMarksman();

    -- Flanking Strike, Cobra Strikes, Sniper Training (Season of Discovery)
    useFlankingStrike();
    useCobraStrikes();
    -- useSniperTraining();

    -- Lock and Load: display something on top if there is at least one charge
    useLockAndLoad();
end

SAO.Class["HUNTER"] = {
    ["Register"] = registerClass,
}
