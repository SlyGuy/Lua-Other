--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: Ascendscripting; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function Mage_OnCombat(pUnit, Event)
	pUnit:RegisterEvent("Shadowbolt", math.random(4000,7000), 0)
end

function Shadowbolt(pUnit, Event)
local plr = pUnit:GetClosestPlayer()
	if(plr ~= nil) then
		pUnit:FullCastSpellOnTarget(20816, plr)
	end
end

function Mage_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function Mage_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(2318, 1, "Mage_OnCombat")
RegisterUnitEvent(2318, 2, "Mage_OnLeaveCombat")
RegisterUnitEvent(2318, 4, "Mage_OnDied")