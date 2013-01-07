--[[********************************
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
-- LUA++ staff, April 15, 2008. ]]
--[[
To-Do:
Seeping Fog
Putrid Mushroom
Timers
(Test it xd)
]]
math.randomseed(os.time())

-----------------------------------------------------------------------------------------------------
----------------------------- HOOKED EVENTS--------------------------------------------------
-----------------------------------------------------------------------------------------------------
function Emeriss_OnCombat(Unit,event)
	setvars(Unit,{deadplrs = {}})
	Unit:SendChatMessage(14,0,"Hope is a DISEASE of the soul! This land shall wither and die!")
	Unit:RegisterEvent("Emeriss_CoECheck",5000, 0)
	Unit:RegisterEvent("Emeriss_Breath", math.random(9000,10000), 1)
	Unit:RegisterEvent("Emeriss_TailSweep", math.random(2000,2500),1)-- Dono about timers but tail sweep seems about every 2 secs.
	Unit:RegisterEvent("Emeriss_Infection", math.random(7000, 9000), 1)
	--Unit:RegisterEvent("Emeriss_MTRange", 4000, 1)
	Unit:RegisterEvent("Emeriss_Immune", 1000, 0)
	--Unit:RegisterEvent("Emeriss_Fog", 2000, 1)
	phase=nil;
end
function Emeriss_OnWipe(Unit,event)
	Unit:RemoveEvents()
	--[[local tbl = Unit:GetInRangeFriends()
	for k,v in pairs(tbl) do
		if v:GetEntry() == 15224 then
			v:Despawn(100, 0)
		end
	end]]
	local gos = Unit:GetInRangeObjects()
	for k,v in pairs(gos) do
		if v~= nil then
			if v:GetEntry() == 180517 then
				v:RemoveFromWorld()
			end
		end
	end
end
--[[function Emeriss_Fog(Unit,event)
	Unit:AddAssistTarget(Unit:SpawnCreature(15224, Unit:GetX(), Unit:GetY(), Unit:GetZ(), Unit:GetO(),14, 120000))
	Unit:RegisterEvent("Emeriss_Fog",120000, 1)
end]]
function Emeriss_OnKill(Unit,event, pMisc)
	local args = getvars(Unit)
	if pMisc:IsPlayer() == true then
		--pMisc:CastSpell(25040)
		--Unit:FullCastSpellOnTarget(25040,pMisc)
		Unit:SpawnGameObject(180517,(pMisc:GetX()),(pMisc:GetY()),(pMisc:GetZ()),(pMisc:GetO()),0) -- Putrid MushRoom spawn.
		table.insert(args.deadplrs,pMisc)
	end
	Unit:RegisterEvent("DeadPlrCheck", 5000, 0)
end
function DeadPlrCheck(Unit,event)
	local args = getvars(Unit)
	for k,v in pairs (args.deadplrs) do
		if v:IsAlive() == true then
			local mush = Unit:GetGameObjectNearestCoords(v:GetX(),v:GetY(),v:GetZ(),180517) -- if plr is rezed, remove the mushroom.
			if mush ~= nil then
				mush:RemoveFromWorld()
			end
		end
	end
end
function Emeriss_OnDeath(Unit,event)
	Unit:RemoveEvents()
end
-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
function Emeriss_CoECheck(Unit, event)
	local hp = Unit:GetHealthPct()
	if hp <= 75 and phase == nil then
		Unit:SendChatMessage(14, 0, "Taste your world's corruption!")
		Unit:FullCastSpell(24910) -- corruption of the earth
	phase=1;
	return;
	end
	
	if hp <= 50 and phase == 1 then
		Unit:SendChatMessage(14, 0, "Taste your world's corruption!")
		Unit:FullCastSpell(24910) -- corruption of the earth
	phase=2;
	return;
	end
	
	if hp <= 25 and phase == 2 then
		Unit:SendChatMessage(14, 0, "Taste your world's corruption!")
		Unit:FullCastSpell(24910) -- corruption of the earth
	phase=3;
	return;
	end
end

function Emeriss_Breath(Unit, event)
	Unit:StopMovement(3000)
	Unit:SetAttackTimer(3000,0)
	Unit:FullCastSpell(24818) -- noxious breath
	Unit:RegisterEvent("Emeriss_Breath", math.random(9000,10000), 1)
end
function Emeriss_TailSweep(Unit,event)
	local tbl = Unit:GetInRangePlayers()
	for k,v in pairs(tbl) do
		if Unit:GetDistance(v) <= 50 then
			if v:IsInBack(Unit) == true then
				Unit:SetAttackTimer(3000,0)
				Unit:FullCastSpell(15847) -- tail sweep if any players are found behind emeriss
			end
			break
		end
	end
	Unit:RegisterEvent("Emeriss_TailSweep",math.random(2000,3000), 1)
end
function Emeriss_Infection(Unit,event)
	local plr = Unit:GetRandomPlayer(0)
	if plr ~= nil then
		Unit:FullCastSpellOnTarget(24928,plr)
	end
	Unit:RegisterEvent("Emeriss_Infection", math.random(7000, 9000), 1)
