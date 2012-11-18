function Nazan(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Nazan_Fireball", 5000, 0)
	Unit:RegisterEvent("Nazan_Cone_Fire", 11000, 0)
end

function Nazan_Fireball(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(37111, Unit:GetClosestPlayer())
end

function Nazan_Cone_Fire(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(30926, Unit:GetClosestPlayer())
end

RegisterUnitEvent(17536, 1, "Nazan")