--[[Hungarian Half Scripting team (HHScripts).
    Copyright (C) 2009  Twl

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.--]]

function Morpher_Gossip(Unit, Event, player)
local race=player:GetPlayerRace()
	Unit:GossipCreateMenu(100, player, 0)
	Unit:GossipMenuAddItem(6, " >--> Morph <--<", 77, 0)
end

function Morpher_Submenus(unit, event, player, id, intid, code)
	if(intid == 75) then
		Unit:GossipCreateMenu(78, player, 0)
		Unit:GossipMenuAddItem(6, " >--> Morph <--<", 77, 0)
		Unit:GossipSendMenu(player)
	end
	if(intid == 77) then
		Unit:GossipCreateMenu(65, player, 0)
		Unit:GossipMenuAddItem(3,"Buvar golbin", 6, 0)
		Unit:GossipMenuAddItem(3,"Arthas", 7, 0)
		Unit:GossipMenuAddItem(3,"Lich Arthas", 8, 0)
		Unit:GossipMenuAddItem(3,"Sw Guard", 9, 0)
		Unit:GossipMenuAddItem(3,"Og Guard", 10, 0)
		Unit:GossipMenuAddItem(3,"Murloc", 11, 0)
		Unit:GossipMenuAddItem(3,"Murloc costume", 12, 0)
		Unit:GossipMenuAddItem(3,"Torp", 13, 0)
		Unit:GossipMenuAddItem(3,"Kalapos Mage", 14, 0)
		Unit:GossipMenuAddItem(3,"Capa", 15, 0)
		Unit:GossipMenuAddItem(0,"Next Page >-->>", 78, 0)
		Unit:GossipSendMenu(player)
	end
		if(intid == 6) then
			player:SetModel(19076)
		end
		if(intid == 7) then
			player:SetModel(24949)
		end
		if(intid == 8) then
			player:SetModel(24191)
		end
		if(intid == 9) then
			player:SetModel(5567)
		end
		if(intid == 10) then
			player:SetModel(23007)
		end
		if(intid == 11) then
			player:SetModel(617)
		end
		if(intid == 12) then
			player:SetModel(21723)
		end
		if(intid == 13) then
			player:SetModel(27540)
		end
		if(intid == 14) then
			player:SetModel(19005)
		end
		if(intid == 15) then
			player:SetModel(12200)
		end
	if(intid == 78) then
		Unit:GossipCreateMenu(65, player, 0)
		Unit:GossipMenuAddItem(3,"Hammerhead Shark", 16, 0)
		Unit:GossipMenuAddItem(3,"If Guard", 17, 0)
		Unit:GossipMenuAddItem(3,"If Mage", 18, 0)
		Unit:GossipMenuAddItem(3,"Horda Warrior", 19, 0)
		Unit:GossipMenuAddItem(3,"Horda Shaman", 20, 0)
		Unit:GossipMenuAddItem(3,"Murloc 2", 21, 0)
		Unit:GossipMenuAddItem(3,"Illidan", 22, 0)
		Unit:GossipMenuAddItem(3,"Fox", 23, 0)
		Unit:GossipMenuAddItem(3,"", 24, 0)
		Unit:GossipMenuAddItem(3,"", 25, 0)
		Unit:GossipMenuAddItem(0,"Back Page >-->>", 77, 0)
		Unit:GossipMenuAddItem(0,"Next Page >-->>", 79, 0)
		Unit:GossipSendMenu(player)
	end
		if(intid == 16) then
			player:SetModel(12204)
		end
		if(intid == 17) then
			player:SetModel(21816)
		end
		if(intid == 18) then
			player:SetModel(21835)
		end
		if(intid == 19) then
			player:SetModel(23121)
		end
		if(intid == 20) then
			player:SetModel(23183)
		end
		if(intid == 21) then
			player:SetModel(527)
		end
		if(intid == 22) then
			player:SetModel(21135)
		end
		if(intid == 23) then
			player:SetModel(30301)
		end
		if(intid == 24) then
			player:SetModel()
		end
		if(intid == 25) then
			player:SetModel()
		end
	if(intid == 79) then
		Unit:GossipCreateMenu(65, player, 0)
		Unit:GossipMenuAddItem(3,"", 26, 0)
		Unit:GossipMenuAddItem(3,"", 27, 0)
		Unit:GossipMenuAddItem(3,"", 28, 0)
		Unit:GossipMenuAddItem(3,"", 29, 0)
		Unit:GossipMenuAddItem(3,"", 30, 0)
		Unit:GossipMenuAddItem(3,"", 31, 0)
		Unit:GossipMenuAddItem(3,"", 32, 0)
		Unit:GossipMenuAddItem(3,"", 33, 0)
		Unit:GossipMenuAddItem(3,"", 34, 0)
		Unit:GossipMenuAddItem(3,"", 35, 0)
		Unit:GossipMenuAddItem(0,"Back Page >-->>", 78, 0)
		Unit:GossipSendMenu(player)
	end
		if(intid == 26) then
			player:SetModel()
		end
		if(intid == 27) then
			player:SetModel()
		end
		if(intid == 28) then
			player:SetModel()
		end
		if(intid == 29) then
			player:SetModel()
		end
		if(intid == 30) then
			player:SetModel()
		end
		if(intid == 31) then
			player:SetModel()
		end
		if(intid == 32) then
			player:SetModel()
		end
		if(intid == 33) then
			player:SetModel()
		end
		if(intid == 34) then
			player:SetModel()
		end
	if(intid == 35) then
		player:SetModel()
	end
end

RegisterUnitGossipEvent(91000, 1, "Morpher_Gossip")
RegisterUnitGossipEvent(91000, 2, "Morpher_Submenus")