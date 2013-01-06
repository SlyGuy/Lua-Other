function WeatherOnItemTrigger(item, event, player)
Item_menu(item, player)
end

function Item_menu(item, player)
if (player:IsInCombat() == true) then
player:SendAreaTriggerMessage("You are in combat!")
else
item:GossipCreateMenu(100, player, 0)
item:GossipMenuAddItem(1, "|cffff0000Weather Control", 1, 0)
item:GossipSendMenu(player)
end
end

function WeatherOnSelect(item, event, player, id, intid, code)
if (intid == 1) then
item:GossipCreateMenu(99, player, 0)
item:GossipMenuAddItem(10, "|cffffff00Sunny", 2, 0)
item:GossipMenuAddItem(10, "|cFF00FFFFRaining", 4, 0)
item:GossipMenuAddItem(10, "|cFFFFFAF0Snowing", 5, 0)
item:GossipMenuAddItem(10, "|cffff0000Close", 100, 0)
item:GossipSendMenu(player)
end

if(intid == 2) then
player:SetPlayerWeather(1, 1)
player:SendBroadcastMessage("|cFF00FFFF[Weather Controller]|cFFFFA500Weather Changed to Sunny.")
player:GossipComplete()
end
 
if(intid == 4) then
player:SetPlayerWeather(2, 1)
player:SendBroadcastMessage("|cFF00FFFF[Weather Controller]|cFFFFA500Weather Changed to Raining.")
player:GossipComplete()
end

if(intid == 5) then
player:SetPlayerWeather(8, 1)
player:SendBroadcastMessage("|cFF00FFFF[Weather Controller]|cFFFFA500Weather Changed to Snowing.")
player:GossipComplete()
end

if(intid == 100) then
player:SendBroadcastMessage("|cFF00FFFF[Weather Controller]|cFFFFA500Is closed.")
player:GossipComplete()
end
end

RegisterItemGossipEvent("1234", 1, "WeatherOnItemTrigger")
RegisterItemGossipEvent("1234", 2, "WeatherOnSelect")