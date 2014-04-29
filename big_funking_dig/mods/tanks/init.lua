-- basic empty tank

minetest.register_node("tanks:level_0", {
	description = "Tank",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			--{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+0.0625, -0.43750},
		},
	},
	tiles = {"tankgaugetop.png", "tankgaugetop.png", "tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
	paramtype = "light",
	drawtype = "nodebox",
})


-- tank crafting

minetest.register_craft({
	output = 'tanks:level_0',
	recipe = {
		{'deco:glass', '', 'deco:glass'},
		{'deco:glass', '', 'deco:glass'},
		{'deco:glass', '', 'deco:glass'},
	}
})

-- water tanks

minetest.register_node("tanks:w_level_1", {
	description = "Impossible Node ;)",
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+0.0625, -0.43750},
		},
	},
	tiles = {"tank_water_level_8.png^tankgaugetop.png", "tank_water_level_8.png^tankgaugetop.png", "tank_water_level_1.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
})

minetest.register_node("tanks:w_level_2", {
	description = "Impossible Node ;)",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*3), -0.43750},
		},
	},
	tiles = {"tank_water_level_8.png^tankgaugetop.png", "tank_water_level_8.png^tankgaugetop.png", "tank_water_level_2.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
	paramtype = "light",
})

minetest.register_node("tanks:w_level_3", {
	description = "Impossible Node ;)",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*5), -0.43750},
		},
	},
	tiles = {"tank_water_level_8.png^tankgaugetop.png", "tank_water_level_8.png^tankgaugetop.png", "tank_water_level_3.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
	paramtype = "light",
})

minetest.register_node("tanks:w_level_4", {
	description = "Impossible Node ;)",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*7), -0.43750},
		},
	},
	paramtype = "light",
	tiles = {"tank_water_level_8.png^tankgaugetop.png", "tank_water_level_8.png^tankgaugetop.png", "tank_water_level_4.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
})

minetest.register_node("tanks:w_level_5", {
	description = "Impossible Node ;)",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*9), -0.43750},
		},
	},
	tiles = {"tank_water_level_8.png^tankgaugetop.png", "tank_water_level_8.png^tankgaugetop.png", "tank_water_level_5.png^tankgauge.png"},
	paramtype = "light",
	groups = {oddly_breakable_by_hand=1},
})

minetest.register_node("tanks:w_level_6", {
	description = "Impossible Node ;)",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*11), -0.43750},
		},
	},
	tiles = {"tank_water_level_8.png^tankgaugetop.png", "tank_water_level_8.png^tankgaugetop.png", "tank_water_level_6.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
	paramtype = "light",
})

minetest.register_node("tanks:w_level_7", {
	description = "Impossible Node ;)",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*13), -0.43750},
		},
	},
	tiles = {"tank_water_level_8.png^tankgaugetop.png", "tank_water_level_8.png^tankgaugetop.png", "tank_water_level_7.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
	paramtype = "light",
})

minetest.register_node("tanks:w_level_8", {
	description = "Impossible Node ;)",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*15), -0.43750},
		},
	},
	tiles = {"tank_water_level_8.png^tankgaugetop.png", "tank_water_level_8.png^tankgaugetop.png", "tank_water_level_8.png^tankgauge.png"},
	paramtype = "light",
	groups = {oddly_breakable_by_hand=1},
})

-- lava tanks

minetest.register_node("tanks:l_level_1", {
	description = "Impossible Node ;)",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*1), -0.43750},
		},
	},
	tiles = {"tank_lava_level_8.png^tankgaugetop.png", "tank_lava_level_8.png^tankgaugetop.png", "tank_lava_level_1.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
	paramtype = "light",
	drawtype = "nodebox",
	light_source = math.floor(14/8),
})

minetest.register_node("tanks:l_level_2", {
	description = "Impossible Node ;)",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*3), -0.43750},
		},
	},
	tiles = {"tank_lava_level_8.png^tankgaugetop.png", "tank_lava_level_8.png^tankgaugetop.png", "tank_lava_level_2.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
	paramtype = "light",
	drawtype = "nodebox",
	light_source = math.floor(14/7),
})

