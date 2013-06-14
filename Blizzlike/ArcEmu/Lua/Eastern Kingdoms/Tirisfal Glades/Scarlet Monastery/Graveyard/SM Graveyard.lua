--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: LUA++; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

--Haunting Phantasm
function HauntingPhantasm_Summon(pUnit, Event)
    pUnit:StopMovement(1000)
    pUnit:CastSpell(8986)
end

function HauntingPhantasm_OnCombat(pUnit, Event)
    pUnit:RegisterEvent("HauntingPhantasm_Summon", math.random(10000, 15000), 2)
end

function HauntingPhantasm_LeaveCombat(pUnit, Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(6427, 1, "HauntingPhantasm_OnCombat")
RegisterUnitEvent(6427, 2, "HauntingPhantasm_LeaveCombat")
--Anguished Dead  
function AnguishedDead(pUnit, Event)
    pUnit:StopMovement(0)
    pUnit:FullCastSpellOnTarget(7068, pUnit:GetMainTank())
end

function AnguishedDead_OnCombat(pUnit, Event)
    pUnit:RegisterEvent("AnguishedDead", math.random(15000, 20000), 0)
end

function AngusihedDead_LeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(6426, 1, "AnguishedDead_OnCombat")
RegisterUnitEvent(6426, 2, "AngusihedDead_LeaveCombat")

--Scarlet Scryer
function SScryer_Sleep(pUnit, Event)
    local ss_target = pUnit:GetRandomPlayer(7)
	if (ss_target ~= nil) then
		pUnit:StopMovement(1000)
		pUnit:FullCastSpellOnTarget(1090, ss_target)
	end
end

function SScryer_Shadowbolt(pUnit, Event)
	pUnit:StopMovement(1000)
	pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank())
end

function SScryer_OnCombat(pUnit, Event)
	pUnit:RegisterEvent("SScryer_Sleep", math.random(15000, 25000),0)
	pUnit:RegisterEvent("SScryer_Shadowbolt", math.random(4000, 13000), 0)
end

function SScryer_LeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(4293, 1, "SScryer_OnCombat")
RegisterUnitEvent(4293, 2, "SScryer_LeaveCombat")
--Interrogator James Vishas

function Vishas_SWPain(pUnit, Event)
     local target = pUnit:GetMainTank()
	if (target ~= nil) then
		pUnit:FullCastSpellOnTarget(2767, target)
	end
end

function Vishas_OnCombat(pUnit, Event)
	pUnit:SendChatMessage(14, 0, "Tell me... tell me everything!")
	pUnit:PlaySoundToSet(5847)
	pUnit:RegisterEvent("Vishas_SWPain", math.random(5000, 12000), 0)
	pUnit:RegisterEvent("Vishas_75", 1000, 0)
end

function Vishas_75(pUnit, Event)
	if (pUnit:GetHealthPct() < 75) then
	    pUnit:RemoveEvents()
    	pUnit:SendChatMessage(14, 0, "Naughty secrets!")
		pUnit:PlaySoundToSet(5849)
		pUnit:RegisterEvent("Vishas_SWPain", math.random(5000, 12000), 0)
		pUnit:RegisterEvent("Vishas_25", 1000, 0)
	end
end

function Vishas_25(pUnit, Event)
	if (pUnit:GetHealthPct() < 25) then
	    pUnit:RemoveEvents()
	    pUnit:SendChatMessage(14, 0, "I'll rip the secrets from your flesh!")
	    pUnit:PlaySoundToSet(5850)
	    pUnit:RegisterEvent("Vishas_SWPain", math.random(5000, 12000), 0)
    end
end
 
function Vishas_KillPlayer(pUnit, Event)
	pUnit:SendChatMessage(14, 0, "Purged by pain!")
	pUnit:PlaySoundToSet(5848)
end
 
function Vishas_LeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()
end
 
RegisterUnitEvent(3983, 1, "Vishas_OnCombat")
RegisterUnitEvent(3983, 2, "Vishas_LeaveCombat")
RegisterUnitEvent(3983, 3, "Vishas_KillPlayer")

--Bloodmage Thalnos

