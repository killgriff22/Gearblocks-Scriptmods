local WindowMan = {}
local function CreateWindow(l, w, closefunc)
    local localwindow
    localwindow = Windows.CreateWindow()
    localwindow.SetAlignment(align_RightEdge, 20, l)
    localwindow.SetAlignment(align_TopEdge, 80, w)
    localwindow.OnClose.add(closefunc)
    localwindow.Title = ""
    localwindow.Show(true)
    return localwindow
end
local function CreateLabel(x,y,w,h,txt,localwindow)
    local lbl = localwindow.CreateLabel()
    lbl.SetAlignment(align_RightEdge,  x, w)
    lbl.SetAlignment(align_TopEdge,  y, h)
    lbl.Text = txt
    return lbl
    
end
local function CreateButton(x,y,w,h,txt,localwindow,clickfunc)
    local btn = localwindow.CreateTextButton()
    btn.SetAlignment(align_RightEdge,  x, w)
    btn.SetAlignment(align_TopEdge,  y, h)
    btn.OnClick.add( clickfunc )
    btn.Text = txt
end
local function createSlider(x,y,w,h,localwindow, min, max, default)
    local slider = localwindow.CreateSlider()
    slider.SetAlignment( align_RightEdge, x, w )
    slider.SetAlignment( align_TopEdge, y, h )
    slider.MinValue = min
    slider.MaxValue = max
    slider.Value = default
    return slider
end
local function onWindowClose()
    UnloadScript.Raise(ScriptName) -- Window closed, so unload this script.
end

WindowMan.CreateWindow = CreateWindow
WindowMan.CreateLabel = CreateLabel
WindowMan.CreateButton = CreateButton
WindowMan.CreateSlider = createSlider
WindowMan.onWindowClose = onWindowClose
return WindowMan