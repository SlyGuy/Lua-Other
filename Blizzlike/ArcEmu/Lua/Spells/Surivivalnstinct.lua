-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright© zdroid9770					 --
-------------------------------------------------------------------

function SurivalInstincts(event, player, SpellId, pSpellObject)
	if(SpellId == 61336) then
		local plr = player:GetHealth()
		local maxhp = player:GetMaxHealth()
		player:SetHealth(plr * 0.30, maxhp * 0.30)
		player:RegisterTimedEvent("ResetHP", 20000, 1)
	end
end

function ResetHP(player, event)
	player:SetHealth(plr, maxhp)
end