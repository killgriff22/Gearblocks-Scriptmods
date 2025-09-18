local WindowMan = require("WindowMan")

local Pairs = {}

function GetTargetedPart(playervalue)
    local targetedPart
    if playervalue and playervalue.Targeter then
        targetedPart = playervalue.Targeter.TargetedPart
    else
        return nil
    end
    return targetedPart
end

local SensorAssetName = "Sensor Angle"

local PistonFilter = {
    "LinearActuator Small Barrel",
    "LinearActuator Medium Barrel",
    "LinearActuator LargeLong Barrel",
    "LinearActuator Large Barrel",
    "LinearActuator Ball Small Barrel",
    "LinearActuator Ball Medium Barrel",
    "LinearActuator Ball LargeLong Barrel",
    "LinearActuator Ball Large Barrel"
}

local function Get ()
    local Player = LocalPlayer.Value
    local targetedPart = GetTargetedPart(Player)
    if not targetedPart then
        return
    end
    if targetedPart.AssetName == SensorAssetName then
        if (not Pairs[#Pairs]) or (Pairs[#Pairs].Sensor) then
            Pairs[#Pairs+1] = {
                Sensor = targetedPart.ID,
                Piston = nil
            }
            return
        end
        Pairs[#Pairs].Sensor = targetedPart.ID
        return
    end
    for Filter in PistonFilter do
        if targetedPart.AssetName == Filter then
            if (not Pairs[#Pairs]) or (Pairs[#Pairs].Piston) then
                Pairs[#Pairs+1] = {
                    Sensor = nil,
                    Piston = targetedPart.ID
                }
                return
            end
            Pairs[#Pairs].Piston = targetedPart.ID
            return
        end
    end
end

local ItemWidth = 150
local ItemHeight = 30
local Items = 3
local ItemsI = 0

local W = WindowMan.CreateWindow(0, 0, WindowMan.GenericOnWindowClose)
W.SetAlignment(align_LeftEdge, 0, 0)
W.SetAlignment(align_TopEdge, 0, 0)
local I = W.CreateImage()
function Update()
    I.Texture = Texture.Load( ScriptPath, 'Frame.png' )
    I.SetAlignment( align_LeftEdge, 0, I.Texture.Width )
    I.SetAlignment( align_TopEdge, 0, I.Texture.Height )
end

function Cleanup()
    WindowMan.DestroyWindow(W)
end