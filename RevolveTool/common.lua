local commonlib = {}

function commonlib.tablelength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
  end
function commonlib.append(t, v)
    t[commonlib.tablelength(t)+1] = v
end
function commonlib.remove(t, v)
    for i, value in ipairs(t) do
        if value == v then
            table.remove(t, i)
            return
        end
    end
end
function commonlib.pop(t, i)
    local value = t[i]
    table.remove(t, i)
    return value 
end

return commonlib