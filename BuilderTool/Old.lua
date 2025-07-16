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
local possibleKeys = {
    "backspace",
    "delete",
    "tab",
    "clear",
    "return",
    "pause",
    "escape",
    "space",
    "[0]",
    "[1]",
    "[2]",
    "[3]",
    "[4]",
    "[5]",
    "[6]",
    "[7]",
    "[8]",
    "[9]",
    "[/]",
    "[*]",
    "[-]",
    "[+]",
    "[.]",
    "equals",
    "enter",
    "up",
    "down",
    "right",
    "left",
    "insert",
    "home",
    "end",
    "page up",
    "page down",
    "f1",
    "f2",
    "f3",
    "f4",
    "f5",
    "f6",
    "f7",
    "f8",
    "f9",
    "f10",
    "f11",
    "f12",
    "f13",
    "f14",
    "f15",
    "0",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "-",
    "=",
    "`",
    "~",
    "!",
    "@",
    "#",
    "$",
    "%",
    "^",
    "&",
    "*",
    "(",
    ")",
    "_",
    "+",
    "[",
    "]",
    "{",
    "}",
    "\\",
    "|",
    ";",
    "'",
    ":",
    "\"",
    ",",
    ".",
    "/",
    "<",
    ">",
    "?",
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z",
    "numlock",
    "caps lock",
    "scroll lock",
    "right shift",
    "left shift",
    "right ctrl",
    "left ctrl",
    "right alt",
    "left alt",
    "right cmd",
    "left cmd",
    "right super",
    "left super",
    "alt gr",
    "compose",
    "help",
    "print screen",
    "sys req",
    "break",
    "menu",
    "power",
    "euro",
    "undo",
    "mouse 0",
    "mouse 1",
    "mouse 2",
    "mouse 3",
    "mouse 4",
    "mouse 5",
    "mouse 6"
}
local PenLabel
local ownerPart
local pickPart
local deletePartAttachments
local dumpbutton = nil
local buttonwidth = 140
local buttonheight = 30
local PartLabel = nil
local SPartLabel = nil
local PartCollisionLabel = nil
local ConstructionColliisionLabel = nil
local PartCollisionToggle = nil
local ConstructionCollisionOn = nil
local ConstructionCollisionOff = nil
local currentTargetedPart
local labelheight = 0
local window = nil
local Player =  LocalPlayer.value
local localPlayer = LocalPlayer.Value
local key1pressed = false
local key2pressed = false
local key3pressed = false
local ownerPartLabel
local connectedPartLabel
local pickPartButton 
local attachTypeDropdown
local SelectedCollisionOn
local SelectedCollisionOff
local settingswin
local WeldKeyDropdown
local secondwin
local OpenSettingsButton
local OpenSecondwinButton
local pivotPositionXInputField
local pivotPositionYInputField
local pivotPositionZInputField
local prevSelectionStepDistance = 0
local prevSelectionStepAngle = 0
local prevPivotPosition = Vector3.Zero
local prevPivotOrientation = Quaternion.Identity
local translationStepInputField
local rotationStepInputField
local pivotOrientationXInputField
local pivotOrientationYInputField
local pivotOrientationZInputField
local intersect_toggle
local function GetTargetedPart()
    local targetedPart
    if localPlayer and localPlayer.Targeter then
        targetedPart = localPlayer.Targeter.TargetedPart
    else
        return nil
    end
    return targetedPart
end
local function catbool(text, bool)
    if bool then
        return text .. 'true'
    else
        return text .. 'false'
    end
end
local function PartToggle()
    local part = GetTargetedPart()
    if not part then
        return
    end
    ConstructionOps.SetPartCollidable( part.ID, not part.IsCollidable )
end
local function ConstructionCollisionOn_func()
    local part = GetTargetedPart()
    if not part then
        return
    end
    local construction = part.ParentConstruction
    for i, _part in pairs(construction.Parts) do
        ConstructionOps.SetPartCollidable( _part.ID, true )
    end
end
local function ConstructionCollisionOff_func()
    local part = GetTargetedPart()
    if not part then
        return
    end
    local construction = part.ParentConstruction
    for i, _part in pairs(construction.Parts) do
        ConstructionOps.SetPartCollidable( _part.ID, false )
    end
end
local function CreateWindow(l, w, closefunc)
    local localwindow
    localwindow = Windows.CreateWindow()
    localwindow.SetAlignment(align_RightEdge, 20, l)
    localwindow.SetAlignment(align_TopEdge, 80, w)
    localwindow.OnClose.add(closefunc)
    localwindow.Title = ""
    localwindow.Show(true)
    return localwindow
