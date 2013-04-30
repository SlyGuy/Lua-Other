--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: WoTD Team; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function AcientShadowmoonSpirit_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("AcientShadowmoonSpirit_Haste", 40000, 0)
	Unit:RegisterEvent("AcientShadowmoonSpirit_DeathAndDecay", 30000, 0)
	Unit:RegisterEvent("AcientShadowmoonSpirit_TouchOfDarkness", 15000, 1)
	Unit:RegisterEvent("AcientShadowmoonSpirit_UnholyArmor", 3000, 0)
end

function AcientShadowmoonSpirit_Haste(Unit,Event)
	Unit:CastSpell(37728)
end

function AcientShadowmoonSpirit_DeathAndDecay(Unit,Event)
	Unit:FullCastSpellOnTarget(37788, Unit:GetClosestPlayer())
end

function AcientShadowmoonSpirit_TouchOfDarkness(Unit,Event)
	Unit:FullCastSpellOnTarget(37727, Unit:GetClosestPlayer())
end

function AcientShadowmoonSpirit_UnholyArmor(Unit,Event)
	Unit:CastSpell(37729)
end

function AcientShadowmoonSpirit_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function AcientShadowmoonSpirit_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent (21797, 1, "AcientShadowmoonSpirit_OnEnterCombat")
RegisterUnitEvent (21797, 2, "AcientShadowmoonSpirit_OnLeaveCombat")
RegisterUnitEvent (21797, 4, "AcientShadowmoonSpirit_OnDied")