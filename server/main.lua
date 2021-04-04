-- Optional Bag For Fivemturk.com
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


ESX.RegisterUsableItem('canta', function(source)
  local src = source
  local xPlayer = ESX.GetPlayerFromId(src)
  if xPlayer.getQuantity('cantaanahtari') >= 1 then
   TriggerClientEvent("wht:cantaac", source)
  else
    TriggerClientEvent('esx:showNotification', src, 'Üzerinde Bu Cantayi Acicak Anahtar Yok !')
  end
end)

