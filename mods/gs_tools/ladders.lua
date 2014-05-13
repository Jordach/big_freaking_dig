-- tool mods, by gsmanners
-- license: WTFPL

--------------------------------------------------
-- ladders

gs_tools.ladder_nodebox = {
	type = "fixed",
	fixed = {
		{ -0.4, 0.5, 0.5, -0.3,-0.5, 0.4 },
		{  0.3, 0.5, 0.4,  0.4,-0.5, 0.5 },
	
		{ -0.3, 0.42, 0.4,  0.4, 0.32, 0.5 },
		{ -0.3, 0.17, 0.4,  0.4, 0.07, 0.5 },
		{ -0.3,-0.07, 0.4,  0.4,-0.17, 0.5 },
		{ -0.3,-0.32, 0.4,  0.4,-0.42, 0.5 },
	}
}

minetest.register_node("gs_tools:stone_ladder", {
	description = "Stone Ladder",
	drawtype = "nodebox",
	tiles = {"default_stone.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
	climbable = true,
	is_ground_content = false,
	node_box = gs_tools.ladder_nodebox,
	groups = { cracky=3 },
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("gs_tools:clay_ladder", {
	description = "Clay Ladder",
	drawtype = "nodebox",
	tiles = {"default_brick.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
	climbable = true,
	is_ground_content = false,
	node_box = gs_tools.ladder_nodebox,
	groups = { cracky=3 },
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("gs_tools:steel_ladder", {
	description = "Steel Ladder",
	drawtype = "nodebox",
	tiles = {"default_steel_block.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
	climbable = true,
	is_ground_content = false,
	node_box = gs_tools.ladder_nodebox,
	groups = { cracky=1, level=2 },
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'gs_tools:stone_ladder 3',
	recipe = {
		{'gs_tools:stone_rod', '', 'gs_tools:stone_rod'},
		{'gs_tools:stone_rod', 'gs_tools:stone_rod', 'gs_tools:stone_rod'},
		{'gs_tools:stone_rod', '', 'gs_tools:stone_rod'},
	}
})

minetest.register_craft({
	output = 'gs_tools:clay_ladder 3',
	recipe = {
		{'gs_tools:clay_rod', '', 'gs_tools:clay_rod'},
		{'gs_tools:clay_rod', 'gs_tools:clay_rod', 'gs_tools:clay_rod'},
		{'gs_tools:clay_rod', '', 'gs_tools:clay_rod'},
	}
})

minetest.register_craft({
	output = 'gs_tools:steel_ladder 3',
	recipe = {
		{'gs_tools:steel_rod', '', 'gs_tools:steel_rod'},
		{'gs_tools:steel_rod', 'gs_tools:steel_rod', 'gs_tools:steel_rod'},
		{'gs_tools:steel_rod', '', 'gs_tools:steel_rod'},
	}
})
