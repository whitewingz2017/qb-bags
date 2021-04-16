QBCore = nil

Citizen.CreateThread(function()
	while QBCore == nil do
		TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
		Citizen.Wait(200)
	end
end)

 RegisterNetEvent('wht:cantaac')
 AddEventHandler('wht:cantaac', function() 
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Bag "..QBCore.Functions.GetPlayerData().citizenid)
    TriggerEvent("inventory:client:SetCurrentStash","Bag "..QBCore.Functions.GetPlayerData().citizenid)
end)
