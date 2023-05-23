local named_colors = require("serika.named_colors")

local dark_colors = {
    serika0_gui         =  named_colors.black,              --  serika0   in  palette
    serika1_gui         =  named_colors.dark_gray,          --  serika1   in  palette
    serika2_gui         =  named_colors.gray,               --  serika2   in  palette
    serika3_gui         =  named_colors.light_gray,         --  serika3   in  palette
    serika3_gui_bright  =  named_colors.light_gray_bright,  --  out       of  palette
    serika4_gui         =  named_colors.darkest_white,      --  serika4   in  palette
    serika5_gui         =  named_colors.darker_white,       --  serika5   in  palette
    serika6_gui         =  named_colors.white,              --  serika6   in  palette
    serika7_gui         =  named_colors.sun,               --  serika7   in  palette
    serika8_gui         =  named_colors.aureolin,           --  serika8   in  palette
    serika9_gui         =  named_colors.saffron,            --  serika9   in  palette
    serika10_gui        =  named_colors.gold,               --  serika10  in  palette
    serika11_gui        =  named_colors.red,                --  serika11  in  palette
    serika12_gui        =  named_colors.orange,             --  serika12  in  palette
    serika13_gui        =  named_colors.yellow,             --  serika13  in  palette
    serika14_gui        =  named_colors.green,              --  serika14  in  palette
    serika15_gui        =  named_colors.purple,             --  serika15  in  palette
    none                =  "NONE",
}

local light_colors = {
	serika0_gui = named_colors.white, -- serika0 in palette
	serika1_gui = named_colors.darker_white, -- serika1 in palette
	serika2_gui = named_colors.darkest_white, -- serika2 in palette
	serika3_gui = named_colors.light_gray, -- serika3 in palette
	serika3_gui_bright = named_colors.light_gray_bright, -- out of palette
	serika4_gui = named_colors.gray, -- serika4 in palette
	serika5_gui = named_colors.dark_gray, -- serika5 in palette
	serika6_gui = named_colors.black, -- serika6 in palette

	-- Same colors across light and dark from here down...
	serika7_gui = named_colors.sun, -- serika7 in palette
	serika8_gui = named_colors.aureolin, -- serika8 in palette
	serika9_gui = named_colors.saffron, -- serika9 in palette
	serika10_gui = named_colors.gold, -- serika10 in palette
	serika11_gui = named_colors.red, -- serika11 in palette
	serika12_gui = named_colors.orange, -- serika12 in palette
	serika13_gui = named_colors.yellow, -- serika13 in palette
	serika14_gui = named_colors.green, -- serika14 in palette
	serika15_gui = named_colors.purple, -- serika15 in palette
	none = "NONE",
}

local serika = (vim.o.background == "dark") and dark_colors or light_colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.serika_contrast then
	serika.sidebar = serika.serika1_gui
	serika.float = serika.serika1_gui
else
	serika.sidebar = serika.serika0_gui
	serika.float = serika.serika0_gui
end

if vim.g.serika_cursorline_transparent then
	serika.cursorlinefg = serika.serika0_gui
else
	serika.cursorlinefg = serika.serika1_gui
end

return serika
