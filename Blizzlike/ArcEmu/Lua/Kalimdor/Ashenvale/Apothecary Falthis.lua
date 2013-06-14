--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: zdroid9770; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function ApothecaryFalthis_OnCombat(Unit, Event)
	Unit:RegisterEvent("ApothecaryFalthis_ShadowBolt", 8000, 0)
end

function ApothecaryFalthis_ShadowBolt(pUnit, Event) 
	pUnit:FullCastSpellOnTarget(20791, pUnit:GetMainTank()) 
end

function ApothecaryFalthis_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function ApothecaryFalthis_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(3735, 1, "ApothecaryFalthis_OnCombat")
RegisterUnitEvent(3735, 2, "ApothecaryFalthis_OnLeaveCombat")
RegisterUnitEvent(3735, 4, "ApothecaryFalthis_OnDied")