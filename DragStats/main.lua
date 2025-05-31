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

local openGraphWindow
local function hasDataChannels( part )
	for behaviour in part.Behaviours do
		if behaviour.NumChannels > 0 then
			return true
		end
	end

	return false
end

-- Track created windows and graphs.
local partWins = {}
local partGraphs = {}

openGraphWindow = function( part )
	if partWins[part.ID] == nil then
		-- Create a window for this part.
		local partWin = Windows.CreateWindow()
		partWin.SetAlignment( align_RightEdge, 320, 300 )
		partWin.SetAlignment( align_TopEdge, 80, 200 )
		local function onPartWindowClose()
			-- Clear entries for this part.
			partWins[part.ID] = nil
			partGraphs[part.ID] = nil
		end
		partWin.OnClose.add( onPartWindowClose )
		partWin.Title = part.FullDisplayName
		partWin.IsResizable = true
		partWin.MinResizeHeight = 120
		partWin.Show( true )

		-- Create a time series graph for this part.
		local partGraph = partWin.CreateTimeSeriesGraph()
		partGraph.SetAlignment( align_HorizEdges, 5, 5 )
		partGraph.SetAlignment( align_VertEdges, 5, 5 )
		partGraph.TimeSpan = 10
		partGraph.ShowReferenceLines = true

		-- Iterate through all the part behaviour data channels, creating a time series for each of them.
		local i = 0
		for behaviour in part.Behaviours do
			for channel in behaviour.Channels do
				if type( channel.Value ) == 'number' then
					-- Pick a colour for this channel.
					local colour = channelColours[(i % #channelColours) + 1]

					-- Create a time series.
					partGraph.CreateTimeSeries( colour, 2 )

					-- Create a toggle that allows a channel's time series to be hidden, and also acts as its label on the graph.
					local channelToggle = partWin.CreateLabelledToggle()
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

					i = i + 1
				end
			end
		end

		-- Add entries for this part.
		partWins[part.ID] = partWin
		partGraphs[part.ID] = partGraph
	end
end

local WindowMan = require("WindowMan")
local Playerlib = require("Playerlib")
local itemheight = 30
local itemwidth = 200
local itemindex = 0
local msToKmh = 60 * 60 / 1000  
local qm = 402.336
math.round = function ( number, precision )
    return tonumber( string.format( string.format( '%%0.%df', precision ), number ) )
 end
local window = WindowMan.CreateWindow(itemwidth, itemheight*9, WindowMan.GenericOnWindowClose)
window.Title = 'Drag Stats'
local QMLabel = WindowMan.CreateLabel(0, itemindex*itemheight, itemwidth, itemheight, "Quarter Mile", window)
local QMValueLabel = WindowMan.CreateLabel(0, itemindex*itemheight, itemwidth, itemheight, "Nil", window)
QMValueLabel.Alignment = textAnc_MiddleRight
itemindex = itemindex + 1
local speedkmhLabel = WindowMan.CreateLabel(0, itemindex*itemheight, itemwidth, itemheight, "Speed - KmH", window)
local speedkmhValLabel = WindowMan.CreateLabel(0, itemindex*itemheight, itemwidth, itemheight, "Nil", window)
speedkmhValLabel.Alignment = textAnc_UpperRight
speedkmhLabel.Alignment = textAnc_UpperLeft
local speedmphLabel = WindowMan.CreateLabel(0, itemindex*itemheight, itemwidth, itemheight, "Speed - MpH", window)
local speedmphValLabel = WindowMan.CreateLabel(0, itemindex*itemheight, itemwidth, itemheight, "Nil", window)
speedmphValLabel.Alignment = textAnc_LowerRight
speedmphLabel.Alignment = textAnc_LowerLeft
itemindex = itemindex + 1
local zero60Label = WindowMan.CreateLabel(0, itemindex*itemheight, itemwidth, itemheight, "0 - 60 mph", window)
local zero60ValLabel = WindowMan.CreateLabel(0, itemindex*itemheight, itemwidth, itemheight, "Nil", window)
zero60ValLabel.Alignment = textAnc_MiddleRight
itemindex = itemindex + 1
local zero100Label = WindowMan.CreateLabel(0, itemindex*itemheight, itemwidth, itemheight, "0 - 100 mph", window)
local zero100ValLabel = WindowMan.CreateLabel(0, itemindex*itemheight, itemwidth, itemheight, "Nil", window)
zero100ValLabel.Alignment = textAnc_MiddleRight
itemindex = itemindex + 1
local zero200kmhLabel = WindowMan.CreateLabel(0, itemindex*itemheight, itemwidth, itemheight, "0 - 200 kph", window)
local zero200kmhValLabel = WindowMan.CreateLabel(0, itemindex*itemheight, itemwidth, itemheight, "Nil", window)
zero200kmhValLabel.Alignment = textAnc_MiddleRight
itemindex = itemindex + 1
local ready_bar = WindowMan.CreateLabel(0, itemindex*itemheight, itemwidth/2, itemheight, "READY", window)
ready_bar.Alignment = textAnc_MiddleCenter
local running_bar = WindowMan.CreateLabel(itemwidth/2, itemindex*itemheight, itemwidth/2, itemheight, "RUNNING", window)
running_bar.Alignment = textAnc_MiddleCenter
itemindex = itemindex + 1
local cachedconstruction
local cachedconstructionlabel = WindowMan.CreateLabel(0, itemindex*itemheight, itemwidth, itemheight, "cached build id", window)
local cachedconstructionVallabel = WindowMan.CreateLabel(0, itemindex*itemheight, itemwidth, itemheight, "Nil", window)
cachedconstructionVallabel.Alignment = textAnc_MiddleRight
itemindex = itemindex + 1
local function profilecrank()
    if not cachedconstruction then
        MessagePopupShow.Raise("No Selected Construction!")
    end
    for part in cachedconstruction.Parts do
        if part.assetName == "Engine Crank Rear x2 Axle Resizable" or part.assetName == "Engine Crank Rear x1 Axle Resizable" then
            openGraphWindow(part)
        end
    end
end
local function profileheads()
    if not cachedconstruction then
        MessagePopupShow.Raise("No Selected Construction!")
    end
    for part in cachedconstruction.Parts do
        if part.assetName == "Engine Head x2" or part.assetName == "Engine Head x1" then
            openGraphWindow(part)
        end
    end
end
local crankprofilebutton = WindowMan.CreateButton(0, itemindex*itemheight, itemwidth/2, itemheight, "Crank Profiler", window, profilecrank)
local headprofilerbutton = WindowMan.CreateButton(itemwidth/2, itemindex*itemheight, itemwidth/2, itemheight, "Head Profiler", window, profileheads)
itemindex = itemindex + 1
local averagespeedlist = {}
local averagespeed = 0
itemindex = itemindex + 1
local ready = false
local running = false
local savedposition = nil
local savedlen, samples = 0, 0
local runStartTime = -1
local hold1, hold2, pressed
local step = 0
function Update()
    ready_bar.Text = string.format("<color=%s>READY</color>", ready and '#66ff66' or '#ff6666')
    running_bar.Text = string.format("<color=%s>RUNNING</color>", running and '#66ff66' or '#ff6666')
    local player = Playerlib.GetPlayer().Value
    if player == nil then return end
    local commonpos = player.Velocity
    --print(player.Position)
    local speed = math.round(commonpos.magnitude * msToKmh, 2)
    if speed < 1 then speed = 0 end
    if speed < 3 and not ready and not running then
        ready = true
        savedlen = 0
    end
    local len
    if speed < 3 and ready and not running then
        savedposition = player.Position
        savedlen = 0
        runStartTime = Time.GameTime
    end
    if speed > 3 and not running and ready then
        running = true
        ready = false
    end
    if speed > 3 and running and not ready then
        local temppos = player.Position
        len = math.sqrt((temppos.x - savedposition.x)^2 + (temppos.z-savedposition.z)^2)
        savedlen = len
        speedkmhValLabel.Text = speed
        local speedmph = math.round(speed / 1.609, 2)
        speedmphValLabel.Text = speedmph
        local t = Time.GameTime
        QMValueLabel.Text = math.round(t - runStartTime, 2)
        if speedmph < 60 then
            zero60ValLabel.Text = QMValueLabel.Text
        end
        if speedmph < 100 then
            zero100ValLabel.Text = QMValueLabel.Text
        end
        if speed < 200 then
            zero200kmhValLabel.Text = QMValueLabel.Text
        end
        for k, v in pairs( partGraphs ) do
            local part = Parts.GetInstance( k )
            local partGraph = v
            if part and partGraph then
                -- Iterate through all the part behaviour data channels, getting their values and updating the graphs.
                local i = 0
                for behaviour in part.Behaviours do
                    for channel in behaviour.Channels do
                        if type( channel.Value ) == 'number' then
                            -- Add this channel's current value to the time series.
                            partGraph.AddDataPoint( i, channel.Value )
                            i = i + 1
                        end
                    end
                end
            end
        end
    end
    if (speed < 3 or savedlen >= qm) and running and not ready then
        running = false
        savedlen = 0
    end
    --print(len)
    if Input.GetKey('tab') and not pressed then
        local p = Playerlib.GetTargetedPart(player)
        if not p then return end
        cachedconstruction = p.ParentConstruction
        cachedconstructionVallabel.Text = cachedconstruction.ID
    end
    if not Input.GetKey("tab") then
        pressed = false
    end
end

function Cleanup()
    if window then
        WindowMan.DestroyWindow(window)
    end
end