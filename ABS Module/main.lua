local WindowMan = require("WindowMan")
local Playerlib = require("Playerlib")
local Keylib = require("Keylib")
local ButtonWidth = 100
local ButtonHeight = 30
local WindowWidth = ButtonWidth*3
local WindowHeight = ButtonHeight*12+1
local ButtonI = 0
local w = WindowMan.CreateWindow(WindowHeight, WindowWidth, WindowMan.GenericOnWindowClose)
w.Title = "ABS"

local FRBrake
local FRBrakeButton
local FRSensor
local FRSensorButton
local FRSensorReadout
local FLBrake
local FLBrakeButton
local FLSensor
local FLSensorButton
local FLSensorReadout
local RRBrake
local RRBrakeButton
local RRSensor
local RRSensorButton
local RRSensorReadout
local RLBrake
local RLBrakeButton
local RLSensor
local RLSensorButton
local RLSensorReadout
local msToKmh = 60 * 60 / 1000  
local MaxPressure = 800
local MaxPressureInput
local MinPressure = 0
local MinPressureInput
local TriggerMode = false
local TriggerValueRPM = 100
local ThresholdVelocity = 10
local TriggerValueInput
local TriggerValueLabel
local ThresholdVelocityInput
local ThresholdVelocityLabel
math.round = function ( number, precision )
    return tonumber( string.format( string.format( '%%0.%df', precision ), number ) )
end

local SensorFilter = {
        "Wheel Aircraft 2 5x9",
        "Wheel Aircraft 2x6",
        "Wheel Car 2 5x6 5",
        "Wheel Car 2 5x7",
        "Wheel Car 2x6 5",
        "Wheel Car 2x7",
        "Wheel Car 2x8",
        "Wheel Car 3x6 5",
        "Wheel Offroad 5x15",
        "Wheel Offroad 5 5x11",
        "Wheel Motorcycle 1x8",
        "Wheel Gokart 2x5",
        "Wheel Gokart 2 5x4",
        "Wheel Car 4x8",
        "Wheel Car 3x8",
        "Wheel Car 3x7",
        "Wheel Offroad 5x18",
        "Wheel Offroad 10x16",
        "Wheel Racing 4x8",
        "Wheel Racing 5x8",
        "Wheel Trolley 1x3",
        "Wheel Truck 2 5x9",
        "Wheel Truck 3x11",
        "Sensor Angle",
}

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

local function _pickPart()
    local Player = Playerlib.GetPlayer().Value
    local TargetedPart = Playerlib.GetTargetedPart(Player)
    if TargetedPart then
        for Bfilter in BrakeFilter do
            if TargetedPart.AssetName == Bfilter then
                for Sfilter in BrakeFilter do
                    if TargetedPart.AssetName == Sfilter then
                        return {TargetedPart, nil}
                    end
                end
                return {TargetedPart, false}
            end
        end
        for Sfilter in BrakeFilter do
            if TargetedPart.AssetName == Sfilter then
                return {TargetedPart, true}
            end
        end
    else
        return {nil, nil}
    end
end
local function pickPart()
    local _ = _pickPart()
    print(_[1],_[2])
    return _
end

local function pickFR()
    local part = pickPart()
    if part[1] == nil then
        return
    end
    if part[2] == true then
        FRSensor = part[1]
    elseif part[2] == false then
        FRBrake = part[1]
    elseif part[2] == nil then
        FRSensor = part[1]
        FRBrake = part[1]
    end
end
local function pickFL()
    local part = pickPart()
    if part[1] == nil then
        return
    end
    if part[2] == true then
        FLSensor = part[1]
    elseif part[2] == false then
        FLBrake = part[1]
    elseif part[2] == nil then
        FLSensor = part[1]
        FLBrake = part[1]
    end
end
local function pickRR()
    local part = pickPart()
    if part[1] == nil then
        return
    end
    if part[2] == true then
        RRSensor = part[1]
    elseif part[2] == false then
        RRBrake = part[1]
    elseif part[2] == nil then
        RRSensor = part[1]
        RRBrake = part[1]
    end
end
local function pickRL()
    local part = pickPart()
    if part[1] == nil then
        return
    end
    if part[2] == true then
        RLSensor = part[1]
    elseif part[2] == false then
        RLBrake = part[1]
    elseif part[2] == nil then
        RLSensor = part[1]
        RLBrake = part[1]
    end
end

