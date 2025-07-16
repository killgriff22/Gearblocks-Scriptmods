local WindowMan = require("WindowMan")
local Playerlib = require("Playerlib")
local utils = require("utils")

local ItemHeight = 25
local ItemWidth = 180
local Items = 7
local Rowidx = 0
local Window = {
    open = false,
    open_CollisionWin = false,
    open_WeldingWin = false,
    open_PickerWin = false
}
Window.CollisionWindowObjects = {}

function Window.CloseCollisionWindow()
    if Window.DrawWindow then
        Rowidx = 0
        WindowMan.DestroyWindow(Window.DrawWindow)
        Window.DrawWindow = nil
        Window.CollisionWindowObjects = {}
    end
end

local function PartToggle()
    local Player = Playerlib.GetPlayer().Value
    local part = Playerlib.GetTargetedPart(Player)
    if not part then
        return
    end
    ConstructionOps.SetPartCollidable( part.ID, not part.IsCollidable )
end
local function ConstructionCollisionOn_func()
    local Player = Playerlib.GetPlayer().Value
    local part = Playerlib.GetTargetedPart(Player)
    if not part then
        return
    end
    local construction = part.ParentConstruction
    for i, _part in pairs(construction.Parts) do
        ConstructionOps.SetPartCollidable( _part.ID, true )
    end
end
local function ConstructionCollisionOff_func()
    local Player = Playerlib.GetPlayer().Value
    local part = Playerlib.GetTargetedPart(Player)
    if not part then
        return
    end
    local construction = part.ParentConstruction
    for i, _part in pairs(construction.Parts) do
        ConstructionOps.SetPartCollidable( _part.ID, false )
    end
end
local function SelectedCollisionOn_func()
    local Player = Playerlib.GetPlayer().Value
    local Toolbox = Player.Toolbox
    local selection = Toolbox.PartSelection
    for part in selection.SelectedParts do
        ConstructionOps.SetPartCollidable( part.ID, true )
    end
end
local function SelectedCollisionOff_func()
local Player = Playerlib.GetPlayer().Value
    local Toolbox = Player.Toolbox
    local selection = Toolbox.PartSelection
    for part in selection.SelectedParts do
        ConstructionOps.SetPartCollidable( part.ID, false )
    end
end

function Window.OpenCollisionWindow()
    if Window.DrawWindow then
        Window.CloseCollisionWindow()
    end
    Window.DrawWindow = WindowMan.CreateWindow(ItemHeight*Items+5, ItemWidth, Window.CloseCollisionWindow)
    Window.DrawWindow.Show(true)
    Window.DrawWindow.Title = 'Collision'
    Window.CollisionWindowObjects.PartCollidableLabel = WindowMan.CreateLabel(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, "Part collision: None", Window.DrawWindow)
    Rowidx = Rowidx + 1
    Window.CollisionWindowObjects.TogglePartCollision = WindowMan.CreateButton(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, "Toggle Part Collision", Window.DrawWindow, PartToggle)
    Rowidx = Rowidx + 1
    Window.CollisionWindowObjects.SetConstructionCollision = WindowMan.CreateButton(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, "Set Construction Collision", Window.DrawWindow, ConstructionCollisionOn_func)
    Rowidx = Rowidx + 1
    Window.CollisionWindowObjects.UnSetConstructionCollision = WindowMan.CreateButton(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, "UnSet Construction Collision", Window.DrawWindow, ConstructionCollisionOff_func)
    Rowidx = Rowidx + 1
    Window.CollisionWindowObjects.SetSelectedCollision = WindowMan.CreateButton(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, "Set Selected Collision", Window.DrawWindow, SelectedCollisionOn_func)
    Rowidx = Rowidx + 1
    Window.CollisionWindowObjects.UnSetSelectedCollision = WindowMan.CreateButton(0, ItemHeight * Rowidx, ItemWidth, ItemHeight, "UnSet Selected Collision", Window.DrawWindow, SelectedCollisionOff_func)
    Rowidx = Rowidx + 1
end

function Window.UpdateCollisionWindow()
    local Player = Playerlib.GetPlayer().Value
    local TargetedPart = Playerlib.GetTargetedPart(Player)
    if not TargetedPart then
        Window.CollisionWindowObjects.PartCollidableLabel.Text = 'Part Collision: None'
    else
        Window.CollisionWindowObjects.PartCollidableLabel.Text =  utils.catbool('Part Collision: ',TargetedPart.IsCollidable)
    end
end

return Window