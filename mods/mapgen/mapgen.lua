
	
minetest.register_biome({
	name = "plains",
	
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	node_dust = "air",
	node_underwater = "mapgen:sand",
	y_min = 60,
	y_max = 160,
	node_shore_filler = "mapgen:sand",
	heat_point = 45,
	humidity_point = 45,
})

minetest.register_biome({
	name = "soapstone",
	node_underwater = "mapgen:gravel",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:soap_stone",
	depth_filler = 40,
	node_dust = "air",
	node_shore_filler = "mapgen:sand",
	y_min = 10,
	y_max = 30000,
	heat_point = 35,
	humidity_point = 34,
})

minetest.register_biome({
	name = "deathly_plains",
	node_underwater = "mapgen:gravel",
	node_top = "mapgen:deathly_grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	node_dust = "air",
	node_shore_filler = "mapgen:sand",
	y_min = 1,
	y_max = 160,
	heat_point = 4,
	humidity_point = 4,
})

minetest.register_biome({
	name = "deathly_forest",
	node_underwater = "mapgen:gravel",
	node_top = "mapgen:deathly_grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	node_dust = "air",
	node_shore_filler = "mapgen:sand",
	y_min = 1,
	y_max = 160,
	heat_point = 6,
	humidity_point = 3,
})

minetest.register_biome({
	name = "deathly_gplains",
	node_underwater = "mapgen:gravel",
	node_top = "mapgen:deathly_grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	node_dust = "air",
	node_shore_filler = "mapgen:sand",
	y_min = 1,
	y_max = 160,
	heat_point = 3,
	humidity_point = 0,
})



minetest.register_biome({
	name = "snowy_plains",
	node_underwater = "mapgen:gravel",
	node_top = "mapgen:snowy_grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	node_dust = "air",
	node_shore_filler = "mapgen:sand",
	y_min = 1,
	y_max = 31000,
	heat_point = 18,
	humidity_point = 20,
})

minetest.register_biome({
	name = "taiga",
	node_underwater = "mapgen:gravel",
	node_top = "mapgen:snowy_grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	node_dust = "air",
	node_shore_filler = "mapgen:sand",
	y_min = 4,
	y_max = 31000,
	heat_point = 23,
	humidity_point = 31,
})

minetest.register_biome({
	name = "ice_lands",
	node_shore_filler = "mapgen:ice",
	node_top = "mapgen:snowy_grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	node_dust = "air",
	node_water_top = "mapgen:ice",
	y_min = 1,
	y_max = 4,
	heat_point = 13,
	humidity_point = 16,
	node_underwater = "mapgen:gravel",
})

minetest.register_biome({
	name = "glacier",
	node_shore_filler = "mapgen:ice",
	node_top = "mapgen:ice",
	depth_top = 1,
	node_filler = "mapgen:ice",
	depth_filler = 3,
	node_dust = "air",
	node_water_top = "mapgen:ice",	
	y_min = 0,
	y_max = 80,
	heat_point = 6,
	humidity_point = 9,
	node_underwater = "mapgen:gravel",
})

minetest.register_biome({
	name = "evergreens_forest",
	node_shore_filler = "mapgen:sand",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	node_dust = "air",
	node_underwater = "mapgen:gravel",
	y_min = 4,
	y_max = 200,
	heat_point = 36,
	humidity_point = 40,
})

minetest.register_biome({
	name = "floral_plains",
	node_shore_filler = "mapgen:sand",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	node_dust = "air",
	node_underwater = "mapgen:gravel",
	y_min = 1,
	y_max = 60,
	heat_point = 39,
	humidity_point = 55,
})

minetest.register_biome({
	name = "pasture",
	node_shore_filler = "mapgen:sand",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	node_dust = "air",
	node_underwater = "mapgen:gravel",
	y_min = 1,
	y_max = 60,
	heat_point = 60,
	humidity_point = 55,
})

minetest.register_biome({
	name = "edens_garden",
	node_shore_filler = "mapgen:sand",
	node_top = "mapgen:edens_grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	node_dust = "air",
	node_underwater = "mapgen:gravel",
	y_min = 1,
	y_max = 60,
	heat_point = 75,
	humidity_point = 65,
})

minetest.register_biome({
	name = "grassy_plains",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	node_dust = "air",
	node_shore_filler = "mapgen:sand",
	y_min = 1,
	y_max = 160,
	depth_filler = 3,
	heat_point = 41,
	humidity_point = 58,
	node_underwater = "mapgen:gravel",
})

minetest.register_biome({
	name = "cherry_blossom_forest",
	node_shore_filler = "mapgen:sand",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	node_dust = "air",
	node_underwater = "mapgen:gravel",
	y_min = 1,
	y_max = 40,
	heat_point = 50,
	humidity_point = 55,
})

minetest.register_biome({
	name = "cherry_blossom_forest_floral",
	node_shore_filler = "mapgen:sand",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	node_dust = "air",
	node_underwater = "mapgen:gravel",
	y_min = 1,
	y_max = 40,
	heat_point = 47,
	humidity_point = 50,
})

minetest.register_biome({
	name = "cherry_blossom_forest_grassy",
	node_shore_filler = "mapgen:sand",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	node_dust = "air",
	node_underwater = "mapgen:gravel",
	y_min = 1,
	y_max = 42,
	heat_point = 55,
	humidity_point = 55,
})

minetest.register_biome({
	name = "birch_forest",
	node_shore_filler = "mapgen:sand",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	node_dust = "air",
	node_underwater = "mapgen:gravel",
	y_min = 1,
	y_max = 50,
	heat_point = 52,
	humidity_point = 45,
})