end
local function CreateLabel(x,y,w,h,txt,localwindow)
    local lbl = localwindow.CreateLabel()
    lbl.SetAlignment(align_LeftEdge,  x, w)
    lbl.SetAlignment(align_TopEdge,  y, h)
    lbl.Text = txt
    return lbl
    
end
local function CreateButton(x,y,w,h,txt,localwindow,clickfunc)
    local btn = localwindow.CreateTextButton()
    btn.SetAlignment(align_LeftEdge,  x, w)
    btn.SetAlignment(align_TopEdge,  y, h)
    btn.OnClick.add( clickfunc )
    btn.Text = txt
    return btn
end
local function createSlider(x,y,w,h,localwindow, min, max, default)
    local slider = localwindow.CreateSlider()
    slider.SetAlignment( align_LeftEdge, x, w )
    slider.SetAlignment( align_TopEdge, y, h )
    slider.MinValue = min
    slider.MaxValue = max
    slider.Value = default
    return slider
end
local function onWindowClose()
    if settingswin then
        Windows.DestroyWindow(settingswin)
    end
    if secondwin then
        Windows.DestroyWindow(secondwin)
    end
    UnloadScript.Raise(ScriptName) -- Window closed, so unload this script.
end

function pickPart( part )
    if not part then
        return
    end
	if ownerPart == nil then
		ownerPart = part		
        if ownerPart then
			pickPartButton.Text = 'Complete Weld (tab)'
		end
	else
		if part then
			local connectedPart = part
            if ownerPart.Attachments.IsAttached( connectedPart ) or connectedPart.Attachments.IsAttached( ownerPart ) then
				MessagePopupShow.Raise( 'Parts already attached!' )
			elseif ownerPart.ParentConstruction.IsFrozen ~= connectedPart.ParentConstruction.IsFrozen then
				MessagePopupShow.Raise( 'Parts must be either both frozen or both unfrozen!' )
			else
				local attachType = attachTypes[attachTypeDropdown.Value + 1][1]
				local searchPosition = localPlayer.Targeter.TargetedPosition * 0.5
				local searchNormal = Vector3.Normalize( connectedPart.Position - ownerPart.Position )
				AttachmentOps.CreateAttachment( attachType, ownerPart, connectedPart, searchPosition, searchNormal )
			end
		end		
        ownerPart = nil		
        pickPartButton.Text = 'Start Weld (tab)'
	end
	currentTargetedPart = nil -- Force the part labels to be updated.
end
local function SelectedCollisionOn_func()
    local Toolbox = localPlayer.Toolbox
    local selection = Toolbox.PartSelection
    for part in selection.SelectedParts do
        ConstructionOps.SetPartCollidable( part.ID, true )
    end
end
local function SelectedCollisionOff_func()
    local Toolbox = localPlayer.Toolbox
    local selection = Toolbox.PartSelection
    for part in selection.SelectedParts do
        ConstructionOps.SetPartCollidable( part.ID, false )
    end
end
local function onSettingsClose()
    Windows.DestroyWindow(settingswin)
    settingswin = nil
end
local function opensettingswin()
    if settingswin then
        return
    end
    settingswin = CreateWindow(buttonwidth*2, buttonheight*5, onSettingsClose)
    settingswin.Title = 'Settings'
    WeldKeyDropdown = settingswin.CreateLabelledDropdown()
    WeldKeyDropdown.SetAlignment(align_LeftEdge, 0, 200)
    WeldKeyDropdown.SetAlignment(align_TopEdge, 0, 30)
    for i, key in pairs(possibleKeys) do
        WeldKeyDropdown.AddOption(key)
    end
    WeldKeyDropdown.Text = 'Weld Key:'
    CreateLabel(0, buttonheight, buttonwidth*2, buttonheight, 'Settings will not change input keys.', settingswin)
end
local function onSecondwinClose()
    Windows.DestroyWindow(secondwin)
    secondwin = nil
