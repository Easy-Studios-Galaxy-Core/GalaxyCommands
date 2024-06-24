if not Config.Fix.Enabled then return end

function DoPropFix()
    if lib.progressCircle({
        duration = 1500,
        label = 'Probleme Beheben...',
        position = 'bottom',
        useWhileDead = false,
        canCancel = false,
        disable = {
            car = true,
        },
        anim = {
            dict = 'clothingshirt',
            clip = 'try_shirt_positive_d'
        },
    }) then
        for _, v in pairs(GetGamePool('CObject')) do
            if IsEntityAttachedToEntity(PlayerPedId(), v) then
                SetEntityAsMissionEntity(v, true, true)
                DeleteObject(v)
            end
        end
    end
end

-- RegisterCommand("fixx", function()
--     local ped = PlayerPedId()

--     TriggerEvent('inventory:client:forceCloseInventory')
--     exports['17mov_Hud']:HideHelpNotification()
--     exports['17mov_Hud']:ToggleDisplay(true)
--     DisplayRadar(true)
--     DoPropFix()
--     exports.wasabi_ambulance:clearPlayerInjury(true)
--     ClearPedTasks(ped)
--     ClearPedTasksImmediately(ped)
--     exports['qs-inventory']:setInventoryDisabled(false)
--     exports["rpemotes"]:CanCancelEmote(true)
--     -- ToggleSuggestions(true)
--     LocalPlayer.state:set('inv_busy', false, true)
--     if exports.pickle_rewards:IsInMenu() then 
--         exports.pickle_rewards:CloseMenu()
--     end
--     if lib.progressActive() then 
--         lib.cancelProgress()
--     end
--     if lib.getOpenContextMenu() ~= nil then
--         lib.hideContext(false)
--     end
--     if lib.skillCheckActive() then 
--         lib.cancelSkillCheck()
--     end
-- end, false)
