--[[ Doomlord Kazzak.lua
********************************
*                                                            *
* The LUA++ Scripting Project        *
*                                                            *
******************************** 

This software is provided as free and open source by the
staff of The LUA++ Scripting Project, in accordance with 
the AGPL license. This means we provide the software we have 
created freely and it has been thoroughly tested to work for 
the developers, but NO GUARANTEE is made it will work for you 
as well. Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- LUA++ staff, March 26, 2008. ]]
math.randomseed(os.time())

-- Doom Lord Kazzak script by Ikillonyxia.
function DoomlordKazzak_ShadowboltVolleyRepeat(pUnit, event)
     pUnit:CastSpell(29924)
     pUnit:RegisterEvent("DoomlordKazzak_ShadowboltVolley", math.random(18000, 20000), 1)
end

function DoomlordKazzak_ShadowboltVolley(pUnit, event)
     pUnit:CastSpell(29924)
     pUnit:RegisterEvent("DoomlordKazzak_ShadowboltVolleyRepeat", math.random(18000, 20000), 1)
end

function DoomlordKazzak_TwistedReflectionCheck(pUnit, event)
     if ( twistedreflectplayer:GetHealthPct() < playercurrenthp ) and ( twistedreflectplayer:HasAura(21063) == true ) and ( twistedreflectplayer:IsAlive() ) then
     	pUnit:CastSpell(21064)
     	twistedreflectplayer:RemoveAura(21063)
     end
end

function DoomlordKazzak_TwistedReflection(pUnit, event)
     twistedreflectplayer=pUnit:GetRandomPlayer(0);
     playercurrenthp=twistedreflectplayer:GetHealthPct();
     pUnit:FullCastSpellOnTarget(21063, twistedreflectplayer)
     pUnit:RegisterEvent("DoomlordKazzak_TwistedReflectionCheck", 1000, 45)
end    

function DoomlordKazzak_Thunderclap(pUnit, event)
     pUnit:FullCastSpell(36706)
end

function DoomlordKazzak_Cleave(pUnit, event)
     pUnit:FullCastSpellOnTarget(31043, pUnit:GetMainTank())
end

function DoomlordKazzak_Enrage(pUnit, event)
     pUnit:FullCastSpell(32964)
end

function DoomlordKazzak_MarkOfKazzakVarCheck(pUnit, event)
     if explode == 1 then
     	explode=nil;
     end
end

function DoomlordKazzak_MarkOfKazzakExplodeCheck(pUnit, event)
     if markofkazzaktarget:GetManaPct() < 1 and explode == nil then
     	explode=1;
     	pUnit:SpawnCreature(70099, markofkazzaktarget:GetX(), markofkazzaktarget:GetY(), markofkazzaktarget:GetZ(), 90, 14, 0)
     end
end     

function DoomlordKazzak_MarkOfKazzakDrain(pUnit, event)
     local a=markofkazzaktarget:GetMaxMana() / (20)
     if markofkazzaktarget:GetManaPct() < 6 then
     	markofkazzaktarget:SetMana(markofkazzaktarget:GetMana() - markofkazzaktarget:GetMana())
     else
     	markofkazzaktarget:SetMana(markofkazzaktarget:GetMana() - a)
     end
end

function DoomlordKazzak_MarkOfKazzak(pUnit, event)
	markofkazzaktarget=pUnit:GetRandomPlayer(4);
        pUnit:FullCastSpellOnTarget(32960, markofkazzaktarget)
	pUnit:RegisterEvent("DoomlordKazzak_MarkOfKazzakDrain", 1000, 10)
	pUnit:RegisterEvent("DoomlordKazzak_MarkOfKazzakExplodeCheck", 1001, 10)
	pUnit:RegisterEvent("DoomlordKazzak_MarkOfKazzakVarCheck", 10200, 1)
end

function DoomlordKazzak_Voidbolt(pUnit, event)
     if pUnit:GetDistance(pUnit:GetClosestPlayer()) > 10 then
     	pUnit:FullCastSpellOnTarget(21066, pUnit:GetRandomPlayer(0))
     end
end

function DoomlordKazzak_OnEnterCombat(pUnit, event)
     pUnit:RegisterEvent("DoomlordKazzak_ShadowboltVolley", math.random(18000, 20000), 1)
     pUnit:RegisterEvent("DoomlordKazzak_TwistedReflection", 25000, 0)
     pUnit:RegisterEvent("DoomlordKazzak_Thunderclap", 14800, 0)
     pUnit:RegisterEvent("DoomlordKazzak_Cleave", 9000, 0)
     pUnit:RegisterEvent("DoomlordKazzak_Enrage", 54000, 0)
     pUnit:RegisterEvent("DoomlordKazzak_MarkOfKazzak", 29000, 0)
     pUnit:RegisterEvent("DoomlordKazzak_Voidbolt", 2000, 0)
     if math.random(1, 2) == 1 then
     	pUnit:SendChatMessage(14, 0, "All mortals will perish!")
     	pUnit:PlaySoundToSet(11334)
     else
    	pUnit:SendChatMessage(14, 0, "The Legion will conquer all!")
     	pUnit:PlaySoundToSet(11333)
     end
end

RegisterUnitEvent(18728, 1, "DoomlordKazzak_OnEnterCombat")

function DoomlordKazzak_Wipe(pUnit, event)
     pUnit:RemoveEvents()
end

RegisterUnitEvent(18728, 2, "DoomlordKazzak_Wipe")

function DoomlordKazzak_KillsPlayer(pUnit, event, pMisc)
     pUnit:SendChatMessage(14,0,"Your own strength feeds me, "..pMisc:GetName().."!")
     pUnit:FullCastSpell(32966)
end

RegisterUnitEvent(18728, 3, "DoomlordKazzak_KillsPlayer")

function DoomlordKazzak_Dies(pUnit, event)
     pUnit:RemoveEvents()
     pUnit:SendChatMessage(14, 0, "The Legion... will never... fall.")
     pUnit:PlaySoundToSet(11340)
end

RegisterUnitEvent(18728, 4, "DoomlordKazzak_Dies")

function DoomlordKazzak_Spawn(pUnit, event)
     pUnit:SendChatMessage(14, 0, "I remember well the sting of defeat at the conclusion of the Third War. I have waited far too long for my revenge. Now the shadow of the Legion falls over this world. It is only a matter of time until all of your failed creation... is undone.")
     pUnit:PlaySoundToSet(11332)
end

RegisterUnitEvent(18728, 18, "DoomlordKazzak_Spawn")

-- Mark of Kazzak explosion AI
function MarkOfKazzakExplosion_OnSpawn(pUnit, event)
     pUnit:SetCombatMeleeCapable(1)
     pUnit:SetCombatTargetingCapable(1)
	 pUnit:DisableRespawn(1)
     pUnit:FullCastSpell(32961)
     pUnit:Despawn(100, 0)
end

RegisterUnitEvent(70099, 18, "MarkOfKazzakExplosion_OnSpawn")

