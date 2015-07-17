minetest.clear_registered_biomes()
minetest.clear_registered_decorations()

minetest.register_biome({
	name = "plains",
	--node_dust = "",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 60,
	y_max = 160,
	heat_point = 45,
	humidity_point = 45,
})

minetest.register_biome({
	name = "soapstone",
	--node_dust = "",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:soap_stone",
	depth_filler = 40,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 31000,
	heat_point = 35,
	humidity_point = 34,
})

minetest.register_biome({
	name = "taiga",
	--node_dust = "",
	node_top = "mapgen:snowy_grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 31000,
	heat_point = 23,
	humidity_point = 31,
})

minetest.register_biome({
	name = "evergreens_forest",
	--node_dust = "",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 200,
	heat_point = 36,
	humidity_point = 40,
})

minetest.register_biome({
	name = "dead_forest",
	--node_dust = "",
	node_top = "mapgen:perma_dirt",
	depth_top = 2,
	node_filler = "mapgen:perma_dirt",
	depth_filler = 4,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 60,
	heat_point = 67,
	humidity_point = 14,
})

minetest.register_biome({
	name = "deathly_plains",
	--node_dust = "",
	node_top = "mapgen:deathly_grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 160,
	heat_point = 4,
	humidity_point = 4,
})

minetest.register_biome({
	name = "deathly_forest",
	--node_dust = "",
	node_top = "mapgen:deathly_grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 160,
	heat_point = 6,
	humidity_point = 3,
})

minetest.register_biome({
	name = "deathly_gplains",
	--node_dust = "",
	node_top = "mapgen:deathly_grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 160,
	heat_point = 3,
	humidity_point = 0,
})

minetest.register_biome({
	name = "snowy_plains",
	--node_dust = "",
	node_top = "mapgen:snowy_grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 31000,
	heat_point = 18,
	humidity_point = 20,
})

minetest.register_biome({
	name = "floral_plains",
	--node_dust = "",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 60,
	heat_point = 39,
	humidity_point = 55,
})

minetest.register_biome({
	name = "pasture",
	--node_dust = "",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 60,
	heat_point = 60,
	humidity_point = 55,
})

minetest.register_biome({
	name = "edens_garden",
	--node_dust = "",
	node_top = "mapgen:edens_grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 60,
	heat_point = 75,
	humidity_point = 65,
})

minetest.register_biome({
	name = "grassy_plains",
	--node_dust = "",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 160,
	heat_point = 41,
	humidity_point = 58,
})

minetest.register_biome({
	name = "cherry_blossom_forest",
	--node_dust = "",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 40,
	heat_point = 50,
	humidity_point = 55,
})

minetest.register_biome({
	name = "cherry_blossom_forest_floral",
	--node_dust = "",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 40,
	heat_point = 47,
	humidity_point = 50,
})

minetest.register_biome({
	name = "cherry_blossom_forest_grassy",
	--node_dust = "",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 42,
	heat_point = 55,
	humidity_point = 55,
})

minetest.register_biome({
	name = "birch_forest",
	--node_dust = "",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 50,
	heat_point = 52,
	humidity_point = 45,
})

minetest.register_biome({
	name = "birch_forest_floral",
	--node_dust = "",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 50,
	heat_point = 50,
	humidity_point = 43,
})

minetest.register_biome({
	name = "birch_forest_grassy",
	--node_dust = "",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 50,
	heat_point = 58,
	humidity_point = 52,
})
minetest.register_biome({
	name = "oak_forest",
	--node_dust = "",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 60,
	heat_point = 43,
	humidity_point = 38,
})

minetest.register_biome({
	name = "floral_oak_forest",
	--node_dust = "",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 60,
	heat_point = 47,
	humidity_point = 58,
})

minetest.register_biome({
	name = "floral_oakg_forest",
	--node_dust = "",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 60,
	heat_point = 45,
	humidity_point = 58,
})

minetest.register_biome({
	name = "desert",
	--node_dust = "",
	node_top = "mapgen:sand",
	depth_top = 3,
	node_filler = "mapgen:sandstone",
	depth_filler = 4,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 80,
	heat_point = 79,
	humidity_point = 12,
})

minetest.register_biome({
	name = "no_man",
	--node_dust = "",
	node_top = "mapgen:perma_dirt",
	depth_top = 1,
	node_filler = "mapgen:perma_dirt",
	depth_filler = 4,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 160,
	heat_point = 70,
	humidity_point = 7,
})

