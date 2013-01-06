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


--[[ UNIT: Hogger ]]--
function Hogger_Unit_onCombat(pUnit)
	-- Here text emote this "Hogger charges!"
	pUnit:FullCastSpellOnTarget(6268,pUnit:GetClosestPlayer())	-- Rushing Charge Rank 1
end
RegisterUnitEvent(448, 1, "Hogger_Unit_onCombat")
