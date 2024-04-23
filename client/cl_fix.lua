
RegisterCommand("fixx", function()
    TriggerEvent('inventory:client:forceCloseInventory')
    exports['17mov_Hud']:HideHelpNotification()
    exports['17mov_Hud']:ToggleDisplay(true)
    DisplayRadar(true)
end, false)