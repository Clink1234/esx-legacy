ESX.RegisterUsableItem('beer', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('beer', 1)

  TriggerClientEvent('esx_status:add', source, 'drunk', 150000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 20000)
	--TriggerClientEvent('esx_basicneeds:onDrink', source)
  TriggerClientEvent('esx_optionalneeds:onDrink', source)
	xPlayer.showNotification(_U('used_beer'))
end)

ESX.RegisterUsableItem('rum', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('rum', 1)

  TriggerClientEvent('esx_status:add', source, 'drunk', 250000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 20000)
	--TriggerClientEvent('esx_basicneeds:onDrink', source)
  TriggerClientEvent('esx_optionalneeds:onDrink', source)
	xPlayer.showNotification(_U('used_rum'))
end)

ESX.RegisterUsableItem('vodka', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('vodka', 1)

  TriggerClientEvent('esx_status:add', source, 'drunk', 250000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 20000)
	--TriggerClientEvent('esx_basicneeds:onDrink', source)
  TriggerClientEvent('esx_optionalneeds:onDrink', source)
	xPlayer.showNotification(_U('used_vodka'))
end)

ESX.RegisterUsableItem('gin', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('gin', 1)

  TriggerClientEvent('esx_status:add', source, 'drunk', 250000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 20000)
	--TriggerClientEvent('esx_basicneeds:onDrink', source)
  TriggerClientEvent('esx_optionalneeds:onDrink', source)
	xPlayer.showNotification(_U('used_gin'))
end)
