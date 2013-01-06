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


--[[ UNIT: Rotting Worm ]]--
function RottingWorm_Unit_Spawn(pUnit)
		x = pUnit:GetX()
		y = pUnit:GetY()
		z = pUnit:GetZ()
		o = pUnit:GetO()
		pUnit:SpawnCreature(10925, x, y, z, o, 21, 60000)		-- Spawn First Rotting Worm
		x = x + 0.3
		pUnit:SpawnCreature(10925, x, y, z, o, 21, 60000)		-- Spawn Second Rotting Worm
end
RegisterUnitEvent(4474, 4, "RottingWorm_Unit_Spawn")

function RottingWorm_Unit_onLeaveCombat(pUnit)
		pUnit:Despawn(1000, 0)
end
RegisterUnitEvent(10925, 2, "RottingWorm_Unit_onLeaveCombat")

function RottingWorm_Unit_onSpawn(pUnit)
		pUnit:SetScale(0.2)
end
RegisterUnitEvent(10925, 6, "RottingWorm_Unit_onSpawn")


--[[ UNIT: Oozeling ]]--
function Oozeling_Unit_Spawn(pUnit)
		x = pUnit:GetX()
		y = pUnit:GetY()
		z = pUnit:GetZ()
		o = pUnit:GetO()
		pUnit:SpawnCreature(8257, x, y, z, o, 14, 60000)		-- Spawn First Oozeling
		x = x - 1
		pUnit:SpawnCreature(8257, x, y, z, o, 14, 60000)		-- Spawn Second Oozeling
		x = x + 2
		pUnit:SpawnCreature(8257, x, y, z, o, 14, 60000)		-- Spawn Third Oozeling
end
RegisterUnitEvent(1806, 4, "Oozeling_Unit_Spawn")

function Oozeling_Unit_onLeaveCombat(pUnit)
		pUnit:Despawn(1000, 0)
end
RegisterUnitEvent(8257, 2, "Oozeling_Unit_onLeaveCombat")
