local WindowMan = require("WindowMan")
function GetTargetedPart(playervalue)
    local targetedPart
    if playervalue and playervalue.Targeter then
        targetedPart = playervalue.Targeter.TargetedPart
    else
        return nil
    end
    return targetedPart
end

local names = {
    "LinearActuator Medium Barrel",
    "LinearActuator Small Barrel",
    "LinearActuator Ball Large Barrel",
    "LinearActuator Ball LargeLong Barrel",
    "LinearActuator Ball Medium Barrel",
    "LinearActuator Ball Small Barrel",
    "LinearActuator Large Barrel",
    "LinearActuator LargeLong Barrel",
}
local win = WindowMan.CreateWindow(200, 200, WindowMan.GenericOnWindowClose)
local direction = 1
local increment = 0
local part
local PrecisionInput = WindowMan.CreateLabelledInputField(0, 0, 200, 30,"Precision", win, 4)
local beginTestButton
local function SetIncrement()
    if not (increment == 0) then
        increment = 0
        return
    end
    direction = direction * -1
    increment = direction*(1 / 10 ^ (PrecisionInput.Value))
    beginTestButton.Text = "Stop Test"
end

local function SelectPiston()
    local Player = LocalPlayer.Value
    local targetedPart = GetTargetedPart(Player)
    for name in names do 
        if name == targetedPart.AssetName then
            part = targetedPart
            return
        end
    end
end

beginTestButton = WindowMan.CreateButton(0, 30, 200, 30, "begin Test", win, SetIncrement)
local PistonButton = WindowMan.CreateButton(0, 60, 200, 30, "Select Piston", win, SelectPiston)
local ValueLabel = WindowMan.CreateLabel(0, 90, 200, 30, 0, win)
function Update()
    if part then
        local behaviour = part.Behaviours[1]
        behaviour.GetTweakable("Centre Extension").Value = behaviour.GetTweakable("Centre Extension").Value + increment
        local c
        for channel in behaviour.Channels do
            if channel.Label == "Position" then
                c = channel 
            end
        end
        ValueLabel.Text = c.Value
        if c.Value < 0.1 then
            increment = increment * -1
        end
        if c.Value > 0.9 then
            increment = increment * -1
        end
    end
end

function Cleanup()
    WindowMan.DestroyWindow(win)
end