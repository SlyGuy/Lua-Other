function Nightbane_Cleave(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(42587, Unit:GetClosestPlayer())
end

function Nightbane_Tail_Sweep(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(25653, Unit:GetRandomPlayer())
end

function Nightbane_Bone_Shards(Unit, event, miscUnit, misc)
	Unit:FullCastSpell(17014)
end

function Nightbane_Distracting_Ash(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(30130, Unit:GetRandomPlayer())
end

function Nightbane_Bellowing_Roar(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(37066, Unit:GetClosestPlayer())
end

function Nightbane_Charred_Earth(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(30129, Unit:GetClosestPlayer())
end

function Nightbane_Smoldering_Breath(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(39385, Unit:GetClosestPlayer())
end

function Nightbane(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Nightbane_Cleave", 10000, 0)
	Unit:RegisterEvent("Nightbane_Tail_Sweep", 13000, 0)
	Unit:RegisterEvent("Nightbane_Bone_Shards", 17000, 0)
	Unit:RegisterEvent("Nightbane_Distracting_Ash", 23000, 0)
	Unit:RegisterEvent("Nightbane_Bellowing_Roar", 31000, 0)
	Unit:RegisterEvent("Nightbane_Charred_Earth", 37000, 0)
	Unit:RegisterEvent("Nightbane_Smoldering_Breath", 43000, 0)
end

RegisterUnitEvent(17225, 1, "Nightbane")

--[[Nightbane yells: Enough! I shall land and crush you myself!
Nightbane yells: Insects! Let me show you my strength up close!
Nightbane yells: Miserable vermin. I shall exterminate you from the air!
Nightbane yells: What fools! I shall bring a quick end to your suffering!
Nightbane yells: You cannot hide from me, mortal!]]