local WindowMan = loadfile("C:/Users/Skye/AppData/LocalLow/SmashHammer Games/GearBlocks/ScriptMods/StandardLib/WindowMan.lua")()
local w = WindowMan.CreateWindow(30, 120, WindowMan.GenericOnWindowClose)
local function closebutton()
    Windows.DestroyWindow(w)
    UnloadScript.Raise(ScriptName)
end

local button = WindowMan.CreateButton(0, 0, 120, 30, "Close", w, closebutton)