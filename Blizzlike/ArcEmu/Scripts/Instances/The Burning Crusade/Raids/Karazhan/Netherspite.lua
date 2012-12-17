function Netherspite_Portal_PhaseA(Unit, event, miscUnit, misc)
	Unit:SendAreaTriggerMessage("PORTAL PHASE")
	Unit:FullCastSpell(30400)
	Unit:FullCastSpell(30401)
	Unit:FullCastSpell(30402)
end

function Netherspite_Nether_Burn(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(30523, Unit:GetClosestPlayer())
end

function Netherspite_Vode_Zone(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(30533, Unit:GetRandomPlayer())
end

function Netherspite_Banish_Phase(Unit, event, miscUnit, misc)
	Unit:SendAreaTriggerMessage("BANISH PHASE")
	Unit:FullCastSpell(35182)
	Unit:FullCastSpellOnTarget(38524, Unit:GetClosestPlayer())
end

function Netherspite_Portal_PhaseB(Unit, event, miscUnit, misc)
	Unit:SendAreaTriggerMessage("PORTAL PHASE")
	Unit:FullCastSpell(30400)
	Unit:FullCastSpell(30401)
	Unit:FullCastSpell(30402)
end

function Netherspite_Enrage(Unit, event, miscUnit, misc)
	Unit:FullCastSpell(35595)
end

function Netherspite(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Netherspite_Portal_PhaseA", 1000, 1)
	Unit:RegisterEvent("Netherspite_Nether_Burn", 10000, 0)
	Unit:RegisterEvent("Netherspite_Vode_Zone", 20000, 0)
	Unit:RegisterEvent("Netherspite_Banish_Phase", 30000, 0)
	Unit:RegisterEvent("Netherspite_Portal_PhaseB", 60000, 0)
	Unit:RegisterEvent("Netherspite_Enrage", 540000, 0)
end

RegisterUnitEvent(15689, 1, "Netherspite")