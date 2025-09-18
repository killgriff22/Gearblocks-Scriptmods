local WindowMan = {}

WindowMan.DefaultButtonHeight = 30
WindowMan.DefaultButtonWidth = 120
function WindowMan.GenericOnWindowClose()
    UnloadScript.Raise(ScriptName) -- Window closed, so unload this script.
end

function WindowMan.CreateWindow(l, w, closefunc,x,y)
    local localwindow
    l = l or WindowMan.DefaultButtonHeight*4
    w = w or WindowMan.DefaultButtonWidth
    closefunc = closefunc or WindowMan.GenericOnWindowClose
    x = x or 80
    y = y or 20
    localwindow = Windows.CreateWindow()
    localwindow.SetAlignment(align_RightEdge, 20, w)
    localwindow.SetAlignment(align_TopEdge, 80, l)
    localwindow.OnClose.add(closefunc)
    localwindow.Title = ""
    localwindow.Show(true)
    return localwindow
end
function WindowMan.CreateLabel(x,y,w,h,txt,localwindow)
    local lbl = localwindow.CreateLabel()
    lbl.SetAlignment(align_LeftEdge,  x, w)
    lbl.SetAlignment(align_TopEdge,  y, h)
    lbl.Text = txt
    return lbl
    
end
function WindowMan.CreateButton(x,y,w,h,txt,localwindow,clickfunc)
    local btn = localwindow.CreateTextButton()
    btn.SetAlignment(align_LeftEdge,  x, w)
    btn.SetAlignment(align_TopEdge,  y, h)
    btn.OnClick.add( clickfunc )
    btn.Text = txt
    return btn
end
function WindowMan.createSlider(x,y,w,h,localwindow, min, max, default)
    local slider = localwindow.CreateSlider()
    slider.SetAlignment( align_LeftEdge, x, w )
    slider.SetAlignment( align_TopEdge, y, h )
    slider.MinValue = min
    slider.MaxValue = max
    slider.Value = default
    return slider
end
function WindowMan.CreateLabelledToggle(x,y,w,h,txt,localwindow,clickfunc)
    local toggle = localwindow.CreateLabelledToggle()
    toggle.SetAlignment( align_LeftEdge, x, w )
    toggle.SetAlignment( align_TopEdge, y, h )
    toggle.Text = txt
    return toggle
end
function WindowMan.CreateInputField(x,y,w,h,localwindow, default)
    local input = localwindow.CreateInputField()
    input.SetAlignment( align_LeftEdge, x, w )
    input.SetAlignment( align_TopEdge, y, h )
    input.Text = default
    return input
end
function WindowMan.CreateLabelledInputField(x,y,w,h,txt,localwindow, default)
    local input = localwindow.CreateLabelledInputField()
    input.SetAlignment( align_LeftEdge, x, w )
    input.SetAlignment( align_TopEdge, y, h )
    input.Text = txt
    input.Value = default
    return input
end
function WindowMan.CreateLabelledDropdown(x,y,w,h,txt,localwindow, values)
    local dropdown = localwindow.CreateLabelledDropdown()
    dropdown.SetAlignment( align_LeftEdge, x, w )
    dropdown.SetAlignment( align_TopEdge, y, h )
    dropdown.Text = txt
    for i, value in pairs(values) do
        dropdown.AddOption(value)
    end
    return dropdown
end



WindowMan.DestroyWindow = Windows.DestroyWindow
return WindowMan