end
function Emeriss_Immune(Unit,event)
	if Unit:HasAura(24871) == true then
		Unit:RemoveAura(24871)
	end
end
function Emeriss_MTRange(Unit,event)
	local tank = Unit:GetMainTank()
	if Unit:GetDistance(tank) >= 100 then -- if current Mt is trying to run away, GET OVER HERE!
		tank:Teleport(0, Unit:GetX(), Unit:GetY(), Unit:GetZ())
		--Unit:PlaySpellVisual(tank:GetGUID(),24776)-- "Summon Player" visual.
	end
	Unit:RegisterEvent("Emeriss_MTRange", 1000, 1)
end
-------------------------------------------------------------------------------------------

function PutridMushroom_Cloud(Unit,event)
	Unit:EventCastSpell(Unit:GetGUID(),24871,5000, 0, 1)-- Spore Cloud Spell
end
---------------------------------------------------------------------------------------------
--[[RegisterUnitEvent(15224, 18, "DreamFog_OnSpawn")
RegisterUnitEvent(15224, 19, "DreamFog_OnReachWp") -- Once we have created the waypoint and it has moved to the waypoint
RegisterUnitEvent(15224, 4, "DreamFog_Death")
--RegisterUnitEvent(15224, 23, "DreamFog_OnDmged")

--function DreamFog_OnDmged(Unit, event)
--	Unit:SetUInt32Value(UNIT_FIELD_HEALTH,(Unit:GetUInt32Value(UNIT_FIELD_MAXHEALTH)))
--end
function DreamFog_Death(Unit,event)
	Unit:RemoveEvents()
end
function DreamFog_OnSpawn(Unit,event)
	Unit:Despawn(120000, 0)
	Unit:SetModel(18075)
	Unit:CastSpell(24777)
	Unit:SetUInt32Value(UNIT_FIELD_MAXHEALTH, 100000)
	Unit:SetUInt32Value(UNIT_FIELD_FLAGS,UNIT_FLAG_NOT_SELECTABLE)
	Unit:SetUInt32Value(UNIT_FIELD_FLAGS,UNIT_FLAG_NOT_ATTACKABLE_2)
	Unit:SetCombatMeleeCapable(1)
	Unit:SetCombatTargetingCapable(1)
	Unit:WipeTargetList()
	Unit:ModifyWalkSpeed(9) -- The fog movement is fairly fast
	Unit:RegisterEvent("DreamFog_Patrol",100, 1)-- Immediately it spawns, it starts is routine of going after random plrs.
end
function DreamFog_Patrol(Unit,event)
	--local tbl = Unit:GetInRangePlayers() -- get an overall table of plrs fighting emeriss
	--local n = table.getn(tbl)
	--if n~= nil  then
		--local no = math.random(1,table.getn(tbl))
		local player=Unit:GetRandomPlayer(0)
		Unit:CreateCustomWaypointMap()
		Unit:CreateWaypoint(player:GetX(),player:GetY(),player:GetZ(),Unit:GetO(),0,0,0) -- create a waypoint to our random target
		Unit:MoveToWaypoint(1) -- move to the waypoint
		Unit:RegisterEvent("DreamFog_MarkCheck", 1000, 1) -- we start registering our periodic mark check
end
function DreamFog_MarkCheck(Unit,event)
	local plr = Unit:GetClosestPlayer() -- Our closest plr while moving
	print "Checking player distance..."
	if plr ~= nil and Unit:GetDistance(plr) <= 20 then -- Make sure we are in aura range of the player before checking him
		print "Distance is less than melee range, checking for mark of nature aura..."
		if plr:HasAura(25040) == true then -- If the player has a Mark of Nature aura
			print "Player has the aura, checking for next aura..."
			if plr:HasAura(25043) == false then
				print "Player does not have aura, casting stun..."
				Unit:FullCastSpellOnTarget(25043, plr) -- Instead of 4 sec sleep, its a a 1.5min stun.
				print "Casted stun, checking for sleep aura..."
				if plr:HasAura(24778) == true then
					print "Player has sleep aura, removing..."
					plr:RemoveAura(24778)
					print "Sleep aura removed..."
				end
			else
				Unit:RemoveEvents()
			end
		else
			Unit:RemoveEvents()
		end
	else
		Unit:RemoveEvents()
	end
	print "Preparing to reregister event..."
	Unit:RegisterEvent("DreamFog_MarkCheck", 1000, 1)-- loops this event very 1 sec
	print "Reregistered event..."
end
function DreamFog_OnReachWp(Unit,event,pMisc, wp)
	print "We reached the waypoint, getting ready to create a new one..."
	Unit:RemoveEvents()
	Unit:DestroyCustomWaypointMap() -- we delete our waypoint to create another
	Unit:RegisterEvent("DreamFog_Patrol", 100, 1) -- We restart the patrol event to get a new target to move to.
end]]

RegisterGameObjectEvent(180517,2,"PutridMushroom_Cloud")
RegisterUnitEvent(14889,1,"Emeriss_OnCombat")
RegisterUnitEvent(14889,2,"Emeriss_OnWipe")
RegisterUnitEvent(14889,3,"Emeriss_OnKill")
RegisterUnitEvent(14889,4,"Emeriss_OnDeath")
