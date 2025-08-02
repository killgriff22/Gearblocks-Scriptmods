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
local TriggerValueDs = 1000
local ThresholdVelocity = 10
local TriggerValueInput
local TriggerValueLabel
local ThresholdVelocityInput
local ThresholdVelocityLabel
math.round = function ( number, precision )
    return tonumber( string.format( string.format( '%%0.%df', precision ), number ) )
end

local function pickPart()
    local Player = Playerlib.GetPlayer().Value
    local TargetedPart = Playerlib.GetTargetedPart(Player)
    if TargetedPart then
        if TargetedPart.AssetName == "Sensor Angle" then
            return {TargetedPart, true}
        elseif TargetedPart.AssetName == "Brake Disk x4" then
            return {TargetedPart, false}
        elseif TargetedPart.AssetName == "Brake Disk x3" then
            return {TargetedPart, false}
        end
    else
        return {nil, nil}
    end
end

local function pickFRBrake()
    local part = pickPart()
    if not part[2] then
        FRBrake = part[1]
    end
end
local function pickFRSensor()
    local part = pickPart()
    if part[2] then
        FRSensor = part[1]
    end
end
local function pickFLBrake()
    local part = pickPart()
    if not part[2] then
        FLBrake = part[1]
    end
end
local function pickFLSensor()
    local part = pickPart()
    if part[2] then
        FLSensor = part[1]
    end
end
local function pickRRBrake()
    local part = pickPart()
    if not part[2] then
        RRBrake = part[1]
    end
end
local function pickRRSensor()
    local part = pickPart()
    if part[2] then
        RRSensor = part[1]
    end
end
local function pickRLBrake()
    local part = pickPart()
    if not part[2] then
        RLBrake = part[1]
    end
end
local function pickRLSensor()
    local part = pickPart()
    if part[2] then
        RLSensor = part[1]
    end
end
local function FRModBrakeForceDegS()
    if not FRSensor then
        return
    end
    FRSensorButton.Text = "F R Sensor"
    local angular_speed
    for channel in FRSensor.Behaviours[1].Channels do
        if channel.Label == "Angular Speed" then
            angular_speed = channel.Value
            FRSensorReadout.Text = math.round(math.abs(angular_speed), 2)
        end
    end
    if not FRBrake then
        return
    end
    local Player = Playerlib.GetPlayer().Value
    local commonpos = Player.Velocity
    local speed = math.round(commonpos.magnitude * msToKmh, 2)
    if speed < tonumber(ThresholdVelocityInput.Value) then
        FRBrake.Behaviours[1].GetTweakable("Peak Torque").Value = tonumber(MaxPressureInput.Value)
        return
    end
    if math.abs(angular_speed) < tonumber(TriggerValueInput.Value) then
        FRBrake.Behaviours[1].GetTweakable("Peak Torque").Value = tonumber(MinPressureInput.Value)
        FRSensorButton.Text = "<color=#6666ff>F R Sensor</color>"
    else
        FRBrake.Behaviours[1].GetTweakable("Peak Torque").Value = tonumber(MaxPressureInput.Value)
    end
end
local function FLModBrakeForceDegS()
    if not FLSensor then
        return
    end
    FLSensorButton.Text = "F L Sensor"
    local angular_speed
    for channel in FLSensor.Behaviours[1].Channels do
        if channel.Label == "Angular Speed" then
            angular_speed = channel.Value
            FLSensorReadout.Text = math.round(math.abs(angular_speed), 2)
        end
    end
    if not FLBrake then
        return
    end
    local Player = Playerlib.GetPlayer().Value
    local commonpos = Player.Velocity
    local speed = math.round(commonpos.magnitude * msToKmh, 2)
    if speed < tonumber(ThresholdVelocityInput.Value) then
        FLBrake.Behaviours[1].GetTweakable("Peak Torque").Value = tonumber(MaxPressureInput.Value)
        return
    end
    if math.abs(angular_speed) < tonumber(TriggerValueInput.Value) then
        FLBrake.Behaviours[1].GetTweakable("Peak Torque").Value = tonumber(MinPressureInput.Value)
        FLSensorButton.Text = "<color=#6666ff>F L Sensor</color>"
    else
        FLBrake.Behaviours[1].GetTweakable("Peak Torque").Value = tonumber(MaxPressureInput.Value)
    end
end
local function RRModBrakeForceDegS()
    if not RRSensor then
        return
    end
    RRSensorButton.Text = "R R Sensor"
    local angular_speed
    for channel in RRSensor.Behaviours[1].Channels do
        if channel.Label == "Angular Speed" then
            angular_speed = channel.Value
            RRSensorReadout.Text = math.round(math.abs(angular_speed), 2)
        end
    end
    if not RRBrake then
        return
    end
    local Player = Playerlib.GetPlayer().Value
    local commonpos = Player.Velocity
    local speed = math.round(commonpos.magnitude * msToKmh, 2)
    if speed < tonumber(ThresholdVelocityInput.Value) then
        RRBrake.Behaviours[1].GetTweakable("Peak Torque").Value = tonumber(MaxPressureInput.Value)
        return
    end
    if math.abs(angular_speed) < tonumber(TriggerValueInput.Value) then
        RRBrake.Behaviours[1].GetTweakable("Peak Torque").Value = tonumber(MinPressureInput.Value)
        RRSensorButton.Text = "<color=#6666ff>R R Sensor</color>"
    else
        RRBrake.Behaviours[1].GetTweakable("Peak Torque").Value = tonumber(MaxPressureInput.Value)
    end
