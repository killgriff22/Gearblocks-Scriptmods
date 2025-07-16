local pointmath = require("pointmath")
local common = require("common")
local WindowMan = require("WindowMan")
local playerlib = require("Playerlib")
local labelheight = 30
local labelwidth = 200
local labels = 12
local row = 0
local CopyPart
local ParttoRevolve

function GetInput(str)
  return Input.GetKey(str)
end
function SpawnPart(AssetName, position, rotation, size)
    local parts = {  }
    local p = nil
    for part in Parts.Instances do
        parts[part.ID] = part
    end
    PopConstructions.SpawnPart( AssetName, position, rotation )
    for part in Parts.Instances do
        if not parts[part.ID] then
            p = part
        end
    end
    if p.IsResizable then
        p.SetSize( size )
    end
    return p
end
local function weldparts( parta, partb)
    local Player = Playerlib.GetPlayer().Value
    if parta == partb then
        MessagePopupShow.Raise( 'Part A equals Part B' )
        return false
    end
    if parta == nil then
        MessagePopupShow.Raise( 'No Part A' )
        return false
    end
    if partb == nil then
        MessagePopupShow.Raise( 'No Part B' )
        return false
    end
    if parta.Attachments.IsAttached( partb ) or partb.Attachments.IsAttached( parta ) then
		MessagePopupShow.Raise( 'Parts already attached!' )
        return false
	elseif parta.ParentConstruction.IsFrozen ~= partb.ParentConstruction.IsFrozen then
		MessagePopupShow.Raise( 'Parts must be either both frozen or both unfrozen!' )
        return false
	else
		local attachType = attachType_Fixed
		local searchPosition = Player.Targeter.TargetedPosition * 0.5
		local searchNormal = Vector3.Normalize( partb.Position - parta.Position )
		AttachmentOps.CreateAttachment( attachType, parta, partb, searchPosition, searchNormal )
        return true
	end
end

local Window = WindowMan.CreateWindow(labelheight*labels, labelwidth, WindowMan.GenericOnWindowClose)
local RadiusInput = WindowMan.CreateLabelledInputField(0, row*labelheight, labelwidth-50, labelheight, "Radius:", Window, 0.02)
row = row+1
local CopyPartLabel = WindowMan.CreateLabel(0, row*labelheight, labelwidth, labelheight, "Part to Copy:", Window)
row = row+1
WindowMan.CreateLabel(0, row*labelheight, labelwidth, labelheight, "Part Dimensions | Part Orientation", Window)
row = row+1
local SizeX = WindowMan.CreateInputField(0, row*labelheight, labelwidth/2-10, labelheight, Window, 1)
local RotX = WindowMan.CreateInputField(labelwidth/2+10, row*labelheight, labelwidth/2-10, labelheight, Window, 0)
WindowMan.CreateLabel(labelwidth/2-10+6, row*labelheight, labelwidth-(labelwidth/2-10), labelheight, "X", Window)
row = row+1
local SizeY = WindowMan.CreateInputField(0, row*labelheight, labelwidth/2-10, labelheight, Window, 1)
local RotY = WindowMan.CreateInputField(labelwidth/2+10, row*labelheight, labelwidth/2-10, labelheight, Window, 0)
WindowMan.CreateLabel(labelwidth/2-10+6, row*labelheight, labelwidth-(labelwidth/2-10), labelheight, "Y", Window)
row = row+1
local SizeZ = WindowMan.CreateInputField(0, row*labelheight, labelwidth/2-10, labelheight, Window, 1)
local RotZ = WindowMan.CreateInputField(labelwidth/2+10, row*labelheight, labelwidth/2-10, labelheight, Window, 0)
WindowMan.CreateLabel(labelwidth/2-10+6, row*labelheight, labelwidth-(labelwidth/2-10), labelheight, "Z", Window)
row = row+1
local NofParts = WindowMan.CreateLabelledInputField(0, row*labelheight, labelwidth, labelheight, "Parts:", Window, 6)
row = row+1
local NofSides = WindowMan.CreateLabelledInputField(0, row*labelheight, labelwidth, labelheight, "Sides:", Window, 6)
row = row+1
local WeldPartsToggle = WindowMan.CreateLabelledToggle(0, row*labelheight, labelwidth, labelheight, "Weld Parts", Window)
WeldPartsToggle.Value = false
row = row+1
local WeldtoMasterToggle = WindowMan.CreateLabelledToggle(0, row*labelheight, labelwidth, labelheight, "Weld to Master", Window)
WeldtoMasterToggle.Value = false

