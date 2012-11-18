--[[Broggok yells: Come intruders....
Broggok yells: Kill them!
Broggok says: I'll crush you!
Broggok says: Me smash! You die!
Broggok says: Raaar!!! Me smash human!
Broggok says: Raaar!!! Me smash night elf!
Broggok says: Raaar!!! Me smash tauren!
]]
function Broggok_OnCombat(Unit) 
	Unit:RegisterEvent("Broggok_Ring_Poison", 9000, 1)
	Unit:RegisterEvent("Broggok_Poison_Bolt", 17000, 1)
end

function Broggok_Ring_Poison(Unit)
	if(Unit:GetClosestPlayer() ~= nil) then 
		Unit:FullCastSpellOnTarget(29865, Unit:GetClosestPlayer())
	end
	Unit:RegisterEvent("Broggok_Ring_Poison", 9000, 1)
end

function Broggok_Poison_Bolt(Unit)
	if(Unit:GetClosestPlayer() ~= nil) then
		Unit:FullCastSpellOnTarget(37862, Unit:GetClosestPlayer())
	end
	Unit:RegisterEvent("Broggok_Poison_Bolt", 17000, 1)
end

function Broggok_OnWipe(Unit)
	Unit:RemoveEvents()
end

RegisterUnitEvent(17380, 1, "Broggok_OnCombat")
RegisterUnitEvent(17380, 4, "Broggok_OnWipe")