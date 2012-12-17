function Tinhead_Rust(Unit, event, miscUnit, misc)
	if((Unit:GetHealthPct() < 50) and (Didthat == 0)) then
	    Unit:FullCastSpellOnTarget(31086, Unit:GetClosestPlayer())
	    Didthat = 1 
	end
end

function Tinhead_OnDied(Unit, event, miscUnit, misc)
	Unit:SendChatMessage(12, 0, "Back to being an old rust bucket.")
	Unit:RemoveEvents()
end

function Tinhead_Cleave(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(39174, Unit:GetClosestPlayer())
end

function Tinhead(Unit, event, miscUnit, misc)
	Unit:SendChatMessage(12, 0, "I could really use a heart. Say, can I have yours?")
	Unit:RegisterEvent("Tinhead_Rust", 5000, 0)
	Unit:RegisterEvent("Tinhead_Cleave", 10000, 0)
end

RegisterUnitEvent(17547, 1, "Tinhead")
RegisterUnitEvent(17547, 4, "Tinhead_OnDied")