function Thalnos_Shadowbolt(pUnit, Event)
    local target = pUnit:GetMainTank()
	if (target ~= nil) then
		pUnit:StopMovement(1000)
		pUnit:FullCastSpellOnTarget(9613, target)
	end
end

function Thalnos_Firespike(pUnit, Event)
    local maintank = pUnit:GetMainTank();
    local x = maintank:GetX()
    local y = maintank:GetY()
    local z = maintank:GetZ()
	pUnit:RemoveEvents()
	pUnit:StopMovement(1000)
    pUnit:CastSpellAoF(x, y, z, 8814)
	pUnit:RegisterEvent("Thalnos_OnCombat2", 3500, 0)
end

function Thalnos_Firespike2(pUnit, Event)
    local maintank = pUnit:GetMainTank()
    local x = maintank:GetX()
    local y = maintank:GetY()
    local z = maintank:GetZ()
    pUnit:RemoveEvents()
	pUnit:StopMovement(1000)
    pUnit:CastSpellAoF(x, y, z, 8814)
	pUnit:RegisterEvent("Thalnos_OnCombat3", 3500, 0)
end

function Thalnos_Aggro(pUnit, Event)
	pUnit:SendChatMessage(14, 0, "We hunger for vengeance.")
	pUnit:PlaySoundToSet(5844)
end

function Thalnos_OnCombat(pUnit, Event)
	pUnit:RegisterEvent("Thalnos_Aggro", 500, 1)
	pUnit:RegisterEvent("Thalnos_OnCombat2", 1000, 0)
end

function Thalnos_OnCombat2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:RegisterEvent("Thalnos_Shadowbolt", math.random(5000, 7000), 0)
	pUnit:RegisterEvent("Thalnos_Firespike", math.random(20000, 30000), 0)
	pUnit:RegisterEvent("Thalnos_Health", 1000, 0)
end

function Thalnos_Health(pUnit, Event)
    if (pUnit:GetHealthPct() < 50) then
	    pUnit:RemoveEvents()
		pUnit:SendChatMessage(14, 0, "No rest, for the angry dead.")
		pUnit:PlaySoundToSet(5846)
		pUnit:RegisterEvent("Thalnos_OnCombat3", 1000, 0)
	end
end

function Thalnos_OnCombat3(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:RegisterEvent("Thalnos_Shadowbolt", math.random(5000, 7000), 0)
	pUnit:RegisterEvent("Thalnos_Firespike", math.random(20000, 30000), 0)
end

function Thalnos_KillPlayer(pUnit, Event)
	pUnit:SendChatMessage(14,0,"More... More souls.")
	pUnit:PlaySoundToSet(5845)
end

function Thalnos_LeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(4543, 1, "Thalnos_OnCombat")
RegisterUnitEvent(4543, 2, "Thalnos_LeaveCombat")
RegisterUnitEvent(4543, 3, "Thalnos_KillPlayer")

--Ironspine
function Ironspine_PosionCloud(pUnit, Event)
	pUnit:FullCastSpell(3815)
end

function Ironspine_Curse(pUnit, Event)
	pUnit:FullCastSpellOnTarget(21007, pUnit:GetRandomPlayer(0))
end

function Ironspine_OnCombat(pUnit, Event)
	pUnit:RegisterEvent("Ironspine_PoisonCloud", math.random(9000, 15000), 0)
	pUnit:RegisterEvent("Ironspine_Curse", math.random(10000, 12000), 0)
end

function Ironspine_LeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(6489, 1, "Ironspine_OnCombat")
RegisterUnitEvent(6489, 2, "Ironspine_LeaveCombat")

--Azshris 
function Azhris_Call(pUnit, Event)
    local target = pUnit:GetMainTank()
    if (target ~= nil) then
		pUnit:FullCastSpellOnTarget(5137, target)
	end
end

function Azhris_OnCombat(pUnit, Event)
	pUnit:RegisterEvent("Azhris_Call", math.random(10000, 15000), 0)
end

function Azhris_LeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(6490, 1, "Azhris_OnCombat")
RegisterUnitEvent(6490, 2, "Azhris_LeaveCombat")