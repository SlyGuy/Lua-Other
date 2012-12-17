--[[The Maker yells: Anger...hate... These are tools I can use.
The Maker yells: It is pointless to resist.
The Maker yells: Let's see what I can make of you!
The Maker yells: My work must not be interrupted!
The Maker yells: Perhaps I can find a use for you...
The Maker yells: Stay away from... Me!]]

function Maker(Unit)
	Unit:RegisterEvent("Maker_Domination", 10000, 0)
	Unit:RegisterEvent("Maker_Acid_Spray", 14000, 0)
	Unit:RegisterEvent("Maker_Trow_Beaker", 21000, 0)
end

function Maker_Domination(Unit)
	if(Unit:GetRandomPlayer(0) ~= nil) then
		Unit:FullCastSpellOnTarget(30923, Unit:GetRandomPlayer(0))
	end
end

function Maker_Acid_Spray(Unit)
	if(Unit:GetClosestPlayer() ~= nil) then
		Unit:FullCastSpellOnTarget(38973, Unit:GetClosestPlayer())
	end
end

function Maker_Trow_Beaker(Unit)
	if(Unit:GetClosestPlayer() ~= nil) then
		Unit:FullCastSpellOnTarget(30925, Unit:GetClosestPlayer())
	end
end

RegisterUnitEvent(17381, 1, "Maker")