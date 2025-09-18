local Playerlib = require("Playerlib")
local WindowMan = require("WindowMan")
local mainWin = {
    W = WindowMan.CreateWindow(90, 120, WindowMan.GenericOnWindowClose),
}
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
function curves.normalbell(a)
    local squish = 320
    local max = 2000
    local adivsquish = a/squish
    return (2 ^ (-adivsquish^2))*max
end
local msToKmh = 60 * 60 / 1000  
math.round = function ( number, precision )
    return tonumber( string.format( string.format( '%%0.%df', precision ), number ) )
 end
local BrakeFilter = {
        "Wheel Aircraft 2.5x9",
        "Wheel Car 2.5x6.5",
        "Wheel Car 2.5x7",
        "Wheel Car 2x6.5",
        "Wheel Car 2x7",
        "Wheel Car 2x8",
        "Wheel Car 3x6.5",
        "Wheel Offroad 5.5x11",
        "Wheel Gokart 2x5",
        "Wheel Car 4x8",
        "Wheel Car 3x8",
        "Wheel Car 3x7",
        "Wheel Racing 4x8",
        "Wheel Racing 5x8",
        "Wheel Truck 2.5x9",
        "Wheel Truck 3x11",
        "Brake Disk x4",
        "Brake Disk x3"
}
local BrakeBehaviourFilter = {
    "Brake",
    "Wheel Brake"
}
local BrakeChannelFilter = {
    "Braking Torque (Nm)",
    "Torque (Nm)"
}
local function GetBrakeBehaviour(part)
    for b in part.Behaviours do
        for filter in BrakeBehaviourFilter do
            if b.Name == filter then
                return b
            end
        end
    end
end
local function GetBrakeChannel(b)
    for c in b.Channels do
        for filter in BrakeChannelFilter do
            if c.Label == filter then
                return c
            end
        end
    end
end

local Brakes = {}

local function createBrake()
    local i = #Brakes+1
    local Player = Playerlib.GetPlayer().Value
    local part = Playerlib.GetTargetedPart(Player)
    local exit = true
    if not part then
        return
    end
    for BFilter in BrakeFilter do
        if part.AssetName == BFilter then
            exit = false
        end
    end
    if exit then
        return
    end
    print(part)
    Brakes[i] = {
        brake = part,
        part = part,
        temp = 1,
        glass_transition = false,
        glass_point = 10,
        curve = curves.normalbell,
        i = i,
        pos = part.Position,
        lastpos = part.Position,
        Velocity = 0,
        Counter = 0,
        W = WindowMan.CreateWindow(90, 120, function () end),
    }
    Brakes[i].HeatLabel = WindowMan.CreateLabel(0, -10, 120, 30, "0", Brakes[i].W)
    Brakes[i].CurveLabel = WindowMan.CreateLabel(0, 5, 120, 30, "0", Brakes[i].W)
    Brakes[i].VelLabel = WindowMan.CreateLabel(0, 20, 120, 30, "0", Brakes[i].W)
    Brakes[i].PosLabel = WindowMan.CreateLabel(0, 35, 120, 30, "0", Brakes[i].W)
    return Brakes[i]
end


local function updateWheels()
    if not Brakes then
        return
    end
    for brake in Brakes do
        if brake.glass_transition then
            local b = GetBrakeBehaviour(brake.part)
            local t = b.GetTweakable("Peak Torque")
            t.Value = 0
            return
        end
        if brake.temp > brake.glass_point then
            brake.glass_transition = true
        end
        brake.pos = brake.part.Position
        brake.temp = math.round(brake.temp, 3)
        if brake.Counter < 10 then
            brake.Counter = brake.Counter + 1
            if brake.temp > 1 then
                brake.temp = brake.temp - 0.001
            end 
        else
            brake.Counter = 0
            local poslen = math.sqrt(brake.pos.X^2+brake.pos.Z^2+brake.pos.Y^2)
            local lastposlen = math.sqrt(brake.lastpos.X^2+brake.lastpos.Z^2+brake.lastpos.Y^2)
            local delta = poslen - lastposlen
            brake.Velocity = math.abs((delta / 10) * msToKmh * 100)
            brake.lastpos = brake.pos
        end
        local b = GetBrakeBehaviour(brake.part)
        local torque = 0
        local t = b.GetTweakable("Peak Torque")
        if brake.Velocity > 20 then
            torque = GetBrakeChannel(b).Value
            if torque > 0 then
                brake.temp = brake.temp + 0.01
            else
                if brake.temp > 1 then
                    brake.temp = brake.temp - 0.01
                end 
            end
        end
        brake.HeatLabel.Text = brake.temp
        brake.CurveLabel.Text = brake.curve(brake.temp)
        brake.VelLabel.Text = "" .. math.round(brake.pos.X,4) .. " " .. math.round(brake.pos.Z,4) .. " " .. math.round(brake.pos.Y,4) 
        t.Value = brake.curve(brake.temp) * 100
        --brake.CurveLabel.Text = brake.Velocity
    end
end

function Update()
    updateWheels()
    if Input.GetKeyDown("tab") then
        createBrake()
    end
end

function Cleanup()
    for b in Brakes do
        if b.W then
            WindowMan.DestroyWindow(b.W)
        end
    end 
    WindowMan.DestroyWindow(mainWin.W)
end