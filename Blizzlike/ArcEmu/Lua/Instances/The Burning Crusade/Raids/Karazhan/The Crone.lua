function Crone_Summon_Cyclone(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(38337, Unit:GetRandomPlayer())
end

function Crone_Chain_Lightning(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(32337, Unit:GetClosestPlayer())
end

function Crone(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Crone_Summon_Cyclone", 10000, 0)
	Unit:RegisterEvent("Crone_Chain_Lightning", 17000, 0)
end

RegisterUnitEvent(18168, 1, "Crone")

--[[The Crone yells: How could you? What a cruel, cruel world...
The Crone yells: It will all be over soon!
The Crone yells: Woe to each and every one of you, my pretties!]]