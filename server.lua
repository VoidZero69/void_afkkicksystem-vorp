local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

RegisterServerEvent("void_afksystem:kick")
AddEventHandler("void_afksystem:kick", function()
	DropPlayer(source, "You got kicked for being afk for a long time !")
end)

RegisterServerEvent('void_doorlocks:notify')
AddEventHandler('void_doorlocks:notify', function(msg, cb)
    local _source = source
	local User = VorpCore.getUser(_source)
	local Character = User.getUsedCharacter
	TriggerClientEvent("vorp:TipBottom", _source, msg, 5000)
end)
