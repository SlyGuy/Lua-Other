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


--[[ UNIT: Goraluk Anvilcrack ]]--
function GoralukAnvilcrack_Headcrack(pUnit)
	pUnit:FullCastSpellOnTarget(16172,pUnit:GetClosestPlayer()) -- Head Crack (Reduce Stamina, Daze Effect)
end

function GoralukAnvilcrack_Backhand(pUnit)
	pUnit:FullCastSpellOnTarget(6253,pUnit:GetClosestPlayer())	-- Backhand (Stun Effect)
end

function GoralukAnvilcrack_Strike(pUnit)
	pUnit:FullCastSpell(19644)						-- Strike - Fixed!
end

function GoralukAnvilcrack_Unit_onCombat(pUnit)
	pUnit:RegisterEvent("GoralukAnvilcrack_Headcrack",14000,0) -- Use Head Crack every 14 seconds
	pUnit:RegisterEvent("GoralukAnvilcrack_Backhand",10000,0)	-- Use Backhand every 10 seconds
	pUnit:RegisterEvent("GoralukAnvilcrack_Strike",6000,0)		-- Use Strike every 6 seconds
end
RegisterUnitEvent(10899, 1, "GoralukAnvilcrack_Unit_onCombat")

function GoralukAnvilcrack_Unit_onLeaveCombat(pUnit)
	pUnit:RemoveEvents()
end
RegisterUnitEvent(10899, 2, "GoralukAnvilcrack_Unit_onLeaveCombat")

function GoralukAnvilcrack_Unit_onDead(pUnit)
	pUnit:RemoveEvents()
end
RegisterUnitEvent(10899, 4, "GoralukAnvilcrack_Unit_onDead")
