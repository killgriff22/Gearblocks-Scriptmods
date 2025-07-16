local WindowMan = require("WindowMan")
local Playerlib = require("Playerlib")
local utils = require("utils")

local ItemHeight = 25
local ItemWidth = 180
local Items = 7
local Rowidx = 0
local DrawWindow
local Window = {
    open = false,
    open_CollisionWin = false,
    open_WeldingWin = false,
    open_PickerWin = false,
    open_SettingsWin = false,
}
Window.MainWindowObjects = {}

function Window.CloseMainWindow()
    WindowMan.GenericOnWindowClose()
end

local function _OpenCollisionWin()
    Window.open_CollisionWin = true
end
local function _OpenWeldingWin()
    Window.open_WeldingWin = true
end
local function _OpenPickerWin()
    Window.open_PickerWin = true
end
local function _OpenSettingsWin()
    Window.open_SettingsWin = true
end

Window.DrawWindow = WindowMan.CreateWindow(ItemHeight*Items+5, ItemWidth, Window.CloseMainWindow)



function Window.OpenMainWindow()
    if Window.DrawWindow then
        Window.DrawWindow.Show(true)
    end
    Window.DrawWindow.Title = 'Builder Tool'
    Window.MainWindowObjects.PartLabel = WindowMan.CreateLabel(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, 'Part: None', Window.DrawWindow)
    Rowidx = Rowidx + 1
    Window.MainWindowObjects.PartCollisionLabel = WindowMan.CreateLabel(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, 'Part Collision: None', Window.DrawWindow)
    Rowidx = Rowidx + 1
    Window.MainWindowObjects.OpenCollisionWin = WindowMan.CreateButton(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, 'Open Collision Win', Window.DrawWindow, _OpenCollisionWin)
    Rowidx = Rowidx + 1
    Window.MainWindowObjects.OpenWeldingWin = WindowMan.CreateButton(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, 'Open Welding Win', Window.DrawWindow, _OpenWeldingWin)
    Rowidx = Rowidx + 1
    Window.MainWindowObjects.OpenPickerWin = WindowMan.CreateButton(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, 'Open BuilderToolExt Win', Window.DrawWindow, _OpenPickerWin)
    Rowidx = Rowidx + 1
    Window.MainWindowObjects.OpenSettingsWin = WindowMan.CreateButton(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, 'Open Settings Win', Window.DrawWindow, _OpenSettingsWin)
    Rowidx = Rowidx + 1
end

function Window.UpdateMainWindow()
    if Window.open_CollisionWin then
        Window.open_CollisionWin = false
    end
    if Window.open_WeldingWin then
        Window.open_WeldingWin = false
    end
    if Window.open_PickerWin then
        Window.open_PickerWin = false
    end
    if Window.open_SettingsWin then
        Window.open_SettingsWin = false
    end
    local player = Playerlib.GetPlayer().Value
    local TargetedPart = Playerlib.GetTargetedPart(player)
    if not TargetedPart then
        Window.MainWindowObjects.PartCollisionLabel.Text = 'Part Collision: None'
        Window.MainWindowObjects.PartLabel.Text = 'Part: None'
    else
        Window.MainWindowObjects.PartLabel.Text = 'Part: ' .. TargetedPart.AssetName
        Window.MainWindowObjects.PartCollisionLabel.Text =  utils.catbool('Part Collision: ',TargetedPart.IsCollidable)
    end

end

return Window