-- V6 styled biome

minetest.register_biome({
	name = "v6_forest",
	--node_dust = "",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 4,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 4,
	y_max = 31000,
	heat_point = 35,
	humidity_point = 55,
})

-- Icy

minetest.register_biome({
	name = "ice_lands",
	--node_dust = "",
	node_top = "mapgen:snowy_grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	--node_stone = "",
	node_water_top = "mapgen:ice",
	depth_water_top = 1,
	--node_water = "",
	y_min = 1,
	y_max = 4,
	heat_point = 13,
	humidity_point = 16,
})

minetest.register_biome({
	name = "glacier",
	--node_dust = "",
	node_top = "mapgen:ice",
	depth_top = 1,
	node_filler = "mapgen:ice",
	depth_filler = 3,
	--node_stone = "",
	node_water_top = "mapgen:ice",	
	depth_water_top = 2,
	--node_water = "",
	y_min = 0,
	y_max = 80,
	heat_point = 6,
	humidity_point = 9,
})

-- Beach

minetest.register_biome({
	name = "beach",
	--node_dust = "",
	node_top = "mapgen:sand",
	depth_top = 2,
	node_filler = "mapgen:sandstone",
	depth_filler = 36,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 1,
	y_max = 3,
	heat_point = 54,
	humidity_point = 51,
})

-- Ocean

minetest.register_biome({
	name = "ocean",
	--node_dust = "",
	node_top = "mapgen:gravel",
	depth_top = 2,
	node_filler = "mapgen:sandstone",
	depth_filler = 36,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = -63,
	y_max = 0,
	heat_point = 54,
	humidity_point = 51,
})

-- Underground

