local WindowMan = require("WindowMan")

local MainWin = require("mainwin")
local CollisionWin = require("partcollisionwin")
local WeldingWin = require("partweldingwin")
local PickerWin = require("pickertoolwin")
local SettingsWin = require("settingswin")
MainWin.OpenMainWindow()
function Update()
    if MainWin.open_CollisionWin then
        CollisionWin.OpenCollisionWindow()
    end
    if MainWin.open_PickerWin then
        PickerWin.OpenPickerWindow()
    end
    if MainWin.open_WeldingWin then
        WeldingWin.OpenWeldWindow()
    end
    if MainWin.open_SettingsWin then
        SettingsWin.OpenSettingsWindow()
    end
    MainWin.UpdateMainWindow()
    if CollisionWin.DrawWindow then
        CollisionWin.UpdateCollisionWindow()
    end
    if WeldingWin.DrawWindow then
        WeldingWin.UpdateWeldWindow()
    end
    if PickerWin.DrawWindow then
        PickerWin.UpdatePickerWindow()
    end
end

function Cleanup()
    if MainWin.DrawWindow then
        WindowMan.DestroyWindow(MainWin.DrawWindow)
    end
    if CollisionWin.DrawWindow then
        WindowMan.DestroyWindow(CollisionWin.DrawWindow)
    end
    if WeldingWin.DrawWindow then
        WindowMan.DestroyWindow(WeldingWin.DrawWindow)
    end
    if PickerWin.DrawWindow then
        WindowMan.DestroyWindow(PickerWin.DrawWindow)
    end
end