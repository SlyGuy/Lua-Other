--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: zdroid9770; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function Swoop_OnCombat(Unit, Event)
	Unit:RegisterEvent("Swoop_Swoop", 6000, 0)
end

function Swoop_Swoop(pUnit, Event) 
	pUnit:CastSpell(5708) 
end

function Swoop_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function Swoop_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(2970, 1, "Swoop_OnCombat")
RegisterUnitEvent(2970, 2, "Swoop_OnLeaveCombat")
RegisterUnitEvent(2970, 4, "Swoop_OnDied")