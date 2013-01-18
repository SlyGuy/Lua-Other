-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright © zdroid9770					 --
-------------------------------------------------------------------
--[[
----Spells-ID
Frenzied Rage-3490
Poison Cloud-3815
]]--

function Akumai_OnCombat(pUnit, event)
	pUnit:RegisterEvent("FrenziedRage", 7000, 0)
	pUnit:RegisterEvent("PoisonCloud", 14000, 0)
end
 
function FrenziedRage(pUnit, Event)
	pUnit:CastSpell(3490)
	pUnit:RegisterEvent("FrenziedRage", 7000, 0)
end
 
function PoisonCloud(pUnit, Event)
	pUnit:CastSpell(3815)
	pUnit:RegisterEvent("PoisonCloud", 14000, 0)
end
 
function Akumai_OnLeaveCombat(pUnit, event)
	pUnit:RemoveEvents()
end
 
function Akumai_OnDeath(pUnit, event)
	pUnit:RemoveEvents()
end
 
RegisterUnitEvent(4829, 1, "Akumai_OnCombat")
RegisterUnitEvent(4829, 2, "Akumai_OnLeaveCombat")
RegisterUnitEvent(4829, 3, "Akumai_OnDeath")