local WindowMan = require("WindowMan")
local Playerlib = require("Playerlib")
local pointmath = require("pointmath")
-- Copyright (C) 2017 - 2025 SmashHammer Games Inc. - All Rights Reserved.

local addShapes

local win = WindowMan.CreateWindow(330, 300, WindowMan.GenericOnWindowClose)
win.Title = 'UI shapes test'

local shapes = win.CreateShapes()
shapes.SetAlignment( align_HorizEdges, 5, 5 )
shapes.SetAlignment( align_VertEdges, 5, 5 )
local shapesRect = shapes.PixelRect

local lines = {}
local lines_ref = {}
function tablelength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
  end
function append(t, v)
    t[tablelength(t)+1] = v
end
function remove(t, v)
    for i, value in ipairs(t) do
        if value == v then
            table.remove(t, i)
            return
        end
    end
end
function pop(t, i)
    local value = t[i]
    table.remove(t, i)
    return value 
end
local function addLine(startpos, endpos)
    local i = #lines+1
    lines[i] = {startpos * shapesRect.Size + shapesRect.Position,
                       endpos * shapesRect.Size + shapesRect.Position   }
    lines_ref[i] = {startpos * shapesRect.Size + shapesRect.Position,
                       endpos * shapesRect.Size + shapesRect.Position   }
    return i
end
local function DrawLines()
    shapes.Clear()
    for i, line in ipairs(lines) do
        shapes.AddLine( line, #line )
    end
end
-- Quarter off the window 
addLine(Vector2.__new(.5,1),
        Vector2.__new(.5,0) )
addLine(Vector2.__new(1,.5),
        Vector2.__new(0,.5) )

-- Wheel Alignment Visuaalizer
local FL_Camber_line = addLine( Vector2.__new(.24,.65), Vector2.__new(.26,.65) ) 
local FR_Camber_line = addLine( Vector2.__new(.74,.65), Vector2.__new(.76,.65) ) 
local RL_Camber_line = addLine( Vector2.__new(.24,.15), Vector2.__new(.26,.15) ) 
local RR_Camber_line = addLine( Vector2.__new(.74,.15), Vector2.__new(.76,.15) ) 
local FL_Toe_line = addLine( Vector2.__new(.25,.65), Vector2.__new(.25,.95) ) 
local FR_Toe_line = addLine( Vector2.__new(.75,.65), Vector2.__new(.75,.95) )
local RL_Toe_line = addLine( Vector2.__new(.25,.15),Vector2.__new(.25,.45) ) 
local RR_Toe_line = addLine( Vector2.__new(.75,.15), Vector2.__new(.75,.45) )

local Zero = Vector3.__new(0,0,0)

local Wheels = {
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
    "Wheel Motorcycle 1x8",
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
local Axles = {
    "Connector UJYoke Axle Resizable",
    "Connector Plate Axle Resizable",
    "Connector Plate2 Axle Resizable",
    "Connector PerpSocket Axle Resizable",
    "Connector ParaSocket Axle Resizable",
    "Connector KnuckleJointOuter180 Axle Resizable",
    "Connector KnuckleJointOuter90 Axle Resizable",
    "Connector KnuckleJointInner Axle Resizable",
    "Connector CVJointOuter Axle Resizable",
    "Connector CVJointInner Axle Resizable",
    "Connector Ball Axle Resizable",
    "Connector 2-Hole Axle Resizable",
    "Connector 1-Hole Axle Resizable",
    "Axle Resizable",
    "Engine Crank Rear x2 Axle Resizable",
    "Engine Crank Rear x1 Axle Resizable",
    "Engine Crank Nose Axle Resizable"
}


local function GetRR_Wheel()
    local Player = Playerlib.GetPlayer().Value
    local TargetedPart = Playerlib.GetTargetedPart(Player)
    if not TargetedPart then
        return
    end
    if not TargetedPart.
    for behavior in TargetedPart.Behaviours do
        if behavior.Name == "Wheel" then
            local parts = TargetedPart.Attachments.GetAttachedParts()
            for part in parts do
                for filter in Axles do
                    if part.AssetName == filter then
                        RR_Wheel = TargetedPart
                        return
                    end
                end
            end
        end
    end
end
local function GetDistance(A, B)
    local u = math.sqrt((A.X - B.X) ^ 2 + (A.Y - B.Y) ^ 2 + (A.Z - B.Z) ^ 2)
    return u
end
local function PointDistance(A)
    return math.sqrt( (A.X^2) + (A.Y^2) + (A.Z^2) )
end



local FL_Wheel_button = WindowMan.CreateButton(0, 120, 40, 25, "Get", win, GetFL_Wheel)
local FR_Wheel_button = WindowMan.CreateButton(260, 120, 40, 25, "Get", win, GetFR_Wheel)
local RL_Wheel_button = WindowMan.CreateButton(0, 275, 40, 25, "Get", win, GetRL_Wheel)
local RR_Wheel_button = WindowMan.CreateButton(260, 275, 40, 25, "Get", win, GetRR_Wheel)
local maxtoe = Zero



local function Update_Wheel(part, toe_line, camber_line)
    if part then
        local Player = Playerlib.GetPlayer().Value
        local Forward = Player.Orientation.EulerAngles
        local wheelToe = part.Orientation.EulerAngles.Y

        local Toe = Forward.Y - wheelToe
        if Toe > 90 then
            Toe = Toe + 180
        elseif Toe < -90 then
            Toe = Toe + 180
        end
        lines[toe_line][2] = lines_ref[toe_line][2]
        local angle = pointmath.rotatepoint(lines[toe_line][2]-lines[toe_line][1], pointmath.degsToRads(Toe))
        
        angle = angle + lines[toe_line][1]
        lines[toe_line][2] = angle
        local wheelCamber = part.Orientation.EulerAngles.X
        local Camber = Forward.X - wheelCamber
        Camber = Camber + 180
        if Camber > 90 then
            Camber = Camber + 180
        elseif Camber < -90 then
            Camber = Camber + 180
        end
        
        --print(Camber)
    end
end


local function Update_Wheels()
    if FL_Wheel then
        Update_Wheel(FL_Wheel, FL_Toe_line, FL_Camber_line)
    end
    if FR_Wheel then
        Update_Wheel(FR_Wheel, FR_Toe_line, FR_Camber_line)
    end
    if RL_Wheel then
        Update_Wheel(RL_Wheel, RL_Toe_line, RL_Camber_line)
    end
    if RR_Wheel then
        Update_Wheel(RR_Wheel, RR_Toe_line, RR_Camber_line)
    end
end


----- Entry functions -----

function Update()
    DrawLines()
    FL_Wheel_button.Text = string.format("<color=%s>Get</color>", FL_Wheel and '#66ff66' or '#ff6666')
    FR_Wheel_button.Text = string.format("<color=%s>Get</color>", FR_Wheel and '#66ff66' or '#ff6666')
    RL_Wheel_button.Text = string.format("<color=%s>Get</color>", RL_Wheel and '#66ff66' or '#ff6666')
    RR_Wheel_button.Text = string.format("<color=%s>Get</color>", RR_Wheel and '#66ff66' or '#ff6666')
    Update_Wheels()
end

function Cleanup()
	WindowMan.DestroyWindow(win)
end