end
local function OpenSecondwin()
    if secondwin then
        return
    end
    labelheight = 0
    secondwin = CreateWindow(buttonwidth*3, buttonheight*10, onSecondwinClose)
    secondwin.Title = 'Extention'
    ManipulatorOrientDropdown = secondwin.CreateLabelledDropdown()
    ManipulatorOrientDropdown.SetAlignment(align_LeftEdge, 0, buttonwidth*3)
    ManipulatorOrientDropdown.SetAlignment(align_TopEdge, labelheight, buttonheight)
    local options = { 'Local', 'Global' }
    ManipulatorOrientDropdown.AddOptions(options)
    ManipulatorOrientDropdown.Value =  ManipulatorOrientationMode.Value
    ManipulatorOrientDropdown.Text = 'Manipulator Orientation:'
    local function onDropdownChanged()
        ManipulatorOrientationMode.Value = ManipulatorOrientDropdown.Value
    end
    ManipulatorOrientDropdown.OnChanged.add( onDropdownChanged )
    labelheight = labelheight + buttonheight
    translationStepInputField = secondwin.CreateLabelledInputField()
    translationStepInputField.SetAlignment( align_LeftEdge, 0, buttonwidth*3 )
    translationStepInputField.SetAlignment( align_TopEdge, labelheight, buttonheight )
    translationStepInputField.Value = '0.000'
    translationStepInputField.Text = 'Position Step Interval:'
    local function onTranslationStepInputFieldEndEdit()
    	SelectionStepDistance.Value = tonumber( translationStepInputField.Value )
    end
    translationStepInputField.OnEndEdit.add( onTranslationStepInputFieldEndEdit )
    labelheight = labelheight + buttonheight
    rotationStepInputField = secondwin.CreateLabelledInputField()
    rotationStepInputField.SetAlignment( align_LeftEdge, 0, buttonwidth*3 )
    rotationStepInputField.SetAlignment( align_TopEdge, labelheight, buttonheight )
    rotationStepInputField.Value = '0.000'
    rotationStepInputField.Text = 'Rotation Step Interval:'
    local function onRotationStepInputFieldEndEdit()
    	SelectionStepAngle.Value = tonumber( rotationStepInputField.Value )
    end
    rotationStepInputField.OnEndEdit.add( onRotationStepInputFieldEndEdit )
    labelheight = labelheight + buttonheight
    local pivotPositionLabel = secondwin.CreateLabel()
    pivotPositionLabel.SetAlignment( align_LeftEdge, 0, 120 )
    pivotPositionLabel.SetAlignment( align_TopEdge, labelheight, buttonheight )
    pivotPositionLabel.Alignment = textAnc_MiddleLeft
    pivotPositionLabel.Text = 'Pivot Position:'
    
    pivotPositionXInputField = secondwin.CreateInputField()
    pivotPositionXInputField.SetAlignment( align_RightEdge, 210, 60 )
    pivotPositionXInputField.SetAlignment( align_TopEdge, labelheight, buttonheight )
    pivotPositionXInputField.Value = '0.000'
    
    pivotPositionYInputField = secondwin.CreateInputField()
    pivotPositionYInputField.SetAlignment( align_RightEdge, 140, 60 )
    pivotPositionYInputField.SetAlignment( align_TopEdge, labelheight, buttonheight )
    pivotPositionYInputField.Value = '0.000'
    
    pivotPositionZInputField = secondwin.CreateInputField()
    pivotPositionZInputField.SetAlignment( align_RightEdge, 70, 60 )
    pivotPositionZInputField.SetAlignment( align_TopEdge, labelheight, buttonheight )
    pivotPositionZInputField.Value = '0.000'
    
    local function onPivotPositionInputFieldEndEdit()
        local partSelection
        if localPlayer then
            partSelection = localPlayer.Toolbox.PartSelection
        else
            partSelection = nil
        end
        if partSelection then
            -- Update the pivot position from the input fields.
            partSelection.PivotPosition = Vector3.__new( tonumber( pivotPositionXInputField.Value ), tonumber( pivotPositionYInputField.Value ), tonumber( pivotPositionZInputField.Value ) )
        end
    end
    pivotPositionXInputField.OnEndEdit.add( onPivotPositionInputFieldEndEdit )
    pivotPositionYInputField.OnEndEdit.add( onPivotPositionInputFieldEndEdit )
    pivotPositionZInputField.OnEndEdit.add( onPivotPositionInputFieldEndEdit )
    labelheight = labelheight + buttonheight
    local pivotOrientationLabel = secondwin.CreateLabel()
    pivotOrientationLabel.SetAlignment( align_LeftEdge, 0, 220 )
    pivotOrientationLabel.SetAlignment( align_TopEdge, labelheight, buttonheight )
    pivotOrientationLabel.Alignment = textAnc_MiddleLeft
    pivotOrientationLabel.Text = 'Pivot Rotation:'
    
    pivotOrientationXInputField = secondwin.CreateInputField()
    pivotOrientationXInputField.SetAlignment( align_RightEdge, 210, 60 )
    pivotOrientationXInputField.SetAlignment( align_TopEdge, labelheight, buttonheight )
    pivotOrientationXInputField.Value = '0.00'
    
    pivotOrientationYInputField = secondwin.CreateInputField()
    pivotOrientationYInputField.SetAlignment( align_RightEdge, 140, 60 )
    pivotOrientationYInputField.SetAlignment( align_TopEdge, labelheight, buttonheight )
    pivotOrientationYInputField.Value = '0.00'
    
    pivotOrientationZInputField = secondwin.CreateInputField()
    pivotOrientationZInputField.SetAlignment( align_RightEdge, 70, 60 )
    pivotOrientationZInputField.SetAlignment( align_TopEdge, labelheight, buttonheight )
    pivotOrientationZInputField.Value = '0.00'
    
    local function onPivotOrientationInputFieldEndEdit()
        local partSelection
        if localPlayer then
            partSelection = localPlayer.Toolbox.PartSelection
        else
            partSelection = nil
        end
        if partSelection then
            -- Update the pivot orientation from the input fields.
            partSelection.PivotOrientation = Quaternion.euler( tonumber( pivotOrientationXInputField.Value ), tonumber( pivotOrientationYInputField.Value ), tonumber( pivotOrientationZInputField.Value ) )
        end
    end
    pivotOrientationXInputField.OnEndEdit.add( onPivotOrientationInputFieldEndEdit )
    pivotOrientationYInputField.OnEndEdit.add( onPivotOrientationInputFieldEndEdit )
    pivotOrientationZInputField.OnEndEdit.add( onPivotOrientationInputFieldEndEdit )
    
