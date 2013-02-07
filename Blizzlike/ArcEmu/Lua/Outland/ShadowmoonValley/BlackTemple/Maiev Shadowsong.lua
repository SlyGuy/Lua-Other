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
   Boss_MaievShadowsong.lua
   Original Code by DARKI
   Version 1
========================================]]--
--[[Maiev Shadowsong says: Curse you, Akama! I am not a pawn in your game... my will is my own. When I unleash my wrath upon Illidan it will have nothing to do with your foolish scheme!
Maiev Shadowsong says: If we truly desire the same thing, Akama, then release me! If Illidan is to die, it shall be by my hand!
Maiev Shadowsong says: Release me immediately or face my wrath!
Maiev Shadowsong says: This cell won't hold me for long. I will have Illidan's head one way or another.]]

function Maiev_Died(Unit, event, player)
	Unit:RemoveEvents()
end

function Maiev_OnCombat(Unit, event, player)
	Unit:RegisterEvent("Maiev_Say", 62000, 0)
end

function Maiev_Say(Unit, event, player)
	Unit:SendChatMessage(12, 0, "I've waited for this moment for years. Illidan and his lapdogs will be destroyed!!")
	Unit:SendChatMessage(12, 0, "You've sealed your fate, Akama. The Master will learn of your betrayal!")
end

RegisterUnitEvent(21699, 18, "Maiev_OnCombat")
RegisterUnitEvent(21699, 4, "Maiev_Died")