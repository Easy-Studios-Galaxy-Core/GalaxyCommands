ESX = exports["es_extended"]:getSharedObject()

-- RegisterNetEvent("esx:playerLoaded")
-- AddEventHandler("esx:playerLoaded", function(id, xPlayer)

-- end)

function RegisterServerCallback(name, cb)
    ESX.RegisterServerCallback(name, cb)    
end

function RegsiterUsableItem(name, cb)
  ESX.RegisterUsableItem(name, cb)
end

function GetPlayerFromId(source)
    return ESX.GetPlayerFromId(source)
end

function GetJob(source)
    return GetPlayerFromId(source).job
end

function GetJobName(source)
    return GetPlayerFromId(source).job.name
end

function GetJobGrade(source)
    return GetPlayerFromId(source).job.grade
end

function GetPlayerFromIdentifier(identifier)
    return ESX.GetPlayerFromIdentifier(identifier)
end

function GetPlayers()
    return ESX.GetPlayers()
end


function GetMoney(source)
    local xPlayer = GetPlayerFromId(source)
    return xPlayer.getMoney()
end

function AddMoney(source, amount)
    local xPlayer = GetPlayerFromId(source)
    return xPlayer.addMoney(amount)
end

function RemoveMoney(source, amount)
    local xPlayer = GetPlayerFromId(source)
    return xPlayer.removeMoney(amount)
end

function GetAccountMoney(source, account)
    local xPlayer = GetPlayerFromId(source)
    return xPlayer.getAccount(account).money
end

function AddAccountMoney(source, account, amount)
    local xPlayer = GetPlayerFromId(source)
    return xPlayer.addAccountMoney(account, amount)
end

function RemoveAccountMoney(source, account, amount)
    local xPlayer = GetPlayerFromId(source)
    return xPlayer.removeAccountMoney(account, amount)
end
