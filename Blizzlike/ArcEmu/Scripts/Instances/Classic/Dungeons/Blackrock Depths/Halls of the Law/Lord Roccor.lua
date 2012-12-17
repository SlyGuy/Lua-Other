-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright © zdroid9770					 --
-------------------------------------------------------------------
--[[
----Spells-ID
Earth Shock-13728
Flame Shock-13729
Ground Tremor-6524
]]--

function LordRoccor_OnCombat(pUnit, event)
    pUnit:RegisterEvent("EarthShock", 7000, 0)
    pUnit:RegisterEvent("FlameShock", 14000, 0)
	pUnit:RegisterEvent("GroundTremor", 21000, 0)
end
 
function EarthShock(pUnit, Event)
    pUnit:FullCastSpellOnTarget(13728)
end
 
function FlameShock(pUnit, Event)
    pUnit:FullCastSpellOnTarget(13729)
end

function GroundTremor(pUnit, Event)
    pUnit:CastSpell(6524)
end
 
function LordRoccor_OnLeaveCombat(pUnit, event)
    pUnit:RemoveEvents()
end
 
function LordRoccor_OnDeath(pUnit, event)
    pUnit:RemoveEvents()
end
 
RegisterUnitEvent(9025, 1, "LordRoccor_OnCombat")
RegisterUnitEvent(9025, 2, "LordRoccor_OnLeaveCombat")
RegisterUnitEvent(9025, 3, "LordRoccor_OnDeath")