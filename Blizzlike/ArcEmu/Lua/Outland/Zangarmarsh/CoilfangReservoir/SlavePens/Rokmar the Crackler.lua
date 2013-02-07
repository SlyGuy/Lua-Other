function Rokmar(Unit, Event, miscunit, misc)
	Unit:RegisterEvent("Rokmar_Grievous_Wound", 10000, 0)
	Unit:RegisterEvent("Rokmar_Water_Split", 13000, 0)
	Unit:RegisterEvent("Rokmar_Moss", 15000, 0)
end

function Rokmar_Grievous_Wound(Unit, Event, miscunit, misc)
	Unit:FullCastSpellOnTarget(30923, Unit:GetClosestPlayer())
	Unit:SendChatMessage(11, 0, "Bad wound...")
end

function Rokmar_Water_Split(Unit, Event, miscunit, misc)
	Unit:FullCastSpellOnTarget(38973, Unit:GetClosestPlayer())
	Unit:SendChatMessage(11, 0, "Grrrr...")
end

function Rokmar_Moss(Unit)
	Unit:FullCastSpellOnTarget(30925, Unit:GetClosestPlayer())
	Unit:SendChatMessage(11, 0, "Grrrr...")
end

RegisterUnitEvent(17991,1,"Rokmar")