--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: WoTD Team; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function SunfurySummoner_OnEnterCombat(Unit,Event)
	Unit:CastSpell(13901)
	Unit:RegisterEvent("SunfurySummoner_ArcaneBolt", 5000, 0)
	Unit:RegisterEvent("SunfurySummoner_Blink", 1000, 1)
end

function SunfurySummoner_ArcaneBolt(Unit,Event)
	Unit:FullCastSpellOnTarget(13901, Unit:GetRandomFriend())
end

function SunfurySummoner_Blink(Unit,Event)
	if(Unit:GetHealthPct() == 4) then
		Unit:CastSpell(36994)
	end
end

function SunfurySummoner_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function SunfurySummoner_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(21505, 1, "SunfurySummoner_OnEnterCombat")
RegisterUnitEvent(21505, 2, "SunfurySummoner_OnLeaveCombat")
RegisterUnitEvent(21505, 4, "SunfurySummoner_OnDied")