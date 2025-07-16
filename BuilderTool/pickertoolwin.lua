local WindowMan = require("WindowMan")
local Playerlib = require("Playerlib")
local utils = require("utils")

local ItemHeight = 30
local ItemWidth = 500
local Items = 8
local Rowidx = 0
local Window = {
    open = false,
    open_CollisionWin = false,
    open_WeldingWin = false,
    open_PickerWin = false
}
Window.PickerWindowObjects = {}

Window.PickerWindowObjects.prevPivotPosition = Vector3.__new(0.000, 0.00, 0.00)
Window.PickerWindowObjects.prevPivotOrientation = Quaternion.__new(0.00, 0.00, 0.00)

function Window.ClosePickerWindow()
    if Window.DrawWindow then
        Rowidx = 0
        WindowMan.DestroyWindow(Window.DrawWindow)
        Window.DrawWindow = nil
        Window.PickerWindowObjects = {}
        Window.PickerWindowObjects.prevPivotPosition = Vector3.__new(0.000, 0.00, 0.00)
        Window.PickerWindowObjects.prevPivotOrientation = Quaternion.__new(0.00, 0.00, 0.00)
    end
end


function Window.OpenPickerWindow()
    if Window.DrawWindow then
        Window.ClosePickerWindow()
    end
    Window.DrawWindow = WindowMan.CreateWindow(ItemHeight*Items, ItemWidth, Window.ClosePickerWindow)
    Window.DrawWindow.Show(true)
    Window.DrawWindow.Title = 'BuilderToolExt'
    Window.PickerWindowObjects.ManipulatorOrientDropdown = WindowMan.CreateLabelledDropdown(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, 'Manipulator Orientation:', Window.DrawWindow, { 'Local', 'Global' })
    local function onDropdownChanged()
        ManipulatorOrientationMode.Value = Window.PickerWindowObjects.ManipulatorOrientDropdown.Value
    end
    Window.PickerWindowObjects.ManipulatorOrientDropdown.OnChanged.add( onDropdownChanged )
    Rowidx = Rowidx + 1
    Window.PickerWindowObjects.translationStepInputField = WindowMan.CreateLabelledInputField(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, 'Position Step Interval:', Window.DrawWindow, '0.000')
    local function onTranslationStepInputFieldEndEdit()
    	SelectionStepDistance.Value = tonumber( Window.PickerWindowObjects.translationStepInputField.Value )
    end
    Window.PickerWindowObjects.translationStepInputField.OnEndEdit.add( onTranslationStepInputFieldEndEdit )
    Rowidx = Rowidx + 1
    Window.PickerWindowObjects.rotationStepInputField = WindowMan.CreateLabelledInputField(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, 'Rotation Step Interval:', Window.DrawWindow, '0.000')
    local function onRotationStepInputFieldEndEdit()
    	SelectionStepAngle.Value = tonumber( Window.PickerWindowObjects.rotationStepInputField.Value )
    end
    Window.PickerWindowObjects.rotationStepInputField.OnEndEdit.add( onRotationStepInputFieldEndEdit )
    Rowidx = Rowidx + 1
    local ColIdx = 0
    local items2squish = 5
    local pivotPositionLabel = WindowMan.CreateLabel(ItemWidth/items2squish*ColIdx, ItemHeight * Rowidx, ItemWidth/items2squish, ItemHeight, 'Pivot Position:', Window.DrawWindow)
    pivotPositionLabel.Alignment = textAnc_MiddleLeft
    ColIdx = ColIdx + 1 
    Window.PickerWindowObjects.pivotPositionXInputField = WindowMan.CreateInputField(ItemWidth/items2squish*ColIdx, ItemHeight * Rowidx, ItemWidth/items2squish, ItemHeight, Window.DrawWindow, '0.000')
    ColIdx = ColIdx + 1 
    Window.PickerWindowObjects.pivotPositionYInputField = WindowMan.CreateInputField(ItemWidth/items2squish*ColIdx, ItemHeight * Rowidx, ItemWidth/items2squish, ItemHeight, Window.DrawWindow, '0.000')
    ColIdx = ColIdx + 1 
    Window.PickerWindowObjects.pivotPositionZInputField = WindowMan.CreateInputField(ItemWidth/items2squish*ColIdx, ItemHeight * Rowidx, ItemWidth/items2squish, ItemHeight, Window.DrawWindow, '0.000')
    
    local function onPivotPositionInputFieldEndEdit()
        local Player = Playerlib.GetPlayer().Value
        local partSelection
        if Player then
            partSelection = Player.Toolbox.PartSelection
        else
            partSelection = nil
        end
        if partSelection then
            -- Update the pivot position from the input fields.
            partSelection.PivotPosition = Vector3.__new( tonumber( Window.PickerWindowObjects.pivotPositionXInputField.Value ), tonumber( Window.PickerWindowObjects.pivotPositionYInputField.Value ), tonumber( Window.PickerWindowObjects.pivotPositionZInputField.Value ) )
        end
    end
    Window.PickerWindowObjects.pivotPositionXInputField.OnEndEdit.add( onPivotPositionInputFieldEndEdit )
    Window.PickerWindowObjects.pivotPositionYInputField.OnEndEdit.add( onPivotPositionInputFieldEndEdit )
    Window.PickerWindowObjects.pivotPositionZInputField.OnEndEdit.add( onPivotPositionInputFieldEndEdit )
    ColIdx = ColIdx + 1
    local function onSnapPivotPositionButtonClicked()
        local Player = Playerlib.GetPlayer().Value
        local partSelection
        if Player then
            partSelection = Player.Toolbox.PartSelection
        else
            partSelection = nil
        end
        if partSelection then
            -- Snap the pivot position.
            partSelection.PivotPosition = Vector3.round( partSelection.PivotPosition, SelectionStepDistance.Value )
        end
    end
    local snapPivotPositionButton = WindowMan.CreateButton(ItemWidth/items2squish*ColIdx, ItemHeight * Rowidx, ItemWidth/items2squish, ItemHeight, 'Snap', Window.DrawWindow,onSnapPivotPositionButtonClicked)
    Rowidx = Rowidx + 1
    ColIdx = 0
    local pivotOrientationLabel = WindowMan.CreateLabel(ItemWidth/items2squish*ColIdx, ItemHeight * Rowidx, ItemWidth/items2squish, ItemHeight, 'Pivot Rotation:', Window.DrawWindow)
    pivotOrientationLabel.Alignment = textAnc_MiddleLeft
    ColIdx = ColIdx + 1
    Window.PickerWindowObjects.pivotOrientationXInputField = WindowMan.CreateInputField(ItemWidth/items2squish*ColIdx, ItemHeight * Rowidx, ItemWidth/items2squish, ItemHeight,Window.DrawWindow, '0.00')
    ColIdx = ColIdx + 1
    Window.PickerWindowObjects.pivotOrientationYInputField = WindowMan.CreateInputField(ItemWidth/items2squish*ColIdx, ItemHeight * Rowidx, ItemWidth/items2squish, ItemHeight,Window.DrawWindow, '0.00')
    ColIdx = ColIdx + 1
    Window.PickerWindowObjects.pivotOrientationZInputField = WindowMan.CreateInputField(ItemWidth/items2squish*ColIdx, ItemHeight * Rowidx, ItemWidth/items2squish, ItemHeight,Window.DrawWindow, '0.00')
    
    local function onPivotOrientationInputFieldEndEdit()
        local Player = Playerlib.GetPlayer().Value
        local partSelection
        if Player then
            partSelection = Player.Toolbox.PartSelection
        else
            partSelection = nil
        end
        if partSelection then
            -- Update the pivot orientation from the input fields.
            partSelection.PivotOrientation = Quaternion.euler( tonumber( Window.PickerWindowObjects.pivotOrientationXInputField.Value ), tonumber( Window.PickerWindowObjects.pivotOrientationYInputField.Value ), tonumber( Window.PickerWindowObjects.pivotOrientationZInputField.Value ) )
        end
    end
    Window.PickerWindowObjects.pivotOrientationXInputField.OnEndEdit.add( onPivotOrientationInputFieldEndEdit )
    Window.PickerWindowObjects.pivotOrientationYInputField.OnEndEdit.add( onPivotOrientationInputFieldEndEdit )
    Window.PickerWindowObjects.pivotOrientationZInputField.OnEndEdit.add( onPivotOrientationInputFieldEndEdit )
    ColIdx = ColIdx + 1
    local function onSnapPivotOrientationButtonClicked()
        local Player = Playerlib.GetPlayer().Value
        local partSelection
        if Player then
            partSelection = Player.Toolbox.PartSelection
        else
            partSelection = nil
        end
        if partSelection then
            -- Snap the pivot position.
            partSelection.PivotOrientation = Quaternion.snapAngles( partSelection.PivotOrientation, SelectionStepAngle.Value )
        end
    end
    local snapPivotOrientationButton = WindowMan.CreateButton(ItemWidth/items2squish*ColIdx, ItemHeight * Rowidx, ItemWidth/items2squish, ItemHeight, 'Snap', Window.DrawWindow, onSnapPivotOrientationButtonClicked)
    ColIdx = 0
    Rowidx = Rowidx + 1
    Window.PickerWindowObjects.SimplePivotPosView = WindowMan.CreateLabelledInputField(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, "Pivot Position:", Window.DrawWindow, "0.000 0.000 0.000")
    Rowidx = Rowidx + 1
    Window.PickerWindowObjects.SimplePivotRotView = WindowMan.CreateLabelledInputField(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, "Pivot Rotation:", Window.DrawWindow, "0.00 0.00 0.00")
    Rowidx = Rowidx + 1
