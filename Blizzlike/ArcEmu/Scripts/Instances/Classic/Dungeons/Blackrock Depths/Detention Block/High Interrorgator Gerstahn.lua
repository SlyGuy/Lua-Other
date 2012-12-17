-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright © zdroid9770					 --
-------------------------------------------------------------------
--[[
----Spells-ID
Mana Burn-14033
Psychic Scream-13704
Shadow Shield-12040
Shadow Word: Pain-14032
]]--

function HIGS_OnCombat(pUnit, event)
    pUnit:RegisterEvent("ManaBurn", 7000, 0)
    pUnit:RegisterEvent("ShadowShield", 14000, 0)
	pUnit:RegisterEvent("SWPain", 21000, 0)
	pUnit:RegisterEvent("PsychicScream", 28000, 0)
end
 
function ManaBurn(pUnit, Event)
    pUnit:CastSpell(14033)
end
 
function ShadowShield(pUnit, Event)
    Unit:CastSpell(12040)
end

function SWPain(pUnit, Event)
    pUnit:CastSpell(14032)
end

function PsychicScream(Unit, Event)
    pUnit:CastSpell(13704)
end
 
function HIGS_OnLeaveCombat(pUnit, event)
    pUnit:RemoveEvents()
end
 
function HIGS_OnDeath(pUnit, event)
    pUnit:RemoveEvents()
end
 
RegisterUnitEvent(9018, 1, "HIGS_OnCombat")
RegisterUnitEvent(9018, 2, "HIGS_OnLeaveCombat")
RegisterUnitEvent(9018, 4, "HIGS_OnDeath")