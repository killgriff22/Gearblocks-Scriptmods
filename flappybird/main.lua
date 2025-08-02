local WindowMan = require("WindowMan")

local buttonheight = 30
local buttonwidth = 200
local graphheight = buttonheight*5

local windowheight = buttonheight * 2 + graphheight

local w = WindowMan.CreateWindow(windowheight, buttonwidth, WindowMan.GenericOnWindowClose)
w.Title = 'Sensor Graph'

local SensorAssetName = "Sensor Angle"
local channelColours =
{
	Colour.__new( 255, 128, 128, 255 ),
	Colour.__new( 128, 255, 128, 255 ),
	Colour.__new( 128, 128, 255, 255 ),
	Colour.__new( 128, 255, 255, 255 ),
	Colour.__new( 255, 128, 255, 255 ),
	Colour.__new( 255, 255, 128, 255 )
}

local currentTargetedPart

local AddSensor

local function onAddSensor()
	if currentTargetedPart then
		AddSensor( currentTargetedPart )
	end
end
local AddSensorButton = WindowMan.CreateButton(0, graphheight, buttonheight, buttonheight, 'Add Sensor <i>(Tab)</i>',w, onAddSensor)
AddSensorButton.IsInteractable = false
local function hasDataChannels( part )
	if part.AssetName == SensorAssetName then
        return true
    end

	return false
end

local Graph = w.CreateTimeSeriesGraph()
Graph.SetAlignment( align_HorizEdges, 5, 5 )
Graph.SetAlignment( align_VertEdges, 5, 5 )
Graph.TimeSpan = 10
Graph.ShowReferenceLines = true
local i = 0
local parts = {}
AddSensor = function( part )
	if hasDataChannels(part) then

		local partGraph = Graph

        -- Pick a colour for this channel.
        local colour = channelColours[(i % #channelColours) + 1]
        -- Create a time series.
        partGraph.CreateTimeSeries( colour, 2 )
        -- Create a toggle that allows a channel's time series to be hidden, and also acts as its label on the graph.
        local behavior = part.Behaviours[1]
        local channel
        for c in behavior.Channels do
            if c.Label == "Angular Speed" then
                channel = c
            end
        end
        local channelToggle = w.CreateLabelledToggle()
        channelToggle.SetAlignment( align_HorizEdges, 5, 5 )
        channelToggle.SetAlignment( align_TopEdge, i * 20, 30 )
        local channelIdx = i
        local function onChannelToggleChanged()
            -- Set the time series visibility and reset the graph's y axis min max (auto scaling).
            partGraph.SetVisible( channelIdx, channelToggle.Value )
            partGraph.ResetMinMax()
        end
        channelToggle.OnChanged.add( onChannelToggleChanged )
        
        channelToggle.Text = channel.Label
        channelToggle.Colour = colour
        
        parts[i] = part
        i = i + 1
	end
end

function Update()
	local localPlayer = LocalPlayer.Value
	local targetedPart
	if localPlayer and localPlayer.Targeter then
		targetedPart = localPlayer.Targeter.TargetedPart
	end

	-- Update the window title with the part's name, and update the open window button's interactability.
	if targetedPart ~= currentTargetedPart then
		if targetedPart then
			AddSensorButton.IsInteractable = hasDataChannels( targetedPart )
		else
			AddSensorButton.IsInteractable = false
		end
		currentTargetedPart = targetedPart
	end

	-- Check for keyboard shortcuts.
	if Input.GetKeyDown( 'tab' ) then
		if AddSensorButton.IsInteractable then
			onAddSensor()
		end
	end

	-- Update each of the time series graphs.
	for k, v in pairs( parts ) do
		local part = v
		local partGraph = Graph
		if part and partGraph then
			-- Iterate through all the part behaviour data channels, getting their values and updating the graphs.
			local behavior = part.Behaviours[1]
            local channel
            for c in behavior.Channels do
                if c.Label == "RPM" then
                    channel = c
                end
            end
            partGraph.AddDataPoint( k, channel.Value )
		end
	end
end

function Cleanup()
    WindowMan.DestroyWindow(w)
end