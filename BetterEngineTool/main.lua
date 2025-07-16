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
local throttle_ids = {}
local savedconstructionid = nil
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
local setidlemin = false
local setidlerpm = false
local setkeystoggle = false
local setfreecontrol = false
local IdleminEntry
local idlerpmEntry
local keystogggleEntry
local freecontrolEntry
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
local function relocateengine(threshold)
	threshold = threshold or 2
	for construction in Constructions.Instances do
		local likeparts = 0
        if construction.ID == savedconstructionid then
			return
		end
		local id = construction.ID
		for part in construction.Parts do
			for crank_id in crank_ids do
				if part.Idx == crank_id then
					likeparts = likeparts + 1
				end
			end
		end
		if likeparts > threshold then
			savedconstructionid = id
			return construction
		end
	end
end
local function round( val )
	return math.floor( val + 0.5 )
end
local firingOrderTextColour = Colour.__new( 220, 111, 74, 255 )
local angleTextColour = 'white'
local textObjects = {}
local function updateTextObject( i, head )
	if textObjects[i] == nil then
		textObjects[i] = TextObjects.CreateTextObject()
		textObjects[i].Colour = firingOrderTextColour
	end
	textObjects[i].Position = head.Part.TransformPoint( head.Part.Bounds.Center );
	local firingOrderTweakable = head.GetTweakable( "Firing Order" )
	textObjects[i].Width = 0.075
	textObjects[i].Height = 0.1
	textObjects[i].Text = string.format( '%d\n<size=40><color="white>Crank Angle: %d deg</color></size>\n<size=40><color="white">Timing Angle: %d deg</color></size>', firingOrderTweakable.Value, round( head.GetCrankAngle() ), head.TimingAngle )
	textObjects[i].IsVisible = true
end
local function destroyTablewin()
	if TableWin_open then
		WindowMan.DestroyWindow(TableWin)
		TableWin_open = false
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
	destroyThrtlWin()
	savedconstructionid = nil
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
        savedconstructionid = targetedConstruction.ID
	else
		savedconstructionid = nil
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
local function applyidlemin()
	setidlemin = true
end
local function applyidlerpm()
	setidlerpm = true
end
local function applykeystoggle()
	setkeystoggle = true
end
local function applyfreecontrol()
	setfreecontrol = true
