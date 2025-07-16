Standardliblocation = "C:/Users/Skye/AppData/LocalLow/SmashHammer Games/GearBlocks/ScriptMods/StandardLib/"

local WindowMan = loadfile(Standardliblocation .. "WindowMan.lua")()
local Playerlib = loadfile(Standardliblocation.."Playerlib.lua")()
local Standrdlib = loadfile(Standardliblocation.."Standardlib.lua")()
local Partlib = loadfile(Standardliblocation.."Partlib.lua")()
local Keylib = loadfile(Standardliblocation.."Keylib.lua")()


local keybinds = {
    Spawn = {Keys = {"left shift","g"}, pressed = false},
    --Delete = {Keys = {"left shift","g"}, pressed = false},
    --Toggle = {Keys = {"left shift","h"}, pressed = false, toggled = false},
}
local buttonwidth = 300
local buttonheight = 30
local button_index = 0
local spawnmenu = WindowMan.CreateWindow(buttonwidth, buttonheight*7, WindowMan.GenericOnWindowClose)
spawnmenu.Title = "Quick Spawner"

local categorydropdown = WindowMan.CreateLabelledDropdown(0, 0, buttonwidth, buttonheight, "Category:",spawnmenu, Partlib.Category_heap)
button_index = button_index + 1
local partdropdown = WindowMan.CreateLabelledDropdown(0, button_index * buttonheight, buttonwidth, buttonheight, "Part:",spawnmenu, Partlib.ICategories[categorydropdown.Value+1])
button_index = button_index + 1
local KeybindToggleStatus = WindowMan.CreateLabel(0, button_index * buttonheight, buttonwidth, buttonheight, "Keybinds: Off", spawnmenu)
button_index = button_index + 1
local Keys_Pressed_Label = WindowMan.CreateLabel(0, button_index * buttonheight, buttonwidth, buttonheight, "Keys Pressed: ", spawnmenu)
local Keys_Pressed = WindowMan.CreateLabel(120, button_index * buttonheight, buttonwidth, buttonheight, "", spawnmenu)
button_index = button_index + 1




function Update()
    print(categorydropdown.Value)
    local pressedkeys = {}
    for i, key in ipairs(Keylib.Keys) do
        if Standrdlib.GetInput(key) then
            table.insert(pressedkeys, key)
        end
    end
    Keys_Pressed.Text = table.concat(pressedkeys, ", ")
    if keybinds.Toggle.toggled then
        KeybindToggleStatus.Text = "Keybinds: On"
    else
        KeybindToggleStatus.Text = "Keybinds: Off"
    end
    local localplayer = Playerlib.GetPlayer().Value
    local toggle_pressed = Standrdlib.GetInput(keybinds.Toggle.Keys[1]) and Standrdlib.GetInput(keybinds.Toggle.Keys[2])
    if toggle_pressed and not keybinds.Toggle.pressed then
        keybinds.Toggle.pressed = true
        keybinds.Toggle.toggled = not keybinds.Toggle.toggled
    elseif not toggle_pressed then
        keybinds.Toggle.pressed = false
    end
    if keybinds.Toggle.toggled then
        local Spawn_pressed = Standrdlib.GetInput(keybinds.Spawn.Keys[1]) and Standrdlib.GetInput(keybinds.Spawn.Keys[2])
        if Spawn_pressed and not keybinds.Spawn.pressed then
            keybinds.Spawn.pressed = true
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
            local part = Partlib.SpawnPart(Partlib.ICategories[categorydropdown.Value+1][partdropdown.Value+1], position, rotation, localplayer )
        elseif not Spawn_pressed then
            keybinds.Spawn.pressed = false
        end
    end
end

function Cleanup()
    WindowMan.DestroyWindow(spawnmenu)
end