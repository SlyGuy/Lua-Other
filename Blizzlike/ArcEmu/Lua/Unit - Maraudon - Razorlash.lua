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


--[[ UNIT: Razorlash ]]--
function Razorlash_Puncture(pUnit)
	pUnit:FullCastSpellOnTarget(21911,pUnit:GetClosestPlayer())		-- Puncture
end

function Razorlash_Cleave(pUnit)
	pUnit:FullCastSpellOnTarget(15584,pUnit:GetRandomPlayer())		-- Cleave
end

function Razorlash_ThornVolley(pUnit)
	pUnit:FullCastSpellOnTarget(21749,pUnit:GetClosestPlayer())		-- Thorn Volley
end

function Razorlash_Unit_onCombat(pUnit)
	pUnit:RegisterEvent("Razorlash_Puncture",12000,0)			-- Cast Puncture every 12 seconds
	pUnit:RegisterEvent("Razorlash_SmokeBomb",6000,0)			-- Cast Cleave every 6 seconds
	pUnit:RegisterEvent("Razorlash_ThornVolley",19000,0)			-- Cast Thorn Volley every 19 seconds
end
RegisterUnitEvent(12258, 1, "Razorlash_Unit_onCombat")

function Razorlash_Unit_onLeaveCombat(pUnit)
	pUnit:RemoveEvents()
end
RegisterUnitEvent(12258, 2, "Razorlash_Unit_onLeaveCombat")

function Razorlash_Unit_onDead(pUnit)
	pUnit:RemoveEvents()
end
RegisterUnitEvent(12258, 4, "Razorlash_Unit_onDead")
