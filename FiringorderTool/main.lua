-- Copyright (C) 2017 - 2025 SmashHammer Games Inc. - All Rights Reserved.
local WindowMan = require("Libs/WindowMan")
local Playerlib = require("Libs/Playerlib")
local helperlib = require("Libs/helperfuncs")
local windows = {}

local itemheight = 30
local itemwidth = 120 
local itemindex = 0 
local rowidx = 0
local keyflag = false
local key = "tab"
local crank_ids = {}
local head_ids = {}
local savedcontructionid = nil
local numcyls = 0
local window_open = false
local crankentries = {}
local orderentries = {}
local orderids = {}
local function destroywin()
	if window_open then
		WindowMan.DestroyWindow(windows[2])
		window_open = false
		savedcontructionid = nil
		crank_ids = {}
		head_ids = {}
		rowidx = 0
		crankentries = {}
		orderentries = {}
		numcyls = 0
	end
end

local function locateEngine()
	local player = Playerlib.GetPlayer().Value
	destroywin()
    --get the targetpart
    local targetedPart = Playerlib.GetTargetedPart(player)
    --get the targeted construction
    if not targetedPart then
        return
    end
    local targetedConstruction = targetedPart.ParentConstruction
    --loop through construction's parts
    local isengine = false
    for part in targetedConstruction.Parts do
        --if part is a cylinder
        if helperlib.IsCyl(part) then
            for Behaviour in part.Behaviours do
                if Behaviour.Name == "Engine Cylinder" then
                    --get crank and head associated with cylinder
                    if Behaviour.Crank and Behaviour.Head then
						local ispresnt = false
						for idx in crank_ids do
							if idx == Behaviour.Crank.Part.Idx then
								ispresnt = true
							end
						end
						if not ispresnt then
	                        crank_ids[#crank_ids+1] = Behaviour.Crank.Part.Idx
						end
						head_ids[#head_ids+1] = Behaviour.Head.Part.Idx
                        --count the cylinder
                        numcyls = numcyls + 1
                        isengine = true
                    end
                end
            end
        end
    end
    if isengine then
        savedcontructionid = targetedConstruction.ID
    end
end

windows[1] = WindowMan.CreateWindow(itemwidth, itemheight, WindowMan.GenericOnWindowClose)
local pickbutton = WindowMan.CreateButton(0,0, itemwidth, itemheight, "Open Table", windows[1], locateEngine)
windows[1].Title = "Open Table"

local function spawnWindow()
	local constrct
	for construction in Constructions.Instances do
        if construction.ID == savedcontructionid then
			constrct = construction
		end
	end
	window_open = true
	windows[2] = WindowMan.CreateWindow((itemwidth/3)*(#head_ids/#crank_ids)+(itemwidth/3)*2, itemheight * #crank_ids+itemheight, destroywin)
	windows[2].Title = "Firing Order Table"
	for crankid in crank_ids do
		local colidx = 0
		local crank = constrct.GetPart(crankid)
		local behaviour = crank.Behaviours[1]
		--get the current angle 
		local cur_angle = behaviour.GetTweakable("Crank Angle Offset")
		local wrk_angle = cur_angle.Value
		crankentries[#crankentries+1] = WindowMan.CreateInputField(colidx*(itemwidth / 3), rowidx*itemheight, itemwidth / 3, itemheight, windows[2], wrk_angle)
		colidx =  colidx + 2
		for cyl in behaviour.LinkedCylinders do
			local cyl_behave = cyl
			local head = cyl_behave.Head.Part
			local head_behave = head.Behaviours[1]
			local order = head_behave.GetTweakable("Firing Order").Value
			orderentries[#orderentries+1] = {
			WindowMan.CreateInputField(colidx*(itemwidth / 3), rowidx*itemheight, itemwidth / 3, itemheight, windows[2], order), 
			head.Idx}
			colidx =  colidx + 1
		end
		rowidx = rowidx + 1
	end
end



function Update()
	--if keyflag is not and key is pressed
	local ispressed = Input.GetKey(key)
	local player = Playerlib.GetPlayer().Value
	local targetedPart = Playerlib.GetTargetedPart(player)
    if not keyflag and ispressed then
        keyflag = true
		locateEngine()
    elseif keyflag and not ispressed then
        keyflag = false
    end
	-- if we have an engine
	if savedcontructionid then
		local constrct
		for construction in Constructions.Instances do
    	    if construction.ID == savedcontructionid then
				constrct = construction
			end
		end
		-- and there isnt an  existing window
		if not window_open then
			spawnWindow()
		end
		for i, crankid in ipairs(crank_ids) do
			local crankentry = crankentries[i]
			if crankentry then
				local crank = constrct.GetPart(crankid)
				local crank_behave = crank.Behaviours[1]
				local cur_angle = crank_behave.GetTweakable("Crank Angle Offset")
				if not crankentry.Value == "" then
					cur_angle.Value = tonumber(crankentry.Value)
					crank_behave.SyncTweakables()
				end
				for cyl_behave in crank_behave.LinkedCylinders do
					local head = cyl_behave.Head.Part
					local head_behave = head.Behaviours[1]
					local order = head_behave.GetTweakable("Firing Order")
					for i_, entry in ipairs (orderentries) do
						if head.Idx == entry[2] then
							if not order.Value == "" then
								order.Value = tonumber(entry[1].Value)
								head_behave.SyncTweakables()
							end
						end
					end
				end
			end
		end
	end
end






function Cleanup()
	for window in windows do
		WindowMan.DestroyWindow(window)
	end
end
