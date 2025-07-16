local Standardlib = {}

function catbool(text, bool)
    if bool then
        return text .. 'true'
    else
        return text .. 'false'
    end
end
function split(inputstr, sep)
    if sep == nil then
      sep = "%s"
    end
    local t = {}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
      table.insert(t, str)
    end
    return t
  end

function GetInput(str)
  return Input.GetKey(str)
end

function GetInputs(table)
  local inputs = {}
  for i, v in ipairs(table) do
    if Input.GetKey(v) then
      table.insert(inputs, v)
    end
  end
  return inputs
end 

function AndInput(table)
  local inputs = {}
  for i, v in ipairs(table) do
    table.insert(inputs, GetInput(v))
  end
  return true
end

Standardlib.catbool = catbool
Standardlib.split = split
Standardlib.GetInput = GetInput
Standardlib.GetInputs = GetInputs
Standardlib.AndInput = AndInput
return Standardlib