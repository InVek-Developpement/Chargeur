ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('::{Trakou#3236}::esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx_clip25:clipcli')
AddEventHandler('esx_clip25:clipcli', function()
  ped = PlayerPedId()
  if IsPedArmed(ped, 4) then
    hash=GetSelectedPedWeapon(ped)
    if hash~=nil then
      TriggerServerEvent('esx_clip25:remove')
      AddAmmoToPed(ped, hash,25)
      MakePedReload(ped)
      ESX.ShowNotification("tu as utilisé un chargeur")
    else
      ESX.ShowNotification("tu n'as pas d'arme en main")
    end
  else
    ESX.ShowNotification("ce type de munition ne convient pas")
  end
end)

RegisterNetEvent('esx_clip100:clipcli')
AddEventHandler('esx_clip100:clipcli', function()
  ped = PlayerPedId()
  if IsPedArmed(ped, 4) then
    hash=GetSelectedPedWeapon(ped)
    if hash~=nil then
      TriggerServerEvent('esx_clip100:remove')
      AddAmmoToPed(ped, hash,100)
      MakePedReload(ped)
      ESX.ShowNotification("tu as utilisé un chargeur")
    else
      ESX.ShowNotification("tu n'as pas d'arme en main")
    end
  else
    ESX.ShowNotification("ce type de munition ne convient pas")
  end
end)

RegisterNetEvent('esx_clip250:clipcli')
AddEventHandler('esx_clip250:clipcli', function()
  ped = PlayerPedId()
  if IsPedArmed(ped, 4) then
    hash=GetSelectedPedWeapon(ped)
    if hash~=nil then
      TriggerServerEvent('esx_clip250:remove')
      AddAmmoToPed(ped, hash,250)
      MakePedReload(ped)
      ESX.ShowNotification("tu as utilisé un chargeur")
    else
      ESX.ShowNotification("tu n'as pas d'arme en main")
    end
  else
    ESX.ShowNotification("ce type de munition ne convient pas")
  end
end)