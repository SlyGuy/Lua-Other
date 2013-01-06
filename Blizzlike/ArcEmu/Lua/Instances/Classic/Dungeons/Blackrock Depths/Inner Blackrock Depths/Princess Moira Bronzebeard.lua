-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright © zdroid9770					 --
--------------------------------------------------------------------
--[[
----Spells-ID
Heal-15586
Mind Blast-15587
Renew-8362
Shadow Bolt-15537
Shadow Word: Pain-15654
]]--

function PMBB_OnCombat(pUnit, event)
	pUnit:RegisterEvent("Heal", 7000, 0)
	pUnit:RegisterEvent("MindBlast", 14000, 0)
	pUnit:RegisterEvent("SWPain", 21000, 0)
	pUnit:RegisterEvent("Renew", 28000, 0)
	pUnit:RegisterEvent("ShadowBolt", 35000, 0)
end
 
function Heal(pUnit, Event)
	pUnit:FullCastSpell(15586)
end
 
function MindBlast(pUnit, Event)
	pUnit:FullCastSpellOnTarget(15587)
end

function SWPain(pUnit, Event)
	pUnit:CastSpellOnTarget(15654)
end

function ShadowBolt(Unit, Event)
	pUnit:FullCastSpellOnTarget(15537)
end

function Renew(Unit, Event)
	pUnit:FullCastSpell(8362)
end
 
function PMBB_OnLeaveCombat(pUnit, event)
	pUnit:RemoveEvents()
end
 
function PMBB_OnDeath(pUnit, event)
	pUnit:RemoveEvents()
end
 
RegisterUnitEvent(8929, 1, "PMBB_OnCombat")
RegisterUnitEvent(8929, 2, "PMBB_OnLeaveCombat")
RegisterUnitEvent(8929, 4, "PMBB_OnDeath")