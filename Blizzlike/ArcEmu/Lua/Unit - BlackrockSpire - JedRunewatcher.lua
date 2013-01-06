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


--[[ UNIT: Jed Runewatcher ]]--
function JedRunewatcher_ChargeBash(pUnit)
	pUnit:FullCastSpellOnTarget(15749,pUnit:GetClosestPlayer()) -- ShieldBash - Fixed
end
function JedRunewatcher_Bash(pUnit)
	pUnit:FullCastSpellOnTarget(11972,pUnit:GetClosestPlayer())	-- Bash - Fixed
end

function JedRunewatcher_Strike(pUnit)
	pUnit:FullCastSpellOnTarget(14516,pUnit:GetClosestPlayer())	-- Strike - Fixed
end

function JedRunewatcher_Unit_onCombat(pUnit)
   -- pUnit:RegisterEvent("JedRunewatcher_ChargeBash",10000,0)	-- Use Shield Charge every 10 seconds
	pUnit:RegisterEvent("JedRunewatcher_Bash",12000,0)		-- Use Backhand every 12 seconds
	pUnit:RegisterEvent("JedRunewatcher_Strike",6000,0)		-- Use Strike every 6 seconds
end
RegisterUnitEvent(10509, 1, "JedRunewatcher_Unit_onCombat")

function JedRunewatcher_Unit_onLeaveCombat(pUnit)
	pUnit:RemoveEvents()
end
RegisterUnitEvent(10509, 2, "JedRunewatcher_Unit_onLeaveCombat")

function JedRunewatcher_Unit_onDead(pUnit)
	pUnit:RemoveEvents()
end
RegisterUnitEvent(10509, 4, "JedRunewatcher_Unit_onDead")
