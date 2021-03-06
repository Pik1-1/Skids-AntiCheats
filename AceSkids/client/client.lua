local new = false
local allowed = flase

RegisterNetEvent('ace:auth')
AddEventHandler('ace:auth', function()
    while true do
    end
end)

-- Anti NUI Devtools
RegisterNUICallback(GetCurrentResourceName(), function()
    if Config.AntiNuiDevtools ~= true then return end
    TriggerServerEvent('ace:ban', source, 'NUI Devtools detected')
end)

-- Anti Weapon Pickup
Citizen.CreateThread(function() 
    while true do  
        Wait(100)  
        if Config.AntiWeaponPickup ~= true then return end
        RemoveAllPickupsOfType(GetHashKey("PICKUP_ARMOUR_STANDARD"))
        RemoveAllPickupsOfType(GetHashKey("PICKUP_VEHICLE_ARMOUR_STANDARD"))
        RemoveAllPickupsOfType(GetHashKey("PICKUP_HEALTH_SNACK"))
        RemoveAllPickupsOfType(GetHashKey("PICKUP_HEALTH_STANDARD"))
        RemoveAllPickupsOfType(GetHashKey("PICKUP_VEHICLE_HEALTH_STANDARD"))
        RemoveAllPickupsOfType(GetHashKey("PICKUP_VEHICLE_HEALTH_STANDARD_LOW_GLOW"))
    end
end)

-- -- Anti Plate Changer
 Citizen.CreateThread(function()
     while true do
         if Config.AntiVehicleplatechange == true then
             local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1))
             local firstplate = GetVehicleNumberPlateText(vehicle)
             Wait(5000)
             local secondplate = GetVehicleNumberPlateText(vehicle)
             if firstplate == secondplate then
             else
                 if IsPedInAnyVehicle(GetPlayerPed(-1)) then
                     TriggerServerEvent('ace:ban', source, 'Vehicle-Plate Change detected')
                 end
             end
         end
     end
 end)

-- Anti Vision
Citizen.CreateThread(function()
    while true do
        if Config.AntiVision ~= true then return end
        Citizen.Wait(2500)
        if Config.AntiNightVision ~= true then return end
            if GetUsingnightvision() then
            TriggerServerEvent('ace:ban', source, 'Night Vision detected')
        end
        if Config.AntiThermalVision ~= true then return end
            if GetUsingseethrough(true) then
            TriggerServerEvent('ace:ban', source, 'Thermal Vision detected')
        end
    end
end)

-- Anti Spectate
Citizen.CreateThread(function()
    while true do
        if Config.AntiSpectate ~= true then return end
        Citizen.Wait(3000)
        local ped = NetworkIsInSpectatorMode()
        if ped == 1 then
            TriggerServerEvent('ace:ban', source, 'Spectate detected')
        end
    end
end)

-- Anti Freecam
Citizen.CreateThread(function()
    while true do
        if Config.AntiFreecam ~= true then return end
        Citizen.Wait(5000)
        local ped = GetPlayerPed(-1)
        local camcoords = (GetEntityCoords(ped) - GetFinalRenderedCamCoord())
        if (camcoords.x > 35) or (camcoords.y > 35) or (camcoords.z > 35) or (camcoords.x < -35) or (camcoords.y < -35) or (camcoords.z < -35) then
            TriggerServerEvent('ace:ban', source, 'Freecam or NoClip detected')
        end
    end
end)

-- Anti Invisible
Citizen.CreateThread(function()
    while true do
        if new == false then
            Wait(30000)
            new = true
        end
        if Config.AntiInvisible ~= true then return end
        Citizen.Wait(5000)
        local ped = GetPlayerPed(-1)
        local entityalpha = GetEntityAlpha(ped)
        if not IsEntityVisible(ped) or not IsEntityVisibleToScript(ped) or entityalpha <= 99 then
            TriggerServerEvent('ace:ban', source, 'Invisibility detected')
        end
    end
end)

-- Anti Explosionbullet
Citizen.CreateThread(function()
    while true do
        if Config.AntiExplosionBullet ~= true then return end
        Citizen.Wait(5000)
        local weapondamage = GetWeaponDamageType(GetSelectedPedWeapon(_ped))
        if weapondamage == 4 or weapondamage == 5 or weapondamage == 6 or weapondamage == 13 then
            TriggerServerEvent('ace:ban', source, 'Explosion Bullet detected')
        end
    end
end)

