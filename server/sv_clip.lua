ESX = nil

TriggerEvent('::{Trakou#3236}::esx:getSharedObject', function(obj)
	ESX = obj
end)



RegisterServerEvent('esx_clip25:remove')
AddEventHandler('esx_clip25:remove', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('clip', 1)
end)

ESX.RegisterUsableItem('clip25', function(source)
	TriggerClientEvent('esx_clip25:clipcli', source)
end)

RegisterServerEvent('esx_clip100:remove')
AddEventHandler('esx_clip100:remove', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('clip100', 1)
end)

ESX.RegisterUsableItem('clip100', function(source)
	TriggerClientEvent('esx_clip100:clipcli', source)
end)

RegisterServerEvent('esx_clip250:remove')
AddEventHandler('esx_clip250:remove', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('clip250', 1)
end)

ESX.RegisterUsableItem('clip250', function(source)
	TriggerClientEvent('esx_clip250:clipcli', source)
end)



