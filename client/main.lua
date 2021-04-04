ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

 RegisterNetEvent('wht:cantaac')
 AddEventHandler('wht:cantaac', function() 
    ESX.PlayerData = xPlayer
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Cantan "..ESX.GetPlayerData().identifier)
    TriggerEvent("inventory:client:SetCurrentStash","Cantan "..ESX.GetPlayerData().identifier)
end)
