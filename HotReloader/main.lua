local WindowMan = require("WindowMan")
local itemwidth = 120
local itemheight = 50
local itemrows = 2
local itemcols = 2
local itemrow = 0
local itemcol = 0
local window = WindowMan.CreateWindow(itemwrows*itemheight,itemcols*itemwidth,itemheight*itemwrow, itemwidth*itemcol,WindowMan.GenericOnWindowClose)
itemrow = 0
itemcol = 0

local scriptpathEntry = WindowMan.CreateLabelledInputField(itemheight*itemwrow, itemwidth*itemcol,itemwrows*itemheight,itemcols*itemwidth, ) 