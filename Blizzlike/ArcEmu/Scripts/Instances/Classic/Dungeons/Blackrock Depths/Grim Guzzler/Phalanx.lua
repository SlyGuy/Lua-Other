-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright © zdroid9770					 --
-------------------------------------------------------------------
--[[
----Quotes
Phalanx yells: Violence! Property damage! None shall pass!!
----Spells-ID
Fireball Volley-15285
Mighty Blow-14099
Thunderclap-15588
]]--

function PX_OnCombat(pUnit, Event)
	pUnit:SendChatMessage(14, 0, "Violence! Property damage! None shall pass!!")
	pUnit:RegisterEvent("FireballVolley", 7000, 0)
	pUnit:RegisterEvent("ThunderClap", 14000, 0)
	pUnit:RegisterEvent("MightyBlow", 21000, 0)
end

function FireballVolley(pUnit, Event)
	pUnit:CastSpell(15285)
end

function MightyBlow(pUnit, Event)
	pUnit:FullCastSpellonTarget(14099)
end

function ThunderClap(pUnit, Event)
	pUnit:FullCastSpellonTarget(15588)
end

function PX_OnLeaveCombat(pUnit, Event)
    pUnit:RemoveEvents()
end

function PX_OnDeath(pUnit, Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(9502, 1, "PX_OnCombat")
RegisterUnitEvent(9502, 2, "PX_OnLeaveCombat")
RegisterUnitEvent(9502, 4, "PX_OnDeath")