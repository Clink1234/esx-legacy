ESX = {}
ESX.Players = {}
ESX.Jobs = {}
ESX.Items = {}
Core = {}
Core.UsableItemsCallbacks = {}
Core.RegisteredCommands = {}
Core.Pickups = {}
Core.PickupId = 0
Core.PlayerFunctionOverrides = {}
Core.DatabaseConnected = false
Core.playersByIdentifier = {}

Core.vehicleTypesByModel = {}

AddEventHandler('esx:getSharedObject', function(cb)
  local Invoke = GetInvokingResource()
  print(('[^3WARNING^7] ^5%s^7 used ^5esx:getSharedObject^7, this method is deprecated and should not be used! Refer to ^5https://docs.esx-framework.org/tutorials/sharedevent^7 for more info!'):format(Invoke))
  cb(ESX)
end)

exports('getSharedObject', function()
	return ESX
end)

if GetResourceState('ox_inventory') ~= 'missing' then
	Config.OxInventory = true
	Config.PlayerFunctionOverride = 'OxInventory'
	SetConvarReplicated('inventory:framework', 'esx')
	SetConvarReplicated('inventory:weight', Config.MaxWeight * 1000)
end

local function StartDBSync()
	CreateThread(function()
		while true do
			Wait(10 * 60 * 1000)
			Core.SavePlayers()
		end
	end)
end

MySQL.ready(function()
	Core.DatabaseConnected = true
	if not Config.OxInventory then
		local items = MySQL.query.await('SELECT * FROM items')
		for _, v in ipairs(items) do
			ESX.Items[v.name] = { label = v.label, weight = v.weight, rare = v.rare, canRemove = v.can_remove }
		end
	else
		TriggerEvent('__cfx_export_ox_inventory_Items', function(ref)
			if ref then
				ESX.Items = ref()
			end
		end)

		AddEventHandler('ox_inventory:itemList', function(items)
			ESX.Items = items
		end)

		while not next(ESX.Items) do
			Wait(0)
		end
	end

	ESX.RefreshJobs()

	print(('[^2INFO^7] ESX ^5Legacy %s^0 initialized!'):format(GetResourceMetadata(GetCurrentResourceName(), "version", 0)))

	StartDBSync()
	if Config.EnablePaycheck then
		StartPayCheck()
	end
end)

RegisterServerEvent('esx:clientLog')
AddEventHandler('esx:clientLog', function(msg)
	if Config.EnableDebug then
		print(('[^2TRACE^7] %s^7'):format(msg))
	end
end)

RegisterNetEvent("esx:ReturnVehicleType", function(Type, Request)
	if Core.ClientCallbacks[Request] then
		Core.ClientCallbacks[Request](Type)
		Core.ClientCallbacks[Request] = nil
	end
end)
            -- Jobs Creator integration (jobs_creator)
            RegisterNetEvent('esx:refreshJobs')
            AddEventHandler('esx:refreshJobs', function()
                MySQL.Async.fetchAll('SELECT * FROM jobs', {}, function(jobs)
                    for k,v in ipairs(jobs) do
                        ESX.Jobs[v.name] = v
                        ESX.Jobs[v.name].grades = {}
                    end

                    MySQL.Async.fetchAll('SELECT * FROM job_grades', {}, function(jobGrades)
                        for k,v in ipairs(jobGrades) do
                            if ESX.Jobs[v.job_name] then
                                ESX.Jobs[v.job_name].grades[tostring(v.grade)] = v
                            else
                                print(('[es_extended] [^3WARNING^7] Ignoring job grades for "%s" due to missing job'):format(v.job_name))
                            end
                        end

                        for k2,v2 in pairs(ESX.Jobs) do
                            if ESX.Table.SizeOf(v2.grades) == 0 then
                                ESX.Jobs[v2.name] = nil
                                print(('[es_extended] [^3WARNING^7] Ignoring job "%s" due to no job grades found'):format(v2.name))
                            end
                        end
                    end)
                end)
            end)
        

            -- Jobs Creator integration (jobs_creator)
            ESX.ServerCallbacks = Core.ServerCallbacks
