--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: Ascendscripting; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function Enforcer_OnCombat(pUnit, Event)
	pUnit:RegisterEvent("Enforcer_crack", 20000, 0)
end

function Enforcer_crack(pUnit, Event)
local plr = pUnit:GetClosestPlayer()
	if(plr ~= nil) then
		pUnit:FullCastSpellOnTarget(9791, plr)
	end
end

function Enforcer_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function Enforcer_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(2256, 1, "Enforcer_OnCombat")
RegisterUnitEvent(2256, 2, "Enforcer_OnLeaveCombat")
RegisterUnitEvent(2256, 4, "Enforcer_OnDied")