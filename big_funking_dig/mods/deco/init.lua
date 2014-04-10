--deco.lua
--decorative nodes for BFD. includes useful stuff too

-- wood planks

minetest.register_node("deco:oak_plank", {
	description = "Oak Planks",
	tiles = {"deco_wood_oak_planks.png"},
	groups = {oddly_breakable_by_hand=1, flammable=1, snappy=1, choppy=3, wood=1},
})

minetest.register_node("deco:birch_plank", {
	description = "Birch Planks",
	tiles = {"deco_wood_birch_planks.png"},
	groups = {oddly_breakable_by_hand=1, flammable=1, snappy=1, choppy=3, wood=1},
})

minetest.register_node("deco:cherry_plank", {
	description = "Cherry Planks",
	tiles = {"deco_wood_cherry_planks.png"},
	groups = {oddly_breakable_by_hand=1, flammable=1, snappy=1, choppy=3, wood=1},
})

-- plank crafting

minetest.register_craft({
	output = 'deco:oak_plank 6',
	recipe = {
		{'mapgen:oak_log'},
	}
})

minetest.register_craft({
	output = 'deco:oak_plank 6',
	recipe = {
		{'mapgen:dead_oak_log'},
	}
})

minetest.register_craft({
	output = 'deco:cherry_plank 6',
	recipe = {
		{'mapgen:cherry_log'},
	}
})

minetest.register_craft({
	output = 'deco:birch_plank 6',
	recipe = {
		{'mapgen:birch_log'},
	}
})