-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright © zdroid9770					 --
-------------------------------------------------------------------
--[[
----Quotes
Houndmaster Grebmar says: Ahh, a new chew toy for my dogs!
----Spells-ID
Bloodlust-21049
Demoralizing Shout-13730
Pummel-15615
]]--

function HoundMGM_OnCombat(pUnit, event)
	pUnit:SendChatMessage(12, 0, "Ahh, a new chew toy for my dogs!")
    pUnit:RegisterEvent("Bloodlust", 7000, 0)
    pUnit:RegisterEvent("DS", 14000, 0)
	pUnit:RegisterEvent("Pummel", 21000, 0)
end
 
function Bloodlust(pUnit, Event)
    pUnit:FullCastSpell(21049)
end
 
function DS(pUnit, Event)
    pUnit:CastSpell(13730)
end

function Pummel(pUnit, Event)
    pUnit:CastSpellOnTarget(15615)
end
 
function HoundMGM_OnLeaveCombat(pUnit, event)
    pUnit:RemoveEvents()
end
 
function HoundMGM_OnDeath(pUnit, event)
    pUnit:RemoveEvents()
end
 
RegisterUnitEvent(9319, 1, "HoundMGM_OnCombat")
RegisterUnitEvent(9319, 2, "HoundMGM_OnLeaveCombat")
RegisterUnitEvent(9319, 3, "HoundMGM_OnDeath")