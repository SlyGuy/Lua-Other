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


--[[ UNIT: Darrowshire Spirit ]]--
function DarrowshireSpirit_Unit_Spawn(pUnit)
		if (math.random() > 0.5) then
			x = pUnit:GetX()
			y = pUnit:GetY()
			z = pUnit:GetZ()
			o = pUnit:GetO()
			pUnit:SpawnCreature(11064, x, y, z, o, 35, 30000)	-- Spawn Darrowshire Spirit
		end
end
RegisterUnitEvent(8530, 4, "DarrowshireSpirit_Unit_Spawn")
RegisterUnitEvent(8531, 4, "DarrowshireSpirit_Unit_Spawn")
RegisterUnitEvent(8532, 4, "DarrowshireSpirit_Unit_Spawn")
