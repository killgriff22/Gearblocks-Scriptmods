-- Copyright (C) 2017 - 2025 SmashHammer Games Inc. - All Rights Reserved.
local WindowMan = require("Libs/WindowMan")
local Playerlib = require("Libs/Playerlib")
local helperlib = require("Libs/helperfuncs")
local itemheight = 30
local itemwidth = 140 
local itemindex = 0 
local rowidx = 0
local keyflag = false
local key = "tab"
local crank_ids = {}
local head_ids = {}
local savedcontructionid = nil
local numcyls = 0
local TableWin_open = false
local HeadWin_open = false
local ThrtlWin_open = false
local crankentries = {}
local orderentries = {}
local orderids = {}
local MainWin
local TableWin
local HeadWin
local ThrtlWin
local setrpm = false
local setfro = false
local setmve = false
local setpve = false
local setlbd = false
local setxft = false
local setdbl = false
local IdleminEntry
local idlerpmEntry
local keystogggleEntry
local freecontrolEntry
local controlkeyEntry
local HeadSettings = {
	maxrpm = {
		Value = "0"
	},
	order = {
		Value = "0"
	},
	maxve = {
		Value = "0"
	},
	peakve = {
		Value = "0"
	},
	lambda = {
		Value = "0"
	},
	exeffct = {
		Value = "0"
	},
	double = {
		Value = false
	},
}

local function destroyTablewin()
	if TableWin_open then
		WindowMan.DestroyWindow(TableWin)
		TableWin_open = false
		savedcontructionid = nil
		crank_ids = {}
		head_ids = {}
		rowidx = 0
		crankentries = {}
		orderentries = {}
		numcyls = 0
	end
end

local function destroyHeadWin()
	if HeadWin_open then
		WindowMan.DestroyWindow(HeadWin)
		HeadWin_open = false
	end
end

local function destroyThrtlWin()
	if ThrtlWin_open then
		WindowMan.DestroyWindow(ThrtlWin)
		ThrtlWin_open = false
	end
end

local function locateEngine()
	local player = Playerlib.GetPlayer().Value
	destroyTablewin()
	destroyHeadWin()
	savedcontructionid = nil
	crank_ids = {}
	head_ids = {}
	rowidx = 0
	crankentries = {}
	orderentries = {}
	numcyls = 0
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
	else
		savedcontructionid = nil
    end
