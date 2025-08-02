local function CreateWindow(x, y, l, w, closefunc)
    local localwindow
    localwindow = Windows.CreateWindow()
    localwindow.SetAlignment(align_RightEdge, x, l)
    localwindow.SetAlignment(align_TopEdge, y, w)
    localwindow.OnClose.add(closefunc)
    localwindow.Title = ""
    localwindow.Show(true)
    return localwindow
end
local function CreateLabel(x,y,w,h,txt,localwindow)
    local lbl = localwindow.CreateLabel()
    lbl.SetAlignment(align_LeftEdge,  x, w)
    lbl.SetAlignment(align_TopEdge,  y, h)
    lbl.Text = txt
    return lbl
    
end
local function CreateButton(x,y,w,h,txt,localwindow,clickfunc)
    local btn = localwindow.CreateTextButton()
    btn.SetAlignment(align_LeftEdge,  x, w)
    btn.SetAlignment(align_TopEdge,  y, h)
    btn.OnClick.add( clickfunc )
    btn.Text = txt
end
local function onWindowClose()
    UnloadScript.Raise(ScriptName)
end
local buttonwidth  = 120
local buttonheight = 30
local running = false
local RadarPartName = 'Connector 1-Hole Axle Resizable'
local parts = 0
local localplayer = LocalPlayer.value
local window = CreateWindow(0,0, buttonwidth, buttonheight*5, onWindowClose)
local partlabel = CreateLabel(0,0,buttonwidth,buttonheight,"Parts: 0",window)
local startbutton = CreateButton(0,buttonheight,buttonwidth,buttonheight,"Start",window,function()
    running = true
end)
local endutton = CreateButton(0,buttonheight*2,buttonwidth,buttonheight,"End",window,function()
    running = false
end)
local deletebutton = CreateButton(0,buttonheight*3,buttonwidth,buttonheight,"DeleteParts",window,function()
    parts = 0
    local ids = {}
    local n = 0
    for part in Parts.Instances do
        ids[n] = part.ID
    end
    for id in ids do
        PopConstructions.DestroyPart (id)
    end
end)

function Update()
    if running then
        parts = parts + 1
        partlabel.Text = "Parts: " .. parts
        local position = Vector3.__new (
            localplayer.Aim.Position.X + 3 * math.sin(math.pi * localplayer.Aim.Orientation.EulerAngles.Y / 180) * math.abs(math.cos(math.pi * localplayer.Aim.Orientation.EulerAngles.X / 180)),
            localplayer.Aim.Position.Y + 3 * math.sin(math.pi * (-localplayer.Aim.Orientation.EulerAngles.X) / 180),
            localplayer.Aim.Position.Z + 3 * math.cos(math.pi * localplayer.Aim.Orientation.EulerAngles.Y / 180) * math.abs(math.cos(math.pi * localplayer.Aim.Orientation.EulerAngles.X / 180))
        )
        local rotation = Quaternion.Euler( 
            0, 
            0, 
            0
        )
        PopConstructions.SpawnPart( RadarPartName, position, rotation )
    end
end

function Cleanup()
    Windows.DestroyWindow(window)
end