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


--[[ UNIT: Tinkerer Gizlock ]]--
function TinkererGizlock_GoblinGun(pUnit)
	pUnit:FullCastSpellOnTarget(21910,pUnit:GetClosestPlayer())		-- Goblin Gun
end

function TinkererGizlock_Bomb(pUnit)
	pUnit:FullCastSpellOnTarget(22334,pUnit:GetClosestPlayer())		-- Bomb
end

function TinkererGizlock_Unit_onCombat(pUnit)
	pUnit:RegisterEvent("TinkererGizlock_GoblinGun",6000,0)		-- Cast Goblin Gun every 6 seconds
	pUnit:RegisterEvent("TinkererGizlock_Bomb",14000,0)			-- Cast Bomb every 14 seconds
end
RegisterUnitEvent(13601, 1, "TinkererGizlock_Unit_onCombat")

function TinkererGizlock_Unit_onLeaveCombat(pUnit)
	pUnit:RemoveEvents()
end
RegisterUnitEvent(13601, 2, "TinkererGizlock_Unit_onLeaveCombat")

function TinkererGizlock_Unit_onDead(pUnit)
	pUnit:RemoveEvents()
end
RegisterUnitEvent(13601, 4, "TinkererGizlock_Unit_onDead")
