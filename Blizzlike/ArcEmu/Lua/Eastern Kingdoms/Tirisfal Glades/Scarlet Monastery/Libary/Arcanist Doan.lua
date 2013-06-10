--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: DARKI; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

--Arcanist Doan says: The Ashbringer...
--Arcanist Doan says: What do you propose, Mograine?

--Arcanist Doan
function ArcanistDoan_Silence(pUnit)
    if(math.random(1, 10) < 3) then
		pUnit:FullCastSpell(8988)
	end
end

function ArcanistDoan_Polymoprh(pUnit)
	if(pUnit:GetRandomPlayer(7) ~= nil) then
		if(math.random(1, 10) < 4) then
			pUnit:FullCastSpellOnTarget(13323, pUnit:GetRandomPlayer(7))
		end
	end
end

function ArcanistDoan_ArcaneExplosion(pUnit)
    pUnit:FullCastSpell(27082)
end

function ArcanistDoan_Detonation(pUnit)
    pUnit:StopMovement(1000)
    pUnit:FullCastSpell(9435)
end

function ArcanistDoan_OnCombat(pUnit)
    pUnit:SendChatMessage(14, 0, "You will not defile these mysteries!")
    pUnit:PlaySoundToSet(5842)
    pUnit:RegisterEvent("ArcanistDoan_ArcaneExplosion", math.random(8000, 14000), 0)
	pUnit:RegisterEvent("ArcanistDoan_Polymoprh", 15000, 0)
	pUnit:RegisterEvent("ArcanistDoan_Silence", 20000, 0)
	pUnit:RegisterEvent("ArcanistDoan_Phase2", 1000, 0)
end

function ArcanistDoan_Phase2(pUnit)
    if(pUnit:GetHealthPct() <= 50) then
		pUnit:RemoveEvents()
		pUnit:SendChatMessage(14, 0, "Burn in righteous fire!")
		pUnit:PlaySoundToSet(5843)
		pUnit:FullCastSpell(ArcaneBubble)
		pUnit:RegisterEvent("ArcanistDoan_Detonation", 2000, 1)
		pUnit:RegisterEvent("ArcanistDoan_ArcaneExplosion", math.random(8000, 14000), 0)
		pUnit:RegisterEvent("ArcanistDoan_Polymoprh", 15000, 0)
		pUnit:RegisterEvent("ArcanistDoan_Silence", 20000, 0)
	end
end

function ArcanistDoan_LeaveCombat(pUnit)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(20352, 1, "ArcanistDoan_OnCombat")
RegisterUnitEvent(20352, 2, "ArcanistDoan_LeaveCombat") 