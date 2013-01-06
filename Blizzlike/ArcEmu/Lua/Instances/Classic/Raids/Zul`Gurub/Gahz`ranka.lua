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

function Gahz_OnEnterCombat(pUnit, Event)
    pUnit:RegisterEvent("Gahz_Frostbreath", math.random(16000, 20000), 1)
    pUnit:RegisterEvent("Gahz_Slam", 25000, 0)
end

function Gahz_Frostbreath(pUnit, Event)
    pUnit:FullCastSpell(16099)
    pUnit:RegisterEvent("Gahz_Frostbreath", math.random(22000, 26000), 1)
end

function Gahz_Slam(pUnit, Event)
    pUnit:FullCastSpell(24326)
end

function Gahz_OnWipe(pUnit, Event)
    pUnit:RemoveEvents()
end

function Gahz_OnDie(pUnit, Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(15114, 1, "Gahz_OnEnterCombat")
RegisterUnitEvent(15114, 2, "Gahz_OnWipe")
RegisterUnitEvent(15114, 4, "Gahz_OnDie")