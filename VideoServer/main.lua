local lastrefreshstate = false
function Update()
    local updates = loadfile(ScriptPath .. "Update.lua")()
    if updates then
        if not (updates.Refresh == lastrefreshstate) then
            updates.Update()
            lastrefreshstate = not lastrefreshstate
        end
    end
end