-- Anti Teleport
Citizen.CreateThread(function()
    while true do
        if new == false then
            Wait(30000)
            new = true
        end
        if Config.AntiTeleport ~= true then return end
        Citizen.Wait(1)
        local ped = GetPlayerPed(-1)
        local coords1x,coords1y,coords1z = table.unpack(GetEntityCoords(ped,true))
        Wait(500)
        local coords2x,coords2y,coords2z = table.unpack(GetEntityCoords(ped,true))
        if GetDistanceBetweenCoords(coords1x,coords1y,coords1z, coords2x,coords2y,coords2z) > 300 then
            if IsPedFalling(ped) then return end
            if IsPedInAnyVehicle(ped) then return end
            TriggerServerEvent('ace:ban', source, 'Teleport detected')
        end
    end
end)


-- Anti Noclip
Citizen.CreateThread(function()
        while Config.AntiNoClip do
            Citizen.Wait(0)
            local _ped = PlayerPedId()
            local _Wait = Citizen.Wait
            if not IsPedInAnyVehicle(_ped, false) then
                local _pos = GetEntityCoords(_ped)
                _Wait(3000)
                local _newped = PlayerPedId()
                local _newpos = GetEntityCoords(_newped)
                local _distance = #(vector3(_pos) - vector3(_newpos))
                if _distance > 250 and not IsEntityDead(_ped) and not IsPedInParachuteFreeFall(_ped) and _ped == _newped then
                    TriggerServerEvent('ace:ban', source, 'Freecam or NoClip detected')
                end
            end
        end
    end)

-- Anti ESX
RegisterNetEvent('esx:getSharedObject')
AddEventHandler('esx:getSharedObject', function()
    if Config.AntiESX ~= true then return end
    TriggerServerEvent('ace:ban', source, 'ESX Cheat detected')
end)

-- Blacklisted Weapons
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(500)
        if Config.BlacklistedWeapons then
			for _,theWeapon in ipairs(Config.BlacklistedWeaponsList) do
				Wait(5)
                local ped = GetPlayerPed(-1)
				if HasPedGotWeapon(PlayerPedId(),GetHashKey(theWeapon),false) == 1 then
					RemoveAllPedWeapons(ped)
                    Citizen.Wait(10)
                    if Config.BlacklistedWeaponsBan then
                        TriggerServerEvent('ace:ban', source, 'Blacklisted Weapon detected')
                    end
				end
			end
		end
	end
end)

-- Blacklisted Vehicles
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(500)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			checkCar(GetVehiclePedIsIn(playerPed, false))

			x, y, z = table.unpack(GetEntityCoords(playerPed, true))
			for _, blacklistedCar in pairs(Config.BlacklistedVehiclesList) do
				checkCar(GetClosestVehicle(x, y, z, 100.0, GetHashKey(blacklistedCar), 3))
			end
		end
	end
end)

function checkCar(car)
	if car then
		carModel = GetEntityModel(car)
		carName = GetDisplayNameFromVehicleModel(carModel)

		if isCarBlacklisted(carModel) then
            if Config.BlacklistedVehicles ~= true then return end
			DeleteEntity(car)
            if Config.BlacklistedVehiclesBan then
			    TriggerServerEvent('ace:ban', source, 'Blacklisted Vehicle detected')
            end
		end
	end
end

function isCarBlacklisted(model)
	for _, blacklistedCar in pairs(Config.BlacklistedVehiclesList) do
		if model == GetHashKey(blacklistedCar) then
			return true
		end
	end

	return false
end

-- Anti Vehicle Modifier
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2500)
        local ped = PlayerPedId()
        local sleep = true
        if IsPedInAnyVehicle(ped, false) then
            sleep = false
            local vehiclein = GetVehiclePedIsIn(ped, 0)
            if IsVehicleDamaged(vehiclein) then
                if GetEntityHealth(vehiclein) >= GetEntityMaxHealth(vehiclein) then
                    if Config.VehicleGodMode then
                        if GetVehiclePedIsIn(GetPlayerPed(-1)) then return end
                        TriggerServerEvent('ace:ban', vehiclein, 'Vehicle-Modifier detected. Type: 2')
                        DeleteEntity(vehiclein)
                    end
                end
            end
            SetEntityInvincible(vehiclein, false)
            if GetVehicleCheatPowerIncrease(vehiclein) > 1.0 then
                if Config.VehiclePowerIncrease then
                    if GetVehiclePedIsIn(GetPlayerPed(-1)) then return end
                    TriggerServerEvent('ace:ban', vehiclein, 'Vehicle-Modifier detected. Type: 3')
                    DeleteEntity(vehiclein)
                end
            end
            if GetVehicleTopSpeedModifier(vehiclein) > -1.0 then
                if Config.VehicleSpeedHack then
                    if GetVehiclePedIsIn(GetPlayerPed(-1)) then return end
                    TriggerServerEvent('ace:ban', vehiclein, 'Vehicle-Modifier detected. Type: 5')
                    DeleteEntity(vehiclein)
                end
            end
            SetVehicleTyresCanBurst(vehiclein, true)
        end
    end