end
local function populatemainwin()    
    window = CreateWindow(buttonwidth, buttonheight*17, onWindowClose)
    window.Title = 'Build Tool'
    PartLabel = CreateLabel(0, labelheight, buttonwidth, buttonheight, 'Part: None', window)
    labelheight = labelheight + buttonheight
    PartCollisionLabel = CreateLabel(0, labelheight, buttonwidth, buttonheight, 'Part Collision: None', window)
    labelheight = labelheight + buttonheight
    PartCollisionToggle = CreateButton(0, labelheight, buttonwidth, buttonheight, 'Toggle Part Collision', window, PartToggle)
    labelheight = labelheight + buttonheight
    SelectedCollisionOn = CreateButton(0, labelheight, buttonwidth, buttonheight, 'Set Selected', window, SelectedCollisionOn_func)
    labelheight = labelheight + buttonheight
    SelectedCollisionOff = CreateButton(0, labelheight, buttonwidth, buttonheight, 'Unset Selected', window, SelectedCollisionOff_func)
    labelheight = labelheight + buttonheight
    ConstructionCollisionOn = CreateButton(0, labelheight, buttonwidth, buttonheight, 'Set Constructon', window, ConstructionCollisionOn_func)
    labelheight = labelheight + buttonheight
    ConstructionCollisionOff = CreateButton(0, labelheight, buttonwidth, buttonheight, 'Unset Constructon', window,ConstructionCollisionOff_func)
    labelheight = labelheight + buttonheight
    intersect_toggle = window.CreateLabelledToggle()
    intersect_toggle.SetAlignment( align_RightEdge, 0, buttonwidth )
    intersect_toggle.SetAlignment( align_TopEdge, labelheight, buttonheight )
    intersect_toggle.Text = 'Prevent Penetration'
    intersect_toggle.Value = PartPenetrationTestEnabled.Value
    local function onPartPenetrationTestToggled()
        print(catbool("Before: ", PartPenetrationTestEnabled.Value))
    	PartPenetrationTestEnabled.Value = intersect_toggle.Value
        print(catbool("After: ", PartPenetrationTestEnabled.Value))
    end
    intersect_toggle.OnChanged.add( onPartPenetrationTestToggled )
    labelheight = labelheight + buttonheight
    PenLabel = CreateLabel(0, labelheight, buttonwidth, buttonheight, catbool("Real Value:", PartPenetrationTestEnabled.Value), window)
    labelheight = labelheight + buttonheight
    ownerPartLabel = CreateLabel(0, labelheight, buttonwidth, buttonheight, 'From: N/A', window)
    labelheight = labelheight + buttonheight
    connectedPartLabel = CreateLabel(0, labelheight, buttonwidth, buttonheight, 'To: N/A', window)
    labelheight = labelheight + buttonheight

    local function onPickPartButton()
    	pickPart( currentTargetedPart )
    end
    pickPartButton = CreateButton(0, labelheight, buttonwidth, buttonheight, 'Start Weld (tab)', window, onPickPartButton)
    labelheight = labelheight + buttonheight
    attachTypeDropdown = window.CreateLabelledDropdown()
    attachTypeDropdown.SetAlignment( align_LeftEdge, 0, buttonwidth )
    attachTypeDropdown.SetAlignment( align_TopEdge, labelheight, buttonheight )
    for attachType in attachTypes do
    	attachTypeDropdown.AddOption( attachType[2] )
    end
    attachTypeDropdown.Text = 'Type:'
    labelheight = labelheight + buttonheight
    OpenSettingsButton = CreateButton(0, labelheight, buttonwidth, buttonheight, 'Open Settings', window, opensettingswin)
    labelheight = labelheight + buttonheight
    OpenSecondwinButton = CreateButton(0, labelheight, buttonwidth, buttonheight, 'Extention', window, OpenSecondwin)
    labelheight = labelheight + buttonheight
