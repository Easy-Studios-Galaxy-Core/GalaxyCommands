if not Config.Tackle.Enabled then return end

RegisterServerEvent('Tackle:Server:TacklePlayer')
AddEventHandler('Tackle:Server:TacklePlayer', function(Tackled, ForwardVector, Tackler)
	TriggerClientEvent("Tackle:Client:TacklePlayer", Tackled, ForwardVector, Tackler)
end)