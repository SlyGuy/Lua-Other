-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright © zdroid9770					 --
-------------------------------------------------------------------
--[[
Omokk's head, when placed on a [Roughshod Pike], can be used to challenge Urok Doomhowl.
----Quotes
Highlord Omokk says: I'll crush you!
Highlord Omokk says: Me smash! You die!
Highlord Omokk says: Raaar!!! Me smash blood elf!
Highlord Omokk says: Raaar!!! Me smash human!
----Spells-ID
Frenzy-8269
Knock Away-10101
]]--

function HO_OnCombat(pUnit, Event)
local combat = math.random(1,3)
	if(combat == 1) then
		pUnit:SendChatMessage(12, 0, "I'll crush you!")
	elseif(combat == 2) then
		pUnit:SendChatMessage(12, 0, "Me smash! You die!")
	elseif(combat == 3) then
		if (player:GetPlayerRace() == 1) then
			pUnit:SendChatMessage(12, 0, "Raaar!!! Me smash human!")
		elseif (player:GetPlayerRace() == 10) then
			pUnit:SendChatMessage(12, 0, "Raaar!!! Me smash blood elf!")
		else
			if(combat == 1) then
				pUnit:SendChatMessage(12, 0, "I'll crush you!")
			elseif(combat == 2) then
				pUnit:SendChatMessage(12, 0, "Me smash! You die!")
			end
		end
	end
	pUnit:RegisterEvent("Frenzy", 1100, 0)
	pUnit:RegisterEvent("KnockAway", 3100, 0)
end

function Frenzy(pUnit, Event)
	pUnit:CastSpell(8269)
end

function KnockAway(pUnit, Event)
	pUnit:CastSpellOnTarget(10101)
end

function HO_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()
end

function HO_OnDeath(pUnit, Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(9196, 1, "HO_OnCombat")
RegisterUnitEvent(9196, 2, "HO_OnLeaveCombat")
RegisterUnitEvent(9196, 4, "HO_OnDeath")