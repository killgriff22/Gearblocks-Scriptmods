function Update()

    local localPlayer = LocalPlayer.Value
    local targetedPart
    
    if localPlayer and localPlayer.Targeter then
        targetedPart = localPlayer.Targeter.TargetedPart
    end

    -- Update the pick part button's interactability, and update the part labels.

    --what ive changed:
    -- FullDisplayName to AssetName [1]
    -- standard practice is to seperate terms in a statement with spaces on either side [2]
    -- the symbol you want is stored at symbols[attachTypeDropdown.Value] [3]
    if targetedPart ~= currentTargetedPart then
        if ownerPart then
            ownerPartLabel.Text = string.format( 'From: %s', ownerPart.AssetName ) -- [1]
            win.Title = symbols[attachTypeDropdown.Value] .. string.format( '<color=#ff8888>%s</color>', ownerPart.AssetName ) -- [3] [2] [1]
            if targetedPart then
                connectedPartLabel.Text = string.format( 'To: %s', targetedPart.AssetName ) -- [1]
                win.Title = symbols[attachTypeDropdown.Value] .. string.format( '<color=#88ff88>%s</color>', targetedPart.AssetName )  -- [3] [2] [1]
            else
                connectedPartLabel.Text = 'To: N/A'
                
            end
        else
            if targetedPart then
                ownerPartLabel.Text = string.format( 'From: %s', targetedPart.AssetName ) -- [1]
                win.Title = symbols[attachTypeDropdown.Value] .. string.format( '%s', targetedPart.AssetName ) -- [3] [2] [1]
            else
                ownerPartLabel.Text = 'From: N/A'
                win.Title = symbols[attachTypeDropdown.Value] -- [3]
            end
            connectedPartLabel.Text = 'To: N/A'
        end
        currentTargetedPart = targetedPart
    end