minetest.register_biome({
	name = "underground",
	--node_dust = "",
	--node_top = "",
	depth_top = 0,
	--node_filler = "",
	depth_filler = -4,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = -31000,
	y_max = -64,
	heat_point = 50,
	humidity_point = 50,
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "mapgen:deathly_grass",
	schematic = minetest.get_modpath("mapgen").."/schematics/mapgen_oak_tree.mts",
	sidelen = 8,
	fill_ratio = 0.034,
	biomes = {"deathly_forest"},
	flags = "place_center_x, place_center_z",
	replacements = {["base:leaves"] = "mapgen:deathly_leaves", ["base:tree"] = "mapgen:deathly_tree", ["base:dirt"] = "mapgen:dirt"},
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "mapgen:deathly_grass",
	sidelen = 8,
	fill_ratio = 0.047,
	decoration = {"mapgen:deathly_long_grass_1", "mapgen:deathly_long_grass_2", "mapgen:deathly_long_grass_3"},
	biomes = {"deathly_gplains"},
	height = 1,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "mapgen:grass",
	sidelen = 8,
	fill_ratio = 0.047,
	decoration = {"mapgen:long_grass_1", "mapgen:long_grass_2", "mapgen:long_grass_3", "mapgen:long_grass_4", "mapgen:long_grass_5"},
	biomes = {"grassy_plains"},
	height = 1,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "mapgen:sand",
	sidelen = 80,
	fill_ratio = 0.001,
	decoration = "mapgen:cactus",
	biomes = {"desert"},
	height = 3,
	y_max = 4,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "mapgen:sand",
	sidelen = 80,
	fill_ratio = 0.003,
	decoration = "mapgen:dead_bush",
	biomes = {"desert"},
	height = 1,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "mapgen:perma_dirt",
	sidelen = 8,
	fill_ratio = 0.023,
	decoration = "mapgen:dead_bush",
	biomes = {"no_man"},
	height = 1,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "mapgen:perma_dirt",
	sidelen = 8,
	fill_ratio = 0.034,
	decoration = "mapgen:dead_oak",
	biomes = {"dead_forest"},
	height = 4,
	y_max = 6,
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "mapgen:grass",
	schematic = minetest.get_modpath("mapgen").."/schematics/mapgen_oak_tree.mts",
	sidelen = 8,
	fill_ratio = 0.034,
	biomes = {"oak_forest", "floral_oak_forest", "floral_oakg_forest"},
	flags = "place_center_x, place_center_z",
	replacements = {["base:leaves"] = "mapgen:oak_leaves", ["base:tree"] = "mapgen:oak_log_tree", ["base:dirt"] = "mapgen:dirt"},
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "mapgen:grass",
	schematic = minetest.get_modpath("mapgen").."/schematics/mapgen_oak_tree.mts",
	sidelen = 8,
	fill_ratio = 0.034,
	biomes = {"cherry_blossom_forest"},
	flags = "place_center_x, place_center_z",
	replacements = {["base:leaves"] = "mapgen:cherry_blossom_leaves", ["base:tree"] = "mapgen:cherry_tree", ["base:dirt"] = "mapgen:dirt"},
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "mapgen:snowy_grass",
	schematic = minetest.get_modpath("mapgen").."/schematics/mapgen_evergreen.mts",
	sidelen = 8,
	fill_ratio = 0.051,
	biomes = {"taiga"},
	flags = "place_center_x, place_center_z",
	replacements = {["base:leaves"] = "mapgen:evergreen_leaves_snowy", ["base:tree"] = "mapgen:evergreen_tree", ["base:dirt"] = "mapgen:dirt"},
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "mapgen:grass",
	schematic = minetest.get_modpath("mapgen").."/schematics/mapgen_evergreen.mts",
	sidelen = 8,
	fill_ratio = 0.061,
	biomes = {"evergreens_forest"},
	flags = "place_center_x, place_center_z",
	replacements = {["base:leaves"] = "mapgen:evergreen_leaves", ["base:tree"] = "mapgen:evergreen_tree", ["base:dirt"] = "mapgen:dirt"},
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "mapgen:grass",
	sidelen = 8,
	fill_ratio = 0.05,
	biomes = {"edens_garden", "floral_plains", "cherry_blossom_forest_grassy"},
	height = 1,
	decoration = {"flowers:dandelion_white", "flowers:dandelion_yellow", "flowers:geranium", "flowers:rose", "flowers:tulip", "flowers:viola"},
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"mapgen:edens_grass", "mapgen:grass"},
	sidelen = 8,
	fill_ratio = 0.08,
	biomes = {"edens_garden", "floral_plains", "floral_oak_forest", "floral_oakg_forest", "cherry_blossom_forest_floral", "birch_forest_floral"},
	height = 1,
	decoration = {"flowers:dandelion_white", "flowers:dandelion_yellow", "flowers:geranium", "flowers:rose", "flowers:tulip", "flowers:viola", "mapgen:long_grass_1", "mapgen:long_grass_2", "mapgen:long_grass_3", "mapgen:long_grass_4", "mapgen:long_grass_5"},
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "mapgen:grass",
	schematic = minetest.get_modpath("mapgen").."/schematics/mapgen_oak_tree.mts",
	sidelen = 8,
	fill_ratio = 0.030,
	biomes = {"birch_forest", "birch_forest_floral", "birch_forest_grassy"},
	flags = "place_center_x, place_center_z",
	replacements = {["base:leaves"] = "mapgen:birch_leaves", ["base:tree"] = "mapgen:birch_tree", ["base:dirt"] = "mapgen:dirt"},
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "mapgen:grass",
	sidelen = 8,
	fill_ratio = 4,
	decoration = {"mapgen:wheat_grass_1", "mapgen:wheat_grass_2", "mapgen:wheat_grass_3", "mapgen:wheat_grass_4", "mapgen:wheat_grass_5"},
	biomes = {"pasture"},
	height = 1,
})

-- springs, cubes of dirt, sand and gravel (you can grovel about gravel!)

minetest.register_ore({
	ore_type = "scatter",
	ore = "mapgen:water_source",
	ore_param2 = 128,
	wherein = "mapgen:stone",
	clust_scarcity = 20 * 20 * 20,
	clust_num_ores = 10,
	clust_size = 4,
	height_min = -32000,
	height_max = 32000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "mapgen:dirt",
	wherein = "mapgen:stone",
	clust_scarcity = 16 * 16 * 16,
	clust_num_ores = 64,
	clust_size = 5,
	height_max = 32000,
	height_min = -16385,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "mapgen:gravel",
	wherein = "mapgen:stone",
	clust_scarcity = 16 * 16 * 16,
	clust_num_ores = 64,
	clust_size = 5,
	height_max = 16385,
	height_min = -31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "mapgen:sand",
	wherein = "mapgen:stone",
	clust_scarcity = 24 * 24 * 24,
	clust_num_ores = 32,
	clust_size = 4,
	height_max = 32000,
	height_min = -32000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "mapgen:clay",
	wherein = "mapgen:stone",
	clust_scarcity = 32 * 32 * 32,
	clust_num_ores = 32,
	clust_size = 4,
	height_max = 16385,
	height_min = -16385,
})