function Hyakiss_Hyakiss_Web(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(29896, Unit:GetClosestPlayer())
end

function Hyakiss_Acidic_Wound(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(40481, Unit:GetClosestPlayer())
end
function Hyakiss(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Hyakiss_Hyakiss_Web", 15000, 0)
	Unit:RegisterEvent("Hyakiss_Acidic_Wound", 25000, 0)
end

RegisterUnitEvent(16179, 1, "Hyakiss")