local WindowMan = require("WindowMan")
local itemwidth = 160
local itemheight = 30
local itemrows = 5
local itemcols = 2
local itemrow = 0
local itemcol = 0
local window = WindowMan.CreateWindow(itemcols*itemwidth,itemrows*itemheight,WindowMan.GenericOnWindowClose)
itemrow = 0
itemcol = 0
local scriptpathEntry = WindowMan.CreateLabelledInputField(0,0,itemcols*itemwidth,itemheight,"Path to Script:" , window, nil)
itemrow = itemrow+1

local function load_script()

    loadfile(scriptpathEntry.Value)()

end

local function stop_script()
    Scripts.UnloadScript(scriptpathEntry.Value)    
end

local function functionofominousdoomandestruction()
    Scripts.LoadScript(scriptpathEntry.Value)
end
"C:/Users/Skye/AppData/LocalLow/SmashHammer Games/GearBlocks/ScriptMods/BetterEngineTool/main.lua"
local reloadButton = WindowMan.CreateButton(0, itemheight*itemrow, itemcols*itemwidth, itemheight, "Reload Script", window, load_script)
itemrow = itemrow+1
local stopButton = WindowMan.CreateButton(0, itemheight*itemrow, itemcols*itemwidth, itemheight, "Stop Script",window, stop_script)
itemrow = itemrow+1
local buttonofominousdoomandestruction = WindowMan.CreateButton(0, itemheight*itemrow, itemcols*itemwidth, itemheight, "button of ominous doom and destruction",window, functionofominousdoomandestruction)

function Cleanup()
    Windows.DestroyWindow(window)
end