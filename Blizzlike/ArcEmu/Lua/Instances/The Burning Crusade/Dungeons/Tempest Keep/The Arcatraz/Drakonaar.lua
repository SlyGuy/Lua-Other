function Drakonaar(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Drakonaar_Red", 11000, 0)
	Unit:RegisterEvent("Drakonaar_Blue", 15000, 0)
	Unit:RegisterEvent("Drakonaar_Green", 21000, 0)
	Unit:RegisterEvent("Drakonaar_Black", 27000, 0)
	Unit:RegisterEvent("Drakonaar_Bronze", 31000, 0)
	Unit:SendChatMessage(14, 0, "The black dragonflight will conquer all!")
end

function Drakonaar_Red(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(14264, Unit:GetClosestPlayer())
end

function Drakonaar_Blue(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(14261, Unit:GetClosestPlayer())
end

function Drakonaar_Green(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(14262, Unit:GetClosestPlayer())
end

function Drakonaar_Black(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(14265, Unit:GetClosestPlayer())
	Unit:SendChatMessage(11, 0, "Now the final blast...")
end

function Drakonaar_Bronze(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(14263, Unit:GetClosestPlayer())
end

RegisterUnitEvent(20910, 1, "Drakonaar")