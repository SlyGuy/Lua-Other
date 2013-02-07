function Julianne_Eternal_Affection(Unit, event, miscUnit, misc)
	Unit:FullCastSpell(30878)
end

function Julianne_Powerful_Attraction(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(30889, Unit:GetClosestPlayer())
end

function Julianne_Blinding_Passion(Unit, event, miscUnit, misc)
	Unit:FullCastSpellOnTarget(30890, Unit:GetClosestPlayer())
end

function Julianne_Devotion(Unit, event, miscUnit, misc)
	Unit:FullCastSpell(30887)
end

function Julianne(Unit, event, miscUnit, misc)
	Unit:RegisterEvent("Julianne_Eternal_Affection", 10000, 0)
	Unit:RegisterEvent("Julianne_Powerful_Attraction", 15000, 0)
	Unit:RegisterEvent("Julianne_Blinding_Passion", 20000, 0)
	Unit:RegisterEvent("Julianne_Devotion", 25000, 0)
end

RegisterUnitEvent(17534,1,"Julianne")

--[[Julianne yells: Come, gentle night; and give me back my Romulo!
Julianne yells: O happy dagger! This is thy sheath; there rust, and let me die!
Julianne yells: Parting is such sweet sorrow.
Julianne yells: Romulo, I come! Oh... this do I drink to thee!
Julianne yells: What devil art thou, that dost torment me thus?]]