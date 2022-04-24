-- Request the model before creating it
local truckTrailer = CreateVehicle(`tr2`, GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 8.0, 0.0), true)

-- Open the rear ramp so you can drive a vehicle on
SetVehicleDoorOpen(truckTrailer, 5, false, false)

-- Get the vehicle you're in and it's coords and rotation
local veh = GetVehiclePedIsIn(PlayerPedId())
local vehCoords = GetEntityCoords(veh)
local vehRotation = GetEntityRotation(veh)

-- Park the car where on the trailer you want it, you could make sure your vehicle is touching the trailer first using "IsEntityTouchingEntity"
AttachVehicleOnToTrailer(veh, truckTrailer, 0.0, 0.0, 0.0, GetOffsetFromEntityGivenWorldCoords(truckTrailer, vehCoords), vehRotation, false)

-- Do the following to detach the vehicle from the trailer
DetachEntity(veh, true, false)