minetest.register_biome({
	name = "birch_forest_floral",
	node_shore_filler = "mapgen:sand",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	node_dust = "air",
	node_underwater = "mapgen:gravel",
	y_min = 1,
	y_max = 50,
	heat_point = 50,
	humidity_point = 43,
})

minetest.register_biome({
	name = "birch_forest_grassy",
	node_shore_filler = "mapgen:sand",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	node_dust = "air",
	node_underwater = "mapgen:gravel",
	y_min = 1,
	y_max = 50,
	heat_point = 58,
	humidity_point = 52,
})
minetest.register_biome({
	name = "oak_forest",
	node_shore_filler = "mapgen:sand",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	node_dust = "air",
	node_underwater = "mapgen:gravel",
	y_min = 1,
	y_max = 60,
	heat_point = 43,
	humidity_point = 38,
})

minetest.register_biome({
	name = "floral_oak_forest",
	node_shore_filler = "mapgen:sand",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	node_dust = "air",
	node_underwater = "mapgen:gravel",
	y_min = 1,
	y_max = 60,
	heat_point = 47,
	humidity_point = 58,
})

minetest.register_biome({
	name = "floral_oakg_forest",
	node_shore_filler = "mapgen:sand",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 3,
	node_dust = "air",
	node_underwater = "mapgen:gravel",
	y_min = 1,
	y_max = 60,
	heat_point = 45,
	humidity_point = 58,
})

minetest.register_biome({
	name = "beach",
	node_top = "mapgen:sand",
	depth_top = 2,
	node_filler = "mapgen:sandstone",
	depth_filler = 36,
	node_shore_filler = "mapgen:sand",
	node_dust = "air",
	y_min = -34,
	y_max = 3,
	heat_point = 54,
	humidity_point = 51,
	node_underwater = "mapgen:gravel",
})

minetest.register_biome({
	name = "dead_forest",
	node_top = "mapgen:perma_dirt",
	depth_top = 2,
	node_filler = "mapgen:perma_dirt",
	node_dust = "air",
	node_shore_filler = "mapgen:sand",
	y_min = 3,
	y_max = 60,
	heat_point = 67,
	humidity_point = 14,
	depth_filler = 4,
	node_underwater = "mapgen:gravel",
})

minetest.register_biome({
	name = "desert",
	node_top = "mapgen:sand",
	depth_top = 3,
	node_filler = "mapgen:sandstone",
	node_dust = "air",
	node_shore_filler = "mapgen:sand",
	y_min = 1,
	y_max = 80,
	depth_filler = 4,
	heat_point = 79,
	node_underwater = "mapgen:gravel",
	humidity_point = 12,
})

minetest.register_biome({
	name = "no_man",
	node_top = "mapgen:perma_dirt",
	depth_top = 1,
	node_filler = "mapgen:perma_dirt",
	node_dust = "air",
	node_shore_filler = "mapgen:sand",
	y_min = 1,
	y_max = 160,
	depth_filler = 4,
	heat_point = 70,
	humidity_point = 7,
	node_underwater = "mapgen:gravel",
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "mapgen:deathly_grass",
	decoration = {"mapgen:deathly_sapling",},
	sidelen = 8,
	fill_ratio = 0.034,
	biomes = {"deathly_forest"},
	height = 1,
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
	biomes = {"grassy_plains", "v6_forest"},
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
	deco_type = "simple",
	place_on = "mapgen:grass",
	decoration = "mapgen:mg_oak_sapling",
	sidelen = 8,
	fill_ratio = 0.034,
	biomes = {"oak_forest", "floral_oak_forest", "floral_oakg_forest", "v6_forest"},
	height = 1,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "mapgen:grass",
	decoration = "mapgen:mg_cherry_sapling",
	sidelen = 8,
	fill_ratio = 0.034,
	biomes = {"cherry_blossom_forest", "v6_forest"},
	height = 1,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "mapgen:snowy_grass",
	decoration = "mapgen:mg_evergreen_snow",
	sidelen = 8,
	fill_ratio = 0.051,
	biomes = {"taiga"},
	height = 1,
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "mapgen:grass",
	decoration = "mapgen:mg_evergreen_sapling",
	sidelen = 8,
	fill_ratio = 0.061,
	biomes = {"evergreens_forest", "v6_forest"},
	height = 1,
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
	biomes = {"edens_garden", "floral_plains", "floral_oak_forest", "floral_oakg_forest", "cherry_blossom_forest_floral", "birch_forest_floral", "v6_forest"},
	height = 1,
	decoration = {"flowers:dandelion_white", "flowers:dandelion_yellow", "flowers:geranium", "flowers:rose", "flowers:tulip", "flowers:viola", "mapgen:long_grass_1", "mapgen:long_grass_2", "mapgen:long_grass_3", "mapgen:long_grass_4", "mapgen:long_grass_5"},
})

minetest.register_decoration({
	deco_type = "simple",
	place_on = "mapgen:grass",
	decoration = "mapgen:mg_birch_sapling",
	sidelen = 8,
	fill_ratio = 0.030,
	biomes = {"birch_forest", "birch_forest_floral", "birch_forest_grassy", "v6_forest"},
	height = 1,
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

-- V6 styled biome

minetest.register_biome({
	name = "v6_forest",
	node_top = "mapgen:grass",
	depth_top = 1,
	node_filler = "mapgen:dirt",
	depth_filler = 4,
	node_dust = "air",
	node_underwater = "mapgen:dirt",
	y_min = -31000,
	y_max = 31000,
	node_shore_filler = "mapgen:sand",
	heat_point = 35,
	humidity_point = 55,
})