minetest.register_node("tanks:l_level_3", {
	description = "Impossible Node ;)",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*5), -0.43750},
		},
	},
	tiles = {"tank_lava_level_8.png^tankgaugetop.png", "tank_lava_level_8.png^tankgaugetop.png", "tank_lava_level_3.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
	paramtype = "light",
	drawtype = "nodebox",
	light_source = math.floor(14/6),
})

minetest.register_node("tanks:l_level_4", {
	description = "Impossible Node ;)",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*7), -0.43750},
		},
	},
	tiles = {"tank_lava_level_8.png^tankgaugetop.png", "tank_lava_level_8.png^tankgaugetop.png", "tank_lava_level_4.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
	paramtype = "light",
	drawtype = "nodebox",
	light_source = math.floor(14/5),
})

minetest.register_node("tanks:l_level_5", {
	description = "Impossible Node ;)",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*9), -0.43750},
		},
	},
	tiles = {"tank_lava_level_8.png^tankgaugetop.png", "tank_lava_level_8.png^tankgaugetop.png", "tank_lava_level_5.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
	paramtype = "light",
	drawtype = "nodebox",
	light_source = math.floor(14/4),
})

minetest.register_node("tanks:l_level_6", {
	description = "Impossible Node ;)",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*11), -0.43750},
		},
	},
	tiles = {"tank_lava_level_8.png^tankgaugetop.png", "tank_lava_level_8.png^tankgaugetop.png", "tank_lava_level_6.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
	paramtype = "light",
	drawtype = "nodebox",
	light_source = math.floor(14/3),
})

minetest.register_node("tanks:l_level_7", {
	description = "Impossible Node ;)",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*13), -0.43750},
		},
	},
	tiles = {"tank_lava_level_8.png^tankgaugetop.png", "tank_lava_level_8.png^tankgaugetop.png", "tank_lava_level_7.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
	paramtype = "light",
	drawtype = "nodebox",
	light_source = math.floor(14/2),
})

minetest.register_node("tanks:l_level_8", {
	description = "Impossible Node ;)",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*15), -0.43750},
		},
	},
	tiles = {"tank_lava_level_8.png^tankgaugetop.png", "tank_lava_level_8.png^tankgaugetop.png", "tank_lava_level_8.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
	paramtype = "light",
	drawtype = "nodebox",
	light_source = math.floor(14/1),
})

-- oil tanks

minetest.register_node("tanks:o_level_1", {
	description = "Impossible node - good try",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*1), -0.43750},
		},
	},
	tiles = {"tank_oil_level_8.png^tankgaugetop.png", "tank_oil_level_8.png^tankgaugetop.png", "tank_oil_level_1.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
	drawtype = "nodebox",
	paramtype = "light",
})

minetest.register_node("tanks:o_level_2", {
	description = "Impossible node - good try",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*3), -0.43750},
		},
	},
	tiles = {"tank_oil_level_8.png^tankgaugetop.png", "tank_oil_level_8.png^tankgaugetop.png", "tank_oil_level_2.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
	paramtype = "light",
})

minetest.register_node("tanks:o_level_3", {
	description = "Impossible node - good try",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*5), -0.43750},
		},
	},
	paramtype = "light",
	tiles = {"tank_oil_level_8.png^tankgaugetop.png", "tank_oil_level_8.png^tankgaugetop.png", "tank_oil_level_3.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
})

minetest.register_node("tanks:o_level_4", {
	description = "Impossible node - good try",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*7), -0.43750},
		},
	},
	drawtype = "nodebox",
	paramtype = "light",
	tiles = {"tank_oil_level_8.png^tankgaugetop.png", "tank_oil_level_8.png^tankgaugetop.png", "tank_oil_level_4.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
})

minetest.register_node("tanks:o_level_5", {
	description = "Impossible node - good try",
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*9), -0.43750},
		},
	},
	tiles = {"tank_oil_level_8.png^tankgaugetop.png", "tank_oil_level_8.png^tankgaugetop.png", "tank_oil_level_5.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
})

