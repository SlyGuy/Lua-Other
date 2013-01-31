local GoId = 180796

function WinterWondervoltOnSpawn(event, player)
	if(player:InFront() == true) then
		if((player:GetDistance() <= 2) == true) then
			player:CastSpell(26272) -- PX-238 Winter Wondervolt
		end
	end
end

RegisterGameObjectEvent(GoId, 2, "WinterWondervoltOnSpawn")