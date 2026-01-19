
dofile(core.get_modpath("mymulch").."/machine.lua")

local mulch_tab = {
	{"black",		"Black",		"^[colorize:black:240"},
	{"blue",		"Blue",			"^[colorize:#0404B4:100"},
	{"brown",		"Brown",		"^[colorize:#190B07:160"},
	{"cyan",		"Cyan",			"^[colorize:cyan:120"},
	{"dark_green",	"Dark Green",	"^[colorize:#071907:200"},
	{"dark_grey",	"Dark Grey",	"^[colorize:black:150"},
	{"green",		"Green",		"^[colorize:green:160"},
	{"grey",		"Grey",			"^[colorize:black:150"},
	{"magenta",		"Magenta",		"^[colorize:magenta:160"},
	{"orange",		"Orange",		"^[colorize:orange:150"},
	{"pink",		"Pink",			"^[colorize:#FE2E9A:150"},
	{"red",			"Red",			"^[colorize:#B40404:150"},
	{"violet",		"Violet",		"^[colorize:#2F0B3A:150"},
	{"white",		"White",		"^[colorize:white:150"},
	{"yellow",		"Yellow",		"^[colorize:yellow:150"},
	{"tan",			"Tan",			""},
	}

if core.get_modpath("mydye") then
	mulch_tab = {
	{"black",      	"Black",      		"^[colorize:black:240"},
	{"blue",       	"Blue",       		"^[colorize:#2000c9:100"},
	{"brown",     	"Brown",      		"^[colorize:#954c05:160"},
	{"cyan",      	"Cyan",       		"^[colorize:cyan:120"},
	{"dark_green", 	"Dark Green",  		"^[colorize:#005b07:200"},
	{"dark_grey",  	"Dark Grey",   		"^[colorize:black:150"},
	{"green",     	"Green",      		"^[colorize:green:160"},
	{"grey",       	"Grey",       		"^[colorize:black:150"},
	{"magenta",    	"Magenta",    		"^[colorize:magenta:150"},
	{"orange",     	"Orange",     		"^[colorize:orange:150"},
	{"pink",      	"Pink",       		"^[colorize:#ff65b5:150"},
	{"red",        	"Red",        		"^[colorize:#ff0000:150"},
	{"violet",     	"Violet",     		"^[colorize:#ab23b0:150"},
	{"white",      	"White",      		"^[colorize:white:150"},
	{"yellow",     	"Yellow",     		"^[colorize:yellow:150"},
	{"peachpuff",	"Peachpuff", 		"^[colorize:#FFDAB9:150"},
	{"navy",		"Navy", 			"^[colorize:#000080:150"},
	{"coral",		"Coral", 			"^[colorize:#FF7F50:150"},
	{"khaki",		"Khaki", 			"^[colorize:#F0E68C:150"},
	{"lime",		"Lime", 			"^[colorize:#00FF00:150"},
	{"light_pink",	"Light Pink", 		"^[colorize:#FFB6C1:150"},
	{"light_grey",	"Light Grey", 		"^[colorize:#D3D3D3:150"},
	{"purple",		"Purple", 			"^[colorize:#800080:150"},
	{"maroon",		"Maroon", 			"^[colorize:#800000:150"},
	{"aquamarine",	"Aqua Marine", 		"^[colorize:#7FFFD4:150"},
	{"chocolate",	"Chocolate", 		"^[colorize:#D2691E:150"},
	{"crimson",		"Crimson", 			"^[colorize:#DC143C:150"},
	{"olive",		"Olive", 			"^[colorize:#808000:150"},
	{"white_smoke",	"White Smoke", 		"^[colorize:#F5F5F5:150"},
	{"mistyrose",	"Misty Rose", 		"^[colorize:#FFE4E1:150"},
	{"orchid",		"Orchid", 			"^[colorize:#DA70D6:150"},
	{"tan",			"Tan",			""},
	}
end

for i in ipairs (mulch_tab) do
	local mat = mulch_tab[i][1]
	local desc = mulch_tab[i][2]
	local dye = mulch_tab[i][3]

core.register_node("mymulch:mulch_"..mat, {
	description = desc.." Mulch",
	drawtype = "normal",
	tiles = {
		"mymulch_tan.png"..dye.."^mymulch_top.png"
		},
	paramtype = "light",
	is_ground_content = true,
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {crumbly = 2, falling_node=1, not_in_creative_inventory=0, soil=2, mulch = 1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_gravel_footstep", gain=0.5},
		dug = {name="default_gravel_footstep", gain=1.0},
	}),
})
if core.get_modpath("lucky_block") then
	lucky_block:add_blocks({
		{"dro", {"mymulch:mulch_"..mat}, 20},
		{"dro", {"mymulch:machine"}, 1},
	})
end
end
