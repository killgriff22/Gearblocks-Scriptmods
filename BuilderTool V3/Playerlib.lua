Playerlib = {}

function Playerlib.GetTargetedPart(playervalue)
    local targetedPart
    if playervalue and playervalue.Targeter then
        targetedPart = playervalue.Targeter.TargetedPart
    else
        return nil
    end
    return targetedPart
end

function Playerlib.GetSelectedParts(playervalue)
    local selectedParts = {}
    if playervalue and playervalue.Targeter then
        for _, part in pairs(playervalue.Targeter.SelectedParts) do
            table.insert(selectedParts, part)
        end
    end
    return selectedParts
end

function Playerlib.GetPlayer()
    return LocalPlayer
end

return Playerlib