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

function tank_control(bucket_type, tank_type)
	
end

minetest.register_on_punchnode(function(pos, node, puncher)
	if not puncher then return end
	local lx = pos.x
	local ly = pos.y
	local lz = pos.z
	tnodename = minetest.get_node(pos)
	bname = puncher:get_wielded_item():get_name()
	
	local level = 1
	
	local tank_type = "oil"
	if tank_type == "oil" then
		for level=1,8 do
			if tnodename.name == "tanks:level_0" then
				if bname == "bucket:oil" then
					puncher:set_wielded_item("bucket:bucket_empty 1")
					minetest.set_node(pos, {name="tanks:o_level_1"})
				end
			end
			
			if tnodename.name == "tanks:o_level_"..level then
				if bname == "bucket:bucket_empty" then
					puncher:set_wielded_item("bucket:oil 1")
					if tnodename.name == "tanks:o_level_1" then
						minetest.set_node(pos, {name="tanks:level_0"})
					else
						minetest.set_node(pos, {name="tanks:o_level_"..level-1})
					end
				end
				if bname == "bucket:oil" then

					if tnodename.name == "tanks:o_level_8" then
						--nothing
					else
						minetest.set_node(pos, {name="tanks:o_level_"..level+1})
						puncher:set_wielded_item("bucket:bucket_empty 1")
					end
				end
				--level = level + 1
			end
		end
	end
	
	tank_type = "water"
	if tank_type == "water" then
		for level=1,8 do
			if tnodename.name == "tanks:level_0" then
				if bname == "bucket:bucket_water" then
					puncher:set_wielded_item("bucket:bucket_empty 1")
					minetest.set_node(pos, {name="tanks:w_level_1"})
				end
			end
			
			if tnodename.name == "tanks:w_level_"..level then
				if bname == "bucket:bucket_empty" then
					puncher:set_wielded_item("bucket:bucket_water 1")
					if tnodename.name == "tanks:w_level_1" then
						minetest.set_node(pos, {name="tanks:level_0"})
					else
						minetest.set_node(pos, {name="tanks:w_level_"..level-1})

					end
				end
			
				if bname == "bucket:bucket_water" then

					if tnodename.name == "tanks:w_level_8" then
						--do nothing
					else
						minetest.set_node(pos, {name="tanks:w_level_"..level+1})
						puncher:set_wielded_item("bucket:bucket_empty 1")
					end
				end
			end
		end
	end
	
	
	tank_type = "lava"
	if tank_type == "lava" then
		for level=1,8 do
			if tnodename.name == "tanks:level_0" then
				if bname == "bucket:bucket_lava" then
					puncher:set_wielded_item("bucket:bucket_empty 1")
					minetest.set_node(pos, {name="tanks:l_level_1"})
				end
			end
			
			if tnodename.name == "tanks:l_level_"..level then
				if bname == "bucket:bucket_empty" then
					puncher:set_wielded_item("bucket:bucket_lava 1")
					if tnodename.name == "tanks:l_level_1" then
						minetest.set_node(pos, {name="tanks:level_0"})
					else
						minetest.set_node(pos, {name="tanks:l_level_"..level-1})
					end
				end
				
				if bname == "bucket:bucket_lava" then
					if tnodename.name == "tanks:l_level_8" then
						--do nothing
					else
						minetest.set_node(pos, {name="tanks:l_level_"..level+1})
						puncher:set_wielded_item("bucket:bucket_empty 1")
					end
				end
			end
		end
	end
	
end)
