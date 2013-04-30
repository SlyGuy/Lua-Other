--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: LUA++; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]
math.randomseed(os.time())

function MagistrateBarthilas_OnCombat(pUnit)
	pUnit:SendChatMessage(12, 0, "Intruders at the Service Gate! Lord Rivendare must be warned!")
    pUnit:RegisterEvent("MagistrateBarthilas_MightyBlow", math.random(23000,30000), 0)
	pUnit:RegisterEvent("MagistrateBarthilas_DrainingBlow", math.random(10000,15000), 0)
	pUnit:RegisterEvent("MagistrateBarthilas_CrowdPummel", math.random(13000,16000), 0)
	pUnit:RegisterEvent("MagistrateBarthilas_Dazed", math.random(5000,8000), 0)
	pUnit:RegisterEvent("MagistrateBarthilas_FuriousAnger", 45000, 0)
end

function MagistrateBarthilas_DrainingBlow(pUnit)
    if(pUnit:GetMainTank() ~= nil) then
	    pUnit:FullCastSpellOnTarget(16793, pUnit:GetMainTank())
	end
end

function MagistrateBarthilas_CrowdPummel(pUnit)
    if(math.random(1,10) < 4) then
        pUnit:FullCastSpell(10887)
    end
end

function MagistrateBarthilas_MightyBlow(pUnit)
    if(pUnit:GetMainTank() ~= nil) then
	    pUnit:FullCastSpellOnTarget(14099, pUnit:GetMainTank())
	end
end

function MagistrateBarthilas_Dazed(pUnit)
    if(pUnit:GetMainTank() ~= nil) then
	    pUnit:FullCastSpellOnTarget(1604, pUnit:GetMainTank())
	end
end

function MagistrateBarthilas_FuriousAnger(pUnit)
    pUnit:FullCastSpell(16791)
end

function MagistrateBarthilas_OnLeaveCombat(pUnit)
    pUnit:RemoveEvents()
end

function MagistrateBarthilas_OnDied(pUnit)
    pUnit:RemoveEvents()
	pUnit:SetModel(3637)
end

RegisterUnitEvent(10435, 1 ,"MagistrateBarthilas_OnCombat")
RegisterUnitEvent(10435, 2, "MagistrateBarthilas_OnLeaveCombat")
RegisterUnitEvent(10435, 4, "MagistrateBarthilas_OnDied")