function Maiden_Holy_Fire(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(29522, Unit:GetRandomPlayer())
end

function Maiden_Holy_Wrath(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(32445, Unit:GetClosestPlayer())
end

function Maiden_Repentance(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(29511, Unit:GetClosestPlayer())
end

function Maiden_Holy_Ground(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(29512, Unit:GetClosestPlayer())
end

function Maiden(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Maiden_Holy_Fire", 15000, 0)
	Unit:RegisterEvent("Maiden_Holy_Wrath", 20000, 0)
	Unit:RegisterEvent("Maiden_Repentance", 25000, 0)
	Unit:RegisterEvent("Maiden_Holy_Ground", 30000, 0)
end

RegisterUnitEvent(16457, 1, "Maiden")

--[[Maiden of Virtue yells: Cast out your corrupt thoughts.
Maiden of Virtue yells: Death comes. Will your conscience be clear?
Maiden of Virtue yells: This is for the best.
Maiden of Virtue yells: Your behavior will not be tolerated.
Maiden of Virtue yells: Your impurity must be cleansed.]]