local function GetRPM(part)
    for b in part.Behaviours do
        for channel in b.Channels do
            if channel.Label == "RPM" then
                return channel.Value
            end
        end
    end
end

local BrakeBehaviourFilter = {
    "Brake",
    "Wheel Brake"
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


local function modBrakeForce()  
    if FRSensor then
        FRSensorButton.Text = "F R Sensor"
        local angular_speed = GetRPM(FRSensor)
        FRSensorReadout.Text = math.round(math.abs(angular_speed), 2)
        if not FRBrake then
            return
        end
        local Player = Playerlib.GetPlayer().Value
        local commonpos = Player.Velocity
        local speed = math.round(commonpos.magnitude * msToKmh, 2)
        local b = GetBrakeBehaviour(FRBrake)
        if speed < tonumber(ThresholdVelocityInput.Value) then
            b.GetTweakable("Peak Torque").Value = tonumber(MaxPressureInput.Value)
            return
        end
        if math.abs(angular_speed) < tonumber(TriggerValueInput.Value) then
            b.GetTweakable("Peak Torque").Value = tonumber(MinPressureInput.Value)
            FRSensorButton.Text = "<color=#6666ff>F R Sensor</color>"
        else
            b.GetTweakable("Peak Torque").Value = tonumber(MaxPressureInput.Value)
        end
    end
    if FLSensor then
        FLSensorButton.Text = "F L Sensor"
        local angular_speed = GetRPM(FLSensor)
        FLSensorReadout.Text = math.round(math.abs(angular_speed), 2)
        if not FLBrake then
            return
        end
        local Player = Playerlib.GetPlayer().Value
        local commonpos = Player.Velocity
        local speed = math.round(commonpos.magnitude * msToKmh, 2)
        local b = GetBrakeBehaviour(FLBrake)
        if speed < tonumber(ThresholdVelocityInput.Value) then
            b.GetTweakable("Peak Torque").Value = tonumber(MaxPressureInput.Value)
            return
        end
        if math.abs(angular_speed) < tonumber(TriggerValueInput.Value) then
            b.GetTweakable("Peak Torque").Value = tonumber(MinPressureInput.Value)
            FLSensorButton.Text = "<color=#6666ff>F L Sensor</color>"
        else
            b.GetTweakable("Peak Torque").Value = tonumber(MaxPressureInput.Value)
        end
    end
    if RRSensor then
        RRSensorButton.Text = "R R Sensor"
        local angular_speed = GetRPM(RRSensor)
        RRSensorReadout.Text = math.round(math.abs(angular_speed), 2)
        if not RRBrake then
            return
        end
        local Player = Playerlib.GetPlayer().Value
        local commonpos = Player.Velocity
        local speed = math.round(commonpos.magnitude * msToKmh, 2)
        local b = GetBrakeBehaviour(RRBrake)
        if speed < tonumber(ThresholdVelocityInput.Value) then
            b.GetTweakable("Peak Torque").Value = tonumber(MaxPressureInput.Value)
            return
        end
        if math.abs(angular_speed) < tonumber(TriggerValueInput.Value) then
            b.GetTweakable("Peak Torque").Value = tonumber(MinPressureInput.Value)
            RRSensorButton.Text = "<color=#6666ff>R R Sensor</color>"
        else
            b.GetTweakable("Peak Torque").Value = tonumber(MaxPressureInput.Value)
        end
    end
    if RLSensor then
        RLSensorButton.Text = "R L Sensor"
        local angular_speed = GetRPM(RLSensor)
        RLSensorReadout.Text = math.round(math.abs(angular_speed), 2)
        if not RLBrake then
            return
        end
        local Player = Playerlib.GetPlayer().Value
        local commonpos = Player.Velocity
        local speed = math.round(commonpos.magnitude * msToKmh, 2)
        local b = GetBrakeBehaviour(RLBrake)
        if speed < tonumber(ThresholdVelocityInput.Value) then
            b.GetTweakable("Peak Torque").Value = tonumber(MaxPressureInput.Value)
            return
        end
        if math.abs(angular_speed) < tonumber(TriggerValueInput.Value) then
            b.GetTweakable("Peak Torque").Value = tonumber(MinPressureInput.Value)
            RLSensorButton.Text = "<color=#6666ff>R L Sensor</color>"
        else
            b.GetTweakable("Peak Torque").Value = tonumber(MaxPressureInput.Value)
        end
    end
end

FRBrakeButton = WindowMan.CreateButton(ButtonWidth*2, ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, "F R Brake", w, pickFR)
ButtonI = ButtonI + 1
FRSensorButton = WindowMan.CreateButton(ButtonWidth*2, ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, "F R Sensor", w, pickFR)
FRSensorReadout = WindowMan.CreateLabel(ButtonWidth+(ButtonWidth-(ButtonWidth/4)),ButtonHeight*ButtonI, (ButtonWidth-(ButtonWidth/4)), ButtonHeight, "0", w)
ButtonI = ButtonI - 1
FLBrakeButton = WindowMan.CreateButton(0, ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, "F L Brake", w, pickFL)
ButtonI = ButtonI + 1
FLSensorButton = WindowMan.CreateButton(0, ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, "F L Sensor", w, pickFL)
FLSensorReadout = WindowMan.CreateLabel(ButtonWidth,ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, "0", w)
ButtonI = ButtonI + 2
RRBrakeButton = WindowMan.CreateButton(ButtonWidth*2, ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, "R R Brake", w, pickRR)
ButtonI = ButtonI + 1
RRSensorButton = WindowMan.CreateButton(ButtonWidth*2, ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, "R R Sensor", w, pickRR)
RRSensorReadout = WindowMan.CreateLabel(ButtonWidth+(ButtonWidth-(ButtonWidth/4)),ButtonHeight*ButtonI, (ButtonWidth-(ButtonWidth/4)), ButtonHeight, "0", w)
ButtonI = ButtonI - 1
RLBrakeButton = WindowMan.CreateButton(0, ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, "R L Brake", w, pickRL)
ButtonI = ButtonI + 1
RLSensorButton = WindowMan.CreateButton(0, ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, "R L Sensor", w, pickRL)
RLSensorReadout = WindowMan.CreateLabel(ButtonWidth,ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, "0", w)
ButtonI = ButtonI + 2
MaxPressureInput = WindowMan.CreateLabelledInputField(0, ButtonHeight*ButtonI, WindowWidth, ButtonHeight, "Max Pressure:" , w, MaxPressure)
ButtonI = ButtonI + 1
MinPressureInput = WindowMan.CreateLabelledInputField(0, ButtonHeight*ButtonI, WindowWidth, ButtonHeight, "Min Pressure:" , w, MinPressure)
ButtonI = ButtonI + 1
TriggerValueLabel = WindowMan.CreateLabel(0, ButtonHeight*ButtonI, ButtonWidth*2, ButtonHeight, "Trigger Value (RPM):", w)
TriggerValueInput = WindowMan.CreateInputField(ButtonWidth*2, ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, w, TriggerValueRPM)
ButtonI = ButtonI + 1
ThresholdVelocityLabel = WindowMan.CreateLabel(0, ButtonHeight*ButtonI, ButtonWidth*2, ButtonHeight, "Threshold Velocity (KPH):", w)
ThresholdVelocityInput = WindowMan.CreateInputField(ButtonWidth*2, ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, w, ThresholdVelocity)
ButtonI = ButtonI + 1

function Update()
    if not FRBrake then
        FRBrakeButton.Text = "<color=#ff6666>F R Brake</color>"
    else
        FRBrakeButton.Text = "<color=#6666>F R Brake</color>"
    end
    if not FRSensor then
        FRSensorButton.Text = "<color=#ff6666>F R Sensor</color>"
    end
    if not FLBrake then
        FLBrakeButton.Text = "<color=#ff6666>F L Brake</color>"
    else
        FLBrakeButton.Text = "<color=#6666>F L Brake</color>"
    end
    if not FLSensor then
        FLSensorButton.Text = "<color=#ff6666>F L Sensor</color>"
    end
    if not RRBrake then
        RRBrakeButton.Text = "<color=#ff6666>R R Brake</color>"
    else
        RRBrakeButton.Text = "<color=#6666>R R Brake</color>"
    end
    if not RRSensor then
        RRSensorButton.Text = "<color=#ff6666>R R Sensor</color>"
    end
    if not RLBrake then
        RLBrakeButton.Text = "<color=#ff6666>R L Brake</color>"
    else
        RLBrakeButton.Text = "<color=#6666>R L Brake</color>"
    end
    if not RLSensor then
        RLSensorButton.Text = "<color=#ff6666>R L Sensor</color>"
    end

    
    modBrakeForce()
end

function Cleanup()
    WindowMan.DestroyWindow(w)

end