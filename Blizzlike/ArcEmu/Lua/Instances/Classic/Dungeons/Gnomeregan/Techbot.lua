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

function radiation_dt_OnCombat(pUnit, Event)
	pUnit:RegisterEvent("Lag", 7000, 0)
	pUnit:RegisterEvent("Summon_Dupe_Bug", 14000, 0)
	pUnit:RegisterEvent("Battle_Net", 21000, 0)
end

function Lag(pUnit, Event)
	pUnit:FullCastSpellOnTarget(10855, pUnit:GetClosestPlayer(1))
end

function Summon_Dupe_Bug(pUnit, Event)
	pUnit:FullCastSpellOnTarget(10858, pUnit:GetClosestPlayer(1))
end

function Battle_Net(pUnit, Event)
	pUnit:FullCastSpellOnTarget(10855, pUnit:GetClosestPlayer(1))
end

function radiation_dt_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()
end

function radiation_dt_OnDied(pUnit, Event)
	pUnit:SendChatMessage(12, 0, "Machine shutdown!")
	pUnit:RemoveEvents()
end

RegisterUnitEvent(6231, 1, "radiation_dt_OnCombat")
RegisterUnitEvent(6231, 2, "radiation_dt_OnLeaveCombat")
RegisterUnitEvent(6231, 4, "radiation_dt_OnDied")