-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright © zdroid9770					 --
-------------------------------------------------------------------
--[[
----Quotes
Leprous Assistant says: A foul trogg if ever I saw one. Die!
Leprous Assistant says: No gnome will be left behind.
Leprous Assistant says: The troggs...they never stop coming. Die trogg! Die!
Leprous Assistant says: This sickness clouds my vision, but I know you must be a trogg. Die foul invader!
----Spells-ID
Dazed-1604
Ice Blast-11264
Net-12024
]]--

function radioactive_ea_OnCombat(pUnit, Event)
local chance = math.random(1,4)
	if(chance == 1) then
		pUnit:SendChatMessage(12, 0, "A foul trogg if ever I saw one. Die!")
	elseif(chance == 2) then
		pUnit:SendChatMessage(12, 0, "No gnome will be left behind")
	elseif(chance == 3) then
		pUnit:SendChatMessage(12, 0, "The troggs...they never stop coming. Die trogg! Die!")
	elseif(chance == 4) then
		pUnit:SendChatMessage(12, 0, "This sickness clouds my vision, but I know you must be a trogg. Die foul invader!")
	else
		pUnit:SendChatMessage(12, 0, "math.random(1,4) mal-function lua file mis calculated")
	end
	pUnit:RegisterEvent("Net", 7000, 0)
	pUnit:RegisterEvent("Ice_Blast", 14000, 0)
	pUnit:RegisterEvent("Dazed", 21000, 1)
end

function Net(pUnit, Event)
	pUnit:CastSpellOnTarget(12024, pUnit:GetRandomPlayer(0))
end

function Ice_Blast(pUnit, Event)
	pUnit:CastSpellOnTarget(11264, pUnit:GetRandomPlayer(0))
end 

function Dazed(pUnit, Event)
	pUnit:CastSpell(1604)
end

function radioactive_ea_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()
end

function radioactive_ea_OnDied(pUnit, Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(7603, 1, "radioactive_ea_OnCombat")
RegisterUnitEvent(7603, 2, "radioactive_ea_OnLeaveCombat")
RegisterUnitEvent(7603, 4, "radioactive_ea_OnDied")