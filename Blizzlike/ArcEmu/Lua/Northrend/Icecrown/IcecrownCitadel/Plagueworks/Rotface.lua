--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: Holystone Productions; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

local rotface = 36627
local SmallOoze = 43301
local BigOoze = 36899
local OozeFlood = 37006

function rf_OnCombat(pUnit, Event)
local rf = pUnit
	rf:SendChatMessage(14, 0, "WEEEEEEE!")
    rf:RegisterEvent("rf_OozeFlood", 20000, 1)
	rf:RegisterEvent("rf_OozeFlood_InPairs", 22000, 1)
	rf:RegisterEvent("rf_SlimeSpray", 11000, 0)
	rf:RegisterEvent("rf_MutatedInfection", 35000, 0) 
end

function rf_OozeFlood(pUnit, Event)
	rf:SpawnCreature(37006, 4427.700689, 3174.871826, 360.385315, 0, 14, 25000)
	rf:RegisterEvent("rf_OozeFlood_Two", 20000, 1)
end

function rf_OozeFlood_InPairs(pUnit, Event)
	rf:SpawnCreature(37006, 4409.125000, 3155.542725, 360.385315, 0, 14, 25000)
	rf:RegisterEvent("rf_OozeFlood_InPairs_Two", 22000, 1)
end

function rf_OozeFlood_Two(pUnit, Event)
	rf:SpawnCreature(37006, 4406.874512, 3118.262207, 360.385742, 0, 14, 25000)
	rf:RegisterEvent("rf_OozeFlood_Tree", 20000, 1)
end

function rf_OozeFlood_InPairs_Two(pUnit, Event)
	rf:SpawnCreature(37006, 4428.574707, 3101.385742, 360.385742, 0, 14, 25000)
	rf:RegisterEvent("rf_OozeFlood_InPairs_Tree", 22000, 1)
end

function rf_OozeFlood_Tree(pUnit, Event)
	rf:SpawnCreature(37006, 4461.988770, 3101.588867, 360.385590, 0, 14, 25000)
	rf:RegisterEvent("rf_OozeFlood_For", 20000, 1)
end

function rf_OozeFlood_InPairs_Tree(pUnit, Event)
	rf:SpawnCreature(37006, 4481.371094, 3119.097412, 360.385590, 0, 14, 25000)
	rf:RegisterEvent("rf_OozeFlood_InPairs_For", 22000, 1)
end

function rf_OozeFlood_For(pUnit, Event)
	rf:SpawnCreature(37006, 4482.102051, 3153.623779, 360.385590, 0, 14, 25000)
	rf:RegisterEvent("rf_OozeFlood", 20000, 1)
end

function rf_OozeFlood_InPairs_For(pUnit, Event)
	rf:SpawnCreature(37006, 4463.563965, 3173.374268, 360.385590, 0, 14, 25000)
	rf:RegisterEvent("rf_OozeFlood_InPairs", 22000, 1)
end

function rf_SlimeSpray(pUnit, Event)
	rf:SendChatMessage(14, 0, "Icky sticky.")
	rf:FullCastSpell(69508)
	rf:AddAura(69507, 1000)
end

function rf_MutatedInfection(pUnit, Event)
	rf:CastSpellOnTarget(69674, rf:GetRandomPlayer(0))
    rf:RegisterEvent("Small_Ooze_Spawn", 12000, 1)
end

function Small_Ooze_Spawn(pUnit, Event)
  rf:SpawnCreature(SmallOoze, rf:GetRandomPlayer(0):GetX(), rf:GetRandomPlayer(0):GetY(), rf:GetRandomPlayer(0):GetZ(), rf:GetRandomPlayer(0):GetO(), 14, 360000)
end

function SmallOoze_OnCombat(pUnit, Event)
local smallooze = pUnit
    smallooze:Unroot()
    smallooze:CastSpell(69750)
	smallooze:AddAura(69751, 0)
    smallooze:RegisterEvent("smallooze_StickyOoze", 10000, 0)
	smallooze:RegisterEvent("smallooze_BigOoze_SpawnCheck", 1000, 0)
