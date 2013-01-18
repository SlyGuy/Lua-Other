-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright© zdroid9770					 --
-------------------------------------------------------------------


local Range = 15

function Checker_OnSpawn(Unit)
	Unit:RegisterEvent(Checker_RangeCheck, 1000, 0)
end

function Checker_RangeCheck(Unit)
	local plrs = Unit:GetInRangePlayers()
	if (plrs ~= nil) then
		for _, v in pairs(plrs) do
			if ((v:IsMounted()) and (Unit:GetDistance(v) <= Range)) then
				v:Dismount()
			end
		end
	end
end

RegisterUnitEvent(900004, 18, Checker_OnSpawn)