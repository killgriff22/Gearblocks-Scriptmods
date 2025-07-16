
function SpawnPart(AssetName, position, rotation, size)
    local parts = {  }
    local p = nil
    for part in Parts.Instances do
        parts[part.ID] = part
    end
    PopConstructions.SpawnPart( AssetName, position, rotation )
    for part in Parts.Instances do
        if not parts[part.ID] then
            p = part
        end
    end
    
    p.SetSize( size )
    return p
end
local WindowMan

WindowMan = loadfile("../../workshop/content/1305080/3507800887/WindowMan.lua")()

local labelwidth = 100
local labelheight = 25
local labels = 3
local label_i = 0

local window = WindowMan.CreateWindow(labelwidth*2, labelheight*labels, WindowMan.GenericOnWindowClose)

local radius_label = WindowMan.CreateLabelledInputField()