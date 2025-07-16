local WindowMan = require("WindowMan")
local Playerlib = require("Playerlib")
local utils = require("utils")

local attachTypes =
{
    { attachType_Fixed, 'Fixed' },
    { attachType_RotaryBearing, 'Rotary Bearing' },
    { attachType_LinearBearing, 'Linear Bearing' },
    { attachType_LinearRotaryBearing, 'Linear Rotary Bearing' },
    { attachType_SphericalBearing, 'Spherical Bearing' },
    { attachType_ConstantVelocityJoint, 'CV Joint' },
    { attachType_KnuckleJoint, 'Knuckle Joint' },
    { attachType_Null, 'Null' }
}

local str_attachTypes = {
    'Fixed',
    'Rotary Bearing',
    'Linear Bearing',
    'Linear Rotary Bearing',
    'Spherical Bearing',
    'CV Joint',
    'Knuckle Joint',
    'Null'
}

local ItemHeight = 30
local ItemWidth = 200
local Items = 14
local Rowidx = 0
local Window = {
    open = false,
    open_CollisionWin = false,
    open_WeldingWin = false,
    open_PickerWin = false
}
Window.WeldWindowObjects = {}
Window.TrackedParts = {}

function Window.CloseWeldWindow()
    if Window.DrawWindow then
        Rowidx = 0
        WindowMan.DestroyWindow(Window.DrawWindow)
        Window.DrawWindow = nil
        Window.WeldWindowObjects = {}
    end
end

local function weldparts( parta, partb)
    local Player = Playerlib.GetPlayer().Value
    if parta == partb then
        MessagePopupShow.Raise( 'Part A equals Part B' )
        return false
    end
    if parta == nil then
        MessagePopupShow.Raise( 'No Part A' )
        return false
    end
    if partb == nil then
        MessagePopupShow.Raise( 'No Part B' )
        return false
    end
    if parta.Attachments.IsAttached( partb ) or partb.Attachments.IsAttached( parta ) then
		MessagePopupShow.Raise( 'Parts already attached!' )
        return false
	elseif parta.ParentConstruction.IsFrozen ~= partb.ParentConstruction.IsFrozen then
		MessagePopupShow.Raise( 'Parts must be either both frozen or both unfrozen!' )
        return false
	else
		local attachType = attachTypes[Window.WeldWindowObjects.AttachTypeDropdown.Value + 1][1]
		local searchPosition = Player.Targeter.TargetedPosition * 0.5
		local searchNormal = Vector3.Normalize( partb.Position - parta.Position )
		AttachmentOps.CreateAttachment( attachType, parta, partb, searchPosition, searchNormal )
        return true
	end
end


function SelectMasterPart()
    local Player = Playerlib.GetPlayer().Value
    local TargetedPart = Playerlib.GetTargetedPart(Player)
    if TargetedPart then
        Window.TrackedParts.MasterPart = TargetedPart
    else
        Window.TrackedParts.MasterPart = nil
    end
end


function WeldTargetToMaster()
    if not Window.TrackedParts.MasterPart then
        MessagePopupShow.Raise( 'No Master Part!' )
        return
    end
    local Player = Playerlib.GetPlayer().Value
    local TargetedPart = Playerlib.GetTargetedPart(Player)
    if TargetedPart == nil then
        MessagePopupShow.Raise( "No Selection!" )
        return
    end
    weldparts(TargetedPart, Window.TrackedParts.MasterPart)
end

function WeldSelectedToMaster()
    if not Window.TrackedParts.MasterPart then
        MessagePopupShow.Raise( 'No Master Part!' )
        return
    end
    local Player = Playerlib.GetPlayer().Value
    local Toolbox = Player.Toolbox
    local selection = Toolbox.PartSelection
    if #selection.SelectedParts < 1 then
        MessagePopupShow.Raise( "No Selection!" )
        return
    end
    for part in selection.SelectedParts do
        weldparts(part, Window.TrackedParts.MasterPart)
    end
end
function WeldMasterToSelected()
    if not Window.TrackedParts.MasterPart then
        MessagePopupShow.Raise( 'No Master Part!' )
        return
    end
    local Player = Playerlib.GetPlayer().Value
    local Toolbox = Player.Toolbox
    local selection = Toolbox.PartSelection
    if #selection.SelectedParts < 1 then
        MessagePopupShow.Raise( "No Selection!" )
        return
    end
    for part in selection.SelectedParts do
        weldparts(part, Window.TrackedParts.MasterPart)
    end
end

function WeldPartToPart()
    weldparts(Window.TrackedParts.PartA,Window.TrackedParts.PartB)
end

