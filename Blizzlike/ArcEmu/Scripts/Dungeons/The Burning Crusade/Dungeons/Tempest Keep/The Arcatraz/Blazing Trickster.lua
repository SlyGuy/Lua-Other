--[[Blazing Trickster yells: I hope you all... die in pain!
Blazing Trickster yells: I'm gonna cook ya, an' then I'm gonna eat ya!]]

function Trickster(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Trickster_FireBolt", 10000, 0)
	Unit:RegisterEvent("Trickster_FireShield", 15000, 0)
	Unit:RegisterEvent("Trickster_Charge", 21000, 0)
end

function Trickster_FireBoltt(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(36906, Unit:GetClosestPlayer())
end

function Trickster_FireShield(Unit)
	Unit:FullCastSpell(36907)
end

function Trickster_Charge(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(36058, Unit:GetClosestPlayer())
end

RegisterUnitEvent(20905, 1, "Trickster")