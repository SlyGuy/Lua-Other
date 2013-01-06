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


--[[ UNIT: Lord Vyletongue ]]--
function LordVyletongue_PutridBreath(pUnit)
	pUnit:FullCastSpellOnTarget(21080,pUnit:GetClosestPlayer())		-- Putrid Breath
end

function LordVyletongue_SmokeBomb(pUnit)
	pUnit:FullCastSpellOnTarget(8817,pUnit:GetRandomPlayer())		-- Smoke Bomb
end

function LordVyletongue_Unit_onCombat(pUnit)
	pUnit:RegisterEvent("LordVyletongue_PutridBreath",14000,0)		-- Cast Putrid Breath every 14 seconds
	pUnit:RegisterEvent("LordVyletongue_SmokeBomb",8000,0)			-- Cast Smoke Bomb every 8 seconds
end
RegisterUnitEvent(12236, 1, "LordVyletongue_Unit_onCombat")

function LordVyletongue_Unit_onLeaveCombat(pUnit)
	pUnit:RemoveEvents()
end
RegisterUnitEvent(12236, 2, "LordVyletongue_Unit_onLeaveCombat")

function LordVyletongue_Unit_onDead(pUnit)
	pUnit:RemoveEvents()
end
RegisterUnitEvent(12236, 4, "LordVyletongue_Unit_onDead")
