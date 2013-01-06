function Curator_Evocation(Unit, event, miscUnit, misc)
	if((Unit:GetManaPct() < 1) and (Didthat == 0)) then
		Unit:FullCastSpell(30254)
		Didthat = 1
	else
	end
end

function Curator_Enrage(Unit, event, miscUnit, misc)
	if((Unit:GetHealthPct() < 15) and (Didthat == 1)) then
		Unit:FullCastSpell(41447)
		Didthat = 2
	else
	end
end

function Curator_Summon_Astral_Flare(Unit, event, miscUnit, misc)
	Unit:SpawnCreature(17096, -1168.601, 1699.915, 91.477, 0, 18, 96000000);
end

function Curator_Hateful_Bolt(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(30383, Unit:GetRandomPlayer())
end

function Curator_Berserk(Unit, event, miscUnit, misc)
	Unit:FullCastSpell(35595)
end

function Curator(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Curator_Evocation", 1000, 0)
	Unit:RegisterEvent("Curator_Enrage", 1000, 0)
	Unit:RegisterEvent("Curator_Summon_Astral_Flare", 10000, 0)
	Unit:RegisterEvent("Curator_Hateful_Bolt", 27000, 0)
	Unit:RegisterEvent("Curator_Berserk", 72000, 0)
end

RegisterUnitEvent(15691, 1, "Curator")
--[[The Curator yells: Curator is no longer operation-a-l.
The Curator yells: Do not touch the displays.
The Curator yells: Failure to comply will result in offensive action.
The Curator yells: Gallery rules will be strictly enforced.
The Curator yells: The Menagerie is for guests only.
The Curator yells: This Curator is equipped for gallery protection.
The Curator yells: You are not a guest.
The Curator yells: Your request cannot be processed.]]