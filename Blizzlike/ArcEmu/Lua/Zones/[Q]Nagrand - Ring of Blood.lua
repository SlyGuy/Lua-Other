--[[ [Q] Nagrand - Rinf of Blood.lua
********************************
*                                                            *
* The LUA++ Scripting Project                 *
*                                                            *
********************************

This software is provided as free and open source by the
staff of The LUA++ Scripting Project, in accordance with 
the AGPL license. This means we provide the software we have 
created freely and it has been thoroughly tested to work for 
the developers, but NO GUARANTEE is made it will work for you 
as well. Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- LUA++ staff, March 26, 2008. ]]

--  Ring of Blood script by eamo.
-- Unfinished yet, 5/6 q partialy working

-- Text on accept  quest
function TextOnAcceptQuest(Unit)
        Unit:SendChatMessage(12,0, "Get in the Ring of Blood, $N. The fight is about to start!")
end

-- Quest Giver and Mogor spawn
--[[function MogorSpawn (Unit)
        Unit:SpawnCreature(18069, -713.427979, 7930.669922, 59.161800, 4.165940, 35, 0)
end
--]]

function QuestGiver(Unit)
QuestGiver = Unit
end

function QuestGiverSpawn(Unit)
        Unit:RegisterEvent("QuestGiver",1000,1)
end

RegisterUnitEvent(18471, 6, "QuestGiverSpawn")

--The Ring of Blood: Brokentoe
function BrokentoeQuest(Unit, Event)
        QuestGiver:RegisterEvent("TextOnAcceptQuest",500,1)
        QuestGiver:RegisterEvent("BrokentoeSpawn",5000,1)
end

function BrokentoeSpawn(Unit)
        Unit:SpawnCreature(18398, -704.385620, 7875.663086, 45.374313, 2.016115, 168, 600000)
end

function BrokentoeDespawn(Unit)
        Unit:Despawn(10000,0)
end

RegisterQuestEvent(9962,2,"BrokentoeQuest")
RegisterUnitEvent(18398,2,"BrokentoeDespawn")

-- The Ring of Blood: The Blue Brothers
function TheBlueBrothersQuest (Unit, Event)
        QuestGiver:RegisterEvent("TextOnAcceptQuest",500,1)
		QuestGiver:RegisterEvent("TheBlueBrothersQuestYell",5000,1)
        QuestGiver:RegisterEvent("TheBlueBrothersSpawn",6000,1)
end

function TheBlueBrothersSpawn(Unit)
        Unit:SpawnCreature(18399, -700.240051, 7874.219727, 45.884964, 2.046947, 168, 600000)
	    Unit:SpawnCreature(18399, -704.122192, 7872.217773, 45.169842, 2.046947, 168, 600000)
end

function TheBlueBrothersQuestYell(Unit)
        QuestGiver:SendChatMessage(12,0,"The battle is about to begin! The unmerciful Murkblood twins versus $N!")
end

function TheBlueBrothersDespawn(Unit)
        Unit:Despawn(10000,0)
end

RegisterQuestEvent(9967,2,"TheBlueBrothersQuest")
RegisterUnitEvent(18399,2,"TheBlueBrothersDespawn")

--The Ring of Blood: Rokdar the Sundered Lord
function  RokdarTheSunderedLordQuest (Unit, Event)
		QuestGiver:RegisterEvent("TextOnAcceptQuest",500,1)
		QuestGiver:RegisterEvent("RokdarTheSunderedLordYell",5000,1)
        QuestGiver:RegisterEvent("RokdarTheSunderedLordSpawn",6000,1)
end

function RokdarTheSunderedLordSpawn(Unit)
        Unit:SpawnCreature(18400, -707.007507, 7867.739746, 44.906353, 1.893796, 168, 600000)
end

function  RokdarTheSunderedLordYell(Unit)
         QuestGiver:SendChatMessage(12,0,"Hailing from the mountains of Blade's Edge comes Rokdar the Sundered Lord! $N is in for the fight of his life.")
end

function RokdarTheSunderedLordDespawn(Unit)
        Unit:Despawn(10000,0)
end

RegisterQuestEvent(9970,2,"RokdarTheSunderedLordQuest")
RegisterUnitEvent(18400,2,"RokdarTheSunderedLordDespawn")

