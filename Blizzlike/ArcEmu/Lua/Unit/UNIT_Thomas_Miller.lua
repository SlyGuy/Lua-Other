-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright© zdroid9770					 --
-------------------------------------------------------------------

function baker_Died(Unit, event, player)
	Unit:RemoveEvents()
end

function baker(Unit, event, player)
	Unit:RegisterEvent("baker_Say",28000, 0)
end

function baker_Say(Unit, event, player)
local chance = math.random(1,3)
	if(chance == 1) then
		Unit:SendChatMessage(12, 0, "Fresh bread, baked this very morning!")
	end
	if(chance == 2) then
		Unit:SendChatMessage(12, 0, "Come get your fresh bread!")
	end
	if(chance == 3) then
		Unit:SendChatMessage(12, 0, "Fresh bread for sale!")
	end
end

RegisterUnitEvent(3518, 18, "baker")
RegisterUnitEvent(3518, 4, "baker_Died")