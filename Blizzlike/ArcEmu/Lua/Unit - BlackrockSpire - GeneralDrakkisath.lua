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


--[[ UNIT: General Drakkisath ]]--
function GeneralDrakkisath_Conflagration(pUnit)
	pUnit:FullCastSpellOnTarget(16805,pUnit:GetClosestPlayer())		-- Conflagration
end

function GeneralDrakkisath_Thunderclap(pUnit)
	pUnit:FullCastSpellOnTarget(24612,pUnit:GetClosestPlayer())		-- Flamestrike
end

function GeneralDrakkisath_Flamestrike(pUnit)
	pUnit:FullCastSpellOnTarget(23931,pUnit:GetClosestPlayer())		-- Thunderclap
end

function GeneralDrakkisath_Cleave(pUnit)
	pUnit:FullCastSpellOnTarget(20691,pUnit:GetClosestPlayer())		-- Cleave
end

function GeneralDrakkisath_Unit_onCombat(pUnit)
	pUnit:RegisterEvent("GeneralDrakkisath_Conflagration",15000,0)	-- Cast Conflagration every 15 seconds
	pUnit:RegisterEvent("GeneralDrakkisath_Thunderclap",6000,0)		-- Cast Flamestrike every 6 seconds
	pUnit:RegisterEvent("GeneralDrakkisath_Flamestrike",17000,0)		-- Cast Thunderclap every 17 seconds
	pUnit:RegisterEvent("GeneralDrakkisath_Cleave",8000,0)			-- Cast Cleave every 8 seconds
end
RegisterUnitEvent(10363, 1, "GeneralDrakkisath_Unit_onCombat")

function GeneralDrakkisath_Unit_onLeaveCombat(pUnit)
	pUnit:RemoveEvents()
end
RegisterUnitEvent(10363, 2, "GeneralDrakkisath_Unit_onLeaveCombat")

function GeneralDrakkisath_Unit_onDead(pUnit)
	pUnit:RemoveEvents()
end
RegisterUnitEvent(10363, 4, "GeneralDrakkisath_Unit_onDead")
