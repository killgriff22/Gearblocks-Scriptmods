local WindowMan = require("WindowMan")

local MainWin = WindowMan.CreateWindow()

local y_mult = 0
local msToKmh = 60 * 60 / 1000  

WindowMan.CreateLabel(0, y_mult*WindowMan.DefaultButtonHeight, WindowMan.DefaultButtonWidth, WindowMan.DefaultButtonHeight, "Explosive Parts", MainWin)
y_mult= y_mult+1
local partlabel = WindowMan.CreateLabel(0, y_mult*WindowMan.DefaultButtonHeight, WindowMan.DefaultButtonWidth, WindowMan.DefaultButtonHeight, "Part:", MainWin)
y_mult= y_mult+1
local velLabel = WindowMan.CreateLabel(0, y_mult*WindowMan.DefaultButtonHeight, WindowMan.DefaultButtonWidth, WindowMan.DefaultButtonHeight, "Velocity:", MainWin)
y_mult= y_mult+1

local PartsToExplode = {}

local function MakePart(part)
    local obj = {}
    obj.part = part
    obj.pos = part.Position
    obj.lastpos = part.Position
    obj.Counter = 0
    obj.Armed = false
    obj.threshold = 1
    obj.Amplitude = 1
    obj.Radius = 1
    return obj
end
--for diagnol parts
local function point2point_Angle3D(A, B)
    local v = A - B
    local z = v / bar(v)
    local y = Vector3.__new(0, 1, 0)
    local x = Vector3.Cross(y, z) / bar(Vector3.Cross(y, z))
    y = Vector3.Cross(z, x)

    local pitch = radsToDegs(math.asin(-x.Z))
    local yaw = radsToDegs(math.atan(x.Y / x.X))
    local roll = radsToDegs(math.atan(y.Z / z.Z))
    return -(Vector3.__new(roll, pitch, yaw))
end

--for straight parts
local function point2point_Angle3D_2(A, B)
    local v = A - B
    -- rotation matrix
    local z = v / bar(v)
    local y = Vector3.__new(0, 1, 0)
    local x = Vector3.Cross(y, z) / bar(Vector3.Cross(y, z))
    y = Vector3.Cross(z, x)
    local tr = x.X + y.Y + z.Z
    local S
    local qw
    local qx
    local qy
    local qz
    if (tr > 0) then
        S = math.sqrt(tr + 1.0) * 2
        qw = 0.25 * S
        qx = (z.Y - y.Z) / S
        qy = (x.Z - z.X) / S
        qz = (y.X - x.Y) / S
    elseif ((x.X > y.Y) and (x.X > z.Z)) then
        S = math.sqrt(1.0 + x.X - y.Y - z.Z) * 2
        qw = (z.Y - y.Z) / S
        qx = 0.25 * S
        qy = (x.Y + y.X) / S
        qz = (x.Z + z.X) / S
    elseif (y.Y > z.Z) then
        S = math.sqrt(1.0 + y.Y - x.X - z.Z) * 2
        qw = (x.Z - z.X) / S
        qx = (x.Y + y.X) / S
        qy = 0.25 * S
        qz = (y.Z + z.Y) / S
    else
        S = math.sqrt(1.0 + z.Z - x.X - y.Y) * 2
        qw = (y.X - x.Y) / S
        qx = (x.Z + z.X) / S
        qy = (y.Z + z.Y) / S
        qz = 0.25 * S
    end
    print(qx, qy, qz, qw)
    return Quaternion.__new(qx, qy, qz, qw)
end


local function UpdatePart(obj)
    obj.pos = obj.part.Position
    if obj.Counter < 60 then
        obj.Counter = obj.Counter + 1
    else
        local poslen = math.sqrt(obj.pos.X^2+obj.pos.Z^2+obj.pos.Y^2)
        local lastposlen = math.sqrt(obj.lastpos.X^2+obj.lastpos.Z^2+obj.lastpos.Y^2)
        local delta = poslen - lastposlen
        obj.Velocity = math.abs((delta / 60) * msToKmh * 10000)
        obj.lastpos = obj.pos
    end
    return obj
end
function GetTargetedPart(playervalue)
    local targetedPart
    if playervalue and playervalue.Targeter then
        targetedPart = playervalue.Targeter.TargetedPart
    else
        return nil
    end
    return targetedPart
end

function Update ()
    local Player = LocalPlayer.Value
    local targetedPart = GetTargetedPart(Player)
    if Input.GetKeyDown("tab") then
        if targetedPart then 
            PartsToExplode[#PartsToExplode+1] = MakePart(targetedPart)
            print(targetedPart.AssetName)
        end
    end
    for obj in PartsToExplode do
        UpdatePart(obj)
        if Input.GetKey("p") then
            local ParentConstruction = obj.part.ParentConstruction
            --ConstructionOps.SetConstructionFrozen (ParentConstruction.ID, true)
            for x_rot in {0, 45, 90, 135, 180, 225, 270, 315} do
                for y_rot in {0, 45, 90, 135, 180, 225, 270, 315} do
                    for z_rot in {0, 45, 90, 135, 180, 225, 270, 315} do
                        if Physics.SphereCast( obj.pos, 10, Vector3.__new(x_rot,y_rot,z_rot), obj.Radius ) then
                            local distance, position, normal, colliderInstanceID = Physics.QueryCastHit( 0 )
                            print("Hit, " .. distance)
                            print(colliderInstanceID)
                            local part = PartColliderRegistry.GetPart( colliderInstanceID )
                            if part then
                                print(part.AssetName)
                                AttachmentOps.DeleteAllAttachments( part )
                                part.ApplyForce(normal*obj.Amplitude, position, forceMode_Impulse)
                            end
                        end
                    end
                end
            end
        end
    end
    if PartsToExplode[#PartsToExplode] then
        partlabel.Text = PartsToExplode[#PartsToExplode].part.AssetName
        velLabel.Text = PartsToExplode[#PartsToExplode].Velocity
    end
end

function Cleanup()
	WindowMan.DestroyWindow(MainWin)
end