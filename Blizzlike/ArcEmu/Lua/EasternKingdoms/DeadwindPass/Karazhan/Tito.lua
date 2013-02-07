function Tito_Annoying_Yipping(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(31015, Unit:GetRandomPlayer())
end

function Tito(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Tito_Annoying_Yipping", 10000, 0)
end

RegisterUnitEvent(17548, 1, "Tito")