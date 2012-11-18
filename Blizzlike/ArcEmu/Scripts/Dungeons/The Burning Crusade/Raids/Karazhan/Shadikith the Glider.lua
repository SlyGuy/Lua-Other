function Shadikith_Charge(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(38461, Unit:GetRandomPlayer())
end

function Shadikith_Sonic_Burst(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(39052, Unit:GetClosestPlayer())
end

function Shadikith_Wing_Buffet(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(38110, Unit:GetClosestPlayer())
end

function Shadikith_Knockback(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(37966, Unit:GetRandomPlayer())
end

function Shadikith(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Shadikith_Charge", 10000, 0)
	Unit:RegisterEvent("Shadikith_Sonic_Burst", 17000, 0)
	Unit:RegisterEvent("Shadikith_Wing_Buffet", 27000, 0)
	Unit:RegisterEvent("Shadikith_Knockback", 33000, 0)
end

RegisterUnitEvent(16180, 1, "Shadikith")