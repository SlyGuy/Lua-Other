-------------------------------------------------------------------
-- This script is created by zdroid9770; please do not edit this --
-- script and claim it as your own, as of All rights are claimed --
-- by me.                                                        --
--                     Copyright© zdroid9770					 --
-------------------------------------------------------------------

function Commander_start(Unit, Event)
local chance = math.random(1, 2)
	Unit:RegisterEvent("Commander_1",1000, 0)
	if(chance == 1) then
		Unit:SendChatMessage(14, 0, "Intruders in the keep! To arms!")
	elseif(chance == 2) then
		Unit:SendChatMessage(14, 0, "Repel the intruders!")
	end
end

function Commander_1(Unit, Event)
	if(Unit:GetHealthPct() < 70) then
		Unit:RemoveEvents();
		Unit:FullCastSpell(38840)
		Unit:RegisterEvent("Commander_2",1000, 0)
	end
end
 
function Commander_2(Unit, Event)
	if(Unit:GetHealthPct() < 50) then
		Unit:RemoveEvents();
		Unit:FullCastSpell(36127)
		Unit:RegisterEvent("Commander_3",1000, 0)
	end
end
 
function Commander_3(Unit, Event)
	if(Unit:GetHealthPct() < 30) then
		Unit:RemoveEvents();
		Unit:FullCastSpell(39666) 
		Unit:RegisterEvent("Commander_4",1000, 0)
	end
end

function Commander_4(Unit, Event)
	if(Unit:GetHealthPct() < 10) then
		Unit:RemoveEvents(); 
		Unit:FullCastSpell(17683)
		Unit:RegisterEvent("Commander_5",1000, 0)
	end
end

function Commander_5(Unit, Event)
	if(Unit:GetHealthPct() < 75) then
		Unit:RemoveEvents();
		Unit:FullCastSpell(36127)
		Unit:RegisterEvent("Commander_6",1000, 0)
	end
end

function Commander_6(Unit, Event)
	if(Unit:GetHealthPct() < 50) then
		Unit:RemoveEvents();
		Unit:SendChatMessage(14, 0, "Cowards! I will not fall so easily into your trap!")  
		Unit:FullCastSpell(38840)
		Unit:RegisterEvent("Commander_7",1000, 0)
	end
end

function Commander_7(Unit, Event)
	if(Unit:GetHealthPct() < 10) then
		Unit:RemoveEvents();
		Unit:FullCastSpell(17928)
	end
end

function Commander_OnKilledTarget(Unit, Event)
local chance = math.random(1, 2)
	if(chance == 1) then
		Unit:SendChatMessage(14, 0, "The attackers weaken!")
	elseif(chance == 2) then
		Unit:SendChatMessage(14, 0, "One step closer to victory!")
	end
end

function Commander_OnDied(Unit, Event)
	Unit:SendChatMessage(14, 0, "Our vigilance is eternal...")
end

RegisterUnitEvent(4278, 1, "Commander_start")
RegisterUnitEvent(4278, 3, "Commander_OnKilledTarget")
RegisterUnitEvent(4278, 4, "Commander_OnDied")