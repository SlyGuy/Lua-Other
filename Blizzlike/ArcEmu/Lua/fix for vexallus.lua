--[[ Vexallus_Fix.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX of the Blua Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, June 23, 2008. ]]

function Vex_OnKill(pUnit,Event)
	pUnit:SendChatMessage(14, 0, "Con...sume.")
	pUnit:PlaySoundToSet(12393)
end
  
function Vex_OnCombat(pUnit, Event)
pUnit:RegisterEvent("Vex_Arcane", 3000, 8)
	pUnit:SendChatMessage(14, 0, "Drain... life...")
	pUnit:PlaySoundToSet(12389)
end

function Vex_Arcane(pUnit, Event)
c = math.random(10);
if (c < 7) then
   pUnit:FullCastSpellOnTarget(44319, pUnit:GetClosestPlayer(0))
    pUnit:SendChatMessage(14, 0, "Un...con...tainable.")
	pUnit:PlaySoundToSet(12392)
   end
end

function Vex_CastOverload(pUnit,Event)
 if pUnit:GetHealthPct() < 10 then
pUnit:RegisterEvent("Vex_Overload", 2500, 8)
end
end

function Vex_Overload(pUnit, Event)
c = math.random(10);
if (c < 7) then
	pUnit:FullCastSpellOnTarget(44353, pUnit:GetClosestPlayer())
	pUnit:SendChatMessage(14, 0, "Un...leash...")
	pUnit:PlaySoundToSet(12390)
	  end
	end

function Vex_Adds(pUnit,Event)
 if pUnit:GetHealthPct() < 85 then
 pUnit:SpawnCreature(24745, 231, -207, 6, 0, 16, 60000)
 if pUnit:GetHealthPct() < 70 then
 pUnit:SpawnCreature(24745, 231, -207, 6, 0, 16, 60000)
 if pUnit:GetHealthPct() < 55 then
 pUnit:SpawnCreature(24745, 231, -207, 6, 0, 16, 60000)
 if pUnit:GetHealthPct() < 40 then
 pUnit:SpawnCreature(24745, 231, -207, 6, 0, 16, 60000)
 if pUnit:GetHealthPct() < 25 then
	pUnit:SpawnCreature(24745, 231, -207, 6, 0, 16, 60000)
	end
   end
  end
 end
end
end

RegisterUnitEvent(24744, 3, "Vex_OnKill")
RegisterUnitEvent(24744, 1, "Vex_OnCombat")
RegisterUnitEvent(24744, 1, "Vex_CastOverload")
RegisterUnitEvent(24744, 1, "Vex_Adds")