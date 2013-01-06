function Quagmirran(Unit, Event, miscUnit, misc)
	Unit:RegisterEvent("Quagmirran_Acid_Gayser", 8000, 0)
	Unit:RegisterEvent("Quagmirran_Poison_Bolt", 11000, 0)
end

function Quagmirran_Acid_Gayser(Unit, Event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(38739, Unit:GetClosestPlayer())
	Unit:SendChatMessage(12, 0, "BAM...")
end

function Quagmirran_Poison_Bolt(Unit, Event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(38655, Unit:GetClosestPlayer())
	Unit:SendChatMessage(12, 0, "Some Poison...")
end

RegisterUnitEvent(17942, 1, "Quagmirran")