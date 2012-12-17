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
   Original Code by DARKI
   Version 1
========================================]]--

function Radioactive_mg_OnCombat(pUnit, Event)
	pUnit:RegisterEvent("Dazed", 7000, 0)
	pUnit:RegisterEvent("Electrified_Net", 14000, 0)
end

function Dazed(pUnit, Event)
	pUnit:CastSpellOnTarget(1604, pUnit:GetClosestPlayer(1))
end

function Electrified_Net(pUnit, Event)
	pUnit:FullCastSpellOnTarget(11820, pUnit:GetClosestPlayer(1))
end

function Radioactive_mg_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()
end

function Radioactive_mg_OnDied(pUnit, Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(6234, 1, "Radioactive_mg_OnCombat")
RegisterUnitEvent(6234, 2, "Radioactive_mg_OnLeaveCombat")
RegisterUnitEvent(6234, 4, "Radioactive_mg_OnDied")