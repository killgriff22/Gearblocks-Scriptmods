Playerlib = {}

function GetTargetedPart(playervalue)
    local targetedPart
    if playervalue and playervalue.Targeter then
        targetedPart = playervalue.Targeter.TargetedPart
    else
        return nil
    end
    return targetedPart
end

function GetSelectedParts(playervalue)
    local selectedParts = {}
    if playervalue and playervalue.Targeter then
        for _, part in pairs(playervalue.Targeter.SelectedParts) do
            table.insert(selectedParts, part)
        end
    end
    return selectedParts
end

function GetPlayer()
    return LocalPlayer
end

Playerlib.GetTargetedPart = GetTargetedPart
Playerlib.GetPlayer = GetPlayer

return Playerlib