--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: WoTD Team; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

--[[To do: Blindlight Murloc, Murkshallow Snapclaw, Skittering Crustacean, Aku'mai Fisher, 
Snapping Crustacean, Blindlight Muckdweller, Blindlight Oracle, Aqua Guardian, Barbed Crustacean, 
Deep Pool Threshfin, Aku'mai Servant, Aku'mai Snapjaw, Barbed Crustacean, Murkshallow Softshell, 
Voidwalker Minion]]--

--Twilight Acolyte/Reaver/Aquamancer/Loreseeker/Elementalist/Shadowmage
function Twilight_OnEnterCombat(pUnit, event)
local chance = math.random(1,4)
	if (chance == 1) then
		pUnit:SendChatMessage(12, 0, "Aku'mai demands more sacrifices, now you must die!")
	elseif (chance == 2) then
		pUnit:SendChatMessage(12, 0, "Intruders! The Hammer shall fall upon you.")
	elseif (chance == 3) then
		pUnit:SendChatMessage(12, 0, "The Old Gods will be restored. You will not be allowed to interfere!")
	elseif (chance == 4) then
		pUnit:SendChatMessage(12, 0, "Your blood shall be the catalyst for the Old Gods' return!")
	end
end

function Twilight_OnLeaveCombat(pUnit, event)
	pUnit:RemoveEvents()
end

function Twilight_OnDeath(pUnit, event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(4813, 1, "Twilight_OnEnterCombat")
RegisterUnitEvent(4813, 2, "Twilight_OnLeaveCombat")
RegisterUnitEvent(4813, 4, "Twilight_OnDeath")
RegisterUnitEvent(4814, 1, "Twilight_OnEnterCombat")
RegisterUnitEvent(4814, 2, "Twilight_OnLeaveCombat")
RegisterUnitEvent(4814, 4, "Twilight_OnDeath")
RegisterUnitEvent(4810, 1, "Twilight_OnEnterCombat")
RegisterUnitEvent(4810, 2, "Twilight_OnLeaveCombat")
RegisterUnitEvent(4810, 4, "Twilight_OnDeath")
RegisterUnitEvent(4812, 1, "Twilight_OnEnterCombat")
RegisterUnitEvent(4812, 2, "Twilight_OnLeaveCombat")
RegisterUnitEvent(4812, 4, "Twilight_OnDeath")
RegisterUnitEvent(4811, 1, "Twilight_OnEnterCombat")
RegisterUnitEvent(4811, 2, "Twilight_OnLeaveCombat")
RegisterUnitEvent(4811, 4, "Twilight_OnDeath")
RegisterUnitEvent(4809, 1, "Twilight_OnEnterCombat")
RegisterUnitEvent(4809, 2, "Twilight_OnLeaveCombat")
RegisterUnitEvent(4809, 4, "Twilight_OnDeath")