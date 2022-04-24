RegisterCommand("tow", function(source, args)

    --[[ load the model
    RequestModel(`tr2`)

    -- wait for the model to load
    while not HasModelLoaded(`tr2`) do
        Wait(500)
    end

    -- Request the model before creating it
    local truckTrailer = CreateVehicle(`tr2`, GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 8.0, 0.0), true)

    -- Open the rear ramp so you can drive a vehicle on
    SetVehicleDoorOpen(truckTrailer, 5, false, false)

    ]]

    --Wait(10000)

    -- Get the vehicle you're in and it's coords and rotation
    local veh = GetVehiclePedIsIn(PlayerPedId())
    local vehCoords = GetEntityCoords(veh)
    local vehRotation = GetEntityRotation(veh)

    -- Park the car where on the trailer you want it, you could make sure your vehicle is touching the trailer first using "IsEntityTouchingEntity"
    AttachVehicleOnToTrailer(veh, truckTrailer, 0.0, 0.0, 0.0, GetOffsetFromEntityGivenWorldCoords(truckTrailer, vehCoords), vehRotation, false)

    Wait(10000)

    -- Do the following to detach the vehicle from the trailer
    DetachEntity(veh, true, false)

    SetEntityAsNoLongerNeeded(truckTrailer)
end)


RegisterCommand("test", function(source, args)
    -- _GET_ALL_VEHICLES
    local pos = GetEntityCoords(GetPlayerPed(-1))
    local vehicle = GetClosestVehicle(pos['x'], pos['y'], pos['z'], 150.0, 0, 0)
    if DoesEntityExist(vehicle) then
        --[[Get the vehicle you're in and it's coords and rotation
        local veh = GetVehiclePedIsIn(PlayerPedId())
        local vehCoords = GetEntityCoords(veh)
        local vehRotation = GetEntityRotation(veh)

        AttachVehicleOnToTrailer(veh, vehicle, 0.0, 0.0, 0.0, GetOffsetFromEntityGivenWorldCoords(vehicle, vehCoords), vehRotation, false)

        Wait(10000)

        DetachEntity(veh, true, false)]]

        print(IsThisModelAPlane(vehicle))
    end
end)