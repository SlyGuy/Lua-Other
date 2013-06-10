local Beauty = nil

Beauty = {}
function Beauty_OnSpawn(pUnit, event)
Beauty = pUnit
end

RegisterUnitEvent(39700, 18, "Beauty_OnSpawn")

function Beauty_OnCombat(pUnit, event)
Beauty:FullCastSpell(82395)
Beauty:RegisterEvent(Berserker_Charge, math.random(20000, 25000), 0)
Beauty:RegisterEvent(Flamebreak, math.random(20000, 32000), 0)
Beauty:RegisterEvent(Magma_Spit, math.random(25000, 36000), 0)
Beauty:RegisterEvent(Terrifying_Roar, math.random(15000, 30000), 0)
end

RegisterUnitEvent(39700, 1, "Beauty_OnCombat")

function Berserker_Charge(pUnit, event)
local player = Beauty:GetRandomPlayer(0)
Beauty:FullCastSpellOnTarget(76030, player)
end

function Flamebreak(pUnit, event)
Beauty:FullCastSpell(76032)
end

function Magma_Spit(pUnit, event)
local player = Beauty:GetRandomPlayer(0)
Beauty:FullCastSpellOnTarget(76031, player)
end

function Terrifying_Roar(pUnit, event)
Beauty:FullCastSpell(76028)
end