--The Ring of Blood: Skra'gath
function SkragathQuest (Unit, Event)
        QuestGiver:RegisterEvent("TextOnAcceptQuest",500,1)
		QuestGiver:RegisterEvent("SkragathYell",5000,1)
        QuestGiver:RegisterEvent("SkragathSpawn",6000,1)
end

function SkragathSpawn(Unit)
        Unit:SpawnCreature(18401, -704.290588, 7869.463867, 45.064030, 1.909504, 168, 600000)
end

function SkragathYell(Unit)
        QuestGiver:SendChatMessage(12,0,"From the parts unknown: Ska'gath! Can $N possibly survive the onslaught of void energies?")
end

function SkragathDespawn(Unit)
        Unit:Despawn(10000,0)
end

RegisterQuestEvent(9972,2,"SkragathQuest")
RegisterUnitEvent(18401,2,"SkragathDespawn")

--The Ring of Blood: The Warmaul Champion
function TheWarmaulChampionQuest (Unit, Event)
		QuestGiver:RegisterEvent("TextOnAcceptQuest",500,1)
		QuestGiver:RegisterEvent("TheWarmaulChampionYell",5000,1)
        QuestGiver:RegisterEvent("TheWarmaulChampionSpawn",6000,1)
end

function TheWarmaulChampionSpawn (Unit)
        Unit:SpawnCreature(18402, -704.290588, 7869.463867, 45.064030, 1.909504, 168, 600000)
end

function TheWarmaulChampionYell (Unit)
        QuestGiver:SendChatMessage(12,0,"They had to ship the champion in from the  Blade's Edge gladiator pits. He was training on mountain giants - three at a time.")
end

function TheWarmaulChampionDespawn (Unit)
        Unit:Despawn(10000,0)
end

RegisterQuestEvent(9973,2,"TheWarmaulChampionQuest")
RegisterUnitEvent(18402,2,"TheWarmaulChampionDespawn")
-- The Ring of Blood: The Final Challenge
--[[
function MogorPath (Unit, Event)
    if(mogorspawn == 1) then
        Unit:CreateCustomWaypointMap()
		Unit:CreateWaypoint(-718.336426, 7921.608887, 58.957344, 0, 0, 0, 0)
		Unit:CreateWaypoint(-733.090881, 7922.159180, 57.960159, 0, 0, 0, 0)
		Unit:CreateWaypoint(-725.227600, 7908.185547, 51.504486, 0, 0, 0, 0)
		Unit:CreateWaypoint(-707.492310, 7872.812012, 44.891983, 0, 0, 0, 0)
		Unit:MoveToWaypoint(0)
		Unit:RegisterEvent("MogorPath2",1000,1) 
    end
end

function MogorPath2(Unit, unk1, unk2, wp_id)
    if(wp_id == 3) then
        Unit:SetFaction(168)
    end
	
	if(wp_id == 4) then
	    Unit:RemoveEvents()
		Unit:DestroyCustomWaypointMap()
	end
end

RegisterUnitEvent(18069, 8, "MogorPath2")

function TheFinalChallengeQuest(Unit, event)
        Mogor:RegisterEvent("MogorPath",1000,1)
		QuestGiver:RegisterEvent("TheFinalChallengeYell",500,1)
		QuestGiver:RegisterEvent("TheFinalChallengeYell2",5000,1)
end

function TheFinalChallengeYell(Unit)
        Unit:SendChatMessage(12,0,"Mogor has challenged you. You have to accept! Get in the right of blood if you are ready to fight.")
end

function TheFinalChallengeYell2(Unit)
        Unit:SendChatMessage(12,0,"For the first time in the Ring of Bloods history. Mogor has chosen to exercise his right of the battle! On this wartorn ground, Mariaen will face Mogor, hero of the Warmaul!")
end

RegisterQuestEvent(9977,1,"TheFinalChallengeQuestComplete")
RegisterQuestEvent(9977, 2, "TheFinalChallengeQuest")

function Mogor(Unit)
mogorspawn = 0
Mogor = Unit
end

function MogorOnDied(Unit)
        mogorspawn = 1
        Mogor:RemoveEvents()
end

function MogorOnLeaveCombat(Unit)
        mogorspawn = 2
        Mogor:RemoveEvents()
        Mogor:Despawn(10000,0)
end

RegisterUnitEvent(18069, 6, "Mogor")
RegisterUnitEvent(18069, 4, "MogorOnDied")
--]]