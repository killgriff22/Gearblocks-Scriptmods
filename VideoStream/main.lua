
local WindowMan = require("WindowMan")

local win = WindowMan.CreateWindow(480, 640, WindowMan.GenericOnWindowClose)

local fishimage = win.CreateImage()
fishimage.SetAlignment( align_LeftEdge, 0, win.ContentRect.Width )
fishimage.SetAlignment( align_TopEdge, 0, win.ContentRect.Height )
function Update()
    fishimage.Texture = Texture.Load( ScriptPath, 'Frame.jpg' )
end

function Cleanup()
    WindowMan.DestroyWindow(win)
end