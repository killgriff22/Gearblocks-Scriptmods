local WindowMan = require("WindowMan")
local Playerlib = require("Playerlib")
local utils = require("utils")

local ItemHeight = 25
local ItemWidth = 120
local Items = 6
local Rowidx = 0
local Window = {
    open = false,
    open_CollisionWin = false,
    open_WeldingWin = false,
    open_PickerWin = false
}
Window.SettingsWindowObjects = {}

function Window.CloseSettingsWindow()
    if Window.DrawWindow then
        Rowidx = 0
        WindowMan.DestroyWindow(Window.DrawWindow)
        Window.DrawWindow = nil
        Window.SettingsWindowObjects = {}
    end
end


function Window.OpenSettingsWindow()
    if Window.DrawWindow then
        Window.CloseSettingsWindow()
    end
    Window.DrawWindow = WindowMan.CreateWindow(ItemHeight*Items, ItemWidth, Window.CloseSettingsWindow)
    Window.DrawWindow.Show(true)
    Window.DrawWindow.Title = 'Settings'
end

function Window.UpdateSettingsWindow()
    return
end

return Window