end
local function RLModBrakeForceDegS()
    if not RLSensor then
        return
    end
    RLSensorButton.Text = "R L Sensor"
    local angular_speed
    for channel in RLSensor.Behaviours[1].Channels do
        if channel.Label == "Angular Speed" then
            angular_speed = channel.Value
            RLSensorReadout.Text = math.round(math.abs(angular_speed), 2)
        end
    end
    if not RLBrake then
        return
    end
    local Player = Playerlib.GetPlayer().Value
    local commonpos = Player.Velocity
    local speed = math.round(commonpos.magnitude * msToKmh, 2)
    if speed < tonumber(ThresholdVelocityInput.Value) then
        RLBrake.Behaviours[1].GetTweakable("Peak Torque").Value = tonumber(MaxPressureInput.Value)
        return
    end
    if math.abs(angular_speed) < tonumber(TriggerValueInput.Value) then
        RLBrake.Behaviours[1].GetTweakable("Peak Torque").Value = tonumber(MinPressureInput.Value)
        RLSensorButton.Text = "<color=#6666ff>R L Sensor</color>"
    else
        RLBrake.Behaviours[1].GetTweakable("Peak Torque").Value = tonumber(MaxPressureInput.Value)
    end
end



local function TriggerModeSwitch()
    if TriggerMode then
        TriggerModeButton.Text = "Use Deg/s"
        TriggerValueInput.Value = TriggerValueRpM
        TriggerValueLabel.Text = "Trigger Value (RPM):"
    else
        TriggerModeButton.Text = "Use RPM"
        TriggerValueInput.Value = TriggerValueDs
        TriggerValueLabel.Text = "Trigger Value (Deg/s):"
    end
    TriggerMode = not TriggerMode
end

FRBrakeButton = WindowMan.CreateButton(ButtonWidth*2, ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, "F R Brake", w, pickFRBrake)
ButtonI = ButtonI + 1
FRSensorButton = WindowMan.CreateButton(ButtonWidth*2, ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, "F R Sensor", w, pickFRSensor)
FRSensorReadout = WindowMan.CreateLabel(ButtonWidth+(ButtonWidth-(ButtonWidth/4)),ButtonHeight*ButtonI, (ButtonWidth-(ButtonWidth/4)), ButtonHeight, "0", w)
ButtonI = ButtonI - 1
FLBrakeButton = WindowMan.CreateButton(0, ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, "F L Brake", w, pickFLBrake)
ButtonI = ButtonI + 1
FLSensorButton = WindowMan.CreateButton(0, ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, "F L Sensor", w, pickFLSensor)
FLSensorReadout = WindowMan.CreateLabel(ButtonWidth,ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, "0", w)
ButtonI = ButtonI + 2
RRBrakeButton = WindowMan.CreateButton(ButtonWidth*2, ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, "R R Brake", w, pickRRBrake)
ButtonI = ButtonI + 1
RRSensorButton = WindowMan.CreateButton(ButtonWidth*2, ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, "R R Sensor", w, pickRRSensor)
RRSensorReadout = WindowMan.CreateLabel(ButtonWidth+(ButtonWidth-(ButtonWidth/4)),ButtonHeight*ButtonI, (ButtonWidth-(ButtonWidth/4)), ButtonHeight, "0", w)
ButtonI = ButtonI - 1
RLBrakeButton = WindowMan.CreateButton(0, ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, "R L Brake", w, pickRLBrake)
ButtonI = ButtonI + 1
RLSensorButton = WindowMan.CreateButton(0, ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, "R L Sensor", w, pickRLSensor)
RLSensorReadout = WindowMan.CreateLabel(ButtonWidth,ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, "0", w)
ButtonI = ButtonI + 2
MaxPressureInput = WindowMan.CreateLabelledInputField(0, ButtonHeight*ButtonI, WindowWidth, ButtonHeight, "Max Pressure:" , w, MaxPressure)
ButtonI = ButtonI + 1
MinPressureInput = WindowMan.CreateLabelledInputField(0, ButtonHeight*ButtonI, WindowWidth, ButtonHeight, "Min Pressure:" , w, MinPressure)
ButtonI = ButtonI + 1
TriggerValueLabel = WindowMan.CreateLabel(0, ButtonHeight*ButtonI, ButtonWidth*2, ButtonHeight, "Trigger Value (Deg/s):", w)
TriggerValueInput = WindowMan.CreateInputField(ButtonWidth*2, ButtonHeight*ButtonI, ButtonWidth, ButtonHeight, w, TriggerValueDs)
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

    
    FRModBrakeForceDegS()
    FLModBrakeForceDegS()
    RRModBrakeForceDegS()
    RLModBrakeForceDegS()
end

function Cleanup()
    WindowMan.DestroyWindow(w)

end