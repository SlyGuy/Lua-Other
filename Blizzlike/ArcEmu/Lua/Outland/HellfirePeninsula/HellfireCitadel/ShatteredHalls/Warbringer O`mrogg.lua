function Omrogg(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Omrogg_Fear", 10000, 0)
	Unit:RegisterEvent("Omrogg_Thunderclap", 15000, 0)
	Unit:RegisterEvent("Omrogg_Blast_Wave", 21000, 0)
	Unit:RegisterEvent("Omrogg_Aggro_Switch", 25000, 0)
end

function Omrogg_Fear(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(33547, Unit:GetClosestPlayer())
end

function Omrogg_Thunderclap(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(30633, Unit:GetClosestPlayer())
end

function Omrogg_Blast_Wave(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(36278, Unit:GetClosestPlayer())
end

function Omrogg_Aggro_Switch(Unit)
	Unit:GetAddTank()
end

RegisterUnitEvent(16809, 1, "Omrogg")