--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: Ascendscripting; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function CMage_OnCombat(pUnit, Event)
	pUnit:RegisterEvent("frostbolt", 4000, 0)
	pUnit:RegisterEvent("bloodlust", 16000, 1)
end

function frostbolt(pUnit, Event)
local plr = pUnit:GetClosestPlayer()
	if(plr ~= nil) then
		pUnit:FullCastSpellOnTarget(9672, plr)
	end
end

function bloodlust(pUnit, Event)
	pUnit:CastSpell(6742)
end

function CMage_OnLeaveCombat(Unit, Event) 
	Unit:RemoveEvents() 
end

function CMage_OnDied(Unit, Event) 
	Unit:RemoveEvents()
end

RegisterUnitEvent(2255, 1, "CMage_OnCombat")
RegisterUnitEvent(2255, 2, "CMage_OnLeaveCombat")
RegisterUnitEvent(2255, 4, "CMage_OnDied")