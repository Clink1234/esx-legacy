ESX.RegisterUsableItem('bread', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('bread', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 80000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_bread'))
end)

ESX.RegisterUsableItem('taco', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('taco', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_taco'))
end)

ESX.RegisterUsableItem('hotdog', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('hotdog', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_hotdog'))
end)

ESX.RegisterUsableItem('hamburger', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('hamburger', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_hamburger'))
end)

ESX.RegisterUsableItem('pizza_slice', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('pizza_slice', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_pizza_slice'))
end)

ESX.RegisterUsableItem('chips', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('chips', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 50000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_chips'))
end)

ESX.RegisterUsableItem('fried_chicken', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('fried_chicken', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 350000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	xPlayer.showNotification(_U('used_fried_chicken'))
end)

ESX.RegisterUsableItem('water', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('water', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 500000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification(_U('used_water'))
end)

ESX.RegisterUsableItem('milk', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('milk', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 100000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification(_U('used_milk'))
end)

ESX.RegisterUsableItem('energy_drink', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('energy_drink', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 250000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification(_U('used_energy_drink'))
end)

ESX.RegisterUsableItem('cola', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('cola', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 50000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification(_U('used_cola'))
end)

ESX.RegisterUsableItem('sprite', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('sprite', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 50000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	xPlayer.showNotification(_U('used_sprite'))
end)

ESX.RegisterCommand('heal', 'admin', function(xPlayer, args, showError)
	args.playerId.triggerEvent('esx_basicneeds:healPlayer')
	args.playerId.showNotification('You have been healed.')
end, true, {help = 'Heal a player, or yourself - restores thirst, hunger and health.', validate = true, arguments = {
	{name = 'playerId', help = 'the player id', type = 'player'}
}})

AddEventHandler('txAdmin:events:healedPlayer', function(eventData)
	if GetInvokingResource() ~= "monitor" or type(eventData) ~= "table" or type(eventData.id) ~= "number" then
		return
	end

	TriggerClientEvent('esx_basicneeds:healPlayer', eventData.id)
end)