
local WindowMan = require("WindowMan") --static module loading

local win = WindowMan.CreateWindow(480, 640, WindowMan.GenericOnWindowClose)

local fishimage = win.CreateImage()
fishimage.SetAlignment( align_LeftEdge, 0, win.ContentRect.Width )
fishimage.SetAlignment( align_TopEdge, 0, win.ContentRect.Height )
function Update() 
    fishimage.Texture = Texture.Load( ScriptPath, 'Frame.jpg' )
    fishimage.SetAlignment( align_LeftEdge, 0, win.ContentRect.Width )
    fishimage.SetAlignment( align_TopEdge, 0, win.ContentRect.Height )
end

function Cleanup()
    WindowMan.DestroyWindow(win)
end