local funcs = {}

local CrankAssetNames = {
    "Engine Crank x2",
    "Engine Crank x1",
    "Engine Crank Rear x2 Axle Resizable",
    "Engine Crank Rear x1 Axle Resizable"
}

local RearCrankAssetNames = {
    "Engine Crank Rear x2 Axle Resizable",
    "Engine Crank Rear x1 Axle Resizable"
}

local HeadAssetNames = {
    "Engine Head x2",
    "Engine Head x1"
}

local CylAssetNames = {
    "Engine Cylinder 2x2 Translucent",
    "Engine Cylinder 2x2",
    "Engine Cylinder 1x1 Translucent",
    "Engine Cylinder 1x1"
}

local function IsCrank(part)
    for name in CrankAssetNames do
        if name == part.AssetName then
            return true
        end
    end
    return false
end
local function IsRearCrank(part)
    for name in RearCrankAssetNames do
        if name == part.AssetName then
            return true
        end
    end
    return false
end
local function IsHead(part)
    for name in HeadAssetNames do
        if name == part.AssetName then
            return true
        end
    end
    return false
end
local function IsCyl(part)
    for name in CylAssetNames do
        if name == part.AssetName then
            return true
        end
    end
    return false
end

local openingtag = "--__--!!"
local closingtag = "~~__~~!!"
local sepr = "=="


local function CrankOutput(index, uid, angle, type, rpm, trq, pwr)
    rpm = rpm or nil
    trq = trq or nil
    pwr = pwr or nil
    print(openingtag .. uid .. sepr .. type)
    print(angle)
    print(rpm)
    print(trq)
    print(pwr)
    print(closingtag .. uid .. sepr .. type)
end

local function HeadOutput(index, uid, lambda, maxrpm, maxve, peakve, exeffct, order, double, ve, ipfr, fr, te)
    print(openingtag .. uid .. sepr .. "2")
    print(maxrpm)
    print(order)
    print(maxve)
    print(peakve)
    print(lambda)
    print(exeffct)
    print(double)
    print(ve)
    print(ipfr)
    print(fr)
    print(te)
    print(closingtag .. uid .. sepr .. "2")
end



funcs.IsCrank = IsCrank
funcs.IsRearCrank = IsRearCrank
funcs.IsHead = IsHead
funcs.IsCyl = IsCyl
funcs.CrankOutput = CrankOutput
funcs.HeadOutput = HeadOutput

return funcs