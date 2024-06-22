local RSGCore = exports['rsg-core']:GetCoreObject()

-----------------------------------------------------------------
-- take money and send travel
-----------------------------------------------------------------
RegisterServerEvent('rex-fasttravel:server:buyticket')
AddEventHandler('rex-fasttravel:server:buyticket', function(data)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local destination = data.destination
    local dest_label = data.dest_label
    local cost = data.cost
    local traveltime = data.traveltime
    local cashBalance = Player.PlayerData.money["cash"]
    
    if cashBalance >= cost then
        Player.Functions.RemoveMoney("cash", cost, "purchase-fasttravel")
        TriggerClientEvent('rex-fasttravel:client:doTravel', src, destination, dest_label, traveltime)
    else 
        TriggerClientEvent('ox_lib:notify', src, 
            { 
                title = Lang:t('server.lang_1'),
                description = Lang:t('server.lang_1')..cost,
                type = 'error',
                icon = 'fa-solid fa-globe',
                iconAnimation = 'shake',
                duration = 7000
            }
        )
    end

end)
