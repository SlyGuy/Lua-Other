-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright© zdroid9770					 --
-------------------------------------------------------------------

function KokkenTor_OnCombat (Unit, event)
    Unit:RegisterEvent("KokkenTor_Fallout", 1000, 1)
    Unit:RegisterEvent("KokkenTor_Doomthrust", 24000, 0) 
    Unit:RegisterEvent("KokkenTor_Armorslice", 20000, 0) 
    Unit:RegisterEvent("KokkenTor_Phase2", 1000, 0)
end

function KokkenTor_Fallout (Unit, event)
    Unit:FullCastSpellOnTarget(31472, Unit:GetClosestPlayer())
end

function KokkenTor_Doomthrust (Unit, event)
    Unit:FullCastSpellOnTarget(30744, Unit:GetMainTank())
end

function KokkenTor_Armorslice (Unit, event)
    Unit:FullCastSpellOnTarget(15656, Unit:GetMainTank())
end

function KokkenTor_Phase2 (Unit, event)
    if (Unit:GetHealthPct() < 72) then
        Unit:RemoveEvents()
        Unit:RegisterEvent("KokkenTor_Demoncall", 10000, 0)
        Unit:RegisterEvent("KokkenTor_Lethal", 15000, 0)
        Unit:RegisterEvent("KokkenTor_Valiant", 17000, 0)
        Unit:RegisterEvent("KokkenTor_Phase3", 1000, 0)
	end
end

function KokkenTor_Demoncall (Unit, event)
    Unit:FullCastSpellOnTarget(28383, Unit:GetMainTank())
end

function KokkenTor_Lethal (Unit, event)
    Unit:FullCastSpellOnTarget(28308, Unit:GetMainTank())
end

function KokkenTor_Valiant (Unit, event)
    Unit:CastSpell(46287)
end

function KokkenTor_Phase3 (Unit, event)
    if (Unit:GetHealthPct() < 49) then
        Unit:RemoveEvents()        
        Unit:RegisterEvent("KokkenTor_Demoralize", 20000, 0)
        Unit:RegisterEvent("KokkenTor_Impale", 50000, 0) 
        Unit:RegisterEvent("KokkenTor_Terror", 35000, 0)
        Unit:RegisterEvent("KokkenTor_Phase4", 1000, 0)
	end
end

function KokkenTor_Demoralize (Unit, event)
    Unit:CastSpell(27780)
end

function KokkenTor_Impale (Unit, event)
    Unit:CastSpell(19781)
end

function KokkenTor_Terror (Unit, event)
    Unit:FullCastSpellOnTarget(36950, Unit:GetRandomPlayer(0))
end

function KokkenTor_Phase4 (Unit, event)
    if (Unit:GetHealthPct() < 20) then
        Unit:RemoveEvents()
        Unit:CastSpell(39046)
    end
end

function KokkenTor_OnLeaveCombat (Unit, event)
    Unit:RemoveEvents()
end

function KokkenTor_OnDie (Unit, event)
    Unit:RemoveEvents()   
end

RegisterUnitEvent(3886, 1, "KokkenTor_OnCombat")
RegisterUnitEvent(3886, 2, "KokkenTor_OnLeaveCombat")
RegisterUnitEvent(3886, 4, "KokkenTor_OnDie")