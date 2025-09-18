local Standardlib = {}

local _Vector3 = Vector3

Vector3 = {
X = 0,
Y = 0,
Z = 0,
this = {"https://www.gearblocksgame.com/apidoc/struct_smash_hammer_1_1_scripting_1_1_vector3_proxy.html","See documentation for sparse implementation."},
One = _Vector3.One,
Zero = _Vector3.Zero,
Up = _Vector3.Up,
Down = _Vector3.Down,
Right = _Vector3.Right,
Left = _Vector3.Left,
Forward = _Vector3.Forward,
Back = _Vector3.Back,
SqrMagnitude = _Vector3.SqrMagnitude,
Normalized = _Vector3.Normalized,
Magnitude = _Vector3.Magnitude,
}

function Vector3.__new(x, y, z)
   return _Vector3.__new(x,y,z)
end

function Vector3.Normalize ( a)
  return _Vector3.Normalize ( a)
end
 
function Vector3.ClampMagnitude ( a,maxLength)
  return _Vector3.ClampMagnitude ( a,maxLength)
end
 
function Vector3.Min ( a, b)
  return _Vector3.Min ( a, b)
end
 
function Vector3.Max ( a, b)
  return _Vector3.Max ( a, b)
end
 
function Vector3.Scale ( a, b)
  return _Vector3.Scale ( a, b)
end
 
function Vector3.Distance ( a, b)
  return _Vector3.Distance ( a, b)
end
 
function Vector3.Angle ( a, b)
  return _Vector3.Angle ( a, b)
end
 
function Vector3.SignedAngle ( a, b, axis)
  return _Vector3.SignedAngle ( a, b, axis)
end
 
function Vector3.Dot ( a, b)
  return _Vector3.Dot ( a, b)
end
 
function Vector3.Cross ( a, b)
  return _Vector3.Cross ( a, b)
end
 
function Vector3.Project ( a, normal)
  return _Vector3.Project ( a, normal)
end
 
function Vector3.ProjectOnPlane ( a, planeNormal)
  return _Vector3.ProjectOnPlane ( a, planeNormal)
end
 
function Vector3.Reflect ( a, planeNormal)
  return _Vector3.Reflect ( a, planeNormal)
end
 
function Vector3.Lerp ( a, b, t)
  return _Vector3.Lerp ( a, b, t)
end
 
function Vector3.LerpUnclamped ( a, b, t)
  return _Vector3.LerpUnclamped ( a, b, t)
end
 
function Vector3.Slerp ( a, b, t)
  return _Vector3.Slerp ( a, b, t)
end
 
function Vector3.SlerpUnclamped ( a, b, t)
  return _Vector3.SlerpUnclamped ( a, b, t)
end
 
function Vector3.MoveTowards ( fromPoint, toPoint, step)
  return _Vector3.MoveTowards ( fromPoint, toPoint, step)
end
 
function Vector3.RotateTowards ( fromDirection, toDirection, angleStep, magStep)
  return _Vector3.RotateTowards ( fromDirection, toDirection, angleStep, magStep)
end
 
function Vector3.Abs ( vec)
  return _Vector3.Abs ( vec)
end
 
function Vector3.Mod ( vec, divisor)
  return _Vector3.Mod ( vec, divisor)
end
 
function Vector3.Clamp ( vec, min, max)
  return _Vector3.Clamp ( vec, min, max)
end
 
function Vector3.Clamp01 ( vec)
  return _Vector3.Clamp01 ( vec)
end
 
function Vector3.Round ( vec)
  return _Vector3.Round ( vec)
end
 
function Vector3.Round ( vec, roundTo)
  return _Vector3.Round ( vec, roundTo)
end
 
function Vector3.Round ( vec, roundTo, offset)
  return _Vector3.Round ( vec, roundTo, offset)
end
 
function Vector3.Round ( vec, roundTo)
  return _Vector3.Round ( vec, roundTo)
end
 
function Vector3.Round ( vec, roundTo, offset)
  return _Vector3.Round ( vec, roundTo, offset)
end
 
function Vector3.Wrap ( vec, minWrapTo, maxWrapTo)
  return _Vector3.Wrap ( vec, minWrapTo, maxWrapTo)
end
 
static Vector3Proxy 	Wrap (Vector3Proxy vec, Vector3Proxy minWrapTo, Vector3Proxy maxWrapTo)







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