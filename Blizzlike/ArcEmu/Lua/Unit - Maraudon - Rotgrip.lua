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


--[[ UNIT: Rotgrip ]]--
function Rotgrip_Puncture(pUnit)
	pUnit:FullCastSpellOnTarget(21911,pUnit:GetClosestPlayer())		-- Puncture
end

function Rotgrip_Unit_onCombat(pUnit)
	pUnit:RegisterEvent("Rotgrip_Puncture",7000,0)				-- Cast Puncture every 7 seconds
end
RegisterUnitEvent(13596, 1, "Rotgrip_Unit_onCombat")

function Rotgrip_Unit_onLeaveCombat(pUnit)
	pUnit:RemoveEvents()
end
RegisterUnitEvent(13596, 2, "Rotgrip_Unit_onLeaveCombat")

function Rotgrip_Unit_onDead(pUnit)
	pUnit:RemoveEvents()
end
RegisterUnitEvent(13596, 4, "Rotgrip_Unit_onDead")
