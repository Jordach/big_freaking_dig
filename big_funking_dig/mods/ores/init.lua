--init.lua
--part of ores for BFD

minetest.register_node("ores:iridium_ore", {
	description = "Iridium Ore",
	tiles = {"mapgen_stone.png^ores_iridium_ore.png"},
	is_ground_content = true,
	drop = 'ores:iridium_lump',
	groups = {cracky=2},
})

minetest.register_node("ores:oil_flowing", {
	description = "Flowing Oil",
	inventory_image = minetest.inventorycube("ores_oil.png"),
	drawtype = "flowingliquid",
	tiles = {"ores_oil.png"},
	special_tiles = {
		{
			image="oil_flowing.png",
			backface_culling=false,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=0.8}
		},
		{
			image="oil_flowing.png",
			backface_culling=true,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=0.8}
		},
	},
	alpha = 255,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "ores:oil_flowing",
	liquid_alternative_source = "ores:oil_source",
	liquid_viscosity = 12,
	post_effect_color = {a=250, r=10, g=10, b=10},
	groups = {water=3, liquid=3},
})

minetest.register_node("ores:oil_source", {
	description = "Oil Source",
	inventory_image = minetest.inventorycube("ores_oil.png"),
	drawtype = "liquid",
	tiles = {
		{name="oil_source.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0}}
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name="oil_source.png",
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0},
			backface_culling = false,
		}
	},
	alpha = 255,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "ores:oil_flowing",
	liquid_alternative_source = "ores:oil_source",
	liquid_viscosity = 12,
	post_effect_color = {a=250, r=10, g=10, b=10},
	groups = {water=3, liquid=3},
})