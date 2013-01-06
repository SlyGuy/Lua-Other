--[[
-- Copyright (C) 2007 - 2008 LUAScripts <http://mmoforge.org/svn/luascripts>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 2 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
]]--


--[[ UNIT: Stormwind Baker ]]--
function StormwindBaker_Unit_onWaypoints(pUnit, waypoint_id)
	if (waypoint_id == 1 or waypoint_id == 13) then
		pUnit:SendChatMessage(11, 7, "Fresh bread, baked this very morning.")
	elseif (waypoint_id == 19) then
		pUnit:SendChatMessage(11, 7, "Come get yer fresh bread!")
	elseif (waypoint_id == 29) then
		pUnit:SendChatMessage(11, 7, "Fresh bread for sale!")
	end
end
RegisterUnitEvent(3518, 8, "StormwindBaker_Unit_onWaypoints")
