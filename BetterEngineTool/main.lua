-- Copyright (C) 2017 - 2025 SmashHammer Games Inc. - All Rights Reserved.
WindowMan = require("Libs/WindowMan")
local firingOrderTextColour = Colour.__new( 220, 111, 74, 255 )
local angleTextColour = 'white'

local firingOrders =
{
	{ 'Inline 4', { 1, 4, 2, 3 } },
	{ 'Inline 6', { 1, 5, 3, 6, 2, 4 } },
	{ 'V6', { 1, 4, 2, 5, 3, 6 } },
	{ 'Cross-plane V8', { 4, 1, 7, 8, 5, 6, 2, 3 } },
	{ 'Flat-plane V8', { 1, 6, 7, 4, 3, 8, 5, 2 } },
	{ 'V12', { 1, 8, 9, 4, 5, 12, 11, 6, 3, 10, 7, 2 } },
	{ 'Flat V12', { 1, 4, 9, 6, 5, 2, 11, 8, 3, 12, 7, 10 } },
}

local mouseWheelThreshold = 0.4

local currentTargetedHeadBehaviour
local drivenCrank

local textObjects = {}

local resetFiringOrder

----- Init UI -----

local win = WindowMan.CreateWindow(370, 254, WindowMan.onWindowClose)
win.Title = 'Engine Firing Order'
win.Show( true )

local targetedHeadLabel = WindowMan.CreateLabel(10, 10, '<b>Targeted Head:</b>', win)
targetedHeadLabel.Alignment = textAnc_MiddleLeft

local adjustLabel = WindowMan.CreateLabel(46, 30, 'Adjust:', win)
adjustLabel.Alignment = textAnc_MiddleLeft

local function onDecFiringOrderButtonClicked()
	if currentTargetedHeadBehaviour then
		local tweakable = currentTargetedHeadBehaviour.GetTweakable( "Firing Order" )
		tweakable.Value = math.max( tweakable.Value - 1, 1 )
		currentTargetedHeadBehaviour.SyncTweakables()	-- Sync tweakable value to all players.
	end
end
decFiringOrderButton.SetAlignment( align_LeftEdge, 66, 90 )
decFiringOrderButton.SetAlignment( align_TopEdge, 46, 30 )
decFiringOrderButton.OnClick.add( onDecFiringOrderButtonClicked )
decFiringOrderButton.Text = 'Dec <i>(Num -)</i>'
local decFiringOrderButton = win.CreateTextButton()
decFiringOrderButton.IsInteractable = false

local incFiringOrderButton = win.CreateTextButton()
incFiringOrderButton.SetAlignment( align_LeftEdge, 162, 90 )
incFiringOrderButton.SetAlignment( align_TopEdge, 46, 30 )
local function onIncFiringOrderButtonClicked()
	if currentTargetedHeadBehaviour then
		local tweakable = currentTargetedHeadBehaviour.GetTweakable( "Firing Order" )
		tweakable.Value = tweakable.Value + 1
		currentTargetedHeadBehaviour.SyncTweakables()	-- Sync tweakable value to all players.
	end
end
incFiringOrderButton.OnClick.add( onIncFiringOrderButtonClicked )
incFiringOrderButton.Text = 'Inc <i>(Num +)</i>'
incFiringOrderButton.IsInteractable = false

local mouseWheelLabel = win.CreateLabel()
mouseWheelLabel.SetAlignment( align_RightEdge, 10, 120 )
mouseWheelLabel.SetAlignment( align_TopEdge, 46, 30 )
mouseWheelLabel.Alignment = textAnc_MiddleRight
mouseWheelLabel.Text = '<i>(or Mouse Wheel)</i>'

local entireEngineLabel = win.CreateLabel()
entireEngineLabel.SetAlignment( align_HorizEdges, 10, 10 )
entireEngineLabel.SetAlignment( align_TopEdge, 86, 30 )
entireEngineLabel.Alignment = textAnc_MiddleLeft
entireEngineLabel.Text = '<b>Entire Engine:</b>'

local resetFiringOrderButton = win.CreateTextButton()
resetFiringOrderButton.SetAlignment( align_LeftEdge, 10, 100 )
resetFiringOrderButton.SetAlignment( align_TopEdge, 120, 30 )
local function onResetFiringOrderButtonClicked()
	if currentTargetedHeadBehaviour then
		resetFiringOrder()
	end
end
resetFiringOrderButton.OnClick.add( onResetFiringOrderButtonClicked )
resetFiringOrderButton.Text = 'Set To:'
resetFiringOrderButton.IsInteractable = false

local firingOrderDropdown = win.CreateDropdown()
firingOrderDropdown.SetAlignment( align_HorizEdges, 116, 10 )
firingOrderDropdown.SetAlignment( align_TopEdge, 120, 30 )
firingOrderDropdown.AddOption( 'Incremental: <i>1-2-3-4-... etc.</i>' )
for firingOrder in firingOrders do
	firingOrderDropdown.AddOption( string.format( '%s: <i>%s</i>', firingOrder[1], table.concat( firingOrder[2], '-' ) ) )
end

local invertVeeToggle = win.CreateLabelledToggle()
invertVeeToggle.SetAlignment( align_HorizEdges, 116, 10 )
invertVeeToggle.SetAlignment( align_TopEdge, 150, 30 )
invertVeeToggle.Text = 'Invert Cylinder Bank Order'
invertVeeToggle.Value = false

local showAngleLabel = win.CreateLabel()
showAngleLabel.SetAlignment( align_LeftEdge, 10, 100 )
showAngleLabel.SetAlignment( align_TopEdge, 186, 30 )
showAngleLabel.Alignment = textAnc_MiddleLeft
showAngleLabel.Text = 'Show Angle:'

