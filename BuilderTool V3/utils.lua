local utils = {}

function utils.catbool(text, bool)
    if bool then
        return text .. 'true'
    else
        return text .. 'false'
    end
end
    


return utils