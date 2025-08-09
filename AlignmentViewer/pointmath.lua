local pointmath = {}

function pointmath.vect2angle(vect)
    return math.atan2(vect.x, vect.z)
end
function pointmath.angle2vect3(angle)
    return Vector3.__new(math.cos(angle),0, math.sin(angle))
end
function pointmath.angle2vect2(angle)
    return Vector2.__new(math.cos(angle), math.sin(angle))
end

function pointmath.point2pointangle(pointa, pointb)
    local delta_x = pointb.X - pointa.X
    local delta_y = pointb.Y - pointa.Y
    return math.atan2(delta_y, delta_x)
end
function pointmath.axis2quaternion(angle)
    local qx = angle.X * math.sin(angle.X/2)
    local qy = angle.Y * math.sin(angle.Y/2)
    local qz = angle.Z * math.sin(angle.Z/2)
    local qw = math.cos(angle /2)
    return Quaternion.__new(qx, qy, qz, qw)
end
function pointmath.rotatepoint(point, angle, z)
    local sin = math.sin(angle)
    local cos = math.cos(angle)
    local x = point.x * cos - point.y * sin
    local y = point.x * sin + point.y * cos
    return Vector2.__new(x, y)
    
end
function pointmath.rotatepointvect3(point, vect)
    local angle = pointmath.vect2angle(vect)
    return pointmath.rotatepoint(point, angle)
    
end
function pointmath.degsToRads(degs)
    return degs * (math.pi / 180)
end
function pointmath.radsToDegs(rads)
    return rads * (180 / math.pi)
end
return pointmath