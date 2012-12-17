function Laj(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Laj_Allergic", 10000, 0)
	Unit:RegisterEvent("Laj_Flayer", 21000, 0)
	Unit:RegisterEvent("Laj_Lasher", 22000, 0)
end

function Laj_Allergic(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(34697, Unit:GetClosestPlayer())
end

function Laj_Flayer(Unit)
	Unit:FullCastSpell(34682)
end

function Laj_Lasher(Unit)
	Unit:FullCastSpell(34681)
end

RegisterUnitEvent(17980, 1, "Laj")