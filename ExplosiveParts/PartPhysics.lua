local PartPhysics
local pointmath = require("pointmath")
local msToKmh = 60 * 60 / 1000
function PartPhysics.CreateConstructionObject(Construction)
    local C_Obj = {
        Root = Construction,
        Position = Construction.CalcWorldCentreOfMass(),
        LastPosition = Construction.CalcWorldCentreOfMass(),
        Update_rate = 60, -- How many frames until this construction updates
        Velocity = 0,
        Direction = Vector3.__new(0,0,0)
    }
    C_Obj.Update_Speed = function ()
        C_Obj.Position = Construction.CalcWorldCentreOfMass()
        local poslen = math.sqrt(C_Obj.Position.X^2+C_Obj.Position.Z^2+C_Obj.Position.Y^2)
        local lastposlen = math.sqrt(C_Obj.LastPosition.X^2+C_Obj.LastPosition.Z^2+C_Obj.LastPosition.Y^2)
        local delta = poslen - lastposlen
        C_Obj.Velocity = math.abs((delta / 60) * msToKmh * 10000)
        C_Obj.LastPosition = C_Obj.Position
    end
    C_Obj.Update_DirOfTravel = function ()
        C_Obj.Position = Construction.CalcWorldCentreOfMass()
        local WorkingPos = C_Obj.Position - C_Obj.LastPosition
        local X = pointmath.radsToDegs(math.atan2(WorkingPos.Z, WorkingPos.Y))
        local Y = pointmath.radsToDegs(math.atan2(WorkingPos.Z, WorkingPos.X))
        local Z = pointmath.radsToDegs(math.atan2(WorkingPos.X, WorkingPos.Y))
        C_Obj.Direction.Set(X,Y,Z)
        C_Obj.LastPosition = C_Obj.Position
    end

    return C_Obj
end 

return PartPhysics