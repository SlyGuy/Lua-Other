--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: WoTD Team; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function DFelboar_OnEnterCombat(Unit,Event)
	Unit:CastSpell(36462)
	Unit:FullCastSpellOnTarget(22120, Unit:GetClosestPlayer())
end

function DFelboar_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

function DFelboar_LeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(21195, 1, "DFelboar_OnEnterCombat")
RegisterUnitEvent(21195, 2, "DFelboar_LeaveCombat")
RegisterUnitEvent(21195, 4, "DFelboar_OnDied")