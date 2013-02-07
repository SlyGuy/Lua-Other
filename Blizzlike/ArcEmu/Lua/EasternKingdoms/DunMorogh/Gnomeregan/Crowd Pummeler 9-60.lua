-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright © zdroid9770					 --
-------------------------------------------------------------------
--[[
----Spells-ID
Arcing Smash-16169
Arcing Smash-8374
Crowd Pummel-10887
Trample-5568
]]--

function Crowd_OnCombat(pUnit, Event)
	pUnit:RegisterEvent("Arcing_Smash", 7000, 0)
	pUnit:RegisterEvent("Crowd_Pummel", 14000, 0)
	pUnit:RegisterEvent("Trample", 21000, 0)
end

function Arcing_Smash(pUnit, Event)
local chance = math.random(1, 2)
	if(chance == 1) then
		pUnit:CastSpellOnTarget(8374)
	elseif(chance == 2) then
		pUnit:CastSpellOnTarget(16169)
	end
end

function Crowd_Pummel(pUnit, Event)
	pUnit:CastSpellOnTarget(10887)
end

function Trample(pUnit, Event)
	pUnit:CastSpellOnTarget(5568)
end

function Crowd_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()
end

function Crowd_OnDied(pUnit, Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(6229, 1, "Crowd_OnCombat")
RegisterUnitEvent(6229, 2, "Crowd_OnLeaveCombat")
RegisterUnitEvent(6229, 4, "Crowd_OnDied")