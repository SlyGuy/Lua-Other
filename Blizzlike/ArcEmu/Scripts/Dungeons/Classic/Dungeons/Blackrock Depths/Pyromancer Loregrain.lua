-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright © zdroid9770					 --
-------------------------------------------------------------------
--[[
----Spells-ID
Fire Ward-15041
Flame Shock-15616
Molten Blast-15095
Scorching Totem-15038
]]--

function PMLG_OnCombat(pUnit, event)
	pUnit:RegisterEvent("SearingTotems", 7000, 0)
	pUnit:RegisterEvent("FireWard", 14000, 0)
	pUnit:RegisterEvent("MoltenBlast", 21000, 0)
	pUnit:RegisterEvent("FlameShock", 28000, 0)
end
 
function SearingTotems(pUnit, Event)
	pUnit:FullCastSpell(15038)
end
 
function FireWard(pUnit, Event)
	pUnit:FullCastSpell(15041)
end

function MoltenBlast(pUnit, Event)
	pUnit:FullCastSpellOnTarget(15095)
end

function FlameShock(Unit, Event)
	pUnit:CastSpellOnTarget(15616)
end
 
function PMLG_OnLeaveCombat(pUnit, event)
	pUnit:RemoveEvents()
end
 
function PMLG_OnDeath(pUnit, event)
	pUnit:RemoveEvents()
end
 
RegisterUnitEvent(9024, 1, "PMLG_OnCombat")
RegisterUnitEvent(9024, 2, "PMLG_OnLeaveCombat")
RegisterUnitEvent(9024, 3, "PMLG_OnDeath")