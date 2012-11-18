--[[High Botanist Freywinn yells: Endorel anuminor!
High Botanist Freywinn yells: Nature bends to my will....
High Botanist Freywinn yells: The specimens... must be preserved.
High Botanist Freywinn yells: What are you doing? These specimens are very delicate!
High Botanist Freywinn says: ...mumble mumble...
High Botanist Freywinn says: ...mumble...Petals of Fire...mumble...
High Botanist Freywinn says: ...thorny vines...mumble...ouch!
High Botanist Freywinn says: ...with the right mixture, perhaps...]]

function Freywinn(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Freywinn_Heal", 15000, 0)
	Unit:RegisterEvent("Freywinn_White", 19000, 0)
	Unit:RegisterEvent("Freywinn_Green", 23000, 0)
	Unit:RegisterEvent("Freywinn_Blue", 27000, 0)
	Unit:RegisterEvent("Freywinn_Red", 35000, 0)
end

function Freywinn_Heal(Unit)
	Unit:FullCastSpell(25817)
end

function Freywinn_White(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(34759, Unit:GetClosestPlayer())
end

function Freywinn_Green(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(34761, Unit:GetClosestPlayer())
end

function Freywinn_Blue(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(34762, Unit:GetClosestPlayer())
end

function Freywinn_Red(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(34763, Unit:GetClosestPlayer())
end

RegisterUnitEvent(17975, 1, "Freywinn")