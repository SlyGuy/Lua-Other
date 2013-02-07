function Hungarfen(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Hungarfen_Spores", 1000, 1)
	Unit:RegisterEvent("Hungarfen_Mushrooms", 10000, 0)
end

function Hungarfen_Spores(Unit)
	if(Unit:GetHealthPct() < 20 and Didthat == 0) then
		Unit:FullCastSpell(31697)
		Didthat = 1
	else
	end
end

function Hungarfen_Mushrooms(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(17990,Unit:GetClosestPlayer())
	Unit:SendChatMessage(12, 0, "My Mushrooms will surround you...")
end

RegisterUnitEvent(17770, 1, "Hungarfen")