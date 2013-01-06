-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright © zdroid9770					 --
-------------------------------------------------------------------
--[[
----Spells-ID
Summon Spire Spiderling-16103
Mother's Milk-16468
Crystallize-16104
]]--

function MSW_OnCombat(pUnit, Event)
	pUnit:RegisterEvent("Crystallize", 7000, 0)
	pUnit:RegisterEvent("MothersMilk", 14000, 0)
	pUnit:RegisterEvent("Summon", 21000, 0)
end

function Crystallize(pUnit, Event)
	pUnit:CastSpellOnTarget(16104)
end

function MothersMilk(pUnit, Event)
	pUnit:FullCastSpellOnTarget(16468)
end

function Summon(pUnit, Event)
	pUnit:CastSpell(16103)
end

function MSW_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()
end

function MSW_OnDeath(pUnit, Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(10596, 1, "MSW_OnCombat")
RegisterUnitEvent(10596, 2, "MSW_OnLeaveCombat")
RegisterUnitEvent(10596, 4, "MSW_OnDeath")