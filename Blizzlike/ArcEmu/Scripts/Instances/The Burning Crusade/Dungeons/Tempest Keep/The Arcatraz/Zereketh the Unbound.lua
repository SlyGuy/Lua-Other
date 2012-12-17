--[[Zereketh the Unbound yells: Darkness... consumes all.
Zereketh the Unbound yells: Life energy to... consume.
Zereketh the Unbound yells: No... more... life.
Zereketh the Unbound yells: The shadow... will engulf you.
Zereketh the Unbound yells: The Void... beckons.
Zereketh the Unbound yells: This vessel is empty.]]

function Zereketh(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Zereketh_Void_Zone", 10000, 0)
	Unit:RegisterEvent("Zereketh_Corruption", 15000, 0)
	Unit:RegisterEvent("Zereketh_Shadow_Nova", 23000, 0)
end

function Zereketh_Void_Zone(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(30533, Unit:GetRandomPlayer())
end

function Zereketh_Corruption(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(32863, Unit:GetRandomPlayer())
end

function Zereketh_Shadow_Nova(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(36127, Unit:GetClosestPlayer())
end

RegisterUnitEvent(20870, 1, "Zereketh")