local function SetRadius()
    if not ParttoRevolve then
        MessagePopupShow.Raise( 'No Part to Revolve!' )
        return
    end
    local p = playerlib.GetPlayer().Value
    local targetpart = playerlib.GetTargetedPart(p)
    if not targetpart then
        MessagePopupShow.Raise( 'No targeted Part!' )
        return
    end
    local r = targetpart.Position.Y - ParttoRevolve.Position.Y
    if r < 0 then
        r = ParttoRevolve.Position.Y - targetpart.Position.Y
    end
    RadiusInput.Value = r
end


function PlayerAimPosition()
    local player = Playerlib.GetPlayer().Value
    return Vector3.__new (
		player.Aim.Position.X + 3 * math.sin(math.pi * player.Aim.Orientation.EulerAngles.Y / 180) * math.abs(math.cos(math.pi * player.Aim.Orientation.EulerAngles.X / 180)),
		player.Aim.Position.Y + 3 * math.sin(math.pi * (-player.Aim.Orientation.EulerAngles.X) / 180),
		player.Aim.Position.Z + 3 * math.cos(math.pi * player.Aim.Orientation.EulerAngles.Y / 180) * math.abs(math.cos(math.pi * player.Aim.Orientation.EulerAngles.X / 180))
	)
end

local ZeroRotation = Quaternion.__new(0,0,0,0)
local ZeroVector3 = Vector3.__new(0,0,0)
local ZeroVector2 = Vector2.__new(0,0)
local function revolve()
    if not CopyPart then
        MessagePopupShow.Raise( 'No Copy Part!' )
    end
    if not ParttoRevolve then
        ParttoRevolve = SpawnPart("Axle Resizable", PlayerAimPosition(), ZeroRotation, ZeroVector3)
    end
    if not CopyPart then
        return
    end
    local sideI = 0
    local partI = 0
    local incriment = 360/tonumber(NofSides.Value)
    local stoprot = incriment*tonumber(NofParts.Value) % 360
    local lastpart = nil
    local _refpoint = ParttoRevolve.Position
    local refpoint = ParttoRevolve.TransformPoint(ParttoRevolve.Position)
    while sideI < tonumber(NofSides.Value) and not (partI == tonumber(NofParts.Value)) do
        local pos = Vector3.__new(0, tonumber(RadiusInput.Value), 0)
        pos = pointmath.rotatepoint(pos, pointmath.degsToRads(sideI*incriment), 0)
        local facerot = pointmath.angle2vect2(pointmath.degsToRads(sideI*incriment))
        facerot = Vector3.__new(facerot.X, facerot.Y, 0)
        pos = ParttoRevolve.InverseTransformPoint(pos + refpoint)
        local forward = Vector3.__new(tonumber(RotX.Value), tonumber(RotY.Value), tonumber(RotZ.Value))
        local rot = Quaternion.Euler(forward+facerot)
        local size = Vector3.__new(tonumber(SizeX.Value),tonumber(SizeY.Value),tonumber(SizeZ.Value))
        local part = SpawnPart(CopyPart.AssetName, pos, rot, size)
        partI = partI + 1
        sideI = sideI + 1
        if lastpart and WeldPartsToggle.Value then
            weldparts(lastpart, part)
        end
        if WeldtoMasterToggle.Value then
            weldparts(part, ParttoRevolve)
        end
    end
end

local RevolveButton = WindowMan.CreateButton(labelwidth-80, row*labelheight, 80, labelheight, "Revolve!", Window, revolve)
row = 0
local SetRadiusButton = WindowMan.CreateButton(labelwidth-50, row*labelheight, 50, labelheight, "Set", Window, SetRadius)
function Update()
    local p = playerlib.GetPlayer().Value
    if not p then
        return
    end
    
    local part = playerlib.GetTargetedPart(p)
    if (GetInput("left ctrl") or GetInput("right ctrl")) and GetInput("mouse 3") then
        if part then
            CopyPart = part
            if part.IsResizable then
                SizeX.Value = part.CurrentUnitSize.X
                SizeY.Value = part.CurrentUnitSize.Y
                SizeZ.Value = part.CurrentUnitSize.Z
            end
            local EulerPartRot = part.forward
            RotX.Value = pointmath.radsToDegs(EulerPartRot.X)
            RotY.Value = pointmath.radsToDegs(EulerPartRot.Y)
            RotZ.Value = pointmath.radsToDegs(EulerPartRot.Z)
        else
            CopyPart = nil
        end
    end
    if CopyPart then
        CopyPartLabel.Text = "Part to Copy: " .. CopyPart.AssetName
    else
        CopyPartLabel.Text = "Part to Copy: (Ctrl + Mouse3)"
    end
end

function Cleanup()
    WindowMan.DestroyWindow(Window)
end

