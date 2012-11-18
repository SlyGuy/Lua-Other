function Wolf_Burning_Terrifying_Howl(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(8715, Unit:GetClosestPlayer())
end

function Wolf_Wide_Swipe(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(6749, Unit:GetClosestPlayer())
end

function Wolf_Riding_Hood(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(30756, Unit:GetRandomPlayer())
end

function Wolf(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Wolf_Burning_Terrifying_Howl", 25000, 0)
	Unit:RegisterEvent("Wolf_Wide_Swipe", 27000, 0)
	Unit:RegisterEvent("Wolf_Riding_Hood", 35000, 0)
end

RegisterUnitEvent(17521, 1, "Wolf")
--[[The Big Bad Wolf yells: Mmmm... delicious.
The Big Bad Wolf yells: Run away little girl, run away!
The Big Bad Wolf yells: The better to own you with!]]