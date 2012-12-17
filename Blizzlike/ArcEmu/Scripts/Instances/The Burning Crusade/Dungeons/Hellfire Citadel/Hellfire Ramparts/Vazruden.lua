--[[
The actual boss loot can be found inside a http://www.wowhead.com/object=185168, which spawns as soon as both Vazruden and Nazan have been defeated.
Vazruden yells: Is there no one left to test me?
Vazruden yells: It is over! Finished!
Vazruden yells: My lord will be... the end of you all!
Vazruden yells: You are nothing! I answer a higher call....
Vazruden yells: Your time is running out!]]

function Vazruden(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Vazruden_Hamstring", 9000, 0)
	Unit:RegisterEvent("Vazruden_Stun", 13000, 0)
	Unit:RegisterEvent("Vazruden_Revenge", 17000, 0)
	Unit:RegisterEvent("Vazruden_Knockback", 25000, 0)
end

function Vazruden_Hamstring(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(26141, Unit:GetClosestPlayer())
end

function Vazruden_Stun(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(20170, Unit:GetClosestPlayer())
end

function Vazruden_Revenge(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(11603, Unit:GetClosestPlayer())
end

function Vazruden_Knockback(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(30056, Unit:GetClosestPlayer())
end

RegisterUnitEvent(17537,1,"Vazruden")