end
PartPenetrationTestEnabled.Value = false
populatemainwin()
function Update()
    PenLabel.Text = catbool("Real Value:", PartPenetrationTestEnabled.Value)
    local part = GetTargetedPart()
    if not part then
        PartLabel.Text = 'Part: None'
        PartCollisionLabel.Text = 'Part Collision: None'
    else
        PartLabel.Text = 'Part: ' .. part.AssetName    
        PartCollisionLabel.Text = catbool('Part Collision: ', part.IsCollidable)
    end
    local targetedPart = part
	if targetedPart ~= currentTargetedPart then
		if ownerPart then
			ownerPartLabel.Text = string.format( 'From: %s', ownerPart.FullDisplayName )
			if targetedPart then
				connectedPartLabel.Text = string.format( 'To: %s', targetedPart.FullDisplayName )
			else
				connectedPartLabel.Text = 'To: N/A'
			end
		else
			if targetedPart then
				ownerPartLabel.Text = string.format( 'From: %s', targetedPart.FullDisplayName )
			else
				ownerPartLabel.Text = 'From: N/A'
			end
			connectedPartLabel.Text = 'To: N/A'
		end
		currentTargetedPart = targetedPart
	end
    if Input.GetKeyDown('tab') then
        pickPart(part)
    end
    if not secondwin then
        return
    end
    local partSelection
    if localPlayer then
		partSelection = localPlayer.Toolbox.PartSelection
	else
		partSelection = nil
	end
	local selectionStepDistance = SelectionStepDistance.Value
	if selectionStepDistance ~= prevSelectionStepDistance then
		translationStepInputField.Value = string.format( '%.3f', selectionStepDistance )
		prevSelectionStepDistance = selectionStepDistance
	end

	local selectionStepAngle = SelectionStepAngle.Value
	if selectionStepAngle ~= prevSelectionStepAngle then
		rotationStepInputField.Value = string.format( '%.3f', selectionStepAngle )
		prevSelectionStepAngle = selectionStepAngle
	end

	if partSelection then
		-- If the pivot position has changed, update the input fields.
		local pivotPosition = partSelection.PivotPosition
		if not prevPivotPosition.equals( pivotPosition ) then
			pivotPositionXInputField.Value = string.format( '%.3f', pivotPosition.X )
			pivotPositionYInputField.Value = string.format( '%.3f', pivotPosition.Y )
			pivotPositionZInputField.Value = string.format( '%.3f', pivotPosition.Z )
			prevPivotPosition = pivotPosition
		end

		-- If the pivot orientation has changed, update the input fields.
		local pivotOrientation = partSelection.PivotOrientation
		if not prevPivotOrientation.equals( pivotOrientation ) then
			pivotOrientationXInputField.Value = string.format( '%.2f', pivotOrientation.EulerAngles.X )
			pivotOrientationYInputField.Value = string.format( '%.2f', pivotOrientation.EulerAngles.Y )
			pivotOrientationZInputField.Value = string.format( '%.2f', pivotOrientation.EulerAngles.Z )
			prevPivotOrientation = pivotOrientation
		end
	end
end
function Cleanup()
    Windows.DestroyWindow(window)
    if settingswin then
        Windows.DestroyWindow(settingswin)
    end
    if secondwin then
        Windows.DestroyWindow(secondwin)
    end
    PartPenetrationTestEnabled.Value = true
end