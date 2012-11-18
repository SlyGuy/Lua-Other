--[[ Boss -- Kalecgos.lua

This script was written and is protected
by the GPL v2. This script was released
by Azolex of the Blua Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation commUnity.

~~End of License Agreement
-- Azolex, September 13, 2008. ]]
--[[
Kalecgos yells: Agghh!! Help me before I lose my mind!
Kalecgos yells: Another orb is ready! Make haste!
Kalecgos yells: Anveena I love you! Focus on my voice! Come back for me now! Only you can cleanse the Sunwell!
Kalecgos yells: Anveena, you must awaken! This world needs you!
Kalecgos yells: Hurry! There is not much of me left!
Kalecgos yells: I have channeled all I can! The power is in your hands!
Kalecgos yells: I have empowered another orb! Use it quickly!
Kalecgos yells: I need... your help! Cannot... resist him much longer!
Kalecgos yells: I will channel my powers into the orbs! Be ready!
Kalecgos yells: Madrigosa deserved a far better fate. You did what had to be done, but this battle is far from over!
Kalecgos yells: My awakening is complete! You shall all perish!
Kalecgos yells: Strike now heroes, while he is weakened! Vanquish the Deceiver!
Kalecgos yells: There is no time to waste!
Kalecgos yells: Yes Anveena! Let fate embrace you now!
Kalecgos yells: You are not alone! The blue dragonflight shall help you vanquish the Deceiver!
Kalecgos yells: You must let go! You must become what you were always meant to be! The time is now Anveena!
Kalecgos says: Goodbye Anveena, my love. Few will remember your name, yet this day you changed the course of destiny. What was once corrupt, is now pure. Heroes, do not let her sacrifice be in vain.
Kalecgos says: I am forever in your debt. Once we have triumphed over Kil'jaeden, this entire world will be in your debt as well.
Kalecgos says: Kil'jaeden must be destroyed!
Kalecgos says: The fate of the world hangs in the balance!
Kalecgos says: There is no time to waste!]]

function Kel_SpectralExhaustion(pUnit, Event)
	pUnit:CastSpell(44867)
end

function Kel_SpectralRealm(pUnit, Event)
	pUnit:SendChatMessage(14, 0, "I will purge you!")
	pUnit:PlaySoundToSet(12423)
	pUnit:CastSpellOnTarget(46021, pUnit:GetRandomPlayer(0))
	pUnit:RegisterEvent("Kel_SpectralExhaustion", 60000, 1)
end

function Kel_SpectralBlast(pUnit, Event)
	pUnit:SendChatMessage(14, 0, "Your pain has only begun!")
	pUnit:PlaySoundToSet(12424)
	pUnit:CastSpellOnTarget(44866, pUnit:GetMainTank())
	pUnit:RegisterEvent("Kel_SpectralRealm", 1000, 1)
end

function Kel_WildMagic(pUnit, Event)
local Choice = math.random(1, 5)
	if(Choice == 1) then
		pUnit:CastSpell(44978)
	elseif(Choice == 2) then
		pUnit:CastSpell(45001)
	elseif(Choice == 3) then
		pUnit:CastSpell(45002)
	elseif(Choice == 4) then
		pUnit:CastSpell(45004)
	elseif(Choice == 5) then
		pUnit:CastSpell(45006)
	end
end

function Kel_FrostBreath(pUnit)
	pUnit:FullCastSpell(44799)	
end

function Kel_ArcaneBuffet(pUnit, Event)
	pUnit:CastSpell(45018)
end

function Kel_OnCombat(pUnit, Event)
	pUnit:SendChatMessage(14, 0, "Aggh!! No longer will I be a slave to Malygos! Challenge me and you will be destroyed!")
	pUnit:PlaySoundToSet(12422)
	pUnit:RegisterEvent("Kel_ArcaneBuffet", 5000, 0)
	pUnit:RegisterEvent("Kel_FrostBreath", 35000, 0)
	pUnit:RegisterEvent("Kel_WildMagic", 20000, 0)
	pUnit:RegisterEvent("Kel_SpectralBlast", 30000, 0)
end

function Kel_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()	
end

function Kel_OnKilledTarget(pUnit, Event)
	local Choice = math.random(1, 2)
	if(Choice == 1) then
		pUnit:SendChatMessage(14, 0, "In the name of Kil'jaeden!")
		pUnit:PlaySoundToSet(12425)
	elseif(Choice == 2) then
		pUnit:SencChatMessage(14, 0, "You were warned!")
		pUnit:PlaySoundToSet(12426)
	end	
end

function Kel_OnDied(pUnit, Event)
	pUnit:RemoveEvents()	
end

RegisterUnitEvent(24850, 1, "Kel_OnCombat")
RegisterUnitEvent(24850, 2, "Kel_OnLeaveCombat")
RegisterUnitEvent(24850, 3, "Kel_OnKilledTarget")
RegisterUnitEvent(24850, 4, "Kel_OnDied")