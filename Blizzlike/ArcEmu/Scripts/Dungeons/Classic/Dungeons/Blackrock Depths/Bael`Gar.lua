-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright © zdroid9770					 --
-------------------------------------------------------------------
--[[
----Spells-ID
Magma Splash-23379
Summon Spawn of Bael'Gar-13895
]]--

function BaelGar_OnCombat(pUnit, event)
    pUnit:RegisterEvent("MagmaSplash", 7000, 0)
    pUnit:RegisterEvent("SummonSpawnofBaelGar", 14000, 0)
end
 
function MagmaSplash(pUnit, Event)
    pUnit:CastSpell(23379)
end
 
function SummonSpawnofBaelGar(pUnit, Event)
    pUnit:CastSpell(13895)
end
 
function BaelGar_OnLeaveCombat(pUnit, event)
    pUnit:RemoveEvents()
end
 
function BaelGar_OnDeath(pUnit, event)
    pUnit:RemoveEvents()
end
 
RegisterUnitEvent(9016, 1, "BaelGar_OnCombat")
RegisterUnitEvent(9016, 2, "BaelGar_OnLeaveCombat")
RegisterUnitEvent(9016, 3, "BaelGar_OnDeath")