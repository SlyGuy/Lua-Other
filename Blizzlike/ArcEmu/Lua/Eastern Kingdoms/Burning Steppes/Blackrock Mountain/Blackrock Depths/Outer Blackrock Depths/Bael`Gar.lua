--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: zdroid9770; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function BaelGar_OnCombat(pUnit, Event)
    pUnit:RegisterEvent("MagmaSplash", 7000, 0)
    pUnit:RegisterEvent("SummonSpawnofBaelGar", 14000, 0)
end
 
function MagmaSplash(pUnit, Event)
    pUnit:CastSpell(23379)
end
 
function SummonSpawnofBaelGar(pUnit, Event)
    pUnit:CastSpell(13895)
end
 
function BaelGar_OnLeaveCombat(pUnit, Event)
    pUnit:RemoveEvents()
end
 
function BaelGar_OnDeath(pUnit, Event)
    pUnit:RemoveEvents()
end
 
RegisterUnitEvent(9016, 1, "BaelGar_OnCombat")
RegisterUnitEvent(9016, 2, "BaelGar_OnLeaveCombat")
RegisterUnitEvent(9016, 3, "BaelGar_OnDeath")