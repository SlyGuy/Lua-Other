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


--[[ UNIT: Landslide ]]--
GRE_control = 0
function Landslide_HPControlSpawn(pUnit)
	if (pUnit:GetHealthPct() <= 50 and GRE_control == 0) then
		x = pUnit:GetX() + 6
		y = pUnit:GetY() + 6
		z = pUnit:GetZ()
		o = pUnit:GetO()
		pUnit:SpawnCreature(2736, x, y, z, o, 91, 600000)		-- Spawn Greater Rock Elemental
		GRE_control = 1
	end
end

function Landslide_KnockBack(pUnit)
	pUnit:FullCastSpellOnTarget(19813,pUnit:GetClosestPlayer())		-- Knock Back
end

function Landslide_WarStomp(pUnit)
	pUnit:FullCastSpellOnTarget(24375,pUnit:GetClosestPlayer())		-- War Stomp
end

function Landslide_Unit_onCombat(pUnit)
	GRE_control = 0
	pUnit:RegisterEvent("Landslide_KnockBack",8000,0)			-- Cast Knock Back Gun every 8 seconds
	pUnit:RegisterEvent("Landslide_WarStomp",2000,0)				-- Cast War Stomp every 2 seconds
	pUnit:RegisterEvent("Landslide_HPControlSpawn",1000,0)			-- HP Check and spawn
end
RegisterUnitEvent(12203, 1, "Landslide_Unit_onCombat")

function Landslide_Unit_onLeaveCombat(pUnit)
	pUnit:RemoveEvents()
end
RegisterUnitEvent(12203, 2, "Landslide_Unit_onLeaveCombat")

function Landslide_Unit_onDead(pUnit)
	pUnit:RemoveEvents()
end
RegisterUnitEvent(12203, 4, "Landslide_Unit_onDead")
