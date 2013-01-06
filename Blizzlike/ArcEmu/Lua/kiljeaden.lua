--[[ Boss_Sunwell_KilJaeden.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX of the Blua Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, June 23, 2008. ]]


-- The OnKill and OnCombat stuff... Emerge is with this to...
function Kil_OnKill (pUnit, Event)
	pUnit:SendChatMessage(14, 0, "Another step towards destruction!")
	pUnit:PlaySoundToSet(12501)
end

function Kil_EnterCombat (pUnit, Event)
	pUnit:SendChatMessage(14, 0, "The expendible have perished... So be it! Now I shall succeed where Sargeras could not! I will bleed this wretched world and secure my place as the true master of the Burning Legion. The end has come! Let the unraveling of this world commence!")
	pUnit:PlaySoundToSet(12500)
	pUnit:CastSpell(35177)
end

-- Begin Phases
-- BrantX Comment --
-- Phase 01, is when the Hand of Kil'Jaeden are draining Aveena and are there when aggroed, when they die kil'jaeden spawns, i'll work on these scripts in the future...
-- THIS IS PHASE 02, THE SCRIPTS WITH KIL_PHASE01-*ID* ARE JUST PRE-PHASES.
function Kil_Phase01 (pUnit, Event)
 if pUnit:GetHealthPct() < 99 then
	pUnit:FullCastSpellOnTarget(45442,pUnit:GetRandomPlayer(O))
	pUnit:RegisterEvent("Kil_Phase02",1000, 0)
   end
end

-- BrantX Comment --
-- This is phase 2.02, This casts Legion Lightning...
function Kil_Phase02 (pUnit,Event)
 if pUnit:GetHealthPct() < 93 then
	pUnit:FullCastSpellOnTarget(45664,pUnit:GetRandomPlayer())
	pUnit:RegisterEvent("Kil_Phase03",1000, 0)
   end
end

-- BrantX Comment --
-- This is phase 2.03, This casts Legion Fire bloom...
function Kil_Phase03 (pUnit,Event)
 if pUnit:GetHealthPct() < 85 then
	pUnit:FullCastSpellOnTarget(45642,pUnit:GetRandomPlayer(O))
	pUnit:FullCastSpellOnTarget(45642,pUnit:GetMainTank())
	pUnit:SendChatMessage(14, 0, "I will not be denied! This world shall fall!")
	pUnit:PlaySoundToSet(12508)
	pUnit:RegisterEvent("Kil_Phase04",1000, 0)
   end
end

-- BrantX Comment --
-- The Summon Shield Orb spell isn't found.. i have to manually do it but i will in a update... --
-- END THE SECOND(02) PHASE OF KILJAEDEN! TIME TO MOVE ON --

-- Phase 03 of Kil'Jaeden, Gets different here... --
function Kil_Phase04 (pUnit,Event)
 if pUnit:GetHealthPct() < 81 then
-- This is suppost to be Sinister Reflection, Can't find will move on --
	pUnit:RegisterEvent("Kil_Phase05",1000, 0)
   end
end

-- BrantX Comment --
-- Easyily Done --
function Kil_Phase05 (pUnit,Event)
 if pUnit:GetHealthPct() < 73 then
	pUnit:FullCastSpellOnTarget(45885,pUnit:GetRandomPlayer(O))
	pUnit:RegisterEvent("Kil_Phase06",1000, 0)
   end
end
 
 -- BrantX Comment --
 -- Easily Done --
function Kil_Phase06 (pUnit,Event)
 if pUnit:GetHealthPct() < 64 then
	pUnit:FullCastSpellOnTarget(45746,pUnit:GetRandomPlayer(O))
	pUnit:RegisterEvent("Kil_Phase07",1000, 0)
   end
end

-- BrantX Comment --
-- The Another Skip on Spells, Can't Find its  Summon Shield Orb only 1... --
function Kil_Phase07 (pUnit,Event)
 if pUnit:GetHealthPct() < 60 then
 pUnit:RegisterEvent("Kil_Phase08",1000, 0)
   end
end

-- BrantX Comment --
-- Begings to Channel! --
function Kil_Phase08 (pUnit,Event)
 if pUnit:GetHealthPct() < 57 then
	pUnit:Emote(404)
	pUnit:RegisterEvent("Kil_Phase09",1000, 0)
   end
end

-- BrantX Comment --
-- The Legendary, 47500-52500 Shadow Damaged Spell... Darkness of a Thousand Souls --
function Kil_Phase09 (pUnit,Event)
 if pUnit:GetHealthPct() < 56 then
	pUnit:Emote(0)
	pUnit:FullCastSpellOnTarget(45657,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("Kil_Phase10",1000, 0)
   end
end

-- BrantX Comment --
-- The end of Phase 03 now on to 04! not alot --
-- Sheilds arn't found so i will use Meteor Slam, if found please tell so i can re-write the script, Spell is Summon Shield Orb x3 --
function Kil_Phase10 (pUnit,Event)
 if pUnit:GetHealthPct() < 55 then
	pUnit:SendChatMessage(14, 0, "Do not harbor false hope. You cannot win!")
	pUnit:PlaySoundToSet(12509)
	pUnit:FullCastSpellOnTarget(45150,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("Kil_Phase11",1000, 0)
   end
end

-- BrantX Comment --
-- The Meteors --
function Kil_Phase11 (pUnit,Event)
 if pUnit:GetHealthPct() < 48 then
	pUnit:FullCastSpellOnTarget(41276,pUnit:GetClosestPlayer())
	pUnit:RegisterEvent("Kil_Phase12",1000, 0)
   end
end
-- THE END OF PHASE 04, NOW TO 05 THE LAST ONE!!! --

-- BrantX Comment --
-- Easy... Get to 25% and fight on... lol --
function Kil_Phase12 (pUnit,Event)
 if pUnit:GetHealthPct() < 25 then
	pUnit:CastSpell(46474)
	pUnit:SendChatMessage(14, 0, "Aggghh! The powers of the Sunwell... turn... against me! What have you done? What have you done???")
	pUnit:PlaySoundToSet(12510)
   end
end
-- The end of phase 05, wasn't that phase long?!?! -- 

-- This makes the phases playable! --
function Kil_start(pUnit, Event)
 pUnit:RegisterEvent("Kil_01",1000, 0)
end
-- End --




-- Register Unit Events --
RegisterUnitEvent (25315, 1, "Kil_start")
RegisterUnitEvent (25315, 3, "Kil_OnKill")
RegisterUnitEvent (25315, 1, "Kil_EnterCombat")