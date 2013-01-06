-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright © zdroid9770					 --
-------------------------------------------------------------------

---------------------
--       		   --
-- Warder Stilgiss --
--       		   --
---------------------
--[[
----Spells-ID
Chilled-6136
Frost Armor-12544
Frost Nova-12674
Frost Ward-15044
Frostbolt-12675
]]--
function FDV_OnCombat(pUnit, Event)
	pUnit:RegisterEvent("FrostArmor", 7000, 0)
	pUnit:RegisterEvent("Chilled", 14000, 0)
	pUnit:RegisterEvent("FrostNova", 21000, 0)
	pUnit:RegisterEvent("FrostWard", 28000, 0)
	pUnit:RegisterEvent("Frostbolt", 35000, 0)
end

function FrostArmor(pUnit, Event)
	pUnit:CastSpell(12544)
end

function Chilled(pUnit, Event)
	pUnit:FullCastSpell(6136)
end

function FrostNova(pUnit, Event)
	pUnit:CastSpell(12674)
end

function FrostWard(pUnit, Event)
	pUnit:FullCastSpell(15044)
end

function Frostbolt(pUnit, Event)
	pUnit:FullCastSpellonTarget(12675)
end

function FDV_OnLeaveCombat(pUnit, Event)
    pUnit:RemoveEvents()
end

function FDV_OnDeath(pUnit, Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(9041, 1, "FDV_OnCombat")
RegisterUnitEvent(9041, 2, "FDV_OnLeaveCombat")
RegisterUnitEvent(9041, 4, "FDV_OnDeath")

-----------
--       --
-- Verek --
--       --
-----------
--[[
----Spells-ID
Curse of Blood-15042
Enrage-8599
]]--
function Verek_OnCombat(pUnit, Event)
	pUnit:RegisterEvent("CurseOfBlood", 7000, 0)
	pUnit:RegisterEvent("Enrage", 14000, 0)
end

function CurseOfBlood(pUnit, Event)
	pUnit:CastSpell(15042)
end

function Enrage(pUnit, Event)
	pUnit:CastSpell(8599)
end

function Verek_OnLeaveCombat(pUnit, Event)
    pUnit:RemoveEvents()
end

function Verek_OnDeath(pUnit, Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(9042, 1, "Verek_OnCombat")
RegisterUnitEvent(9042, 2, "Verek_OnLeaveCombat")
RegisterUnitEvent(9042, 4, "Verek_OnDeath")