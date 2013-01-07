function bloodbah_Entercombat (pUnit, Event)
	pUnit:SendChatMessage (0, 0, "naw u cant do that to me im a l33t Mage stupid")
end
RegisterUnitEvent (98668, 1, "bloodbah_Entercombat")


function OnCombatScale(pUnit, Event)
    pUnit:SetScale(1.10);
end
RegisterUnitEvent(98668,1,"OnCombatScale")


function jueloa_Entercombat (pUnit, Event)
	pUnit:SendChatMessage (0, 0, "Fucking A!")
end
RegisterUnitEvent (98669, 1, "bloodbah_Entercombat")



function jueloa_Entercombat (pUnit, Event)
	pUnit:SendChatMessage (0, 0, "Fucking A!")
end
RegisterUnitEvent (98669, 4, "bloodbah_Entercombat")


function jueloa_Entercombat (pUnit, Event)
	pUnit:SendChatMessage (0, 0, "Fucking A!")
end
RegisterUnitEvent (98668, 4, "bloodbah_Entercombat")