end
local function spawnTableWin()
	local rowidx = 0
	local constrct
	for construction in Constructions.Instances do
        if construction.ID == savedconstructionid then
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
		crankentries[#crankentries+1] = {WindowMan.CreateInputField(colidx*(itemwidth / 3), rowidx*itemheight, itemwidth / 3, itemheight, TableWin, wrk_angle), crankid}
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
        if construction.ID == savedconstructionid then
			constrct = construction
		end
	end
	if constrct == nil then
		constrct = relocateengine(2)
	end
	if constrct == nil then
		UnloadScript.Raise(ScriptName)
		return
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
        if construction.ID == savedconstructionid then
			constrct = construction
		end
	end
	if constrct == nil then
		constrct = relocateengine(3)
	end
	if constrct == nil then
		UnloadScript.Raise(ScriptName)
		return
	end
	ThrtlWin_open = true
	ThrtlWin = WindowMan.CreateWindow(itemwidth*2+(itemwidth/3), itemheight*5, destroyThrtlWin)
	ThrtlWin.Title = "Throttle Tuning"
	local setbuttonwidth = 40
	for part in constrct.Parts do
		if helperlib.IsThrottle(part) then
			throttle_ids[#throttle_ids+1] = part.Idx
			local behaviour = part.Behaviours[2]
			local Idlemin = behaviour.GetTweakable("Idle Control Min %").Value
			local idlerpm = behaviour.GetTweakable("Idle RPM").Value
			local keystogggle = behaviour.GetTweakable("Keys Toggle Activation").Value
			local freecontrol = behaviour.GetTweakable("Player Only Has Control When Seated").Value
			IdleminEntry = WindowMan.CreateLabelledInputField(0, rowidx*itemheight, itemwidth*2-setbuttonwidth, itemheight, "Idle %", ThrtlWin, Idlemin)
			WindowMan.CreateButton((itemwidth*2+(itemwidth/3))-setbuttonwidth, itemheight*rowidx, setbuttonwidth, itemheight, "Set", ThrtlWin, applyidlemin)
			rowidx = rowidx + 1
			idlerpmEntry = WindowMan.CreateLabelledInputField(0, rowidx*itemheight, itemwidth*2-setbuttonwidth, itemheight, "Idle RPM", ThrtlWin, idlerpm)
			WindowMan.CreateButton((itemwidth*2+(itemwidth/3))-setbuttonwidth, itemheight*rowidx, setbuttonwidth, itemheight, "Set", ThrtlWin, applyidlerpm)
			rowidx = rowidx + 1
			keystogggleEntry = WindowMan.CreateLabelledToggle(0, rowidx*itemheight, itemwidth*2-setbuttonwidth, itemheight, "Keys Toggle Activation", ThrtlWin, keystogggle)
			WindowMan.CreateButton((itemwidth*2+(itemwidth/3))-setbuttonwidth, itemheight*rowidx, setbuttonwidth, itemheight, "Set", ThrtlWin, applykeystoggle)
			rowidx = rowidx + 1  
			freecontrolEntry = WindowMan.CreateLabelledToggle(0, rowidx*itemheight, itemwidth*2-setbuttonwidth, itemheight, "Player Only Has Control When Seated", ThrtlWin, freecontrol)
			WindowMan.CreateButton((itemwidth*2+(itemwidth/3))-setbuttonwidth, itemheight*rowidx, setbuttonwidth, itemheight, "Set", ThrtlWin, applyfreecontrol)
			rowidx = rowidx + 1
			return
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
	pickbutton.Text = string.format("<color=%s>Select Construction (TAB), (%s)</color>", savedconstructionid and '#66ff66' or '#ff6666', helperlib.denil(savedconstructionid))
	if savedconstructionid then
		local constrct
		for construction in Constructions.Instances do
    	    if construction.ID == savedconstructionid then
				constrct = construction
			end
		end
		if TableWin_open then
			for crankentry in crankentries do
				local crank = constrct.GetPart(crankentry[2])
				local crank_behave = crank.Behaviours[1]
				local cur_angle = crank_behave.GetTweakable("Crank Angle Offset")
				--print(tonumber(crankentry[1].Value) == nil, not (tonumber(crankentry[1].Value) == nil))
				if not (tonumber(crankentry[1].Value) == nil) then
					cur_angle.Value = tonumber(crankentry[1].Value)
					crank_behave.SyncTweakables()
				end
				--crankentry[1].Value = crank_behave.GetTweakable("Crank Angle Offset").Value
			end
			for headentry in orderentries do
				local head = constrct.GetPart(headentry[2])
				local head_behave = head.Behaviours[1]
				local order = head_behave.GetTweakable("Firing Order")
				if not (tonumber(headentry[1].Value) == nil) then
					order.Value = tonumber(headentry[1].Value)
					head_behave.SyncTweakables()
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
		if ThrtlWin_open then
			for id in throttle_ids do
				local Throttle = constrct.GetPart(id)
				if not Throttle then
					return
				end
				local throttle_behave = Throttle.Behaviours[2]
				if setidlemin then
					throttle_behave.GetTweakable("Idle Control Min %").Value = tonumber(IdleminEntry.Value)
				end
				if setidlerpm then
					throttle_behave.GetTweakable("Idle RPM").Value = tonumber(idlerpmEntry.Value)
				end
				if setkeystoggle then
					throttle_behave.GetTweakable("Keys Toggle Activation").Value = keystogggleEntry.Value
				end
				if setfreecontrol then
					throttle_behave.GetTweakable("Player Only Has Control When Seated").Value = freecontrolEntry.Value
				end
			end
			setidlemin = false
			setidlerpm = false
			setkeystoggle = false
			setfreecontrol = false
		end
		for headid in head_ids do
			local head = constrct.GetPart(headid)
			if not head then
				return
			end
			local head_behave = head.Behaviours[1]
			updateTextObject( head.Idx, head_behave )
		end
	end
end






function Cleanup()
	for textObject in textObjects do
		TextObjects.ReleaseTextObject( textObject )
	end
	if HeadWin then
		WindowMan.DestroyWindow(HeadWin)
	end
	if TableWin then
		WindowMan.DestroyWindow(TableWin)
	end
	if ThrtlWin then
		WindowMan.DestroyWindow(ThrtlWin)
	end
	WindowMan.DestroyWindow(MainWin)
end


