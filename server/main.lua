QBCore = nil
TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

QBCore.Functions.CreateUseableItem('bag', function(source, item)
    local src = source
    local User = QBCore.Functions.GetPlayer(src)
    if User.Functions.GetItemByName('bagkey').amount >= 1 then
        TriggerClientEvent("wht:cantaac", src)
    else
        TriggerClientEvent('QBCore:Notify', src, 'There\'s no key to open this bag', 'error)
    end
end)

