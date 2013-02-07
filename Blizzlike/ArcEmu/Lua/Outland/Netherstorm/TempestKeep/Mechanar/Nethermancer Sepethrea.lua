--[[Nethermancer Sepethrea yells: Anar'endal dracon!
Nethermancer Sepethrea yells: And don't come back!
Nethermancer Sepethrea yells: Anu... bala belore...alon.
Nethermancer Sepethrea yells: Don't value your life very much, do you?
Nethermancer Sepethrea yells: Endala finel endal!
Nethermancer Sepethrea yells: Think you can take the heat?]]

function sepethrea(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("sepethrea_minions_summon", 3000, 1)
	Unit:RegisterEvent("sepethrea_arcane_blast", 8000, 0)
	Unit:RegisterEvent("sepethrea_knockback", 8000, 0)
	Unit:RegisterEvent("sepethrea_frost_attack", 10000, 0)
	Unit:RegisterEvent("sepethrea_dragons_breath", 25000, 0)
end

function sepethrea_minions_summon(Unit)
	Unit:FullCastSpell(35275)
end

function sepethrea_arcane_blast(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(35314, Unit:GetClosestPlayer())
end

function sepethrea_knockback(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(37317, Unit:GetClosestPlayer())
end

function sepethrea_frost_attack(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(35263, Unit:GetClosestPlayer())
end

function sepethrea_dragons_breath(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(35250, Unit:GetClosestPlayer())
end

RegisterUnitEvent(19221, 1, "sepethrea")