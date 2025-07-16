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

local ThrottleAssetName = "Engine ThrottleBody x1"


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

local function printw(str, linecount)
    print(str)
    return linecount + 1
end

local function IsThrottle(part)
    if part.AssetName == ThrottleAssetName then
        return true
    end
    return false
end
local openingtag = "--__--!!"
local closingtag = "~~__~~!!"
local sepr = "=="


local function CrankOutput(index, uid, angle, type, rpm, trq, pwr, cnt)
    rpm = rpm or nil
    trq = trq or nil
    pwr = pwr or nil
    cnt = printw(openingtag .. uid .. sepr .. type, cnt)
    cnt = printw(angle, cnt)
    cnt = printw(rpm, cnt)
    cnt = printw(trq, cnt)
    cnt = printw(pwr, cnt)
    cnt = printw(closingtag .. uid .. sepr .. type, cnt)
    return cnt
end

local function HeadOutput(index, uid, lambda, maxrpm, maxve, peakve, exeffct, order, double, ve, ipfr, fr, te, cnt)
    cnt = printw(openingtag .. uid .. sepr .. "2", cnt)
    cnt = printw(maxrpm, cnt)
    cnt = printw(order, cnt)
    cnt = printw(maxve, cnt)
    cnt = printw(peakve, cnt)
    cnt = printw(lambda, cnt)
    cnt = printw(exeffct, cnt)
    cnt = printw(double, cnt)
    cnt = printw(ve, cnt)
    cnt = printw(ipfr, cnt)
    cnt = printw(fr, cnt)
    cnt = printw(te, cnt)
    cnt = printw(closingtag .. uid .. sepr .. "2", cnt)
    return cnt
end

local function denil(obj)
    if not obj or obj == nil then
        return "nil"
    end
    return obj
end

funcs.IsCrank = IsCrank
funcs.IsRearCrank = IsRearCrank
funcs.IsHead = IsHead
funcs.IsCyl = IsCyl
funcs.IsThrottle = IsThrottle
funcs.CrankOutput = CrankOutput
funcs.HeadOutput = HeadOutput
funcs.print = printw
funcs.denil = denil
return funcs