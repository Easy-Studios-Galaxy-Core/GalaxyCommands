ESX = exports["es_extended"]:getSharedObject()

PlayerData = {}

PlayerLoaded = false
PlayerJob = nil
PlayerSkin = {}
PlayerPhone = nil
PlayerIban = nil
PlayerDead = nil
PlayerCuffed = nil

Citizen.CreateThread(function()
    ESX = exports["es_extended"]:getSharedObject()

    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(100)
    end

    PlayerData = ESX.GetPlayerData()
    PlayerJob = ESX.GetPlayerData().job.name

end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(playerData, isNew, skin)
    PlayerData = playerData
    PlayerSkin = skin
    PlayerLoaded = true

end)

RegisterNetEvent('esx:onPlayerLogout')
AddEventHandler('esx:onPlayerLogout', function() 
    PlayerData = {}
    PlayerLoaded = false
end)

RegisterNetEvent('rcore_loading:start')
AddEventHandler('rcore_loading:start', function() 
    print("rcore_loading:start")
    PlayerLoaded = true
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job) 
    PlayerData.job = job
    PlayerJob = PlayerData.job.name
end)

function TriggerServerCallback(name, cb, ...)
    ESX.TriggerServerCallback(name, cb, ...)
end

function GetPlayerIdentifier()
    return ESX.GetPlayerData().identifier
end

function GetPlayerJob()
    return PlayerData.job.name
end

function GetClosestVehicle()
    return ESX.Game.GetClosestVehicle()
end

function GetFirstname()
    return ESX.GetPlayerData().job
end

function GetLastname()
    return ESX.GetPlayerData().job.name
end

function GetVehiclesInArea()
    return ESX.Game.GetVehiclesInArea(GetEntityCoords(PlayerPedId()), 6.0)
end

function GetFuel(vehicle)
    return exports['qs-fuelstations']:GetFuel(vehicle)
end

function SetFuel(vehicle, fuelLevel)
    return exports['qs-fuelstations']:SetFuel(vehicle, fuelLevel)
end

function AddVehiclekeys(vehicle, plate, item)
    TriggerServerEvent("vehicles_keys:selfGiveCurrentVehicleKeys")
    TriggerServerEvent('vehicles_keys:selfGiveVehicleKeys', plate)
end

function RemoveVehiclekeys(vehicle, plate)
    return TriggerServerEvent("vehicles_keys:selfRemoveKeys", plate)
end

function IsPlayerDead()
    local check = false
    local state = LocalPlayer.state
    if not state.dead then check = true end
    return check
end