end)

-- Anti Infinite Ammo
Citizen.CreateThread(function()
    while true do
        if Config.AntiInfiniteAmmo ~= true then return end
        Wait(10000)
        SetPedInfiniteAmmoClip(PlayerPedId(), false)
    end
end)

-- Anti GodMode1
Citizen.CreateThread(function()
    while true do
        if Config.AntiGodMode1 ~= true then return end
        Wait(12000)
        local ped = PlayerPedId()
        local health = GetEntityHealth(ped)
        Wait(1)
        SetEntityHealth(ped, 197)
        Wait(1)
        local health2 = GetEntityHealth(ped)
        if health2 > 198 then
            TriggerServerEvent('ace:ban', source, 'Godmode detected. Type: 1')
        else
            SetEntityHealth(ped, health)
        end
    end
end)

-- Anti GodMode2
Citizen.CreateThread(function()
    while true do
        if Config.AntiGodMode2 ~= true then return end
        Wait(5000)
        local ped = GetPlayerPed(-1)
        if GetPlayerInvincible(ped) then
            TriggerServerEvent('ace:ban', ped, 'Godmode detected. Type: 2')
            SetPlayerInvincible(ped, false)
        end
    end
end)

-- Anti GodMode3+4
CreateThread(function()
    while true do
        Wait(5000)
        if Config.AntiGodMode3 then
            if GetPlayerInvincible_2(PlayerId()) then
                TriggerServerEvent('ace:ban', source, 'Godmode detected. Type: 3')
            end
        end
    end
end)


-- Anti Stopper
AddEventHandler("onResourceStop", function(res)
    if Config.AntiStopper ~= true then return end
    if res == GetCurrentResourceName() then
        TriggerServerEvent('ace:ban', source, 'Tried to stop Script: ' ..res)
        Citizen.Wait(100)
        CancelEvent()
    else
        TriggerServerEvent('ace:ban', source, 'Tried to stop Script: Resourcename Invalid')
        Citizen.Wait(100)
        CancelEvent()
    end
end)

-- Screenshot
RegisterNetEvent("ace:screenshot")
AddEventHandler("ace:screenshot", function(id)
    exports['screenshot-basic']:requestScreenshotUpload(Config.BanWebhook, "files[]", function(data)
    end)
end)

-- Anti Damage Modifier
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2500)
        if Config.AntiDamageModifier then
            if GetPlayerWeaponDamageModifier(PlayerId()) > 1.0 then
                TriggerServerEvent('ace:ban', source, 'Tried to use Damage Modifier')
            end
        end
    end
end)

-- Anti Injection
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10000)
		local DetectableTextures = {
			{txd = "HydroMenu", txt = "HydroMenuHeader", name = "HydroMenu"},
			{txd = "John", txt = "John2", name = "SugarMenu"},
			{txd = "fm", txt = "menu_bg", name = "Fallout"},
            {txd = "TiagoModz", txt = "TiagoModz", name = "[TiagoModz]"},
            {txd = "Brutan", txt = "Brutan", name = "Brutan"},
            {txd = "dopamine", txt = "dopamine", name = "DOPAMINE"}
		}
		
		for i, data in pairs(DetectableTextures) do
			if data.x and data.y then
				if GetTextureResolution(data.txd, data.txt).x == data.x and GetTextureResolution(data.txd, data.txt).y == data.y then
                    if Config.AntiInjection ~= true then return end
                    TriggerEvent("ace:screenshot", source)
                    Wait(500)
					TriggerServerEvent('ace:ban', source, 'Injection detected')
				end
			else 
				if GetTextureResolution(data.txd, data.txt).x ~= 4.0 then
                    if Config.AntiInjection ~= true then return end
                    TriggerEvent("ace:screenshot", source)
                    Wait(500)
					TriggerServerEvent('ace:ban', source, 'Injection detected')
				end
			end
		end
	end
end)

local ischecking = false





Citizen.CreateThread(function()
    while Config.AntiBlips do
        Citizen.Wait(6191)
        local _pid = PlayerId()
        local _activeplayers = GetActivePlayers()
        for i = 1, #_activeplayers do
            if i ~= _pid then
                if DoesBlipExist(GetBlipFromEntity(GetPlayerPed(i))) then
                    TriggerServerEvent('ace:ban',source, 'Player Blips detected')
                end
            end
            Citizen.Wait(50)
        end
    end
end)