end

function Window.UpdatePickerWindow()
    local localPlayer = Playerlib.GetPlayer().Value
    local partSelection
    if localPlayer then
		partSelection = localPlayer.Toolbox.PartSelection
	else
		partSelection = nil
	end
	local selectionStepDistance = SelectionStepDistance.Value
	if selectionStepDistance ~= Window.PickerWindowObjects.prevSelectionStepDistance then
		Window.PickerWindowObjects.translationStepInputField.Value = string.format( '%.3f', selectionStepDistance )
		Window.PickerWindowObjects.prevSelectionStepDistance = selectionStepDistance
	end

	local selectionStepAngle = SelectionStepAngle.Value
	if selectionStepAngle ~= Window.PickerWindowObjects.prevSelectionStepAngle then
		Window.PickerWindowObjects.rotationStepInputField.Value = string.format( '%.3f', selectionStepAngle )
		Window.PickerWindowObjects.prevSelectionStepAngle = selectionStepAngle
	end

	if partSelection then
		-- If the pivot position has changed, update the input fields.
		local pivotPosition = partSelection.PivotPosition
		if not Window.PickerWindowObjects.prevPivotPosition.equals( pivotPosition ) then
			Window.PickerWindowObjects.pivotPositionXInputField.Value = string.format( '%.3f', pivotPosition.X )
			Window.PickerWindowObjects.pivotPositionYInputField.Value = string.format( '%.3f', pivotPosition.Y )
			Window.PickerWindowObjects.pivotPositionZInputField.Value = string.format( '%.3f', pivotPosition.Z )
			Window.PickerWindowObjects.prevPivotPosition = pivotPosition
            Window.PickerWindowObjects.SimplePivotPosView.Value = string.format( '%.3f', pivotPosition.X ) .. " " .. string.format( '%.3f', pivotPosition.Y ) .. " " .. string.format( '%.3f', pivotPosition.Z )
		end
        
		-- If the pivot orientation has changed, update the input fields.
		local pivotOrientation = partSelection.PivotOrientation
		if not Window.PickerWindowObjects.prevPivotOrientation.equals( pivotOrientation ) then
			Window.PickerWindowObjects.pivotOrientationXInputField.Value = string.format( '%.2f', pivotOrientation.EulerAngles.X )
			Window.PickerWindowObjects.pivotOrientationYInputField.Value = string.format( '%.2f', pivotOrientation.EulerAngles.Y )
			Window.PickerWindowObjects.pivotOrientationZInputField.Value = string.format( '%.2f', pivotOrientation.EulerAngles.Z )
			Window.PickerWindowObjects.prevPivotOrientation = pivotOrientation
            Window.PickerWindowObjects.SimplePivotRotView.Value = string.format( '%.2f', pivotOrientation.EulerAngles.X ) .. " " .. string.format( '%.2f', pivotOrientation.EulerAngles.Y ) .. " " .. string.format( '%.2f', pivotOrientation.EulerAngles.Z )
		end
	end
end

return Window