local showAngleDropdown = win.CreateDropdown()
showAngleDropdown.SetAlignment( align_HorizEdges, 116, 10 )
showAngleDropdown.SetAlignment( align_TopEdge, 186, 30 )
local options = {}
options[1] = 'Timing Angle'
options[2] = 'Current Crank Angle'
options[3] = 'None'
showAngleDropdown.AddOptions( options )

----- Local Functions -----

local function round( val )
	return math.floor( val + 0.5 )
end

resetFiringOrder = function()
	if drivenCrank then
		-- Get firing order list.
		local firingOrder
		if firingOrderDropdown.Value > 0 then
			firingOrder = firingOrders[firingOrderDropdown.Value][2]
		end

		local i = 1
		for crank in drivenCrank.CrankShaft do
			if crank.NumLinkedCylinders > 0 then
				-- Get cylinders linked to crank (could be more than one, e.g. for a vee engine).
				local cylinders = crank.LinkedCylinders

				-- Sort cylinders by crank angle.
				local referenceAngle = cylinders[1].GetCrankAngle()
				local function comp( cylinderA, cylinderB )
					if invertVeeToggle.Value then
						return Math.DeltaAngle( cylinderA.GetCrankAngle(), referenceAngle ) > Math.DeltaAngle( cylinderB.GetCrankAngle(), referenceAngle )
					else
						return Math.DeltaAngle( cylinderA.GetCrankAngle(), referenceAngle ) < Math.DeltaAngle( cylinderB.GetCrankAngle(), referenceAngle )
					end
				end
				table.sort( cylinders, comp )

				-- Loop through cylinders and assign firing order.
				for cylinder in cylinders do
					local head = cylinder.Head
					if head then
						local firingOrderTweakable = head.GetTweakable( "Firing Order" )
						if firingOrder and (i <= #firingOrder) then
							firingOrderTweakable.Value = firingOrder[i]
						else
							firingOrderTweakable.Value = i
						end
						head.SyncTweakables()	-- Sync tweakable value to all players.
						i = i + 1
					end
				end
			end
		end
	end
end

local function updateTextObject( i, head )
	if textObjects[i] == nil then
		textObjects[i] = TextObjects.CreateTextObject()
		textObjects[i].Colour = firingOrderTextColour
	end
	textObjects[i].Position = head.Part.TransformPoint( head.Part.Bounds.Center );
	local firingOrderTweakable = head.GetTweakable( "Firing Order" )
	if showAngleDropdown.Value == 0 then
		textObjects[i].Width = 0.075
		textObjects[i].Height = 0.1
		textObjects[i].Text = string.format( '%d\n<size=40><color=%s>%d deg</color></size>', firingOrderTweakable.Value, angleTextColour, head.TimingAngle );
	elseif showAngleDropdown.Value == 1 then
		textObjects[i].Width = 0.075
		textObjects[i].Height = 0.1
		textObjects[i].Text = string.format( '%d\n<size=40><color=%s>%d deg</color></size>', firingOrderTweakable.Value, angleTextColour, round( head.GetCrankAngle() ) );
	elseif showAngleDropdown.Value == 2 then
		textObjects[i].Width = 0.075
		textObjects[i].Height = 0.05
		textObjects[i].Text = tostring( firingOrderTweakable.Value );
	end
	textObjects[i].IsVisible = true
end

----- Entry functions -----

function Update()
	local localPlayer = LocalPlayer.Value
	local targeter
	if localPlayer then
		targeter = localPlayer.Targeter
	end

	-- Get the targeted head part.
	local targetedHeadBehaviour
	if targeter and targeter.TargetedPart then
		for behaviour in targeter.TargetedPart.Behaviours do
			if behaviour.Name == 'Engine Head' then
				targetedHeadBehaviour = behaviour
			end
		end
	end

	if targetedHeadBehaviour ~= currentTargetedHeadBehaviour or (not targetedHeadBehaviour and currentTargetedHeadBehaviour) or (targetedHeadBehaviour and not currentTargetedHeadBehaviour) then
		-- Reset text object visibility.
		for textObject in textObjects do
			textObject.IsVisible = false
		end

		drivenCrank = nil

		if targetedHeadBehaviour then
			-- Get engine's driven crank.
			local crank = targetedHeadBehaviour.Crank
			if crank then
				drivenCrank = crank.drivenCrank
			end

			decFiringOrderButton.IsInteractable = true
			incFiringOrderButton.IsInteractable = true
		else
			decFiringOrderButton.IsInteractable = false
			incFiringOrderButton.IsInteractable = false
		end

		if drivenCrank then
			resetFiringOrderButton.IsInteractable = true
		else
			resetFiringOrderButton.IsInteractable = false
		end

		currentTargetedHeadBehaviour = targetedHeadBehaviour
	end

	-- Update text objects to show engine head firing orders.
	if drivenCrank then
		local i = 1
		for crank in drivenCrank.CrankShaft do
			for cylinder in crank.LinkedCylinders do
				local head = cylinder.Head
				if head then
					updateTextObject( i, head )
					i = i + 1
				end
			end
		end
	elseif currentTargetedHeadBehaviour then
		updateTextObject( 1, currentTargetedHeadBehaviour )
	end

	-- Check for keyboard shortcuts.
	local mouseWheel = Input.GetAxis( 'MouseZ' )
	if Input.GetKeyDown( '[-]' ) or (mouseWheel < -mouseWheelThreshold) then
		onDecFiringOrderButtonClicked()
	elseif Input.GetKeyDown( '[+]' ) or (mouseWheel > mouseWheelThreshold) then
		onIncFiringOrderButtonClicked()
	end
end

function Cleanup()
	for textObject in textObjects do
		TextObjects.ReleaseTextObject( textObject )
	end

	Windows.DestroyWindow( win )
end
