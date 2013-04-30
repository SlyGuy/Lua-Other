--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: BlackHer0; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function Defender_OnEnterCombat(Unit, Event)
    Unit:RegisterEvent("Defender_Block", 1000, (1))
    Unit:RegisterEvent("Defender_Strike", 5000, 0)
end

function Defender_Block(Unit, Event)
    Unit:CastSpell(12169)
end   

function Defender_Strike(Unit, Event)
    Unit:FullCastSpellOnTarget(36093, Unit:MainTank())
end

function Defender_OnLeaveCombat(Unit, Event)
	Unit:RemoveEvents()
end

function Defender_OnDied(Unit, Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(20934, 1, "Defender_OnEnterCombat")
RegisterUnitEvent(20934, 2, "Defender_OnLeaveCombat")
RegisterUnitEvent(20934, 4, "Defender_OnDied")