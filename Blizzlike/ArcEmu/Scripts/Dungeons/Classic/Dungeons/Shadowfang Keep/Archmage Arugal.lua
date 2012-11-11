--[[=========================================
 _     _    _
| |   | |  | |  /\                  /\
| |   | |  | | /  \   _ __  _ __   /  \   _ __ ___
| |   | |  | |/ /\ \ | '_ \| '_ \ / /\ \ | '__/ __|
| |___| |__| / ____ \| |_) | |_) / ____ \| | | (__
|______\____/_/    \_\ .__/| .__/_/    \_\_|  \___|
  Scripting Project  | |   | | Improved LUA Engine
                     |_|   |_|
   SVN: http://svn.burning-azzinoth.de/LUAppArc
   LOG: http://luapparc.burning-azzinoth.de/trac/timeline
   TRAC: http://luapparc.burning-azzinoth.de/trac
   ----------------------
   Archmage_Arugal.lua
   Original Code by DARKI
   Version 1
========================================]]--
-- % Complete: %
-- Comments: Only ChatMessages
--[[ Spells
http://www.wowhead.com/?spell=7588
http://www.wowhead.com/?spell=7803
http://www.wowhead.com/?spell=7621


--Transforms player into a worgen
Unit:SendChatMessage(14, 0, "Release your rage!")
]]--

-- [[ Functions ]] --
function Arugal_OnCombat(Unit, Event)
		--Unit:SendChatMessage(14, 0, "Who dares interfere with the Sons of Arugal?") --Send when Fenrus the Devourer dies
		Unit:SendChatMessage(14, 0, "You too, shall serve!")
	end
end

function Arugal_OnLeaveCombat(Unit, Event)
	Unit:RemoveEvents()
end

function Arugal_OnKilledTarget(Unit, Event)
    Unit:SendChatMessage(14, 0, "Another falls!")
end

function Arugal_OnDied(Unit, Event)
	Unit:RemoveEvents()
end 

RegisterUnitEvent(4275, 1, "Arugal_OnCombat")
RegisterUnitEvent(4275, 2, "Arugal_OnLeaveCombat")
RegisterUnitEvent(4275, 3, "Arugal_OnKilledTarget")
RegisterUnitEvent(4275, 4, "Arugal_OnDied")