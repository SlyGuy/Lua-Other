--[[ Gurubashi Arena Chest Spawn.lua

This script was written and is protected
by the GPL v2. This script was released
by Bapes of the Blua Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- Bapes, June 05, 2008. ]]

function GurubashiArena (Unit, Event)
Unit:RegisterEvent("GurubashiArenaChest_OnSpawn", 10800000, 0)
end

function GurubashiArenaChest_OnSpawn(Unit, Event)
Unit:SpawnGameObject(179697, -13203.203125, 277.170868, 21.857513, 4.189312, 10800000)
Unit:SendChatMessage(12, 0, "Arrr, Me Hearties! I be havin' some extra Treasure that i be givin' away at the Gurubashi Arena! All ye need to do is collect it is open the chest I leave on the arena floor!")
end



RegisterUnitEvent(14508,6,"GurubashiArena")