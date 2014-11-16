function register_carpet(name, recipe, desc, texture, group)
	minetest.register_node(":carpet:"..name, {
		description = desc,
		tiles = {texture},
		paramtype = "light",
		drawtype = "nodebox",
		groups = group,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, -0.5+0.0625, 0.5}
		},
	})
	
	minetest.register_craft({
		output = 'carpet:'..name..' 32',
		recipe = {
			{recipe, recipe},
		}
	})
end

register_carpet("black_wool", "wool:black", "Black Carpet", "wool_black.png", {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1})
register_carpet("blue_wool", "wool:blue", "Blue Carpet", "wool_blue.png", {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1})
register_carpet("brown_wool", "wool:brown", "Brown Carpet", "wool_brown.png", {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1})
register_carpet("cyan_wool", "wool:cyan", "Cyan Carpet", "wool_cyan.png", {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1})
register_carpet("dark_green_wool", "wool:dark_green", "Dark Green Carpet", "wool_dark_green.png", {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1})
register_carpet("dark_grey_wool", "wool:dark_grey", "Dark Grey Carpet", "wool_dark_grey.png", {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1})
register_carpet("green_wool", "wool:green", "Green Carpet", "wool_green.png", {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1})
register_carpet("grey_wool", "wool:grey", "Grey Carpet", "wool_grey.png", {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1})
register_carpet("magenta_wool", "wool:magenta", "Magenta Carpet", "wool_magenta.png", {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1})
register_carpet("orange_wool", "wool:orange", "Orange Carpet", "wool_orange.png", {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1})
register_carpet("pink_wool", "wool:pink", "Pink Carpet", "wool_pink.png", {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1})
register_carpet("red_wool", "wool:red", "Red Carpet", "wool_red.png", {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1})
register_carpet("violet_wool", "wool:violet", "Violet Carpet", "wool_violet.png", {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1})
register_carpet("white_wool", "wool:white", "White Carpet", "wool_white.png", {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1})
register_carpet("yellow_wool", "wool:yellow", "Yellow Carpet", "wool_yellow.png", {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1})
