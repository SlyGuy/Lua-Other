function Strawman_Burning_Straw(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(31075, Unit:GetClosestPlayer())
end

function Strawman_Brain_Bash(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(31046, Unit:GetClosestPlayer())
end

function Strawman(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Strawman_Burning_Straw", 10000, 0)
	Unit:RegisterEvent("Strawman_Brain_Bash", 17000, 0)
end

RegisterUnitEvent(17543, 1, "Strawman")
--[[Strawman yells: Don't let them make... a mattress outta' me.
Strawman yells: Now what should I do with you? I simply can't make up my mind.]]