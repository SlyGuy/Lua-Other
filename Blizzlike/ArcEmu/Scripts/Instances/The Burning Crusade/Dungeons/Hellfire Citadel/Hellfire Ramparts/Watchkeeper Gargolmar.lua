--[[Watchkeeper Gargolmar yells: Back off, pup!
Watchkeeper Gargolmar yells: Do you smell that? Fresh meat has somehow breached our citadel. Be wary of any intruders.
Watchkeeper Gargolmar yells: Heal me, quickly!
Watchkeeper Gargolmar yells: I'm going to enjoy this...
Watchkeeper Gargolmar yells: Much too easy.
Watchkeeper Gargolmar yells: Say farewell!
Watchkeeper Gargolmar yells: This may hurt a little....
Watchkeeper Gargolmar yells: What have we here?]]

function Watchkeeper(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Watchkeeper_Gargolmar_Hamstring", 5000, 0)
	Unit:RegisterEvent("Watchkeeper_Gargolmar_Stun", 9000, 0)
	Unit:RegisterEvent("Watchkeeper_Gargolmar_Revenge", 13000, 0)
end

function Watchkeeper_Gargolmar_Hamstring(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(26141, Unit:GetRandomPlayer())
end

function Watchkeeper_Gargolmar_Stun(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(20170, Unit:GetClosestPlayer())
end

function Watchkeeper_Gargolmar_Revenge(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(11603, Unit:GetClosestPlayer())
end

RegisterUnitEvent(17306,1,"Watchkeeper")