end
local function applymaxrpm()
setrpm = true
end
local function applyorder()
setfro = true
end
local function applymaxve()
setmve = true
end
local function applypeakve()
setpve = true
end
local function applylambda()
setlbd = true
end
local function applyexeffct()
setxft = true
end
local function applydouble()
setdbl = true
end
local function spawnTableWin()
	local rowidx = 0
	local constrct
	for construction in Constructions.Instances do
        if construction.ID == savedcontructionid then
			constrct = construction
		end
	end
	TableWin_open = true
	TableWin = WindowMan.CreateWindow((itemwidth/3)*(#head_ids/#crank_ids)+(itemwidth/3)*2, itemheight * #crank_ids+itemheight, destroyTablewin)
	TableWin.Title = "Firing Order Table"
	for crankid in crank_ids do
		local colidx = 0
		local crank = constrct.GetPart(crankid)
		local behaviour = crank.Behaviours[1]
		--get the current angle 
		local cur_angle = behaviour.GetTweakable("Crank Angle Offset")
		local wrk_angle = cur_angle.Value
		crankentries[#crankentries+1] = WindowMan.CreateInputField(colidx*(itemwidth / 3), rowidx*itemheight, itemwidth / 3, itemheight, TableWin, wrk_angle)
		colidx =  colidx + 2
		for cyl in behaviour.LinkedCylinders do
			local cyl_behave = cyl
			local head = cyl_behave.Head.Part
			local head_behave = head.Behaviours[1]
			local order = head_behave.GetTweakable("Firing Order").Value
			orderentries[#orderentries+1] = {
			WindowMan.CreateInputField(colidx*(itemwidth / 3), rowidx*itemheight, itemwidth / 3, itemheight, TableWin, order), 
			head.Idx}
			colidx =  colidx + 1
		end
		rowidx = rowidx + 1
	end
end

local function spawnHeadWin()
	if HeadWin_open then
		destroyHeadWin()
	end
	if not crank_ids[1] then
		return
	end
	local constrct
	local rowidx = 0
	for construction in Constructions.Instances do
        if construction.ID == savedcontructionid then
			constrct = construction
		end
	end
	HeadWin_open = true
	HeadWin = WindowMan.CreateWindow(itemwidth*2+(itemwidth/3), itemheight*8, destroyHeadWin)
	HeadWin.Title = "Head Tuning"
	local crankid = crank_ids[1]
	local crank = constrct.GetPart(crankid)
	local behaviour = crank.Behaviours[1]
	local cyl_behave = behaviour.LinkedCylinders[1]
	local head = cyl_behave.Head.Part
	local head_behave = head.Behaviours[1]
	local maxrpm  = head_behave.GetTweakable("Max RPM").Value
	local order   = head_behave.GetTweakable("Firing Order").Value
	local maxve   = head_behave.GetTweakable("Peak Volumetric Efficiency").Value
	local peakve  = head_behave.GetTweakable("Peak Volumetric Efficiency RPM").Value
	local lambda  = head_behave.GetTweakable("Lambda").Value
	local exeffct = head_behave.GetTweakable("Exhaust Effect Amount").Value
	local double  = head_behave.GetTweakable("Double Audio Pitch").Value
	local setbuttonwidth = 40
	HeadSettings.maxrpm  = WindowMan.CreateLabelledInputField(0,itemheight*rowidx, itemwidth*2+(itemwidth/3)-setbuttonwidth, itemheight, "Max RPM", HeadWin, maxrpm)
	WindowMan.CreateButton((itemwidth*2+(itemwidth/3))-setbuttonwidth, itemheight*rowidx, setbuttonwidth, itemheight, "Set", HeadWin, applymaxrpm)
	rowidx = rowidx + 1
	HeadSettings.order   = WindowMan.CreateLabelledInputField(0,itemheight*rowidx, itemwidth*2+(itemwidth/3)-setbuttonwidth, itemheight, "Firing Order", HeadWin, order)
	WindowMan.CreateButton((itemwidth*2+(itemwidth/3))-setbuttonwidth, itemheight*rowidx, setbuttonwidth, itemheight, "Set", HeadWin, applyorder)
	rowidx = rowidx + 1
	HeadSettings.maxve   = WindowMan.CreateLabelledInputField(0,itemheight*rowidx, itemwidth*2+(itemwidth/3)-setbuttonwidth, itemheight, "Max VE", HeadWin, maxve)
	WindowMan.CreateButton((itemwidth*2+(itemwidth/3))-setbuttonwidth, itemheight*rowidx, setbuttonwidth, itemheight, "Set", HeadWin, applymaxve)
	rowidx = rowidx + 1
	HeadSettings.peakve  = WindowMan.CreateLabelledInputField(0,itemheight*rowidx, itemwidth*2+(itemwidth/3)-setbuttonwidth, itemheight, "Peak VE RPM", HeadWin, peakve)
	WindowMan.CreateButton((itemwidth*2+(itemwidth/3))-setbuttonwidth, itemheight*rowidx, setbuttonwidth, itemheight, "Set", HeadWin, applypeakve)
	rowidx = rowidx + 1
	HeadSettings.lambda  = WindowMan.CreateLabelledInputField(0,itemheight*rowidx, itemwidth*2+(itemwidth/3)-setbuttonwidth, itemheight, "Lambda", HeadWin, lambda)
	WindowMan.CreateButton((itemwidth*2+(itemwidth/3))-setbuttonwidth, itemheight*rowidx, setbuttonwidth, itemheight, "Set", HeadWin, applylambda)
	rowidx = rowidx + 1
	HeadSettings.exeffct = WindowMan.CreateLabelledInputField(0,itemheight*rowidx, itemwidth*2+(itemwidth/3)-setbuttonwidth, itemheight, "Exhaust Effect Amount", HeadWin, exeffct)
	WindowMan.CreateButton((itemwidth*2+(itemwidth/3))-setbuttonwidth, itemheight*rowidx, setbuttonwidth, itemheight, "Set", HeadWin, applyexeffct)
	rowidx = rowidx + 1
	HeadSettings.double  =     WindowMan.CreateLabelledToggle(0,itemheight*rowidx, itemwidth*2+(itemwidth/3)-setbuttonwidth, itemheight, "Double Audio Pitch", HeadWin, double)
	WindowMan.CreateButton((itemwidth*2+(itemwidth/3))-setbuttonwidth, itemheight*rowidx, setbuttonwidth, itemheight, "Set", HeadWin, applydouble)
	rowidx = rowidx + 1
end

local function spawnThrtlWin()
	if ThrtlWin_open then
		destroyThrtlWin()
	end
	if not crank_ids[1] then
		return
	end
	local constrct
	local rowidx = 0
	for construction in Constructions.Instances do
        if construction.ID == savedcontructionid then
			constrct = construction
		end
	end
	ThrtlWin_open = true
	ThrtlWin = WindowMan.CreateWindow(itemwidth*2+(itemwidth/3), itemheight*8, destroyThrtlWin)
	ThrtlWin.Title = "Throttle Tuning"
	for part in constrct.Parts do
		if helperlib.IsThrottle(part) then
			local behaviour = part.Behaviours[2]
			local Idlemin = behaviour.GetTweakable("Idle Control Min %").Value
			local idlerpm = behaviour.GetTweakable("Idle RPM").Value
			local keystogggle = behaviour.GetTweakable("Keys Toggle Activation").Value
			local freecontrol = behaviour.GetTweakable("Player Only Has Control When Seated").Value
			local controlkey = behaviour.GetTweakable("Control Key").Value
			IdleminEntry = WindowMan.CreateLabelledInputField(0, rowidx*itemheight, itemwidth*2-setbuttonwidth, itemheight, "TBD", ThrtlWin, Idlemin)
			idlerpmEntry = WindowMan.CreateLabelledInputField(0, rowidx*itemheight, itemwidth*2-setbuttonwidth, itemheight, "TBD", ThrtlWin, idlerpm)
			keystogggleEntry = WindowMan.CreateLabelledInputField(0, rowidx*itemheight, itemwidth*2-setbuttonwidth, itemheight, "TBD", ThrtlWin, keystogggle)
			freecontrolEntry = WindowMan.CreateLabelledInputField(0, rowidx*itemheight, itemwidth*2-setbuttonwidth, itemheight, "TBD", ThrtlWin, freecontrol)
			controlkeyEntry = WindowMan.CreateLabelledDropdown(0, rowidx*itemheight, itemwidth*2-setbuttonwidth, itemheight, "TBD", ThrtlWin, )
		end
	end
end

MainWin = WindowMan.CreateWindow(itemwidth*2, itemheight*5, WindowMan.GenericOnWindowClose)
local pickbutton = WindowMan.CreateButton(0, itemheight*itemindex, itemwidth*2, itemheight, "Select Engine (tab)", MainWin, locateEngine)
itemindex = itemindex + 1
local openTableBttn = WindowMan.CreateButton(0, itemheight*itemindex, itemwidth*2, itemheight, "Open Firing Order Table", MainWin, spawnTableWin)
itemindex = itemindex + 1
local openHeadBttn = WindowMan.CreateButton(0, itemheight*itemindex, itemwidth*2, itemheight, "Open Head Tuning", MainWin, spawnHeadWin)
itemindex = itemindex + 1
local openThrtlBttn = WindowMan.CreateButton(0, itemheight*itemindex, itemwidth*2, itemheight, "Open Throttle Tuning", MainWin, spawnThrtlWin)
itemindex = itemindex + 1
MainWin.Title = "BetterEngineTool"


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
	pickbutton.Text = string.format("<color=%s>Select Construction (TAB), (%s)</color>", savedcontructionid and '#66ff66' or '#ff6666', helperlib.denil(savedcontructionid))
	if savedcontructionid then
		local constrct
		for construction in Constructions.Instances do
    	    if construction.ID == savedcontructionid then
				constrct = construction
			end
		end
		if TableWin_open then
			for i, crankid in ipairs(crank_ids) do
				local crankentry = crankentries[i]
				if crankentry then
					local crank = constrct.GetPart(crankid)
					if not crank then
						return
					end
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
		if HeadWin_open then
			for i, headid in ipairs(head_ids) do
				local head = constrct.GetPart(headid)
				if not head then
					return
				end
				local head_behave = head.Behaviours[1]
				if setrpm then
					head_behave.GetTweakable("Max RPM").Value = tonumber(HeadSettings.maxrpm.Value)
				end
				if setfro then
					head_behave.GetTweakable("Firing Order").Value = tonumber(HeadSettings.order.Value)
				end
				if setmve then
					head_behave.GetTweakable("Peak Volumetric Efficiency").Value = tonumber(HeadSettings.maxve.Value)
				end
				if setpve then
					head_behave.GetTweakable("Peak Volumetric Efficiency RPM").Value = tonumber(HeadSettings.peakve.Value)
				end
				if setlbd then
					head_behave.GetTweakable("Lambda").Value = tonumber(HeadSettings.lambda.Value)
				end
				if setxft then
					head_behave.GetTweakable("Exhaust Effect Amount").Value = tonumber(HeadSettings.exeffct.Value)
				end
				if setdbl then
					head_behave.GetTweakable("Double Audio Pitch").Value = HeadSettings.double.Value
				end
				if i == #head_ids then
					setrpm = false
					setfro = false
					setmve = false
					setpve = false
					setlbd = false
					setxft = false
					setdbl = false
					head_behave.SyncTweakables()
				end
			end
		end
	end
end






function Cleanup()
	if HeadWin then
		WindowMan.DestroyWindow(HeadWin)
	end
	if TableWin then
		WindowMan.DestroyWindow(TableWin)
	end
	WindowMan.DestroyWindow(MainWin)
end


