-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright (c) zdroid9770                  --
-------------------------------------------------------------------
--[[
----Spells-ID
Berserker Charge-16636
Fire Blast-16144
Fireball-16788
Flamebreak-16785
Immolate-15570
Summon Player-20477
Terrifying Roar-14100
]]--

function Beast_OnCombat(pUnit, Event)
	pUnit:RegisterEvent("Berserker_Charge", 7000, 0)
	pUnit:RegisterEvent("Fire_Blast", 14000, 0)
	pUnit:RegisterEvent("Fireball", 21000, 0)
	pUnit:RegisterEvent("Flamebreak", 28000, 0)
	pUnit:RegisterEvent("Immolate", 35000, 0)
	pUnit:RegisterEvent("Summon_Player", 42000, 0)
	pUnit:RegisterEvent("Terrifying_Roar", 49000, 0)
end

function Berserker_Charge(pUnit, Event)
	pUnit:CastSpellOnTarget(16636)
end

function Fire_Blast(pUnit, Event)
	pUnit:CastSpellOnTarget(16144)
end

function Fireball(pUnit, Event)
	pUnit:FullCastSpellOnTarget(16788)
end

function Flamebreak(pUnit, Event)
	pUnit:CastSpellOnTarget(16785)
end

function Immolate(pUnit, Event)
	pUnit:CastSpellOnTarget(15570)
end

function Summon_Player(pUnit, Event)
	pUnit:CastSpellOnTarget(20477, pUnit:GetRandomPlayer())
end

function Terrifying_Roar(pUnit, Event)
	pUnit:CastSpellOnTarget(14100)
end

function Beast_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()
end

function Beast_OnDeath(pUnit, Event)
	pUnit:removeEvents()
end

RegisterUnitEvent(10430, 1, "Beast_OnCombat")
RegisterUnitEvent(10430, 2, "Beast_OnLeaveCombat")
RegisterUnitEvent(10430, 4, "Beast_OnDeath")