RegisterServerEvent("void_afksystem:kick")
AddEventHandler("void_afksystem:kick", function()
	DropPlayer(source, "You got kicked for being afk for a long time !")
end)