function SelectPart()
    local Player = Playerlib.GetPlayer().Value
    local TargetedPart = Playerlib.GetTargetedPart(Player)
    if TargetedPart == nil then
        MessagePopupShow.Raise( "No Selection!" )
        return
    end
	if Window.TrackedParts.PartA == nil then
		Window.TrackedParts.PartA = TargetedPart	
        if Window.TrackedParts.PartA then
			Window.WeldWindowObjects.WeldSelectABBttn.Text = 'Select Part B'
		end
	elseif Window.TrackedParts.PartB == nil then
		Window.TrackedParts.PartB = TargetedPart
        Window.WeldWindowObjects.WeldSelectABBttn.Text = 'Clear Selection'
    else
        Window.TrackedParts.PartA = nil
        Window.TrackedParts.PartB = nil
        Window.WeldWindowObjects.WeldSelectABBttn.Text = 'Select Part A'
    end
end

function WeldSelectedParts()
    local Player = Playerlib.GetPlayer().Value
    local Toolbox = Player.Toolbox
    local selection = Toolbox.PartSelection
    if #selection.SelectedParts < 2 then
        MessagePopupShow.Raise( 'Less than 2 parts selected!' )
        return
    end
    local selected = {}
    for part in selection.SelectedParts do
        selected[#selected+1] = part
    end
    local lastpart = selected[#selected]
    for part in selected do
        if lastpart then
            weldparts(part, lastpart)
        end
        lastpart = part
    end
end

function Window.OpenWeldWindow()
    if Window.DrawWindow then
        Window.CloseWeldWindow()
    end
    Window.DrawWindow = WindowMan.CreateWindow(ItemHeight*Items, ItemWidth, Window.CloseWeldWindow)
    Window.DrawWindow.Show(true)
    Window.DrawWindow.Title = 'Welding'
    WindowMan.CreateLabel(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, "----------Master Welding------------", Window.DrawWindow)
    Rowidx = Rowidx + 1
    Window.WeldWindowObjects.MasterPartLabel = WindowMan.CreateLabel(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, 'Master Part: None', Window.DrawWindow)
    Rowidx = Rowidx + 1
    Window.WeldWindowObjects.SelectMasterPartBttn =  WindowMan.CreateButton(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, 'Select Master Part', Window.DrawWindow, SelectMasterPart)
    Rowidx = Rowidx + 1
    Window.WeldWindowObjects.WeldTargetToMasterBttn =  WindowMan.CreateButton(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, 'Weld to Master Part', Window.DrawWindow, WeldTargetToMaster)
    Rowidx = Rowidx + 1
    Window.WeldWindowObjects.WeldSelectedToMasterBttn =  WindowMan.CreateButton(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, 'Weld Selected to Master', Window.DrawWindow, WeldSelectedToMaster)
    Rowidx = Rowidx + 1
    Window.WeldWindowObjects.WeldSelectedToMasterBttn =  WindowMan.CreateButton(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, 'Weld Master to Selected', Window.DrawWindow, WeldMasterToSelected)
    Rowidx = Rowidx + 1
    WindowMan.CreateLabel(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, "--------Independent Welding--------", Window.DrawWindow)
    Rowidx = Rowidx + 1
    Window.WeldWindowObjects.WeldSelectedPartsBttn =  WindowMan.CreateButton(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, 'Weld Selected Together', Window.DrawWindow, WeldSelectedParts)
    Rowidx = Rowidx + 1
    Window.WeldWindowObjects.PartALabel =  WindowMan.CreateLabel(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, 'Part A: None', Window.DrawWindow)
    Rowidx = Rowidx + 1
    Window.WeldWindowObjects.PartBLabel =  WindowMan.CreateLabel(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, 'Part B: None', Window.DrawWindow)
    Rowidx = Rowidx + 1
    Window.WeldWindowObjects.WeldSelectABBttn =  WindowMan.CreateButton(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, 'Select Part A', Window.DrawWindow, SelectPart)
    Rowidx = Rowidx + 1
    Window.WeldWindowObjects.WeldPartToPartBttn =  WindowMan.CreateButton(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, 'Weld Parts', Window.DrawWindow, WeldPartToPart)
    Rowidx = Rowidx + 1
    Window.WeldWindowObjects.AttachTypeDropdown = WindowMan.CreateLabelledDropdown(0, ItemHeight * Rowidx, ItemWidth, ItemHeight,"Type:", Window.DrawWindow, str_attachTypes)
    Rowidx = Rowidx + 1
end

function Window.UpdateWeldWindow()
    if Window.TrackedParts.MasterPart then
       Window.WeldWindowObjects.MasterPartLabel.Text = 'Master Part: ' .. Window.TrackedParts.MasterPart.AssetName
    else
        Window.WeldWindowObjects.MasterPartLabel.Text = 'Master Part: None'
    end
    if Window.TrackedParts.PartA then
       Window.WeldWindowObjects.PartALabel.Text = 'Part A: ' .. Window.TrackedParts.PartA.AssetName
    else
        Window.WeldWindowObjects.PartALabel.Text = 'Part A: None'
    end
    if Window.TrackedParts.PartB then
       Window.WeldWindowObjects.PartBLabel.Text = 'Part B: ' .. Window.TrackedParts.PartB.AssetName
    else
        Window.WeldWindowObjects.PartBLabel.Text = 'Part B: None'
    end
end

return Window