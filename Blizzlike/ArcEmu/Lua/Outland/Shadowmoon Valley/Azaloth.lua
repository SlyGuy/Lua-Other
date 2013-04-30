--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: WoTD Team; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function Azaloth_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("Azaloth_RainOfFire", 30000, 0)
	Unit:RegisterEvent("Azaloth_Cleave", 60000, 0)
	Unit:RegisterEvent("Azaloth_Cripple", 20000, 0)
	Unit:RegisterEvent("Azaloth_WarStomp", 13000, 0)
end

function Azaloth_RainOfFire(Unit,Event)
	Unit:FullCastSpellOnTarget(38741, Unit:GetClosestPlayer())
end

function Azaloth_Cleave(Unit,Event)
	Unit:FullCastSpellOnTarget(40504, Unit:GetClosestPlayer())
end


function Azaloth_Cripple(Unit,Event)
	Unit:FullCastSpellOnTarget(11443, Unit:GetClosestPlayer())
end


function Azaloth_WarStomp(Unit,Event)
	Unit:FullCastSpellOnTarget(38750, Unit:GetClosestPlayer())
end

function Azaloth_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function Azaloth_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(21506, 1, "Azaloth_OnEnterCombat")
RegisterUnitEvent(21506, 2, "Azaloth_OnLeaveCombat")
RegisterUnitEvent(21506, 4, "Azaloth_OnDied")