Citizen.CreateThread(function()
	while true do
		Wait(1000)
		playerPed = PlayerPedId()
			local dead = IsEntityDead(PlayerPedId())
		if playerPed and not dead then
			currentPos = GetEntityCoords(playerPed, true)   
			if currentPos == prevPos then
				if time > 0 then
					if Config.notification and time == math.ceil(Config.afktime / 2) then
						notiftime=math.ceil(time/60)
						TriggerEvent("vorp:Tip", "you will be kicked in "..notiftime.." minutes for being afk.", 5000)
					end
					time = time - 1
				else
					TriggerServerEvent("void_afksystem:kick")
				end
			else
				time = Config.afktime
			end
			prevPos = currentPos
		end
	end
end)
