local mod	= DBM:NewMod("Zilbagob", "DBM-Party-Vanilla", 21)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("20240702032504")
mod:SetEncounterID(3029)
--mod:SetCreatureID(4275)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
--	"SPELL_CAST_START",
--	"SPELL_CAST_SUCCESS,
--	"SPELL_AURA_APPLIED"
)

--function mod:OnCombatStart(delay)

--end


--[[
function mod:SPELL_CAST_START(args)
	if args:IsSpell(5174) then

	end
end
--]]
