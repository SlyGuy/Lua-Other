function Kilrek_Amplify_Flames(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(30053, Unit:GetClosestPlayer())
end

function Kilrek(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Kilrek_Amplify_Flames", 7000, 0)
end

RegisterUnitEvent(17229, 1, "Kilrek")
