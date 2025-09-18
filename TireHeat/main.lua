local Playerlib = require("Playerlib")
local WindowMan = require("WindowMan")
local curves = {}
function curves.Exp(a)
    return 2 ^ a
end
function curves.Log(a)
    return math.log(a)
end
function curves.bell(a)
    return 2^(-a^2)
end

local WheelFilter = {
    "Wheel Aircraft 2.5x9",
    "Wheel Aircraft 2x6",
    "Wheel Car 2.5x6.5",
    "Wheel Car 2.5x7",
    "Wheel Car 2x6.5",
    "Wheel Car 2x7",
    "Wheel Car 2x8",
    "Wheel Car 3x6.5",
    "Wheel Offroad 5x15",
    "Wheel Offroad 5.5x11",
    "Wheel Motorcycle.1x8",
    "Wheel Gokart 2x5",
    "Wheel Gokart 2.5x4",
    "Wheel Car 4x8",
    "Wheel Car 3x8",
    "Wheel Car 3x7",
    "Wheel Offroad 5x18",
    "Wheel Offroad 10x16",
    "Wheel Racing 4x8",
    "Wheel Racing 5x8",
    "Wheel Trolley 1x3",
    "Wheel Truck 2.5x9",
    "Wheel Truck 3x11", 
}

local wheels = {}

local function createWheel()
    local i = #wheels+1
    local Player = Playerlib.GetPlayer().Value
    local part = Playerlib.GetTargetedPart(Player)
    local exit = true
    for Wfilter in WheelFilter do
        if part.AssetName == Wfilter then
            exit = false
        end
    end
    if exit then
        return
    end
    wheels[i] = {
        wheel = part,
        temp = 1.5,
        glass_transition = false,
        glass_point = 10,
        curve = curves.Exp,
        i = i
    }
    return wheels[i]
end


local function updateWheels()
    if not wheels then
        return
    end
    for wheel in wheels do
        for b in wheel.wheel.Behaviours do
            if b.Name == "Wheel" then
                local rpm
                for c in b.Channels do
                    if c.Label == "RPM" then
                        rpm = c.Value
                    end
                end
                if rpm then
                    if rpm > 10 then
                        wheel.temp = wheel.temp * (curves.exp(rpm-20))
                    end
                end
                b.GetTweakable("Cornering Grip").Value = wheel.curve(wheel.temp)
                print(b.GetTweakable("Cornering Grip").Value)
            end
        end
    end
end

function Update()
    updateWheels()
    if Input.GetKeyDown("tab") then
        createWheel()
    end
end