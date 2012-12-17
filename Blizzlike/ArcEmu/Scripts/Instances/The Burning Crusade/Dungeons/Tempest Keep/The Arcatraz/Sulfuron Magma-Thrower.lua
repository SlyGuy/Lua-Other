function Sulfuron(Unit, Event, MiscUnit, Misc)
	Unit:RegisterEvent("Sulfuron_FireBolt", 9000, 0)
	Unit:RegisterEvent("Sulfuron_FireShield", 13000, 0)
	Unit:RegisterEvent("Sulfuron_Charge", 21000, 0)
	Unit:SendChatMessage(14, 0, "You shall be consumed by flame!")
end

function Sulfuron_FireBolt(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(23331, Unit:GetClosestPlayer())
end

function Sulfuron_FireShield(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(24573, Unit:GetClosestPlayer())
end

function Sulfuron_Charge(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(36058, Unit:GetClosestPlayer())
end

function Sulfuron_OnDied(Unit, Event)
	Unit:SendChatMessage(14, 0, "S-s-o-o... cold.")
end

RegisterUnitEvent(20909, 1, "Sulfuron")
RegisterUnitEvent(20909, 4, "Sulfuron_OnDied")