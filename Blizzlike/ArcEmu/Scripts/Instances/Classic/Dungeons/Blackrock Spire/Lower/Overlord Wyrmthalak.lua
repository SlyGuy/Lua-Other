-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright © zdroid9770					 --
-------------------------------------------------------------------
--[[
----Spells-ID
Cleave-15284
Demoralizing Shout-16244
Sweeping Slam-12887
]]--

function Overlord_OnCombat(pUnit, Event)
	pUnit:RegisterEvent("Cleave", 7000, 0)
	pUnit:RegisterEvent("Demoralizing_Shout", 14000, 0)
	pUnit:RegisterEvent("Sweeping_Slam", 21000, 0)
end

function Cleave(pUnit, Event)
	pUnit:CastSpellOnTarget(15284)
end

function Demoralizing_Shout(pUnit, Event)
	pUnit:CastSpell(16244)
end

function Sweeping_Slam(pUnit, Event)
	pUnit:CastSpellOnTarget(12887)
end

function Overlord_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()
end

function Overlord_OnDied(pUnit, Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(9736, 1, "Overlord_OnCombat")
RegisterUnitEvent(9736, 2, "Overlord_OnLeaveCombat")
RegisterUnitEvent(9736, 4, "Overlord_OnDied")