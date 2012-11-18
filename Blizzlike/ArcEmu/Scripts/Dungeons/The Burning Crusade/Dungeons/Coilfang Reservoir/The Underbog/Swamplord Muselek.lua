--[[
Swamplord Musel'ek yells: Acalah pek ecta!
Swamplord Musel'ek yells: Beast! Obey me! Kill them at once!
Swamplord Musel'ek yells: I will end this quickly....
Swamplord Musel'ek yells: It is finished.
Swamplord Musel'ek yells: Krypta!
Swamplord Musel'ek yells: We fight to the death!
Swamplord Musel'ek yells: Well... done...]]

function Muselek(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Muselek_Aimed_Shot", 6000, 0)
	Unit:RegisterEvent("Muselek_Freezing_Trap", 10000, 0)
	Unit:RegisterEvent("Muselek_Multi_Shot", 12000, 0)
	Unit:RegisterEvent("Muselek_Roar", 14000, 0)
	Unit:RegisterEvent("Muselek_Charge", 18000, 0)
end

function Muselek_Aimed_Shot(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(31623, Unit:GetClosestPlayer())
end

function Muselek_Freezing_Trap(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(41085, Unit:GetClosestPlayer())
end

function Muselek_Multi_Shot(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(30990, Unit:GetClosestPlayer())
end

function Muselek_Roar(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(10967, Unit:GetClosestPlayer())
end

function Muselek_Charge(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(39435, Unit:GetRandomPlayer())
end

RegisterUnitEvent(17826, 1, "Muselek")