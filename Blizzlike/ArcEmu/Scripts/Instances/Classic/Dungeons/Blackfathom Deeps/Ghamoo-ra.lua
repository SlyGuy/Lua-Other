-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright © zdroid9770					 --
-------------------------------------------------------------------
--[[
----Spells-ID
Trample-5568
]]--

function Ghamoora_OnCombat(pUnit, event)
	pUnit:RegisterEvent("Trample", 7000, 0)
end
 
function Trample(pUnit, Event)
	pUnit:CastSpell(5568)
end
 
function Ghamoora_OnLeaveCombat(pUnit, event)
	pUnit:RemoveEvents()
end
 
function Ghamoora_OnDeath(pUnit, event)
	pUnit:RemoveEvents()
end
 
RegisterUnitEvent(4887, 1, "Ghamoora_OnCombat")
RegisterUnitEvent(4887, 2, "Ghamoora_OnLeaveCombat")
RegisterUnitEvent(4887, 3, "Ghamoora_OnDeath")