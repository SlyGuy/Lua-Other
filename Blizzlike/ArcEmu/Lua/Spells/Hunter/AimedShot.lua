--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: Mathix; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

local aimedtarget = plr:GetSelection()

function AimedShotFix(event, plr, spellid)
	if((spellid == 49050) and (IsPlayerMoving() == true)) then
		plr:CastSpellOnTarget(49050, aimedtarget)
	elseif((spellid == 49049) and (IsPlayerMoving() == true)) then
		plr:CastSpellOnTarget(49049, aimedtarget)
	elseif((spellid == 27065) and (IsPlayerMoving() == true)) then
		plr:CastSpellOnTarget(27065, aimedtarget)
	elseif((spellid == 20904) and (IsPlayerMoving() == true)) then
		plr:CastSpellOnTarget(20904, aimedtarget)
	elseif((spellid == 20903) and (IsPlayerMoving() == true)) then
		plr:CastSpellOnTarget(20903, aimedtarget)
	elseif((spellid == 20902) and (IsPlayerMoving() == true)) then
		plr:CastSpellOnTarget(20902, aimedtarget)
	elseif((spellid == 20901) and (IsPlayerMoving() == true)) then
		plr:CastSpellOnTarget(20901, aimedtarget)
	elseif((spellid == 20900) and (IsPlayerMoving() == true)) then
		plr:CastSpellOnTarget(20900, aimedtarget)
	elseif((spellid == 19434) and (IsPlayerMoving() == true)) then
		plr:CastSpellOnTarget(19434, aimedtarget)
	end
end

RegisterServerHook(10, "AimedShotFix")