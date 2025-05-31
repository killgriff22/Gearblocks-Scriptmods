local WindowMan = require("WindowMan")
local Playerlib = require("Playerlib")
local helperlib = require("helperfuncs")
local valuewidth = 100
local valueheight = 25
local values = 10
local valueindex = 0

local window = WindowMan.CreateWindow(valueheight*values, valuewidth*2, WindowMan.GenericOnWindowClose)

local crank_ids = {}
local head_ids = {}
local numcyls = 0
local savedcontructionid = nil

local keyflag = false
local key = "tab"

local haveupdated_cranks = false
local haveupdated_heads = false



--main loop
function Update()
     --loadfile()() the input file
    local player = Playerlib.GetPlayer().Value
    local updates = loadfile("EFI Tuning/Update.lua")()
     --if we've selected a construction id
    if savedcontructionid then
        --loop thru the saved construction id
        local crankangles = {}
        for construction in Constructions.Instances do
            if construction.ID == savedcontructionid then
                --loop through our saved ids
                --cranks
                if updates.UpdateCranks and not haveupdated_cranks then
                    haveupdated_cranks = true
                    for i, id in ipairs(crank_ids) do
                        local crank = construction.GetPart(id)
                        local behaviour = crank.Behaviours[1]
                        --get the current angle 
                        local cur_angle = behaviour.GetTweakable("Crank Angle Offset") 
                        local wrk_angle = cur_angle.Value
                        crankangles[#crankangles+1] = wrk_angle
                        --if the part is a rear crank
                        local type = 0
                        local rpm = nil
                        local torque = nil
                        local power = nil
                        if helperlib.IsRearCrank(crank) then
                            --get behaviour values
                            type = 1
                            for channel in behaviour.Channels do
                                if channel.Label == "RPM" then
                                    rpm = channel.Value
                                end
                                if channel.Label == "Torque (Nm)" then
                                    torque = channel.Value
                                end
                                if channel.Label == "Power" then
                                    power = channel.Value
                                end
                            end
                        end
                        --print the output for the crank
                        helperlib.CrankOutput(i, updates.uid, wrk_angle, type, rpm, torque, power)
                        --match angle value to one given in our file
                        if not wrk_angle == updates.crankangles[i] then
                            --apply if changed
                            cur_angle.Value = updates.crankangles[i]
                        end
                    end
                elseif not updates.UpdateCranks and haveupdated_cranks then
                    haveupdated_cranks = false
                else
                    haveupdated_cranks = false
                end
                --heads
                if updates.UpdateHeads and not haveupdated_heads then
                    haveupdated_heads = true
                    for i, id in ipairs(head_ids) do
                        local head = construction.GetPart(id)
                        local behaviour = head.Behaviours[1]
                        --get the tweakable values from the head
                        local maxrpm = behaviour.GetTweakable("Max RPM")
                        local order = behaviour.GetTweakable("Firing Order")
                        local maxve = behaviour.GetTweakable("Peak Volumetric Efficiency")
                        local peakve = behaviour.GetTweakable("Peak Volumetric Efficiency RPM")
                        local lambda = behaviour.GetTweakable("Lambda")
                        local exeffct = behaviour.GetTweakable("Exhaust Effect Amount")
                        local double = behaviour.GetTweakable("Double Audio Pitch")
                        -- maxrpm - MaxRpm
                        -- order - FiringOrder
                        -- maxve - MaxVE
                        -- peakve - VERpm
                        -- lambda - Lambda
                        -- exeffct - ExEffect
                        -- double - DoubleAudioPitch
                        --get the behaviour values from the head
                        local channels = behaviour.Channels
                        local ve
                        local ipfr
                        local ffr
                        local te
                        for channel in channels do
                            if channel.Label == 'Volumetric Efficiency (%)' then
                                ve = channel.Value
                            elseif channel.Label == 'Intake Port Flow Rate (g/s)' then
                                ipfr = channel.Value
                            elseif channel.Label == 'Fuel Flow Rate (g/s)' then
                                ffr = channel.Value
                            elseif channel.Label == 'Thermal Efficiency (%)' then
                                te = channel.Value
                            end
                        end
                        --print out the output for the head
                        helperlib.HeadOutput(i, updates.uid, maxrpm.Value, order.Value, maxve.Value, peakve.Value, lambda.Value, 
                                        exeffct.Value, double.Value, ve, ipfr, ffr, te)
                        --match changes between fresh head info and what our file wants it against
                        if not maxrpm.Value == updates.MaxRpm then
                            maxrpm.Value = updates.MaxRpm  
                        end
                        if not order.Value == updates.FiringOrder then
                            order.Value = updates.FiringOrder  
                        end
                        if not maxve.Value == updates.MaxVE then
                            maxve.Value = updates.MaxVE  
                        end
                        if not peakve.Value == updates.VERpm then
                            peakve.Value = updates.VERpm  
                        end
                        if not lambda.Value == updates.Lambda then
                            lambda.Value = updates.Lambda  
                        end
                        if not exeffct.Value == updates.ExEffect then
                            exeffct.Value = updates.ExEffect  
                        end
                        if not double.Value == updates.DoubleAudioPitch then
                            double.Value = updates.DoubleAudioPitch  
                        end
                        --apply changes
                        behaviour.SyncTweakables()
                    end
                elseif not updates.UpdateHeads and haveupdated_heads then
                    haveupdated_heads = false
                else
                    haveupdated_heads = false
                end
                break
            end
        end
    end
 --if keyflag is not and key is pressed
    if not keyflag and Input.GetKey(key) then
        keyflag = true
        --get the targetpart
        local targetedPart = Playerlib.GetTargetedPart(player)
        --get the targeted construction
        local targetedConstruction = targetedPart.ParentConstruction
        --loop through construction's parts
        local isengine = false
        for part in targetedConstruction.Parts do
            --if part is a cylinder
            print(helperlib.IsCyl(part))
            if helperlib.IsCyl(part) then
                for Behaviour in part.Behaviours do
                    if Behaviour.Name == "Engine Cylinder" then
                        --get crank and head associated with cylinder
                        if Behaviour.Crank and Behaviour.Head then
                            crank_ids[#crank_ids+1] = Behaviour.Crank.Part.Idx
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
    elseif keyflag and not Input.GetKey(key) then
        keyflag = false
    end
end
function FixedUpdate()
    loadfile("EFI Tuning/FixedUpdate.lua")()
end

function Cleanup()
    WindowMan.DestroyWindow(window )
end

       

--output
--rpm
--power
--torque
--each cylinder's tweakables
--each crank's angle
--each cylinder's outputs
--structure:
--opening tag partid parttype cyl# if head
--values seperated by newlines
--closing tag



--input from python
--file that holds all the code to set each value
--python changes what values are used in the file
--loadfile()() and compare the values against the existing ones
--apply any changes

--tweakables
--each cyl's 
--max rpm
--peak VE
--peak VE rpm
--firing order
--lambda
--exhaust effect

 --todo: throttles.