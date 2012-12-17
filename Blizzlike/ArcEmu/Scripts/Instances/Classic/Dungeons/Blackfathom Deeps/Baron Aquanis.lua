-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright © zdroid9770					 --
-------------------------------------------------------------------
--[[
----Spells-ID
Frost Nova-15531
Frostbolt-15043
]]--

function BaronAquanis_OnCombat(pUnit, event)
	pUnit:RegisterEvent("FrostNova", 7000, 0)
	pUnit:RegisterEvent("Frostbolt", 14000, 0)
end
 
function FrostNova(pUnit, Event)
	pUnit:CastSpell(15531)
end
 
function Frostbolt(pUnit, Event)
	pUnit:FullCastSpellOnTarget(15043, pUnit:GetRandomPlayer(0))
end
 
function BaronAquanis_OnLeaveCombat(pUnit, event)
	pUnit:RemoveEvents()
end
 
function BaronAquanis_OnDeath(pUnit, event)
	pUnit:RemoveEvents()
end
 
RegisterUnitEvent(12876, 1, "BaronAquanis_OnCombat")
RegisterUnitEvent(12876, 2, "BaronAquanis_OnLeaveCombat")
RegisterUnitEvent(12876, 3, "BaronAquanis_OnDeath")