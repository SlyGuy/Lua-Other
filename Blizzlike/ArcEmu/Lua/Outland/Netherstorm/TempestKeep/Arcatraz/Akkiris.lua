--[[Akkiris Lightning-Waker yells: You are... nothing!
Akkiris Lightning-Waker yells: You dare imprison me? You will die!]]

function Akkiris(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Akkiris_Red", 10000, 0)
	Unit:RegisterEvent("Akkiris_Wave", 13000, 0)
	Unit:RegisterEvent("Akkiris_FireBolt", 21000, 0)
end

function Akkiris_Red(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(14264, Unit:GetClosestPlayer())
end

function Akkiris_Wave(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(23331, Unit:GetClosestPlayer())
end

function Akkiris_FireBolt(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(36906, Unit:GetClosestPlayer())
end

RegisterUnitEvent(20908, 1, "Akkiris")