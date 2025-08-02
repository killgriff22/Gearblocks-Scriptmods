local WindowMan = require("WindowMan")
local springname = "Torsion SpringDamper Block"
local springBehaviour = "Torsion Spring"
local springtweakable = "Spring Rate"
local dampingtweakable = "Damping"
local angletweakable = "Trim Angle"
local clamptweakable = "Clamp Angle"
local platename = "Plate Resizable"
local platesize = Vector3.__new(1,0,1)
local materialA = "(Carbon Fibre)"
local materialB = "(Teflon)"
local screenheight = 40
local screenwidth = 40
local screen = {}
local plates = {}
local spawmScreenButton
local function weldpartsRot( parta, partb)
    local Player = LocalPlayer.Value
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
		local attachType = attachType_RotaryBearing
		local searchPosition = Player.Targeter.TargetedPosition * 0.5
		local searchNormal = Vector3.Normalize( partb.Position - parta.Position )
		AttachmentOps.CreateAttachment( attachType, parta, partb, searchPosition, searchNormal )
        return true
	end
end
local function weldpartsStatic( parta, partb)
    local Player = LocalPlayer.Value
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
    if p then
        if size then
            p.SetSize( size )
        end
        return p
    end
end

local function SpawnScreen(L, W)
    local Player = LocalPlayer.Value
    local Pos = Player.Aim.Position
    local Aim = Quaternion.__new(0,0,0,0)
    Aim.EulerAngles = Vector3.__new(0,0,90)
    local n = 1
    local lastpart = nil
    local RealX = Vector3.__new(0,0,0)
    local AddX = Vector3.__new(-0.1,0,0)
    local halfX = Vector3.__new(-0.05,0,0)
    local AddZ = Vector3.__new(0,0,-0.1)
    local AddY = Vector3.__new(0,-0.1,0)
    local platerot = Quaternion.__new(0,0,0,0)
    platerot.EulerAngles = Vector3.__new(90,0,0)
    if screen[1] then
        spawmScreenButton.Text = ""
        for y=1, L do
            for x=1, W do
                print(n)
                local pos = screen[y][x].Position+(-AddZ)+halfX
                local rot = platerot
                local plate = SpawnPart(platename, pos, rot, platesize)
                ConstructionOps.SetPartCollidable( plate.ID, false )
                weldpartsStatic(plates[y][x], plate)
                n=n+1
            end
        end
        return
    end
    for y=1, L do
        local row = {}
        local platesrow = {}
        RealX = Vector3.__new(0,RealX.Y,0)
        for x=1, W do
            RealX = RealX + AddX
            print(n)
            n=n+1
            row[x] = SpawnPart(springname, Pos+RealX, Aim)
            local plate = SpawnPart(platename, Pos+RealX+AddZ+halfX, platerot, platesize)
            weldpartsRot(row[x], plate)
            platesrow[x] = plate
            row[x].Behaviours[1].GetTweakable(dampingtweakable).Value = 0
            row[x].Behaviours[1].GetTweakable(springtweakable).Value = 50
            row[x].Behaviours[1].GetTweakable(clamptweakable).Value = false
            ConstructionOps.SetPartCollidable( row[x].ID, false )
            ConstructionOps.SetPartCollidable( plate.ID, false )
            if lastpart then
                weldpartsStatic(row[x], lastpart)
                lastpart = row[x]
            else
                lastpart = row[x]
            end
        end
        RealX = RealX+AddY
        screen[y] = row
        plates[y] = platesrow
    end
    MessagePopupShow.Raise( 'Please Switch to teflon and finish the spawning.' )
    spawmScreenButton.Text = "Finish Spawning"
end

local function SpawnScreenIntermediate ()
    SpawnScreen(screenheight, screenwidth)
end

local buttonwidth = 120
local buttonheight = 30
local buttons = 5
local Idx = 0
local WindowWidth = buttonwidth
local WindowHeight = buttonheight + buttons + 1 

local w = WindowMan.CreateWindow(WindowHeight, WindowWidth, WindowMan.GenericOnWindowClose)
w.Title = "Video Player"
spawmScreenButton = WindowMan.CreateButton(0,Idx*buttonheight, buttonwidth, buttonheight, "Spawn Screen", w, SpawnScreenIntermediate)

function Update()
    local canvas = loadfile("canvas.lua")()
    if not screen[1] then
        return
    end
    if not canvas then
        return
    end
    for y=1, screenheight do
        for x=1, screenwidth do
            if not (screen[y][x].Behaviours[1].GetTweakable(angletweakable).Value == canvas[y][x]) then
                screen[y][x].Behaviours[1].GetTweakable(angletweakable).Value = canvas[y][x]
            end
        end
    end
end