minetest.register_node("tanks:o_level_6", {
	description = "Impossible node - good try",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*11), -0.43750},
		},
	},
	paramtype = "light",
	tiles = {"tank_oil_level_8.png^tankgaugetop.png", "tank_oil_level_8.png^tankgaugetop.png", "tank_oil_level_6.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
})

minetest.register_node("tanks:o_level_7", {
	description = "Impossible node - good try",
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*13), -0.43750},
		},
	},
	tiles = {"tank_oil_level_8.png^tankgaugetop.png", "tank_oil_level_8.png^tankgaugetop.png", "tank_oil_level_7.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
})

minetest.register_node("tanks:o_level_8", {
	description = "Impossible node - good try",
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*15), -0.43750},
		},
	},
	tiles = {"tank_oil_level_8.png^tankgaugetop.png", "tank_oil_level_8.png^tankgaugetop.png", "tank_oil_level_8.png^tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
})

-- black magic here

minetest.register_on_punchnode(function(pos, node, puncher)
	if not puncher then return end
	lx = pos.x
	ly = pos.y
	lz = pos.z
	tnodename = minetest.get_node(pos)
	bname = puncher:get_wielded_item():get_name()
	if tnodename.name == "tanks:level_0" then
		if bname == "bucket:oil" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:o_level_1"})
		elseif bname == "bucket:bucket_water" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:w_level_1"})
		elseif bname == "bucket:bucket_lava" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:l_level_1"})
		else
			return
		end
	end
	
	if tnodename.name == "tanks:w_level_1" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:bucket_water 1")
			minetest.set_node(pos, {name="tanks:level_0"})
		elseif bname == "bucket:bucket_water" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:w_level_2"})
		else
			--fuck all
		end
	end
	
	if tnodename.name == "tanks:w_level_2" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:bucket_water 1")
			minetest.set_node(pos, {name="tanks:w_level_1"})
		elseif bname == "bucket:bucket_water" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:w_level_3"})
		else
			--fuck all
		end
	end
	
	if tnodename.name == "tanks:w_level_3" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:bucket_water 1")
			minetest.set_node(pos, {name="tanks:w_level_2"})
		elseif bname == "bucket:bucket_water" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:w_level_4"})
		else
			--fuck all
		end
	end
	
	if tnodename.name == "tanks:w_level_4" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:bucket_water 1")
			minetest.set_node(pos, {name="tanks:w_level_3"})
		elseif bname == "bucket:bucket_water" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:w_level_5"})
		else
			--fuck all
		end
	end
	
	if tnodename.name == "tanks:w_level_5" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:bucket_water 1")
			minetest.set_node(pos, {name="tanks:w_level_4"})
		elseif bname == "bucket:bucket_water" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:w_level_6"})
		else
			--fuck all
		end
	end
	
	if tnodename.name == "tanks:w_level_6" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:bucket_water 1")
			minetest.set_node(pos, {name="tanks:w_level_5"})
		elseif bname == "bucket:bucket_water" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:w_level_7"})
		else
			--fuck all
		end
	end
	
	if tnodename.name == "tanks:w_level_7" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:bucket_water 1")
			minetest.set_node(pos, {name="tanks:w_level_6"})
		elseif bname == "bucket:bucket_water" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:w_level_8"})
		else
			--fuck all
		end
	end
	
	if tnodename.name == "tanks:w_level_8" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:bucket_water 1")
			minetest.set_node(pos, {name="tanks:w_level_7"})
		elseif bname == "bucket:bucket_water" then
			--nope.avi
		else
			--fuck all
		end
	end
	
	-- oil
	
	if tnodename.name == "tanks:o_level_1" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:oil 1")
			minetest.set_node(pos, {name="tanks:level_0"})
		elseif bname == "bucket:oil" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:o_level_2"})
		else
			--fuck all
		end
	end
	
	if tnodename.name == "tanks:o_level_2" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:oil 1")
			minetest.set_node(pos, {name="tanks:o_level_1"})
		elseif bname == "bucket:oil" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:o_level_3"})
		else
			--fuck all
		end
	end
	
	if tnodename.name == "tanks:o_level_3" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:oil 1")
			minetest.set_node(pos, {name="tanks:o_level_2"})
		elseif bname == "bucket:oil" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:o_level_4"})
		else
			--fuck all
		end
	end
	
	if tnodename.name == "tanks:o_level_4" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:oil 1")
			minetest.set_node(pos, {name="tanks:o_level_3"})
		elseif bname == "bucket:oil" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:o_level_5"})
		else
			--fuck all
		end
	end
	
	if tnodename.name == "tanks:o_level_5" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:oil 1")
			minetest.set_node(pos, {name="tanks:o_level_4"})
		elseif bname == "bucket:oil" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:o_level_6"})
		else
			--fuck all
		end
	end
	
	if tnodename.name == "tanks:o_level_6" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:oil 1")
			minetest.set_node(pos, {name="tanks:o_level_5"})
		elseif bname == "bucket:oil" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:o_level_7"})
		else
			--fuck all
		end
	end
	
	if tnodename.name == "tanks:o_level_7" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:oil 1")
			minetest.set_node(pos, {name="tanks:o_level_6"})
		elseif bname == "bucket:oil" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:o_level_8"})
		else
			--fuck all
		end
	end
	
	if tnodename.name == "tanks:o_level_8" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:oil 1")
			minetest.set_node(pos, {name="tanks:o_level_7"})
		elseif bname == "bucket:oil" then
			--nope.avi
		else
			--fuck all
		end
	end
	
	--lava
	
	if tnodename.name == "tanks:l_level_1" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:bucket_lava 1")
			minetest.set_node(pos, {name="tanks:level_0"})
		elseif bname == "bucket:bucket_lava" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:l_level_2"})
		else
			--fuck all
		end
	end
	
	if tnodename.name == "tanks:l_level_2" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:bucket_lava 1")
			minetest.set_node(pos, {name="tanks:l_level_1"})
		elseif bname == "bucket:bucket_lava" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:l_level_3"})
		else
			--fuck all
		end
	end
	
	if tnodename.name == "tanks:l_level_3" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:bucket_lava 1")
			minetest.set_node(pos, {name="tanks:l_level_2"})
		elseif bname == "bucket:bucket_lava" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:l_level_4"})
		else
			--fuck all
		end
	end
	
	if tnodename.name == "tanks:l_level_4" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:bucket_lava 1")
			minetest.set_node(pos, {name="tanks:l_level_3"})
		elseif bname == "bucket:bucket_lava" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:l_level_5"})
		else
			--fuck all
		end
	end
	
	if tnodename.name == "tanks:l_level_5" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:bucket_lava 1")
			minetest.set_node(pos, {name="tanks:l_level_4"})
		elseif bname == "bucket:bucket_lava" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:l_level_6"})
		else
			--fuck all
		end
	end
	
	if tnodename.name == "tanks:l_level_6" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:bucket_lava 1")
			minetest.set_node(pos, {name="tanks:l_level_5"})
		elseif bname == "bucket:bucket_lava" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:l_level_7"})
		else
			--fuck all
		end
	end
	
	if tnodename.name == "tanks:l_level_7" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:bucket_lava 1")
			minetest.set_node(pos, {name="tanks:l_level_6"})
		elseif bname == "bucket:bucket_lava" then
			puncher:set_wielded_item("bucket:bucket_empty 1")
			minetest.set_node(pos, {name="tanks:l_level_8"})
		else
			--fuck all
		end
	end
	
	if tnodename.name == "tanks:l_level_8" then
		if bname == "bucket:bucket_empty" then
			puncher:set_wielded_item("bucket:bucket_lava 1")
			minetest.set_node(pos, {name="tanks:l_level_7"})
		elseif bname == "bucket:bucket_lava" then
			--nope.avi
		else
			--fuck all
		end
	end
end)