end

function smallooze_BigOoze_SpawnCheck(pUnit, Event)
    if(smallooze:GetDistanceYards(smallooze:GetClosestFriend()) < 10) then
		smallooze:SpawnCreature(36899, smallooze:GetX(), smallooze:GetY(), smallooze:GetZ(), smallooze:GetO(), 14, 360000)
	end
end

function smallooze_StickyOoze(pUnit, Event)
local player = smallooze:GetRandomPlayer(0)
	smallooze:CastSpellAoF(player:GetX(), player:GetY(), player:GetZ(), 69776)
    player:AddAura(69778, 1000)
end

function BigOoze_OnCombat(pUnit, Event)
local bigooze = pUnit
	bigooze:CastSpell(69760)
	bigooze:AddAura(69761, 0)
    bigooze:RegisterEvent("BigOoze_StickyOoze", 10000, 0)
	bigooze:RegisterEvent("BigOoze_Aura_Check", 1000, 0)
	bigooze:RegisterEvent("BigOoze_UnstableOozeExplosion", 1000, 0)
end

function BigOoze_StickyOoze(pUnit, Event)
local player = bigooze:GetRandomPlayer(0)
	bigooze:CastSpellAoF(player:GetX(), player:GetY(), player:GetZ(), 69776)
    player:AddAura(69778, 1000)
end

function BigOoze_Aura_Check(pUnit, Event)
    if(target:GetDistanceYards(bigooze:GetInRangeFriends()) < 10) then 
		bigooze:AddAura(69558, 0)
	end
end

function BigOoze_UnstableOozeExplosion(pUnit, Event)
	if(bigooze:HasAura(69558) == 5) then
        if(GetThreeRandomEnemies(pUnit)) then
			for k,v in ipairs(GetThreeRandomEnemies(pUnit)) do
				pUnit:CastSpellOnTarget(69839, v)
            end
        end
	end
end

function OozeFlood_OnSpawn(pUnit, Event)
local oozeflod = pUnit
    oozeflod:Root()
    oozeflod:SetModel(11686)
    oozeflod:SetScale(5)
    oozeflod:RegisterEvent("oozeflod_Cast", 1000, 1)
	oozeflod:RegisterEvent("oozeflod_Aura_Check", 500, 0)
end

function oozeflod_Cast(pUnit, Event)
	oozeflod:CastSpellAoF(oozeflod:GetX(), oozeflod:GetY(), oozeflod:GetZ(), 69776)
end

function oozeflod_Aura_Check(pUnit, Event)
	if(oozeflod:GetDistanceYards(target) < 20) then 
		oozeflod:CastSpellOnTarget(69789, oozeflod:GetClosestEnemy())
	end
end

function rf_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()
end

function rf_OnKillPlayer(pUnit, Event)
	pUnit:SendChatMessage(14, 0, "Daddy make toys out of you!")
end

function rf_OnDead(pUnit, Event)
	pUnit:RemoveEvents()
end

function SmallOoze_OnDeath(pUnit, Event)
	pUnit:Despawn(1, 0)
end

RegisterUnitEvent(rf, 1, "rf_OnCombat")
RegisterUnitEvent(rf, 2, "rf_OnLeaveCombat")
RegisterUnitEvent(rf, 3, "rf_OnKillPlayer")
RegisterUnitEvent(rf, 4, "rf_OnDead")
RegisterUnitEvent(SmallOoze, 1, "SmallOoze_OnCombat")
RegisterUnitEvent(SmallOoze, 4, "SmallOoze_OnDeath")
RegisterUnitEvent(BigOoze, 1, "BigOoze_OnCombat")
RegisterUnitEvent(OozeFlood, 18, "OozeFlood_OnSpawn")