-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright © zdroid9770					 --
-------------------------------------------------------------------
--[[
----Quotes
Magmus yells: Emperor Thaurissan does not wish to be disturbed! Turn back now or face your doom, weak mortals!
----Spells-ID
Fiery Burst-15668
War Stomp-15593
]]--

function Magmus_OnCombat(pUnit, event)
	pUnit:SendChatMessage(14, 0, "Emperor Thaurissan does not wish to be disturbed! Turn back now or face your doom, weak mortals!")
    pUnit:RegisterEvent("FieryBurst", 7000, 0)
    pUnit:RegisterEvent("WarStomp", 14000, 0)
end
 
function FieryBurst(pUnit, Event)
    pUnit:FullCastSpellOnTarget(15668)
end
 
function WarStomp(pUnit, Event)
    pUnit:CastSpell(15593)
end
 
function Magmus_OnLeaveCombat(pUnit, event)
    pUnit:RemoveEvents()
end
 
function Magmus_OnDeath(pUnit, event)
    pUnit:RemoveEvents()
end
 
RegisterUnitEvent(9938, 1, "Magmus_OnCombat")
RegisterUnitEvent(9938, 2, "Magmus_OnLeaveCombat")
RegisterUnitEvent(9938, 4, "Magmus_OnDeath")