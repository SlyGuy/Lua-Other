--[[
Omor the Unscarred yells: A-kreesh!
Omor the Unscarred yells: Achor she-ki! Feast, my pet! Eat your fill!
Omor the Unscarred yells: Die, weakling!
Omor the Unscarred yells: I am victorious!
Omor the Unscarred yells: I will not be defeated!
Omor the Unscarred yells: It is... not over.
Omor the Unscarred yells: You dare stand against ME?
Omor the Unscarred yells: Your insolence will be your death!]]

function Omor(Unit, event, miscUnit, misc)
    Unit:RegisterEvent("Omor_Shadow_Bolt",7000,0)
    Unit:RegisterEvent("Omor_Spell_reflect",13000,0)
    Unit:RegisterEvent("Omor_Felhounds",19000,0)
    Unit:RegisterEvent("Omor_Shadow_Whip",27000,0)
    Unit:RegisterEvent("Omor_Treacherous_Aura",33000,0)
    Unit:RegisterEvent("Omor_Bane_Treachery",33000,0)
end

function Omor_Shadow_Bolt(Unit, event, miscUnit, misc)
    Unit:FullCastSpellOnTarget(36987,Unit:GetClosestPlayer())
end

function Omor_Spell_reflect(Unit)
    Unit:FullCastSpell(33961)
end

function Omor_Felhounds(Unit)
    Unit:SpawnCreature(18478, -1168.601, 1699.915, 91.477, 0, 18, 96000000);
    Unit:SpawnCreature(18478, -1160.796, 1689.295, 91.646, 0, 18, 96000000)
end

function Omor_Shadow_Whip(Unit, event, miscUnit, misc)
    Unit:FullCastSpellOnTarget(30638,Unit:GetRandomPlayer())
end

function Omor_Treacherous_Aura(Unit, event, miscUnit, misc)
    Unit:FullCastSpellOnTarget(30695,Unit:GetRandomPlayer())
end

function Omor_Bane_Treachery(Unit, event, miscUnit, misc)
    Unit:FullCastSpellOnTarget(37566,Unit:GetRandomPlayer())
end

RegisterUnitEvent(17308,1,"Omor")