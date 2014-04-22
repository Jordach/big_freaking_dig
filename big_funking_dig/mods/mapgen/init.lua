--init.lua

 -- This file is part of BFD.

    -- BFD is free software: you can redistribute it and/or modify
    -- it under the terms of the GNU General Public License as published by
    -- the Free Software Foundation, either version 3 of the License, or
    -- (at your option) any later version.

    -- BFD is distributed in the hope that it will be useful,
    -- but WITHOUT ANY WARRANTY; without even the implied warranty of
    -- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    -- GNU General Public License for more details.
	
	-- You may contact Jordach via the Minetest Forums PM service for help
	-- or ask on the forum topic for which this game is set on.

    -- You should have received a copy of the GNU General Public License
    -- along with BFD.  If not, see <http://www.gnu.org/licenses/>.

dofile(minetest.get_modpath("mapgen").."/mapgen.lua")
dofile(minetest.get_modpath("mapgen").."/nodes.lua")
dofile(minetest.get_modpath("mapgen").."/flowers.lua")

minetest.register_alias("mapgen_water_source", "mapgen:water_source")
minetest.register_alias("mapgen_lava_source", "mapgen:lava_source")
minetest.register_alias("mapgen_stone", "mapgen:stone")
minetest.register_alias("mapgen_dirt", "mapgen:dirt")
minetest.register_alias("mapgen_dirt_with_grass", "mapgen:grass")

minetest.register_item(":", {
	type = "none",
	wield_image = "hand.png",
	wield_scale = {x=1,y=1,z=2.5},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[2]=12.4, [3]=6.2}, uses=0, maxlevel=1},
			snappy = {times={[3]=2.3}, uses=0, maxlevel=1},
			oddly_breakable_by_hand = {times={[1]=22.7,[2]=7.8,[3]=2.3}, uses=0}
		},
		damage_groups = {fleshy=1},
	}
})

minetest.register_on_mapgen_init(function(params)
	minetest.set_mapgen_params({
		mgname = "v7",
		seed = params.seed,
		water_level = 1,
		flags = "caves",
		--flagmask = "trees, caves, flat, v6_biome_blend, v6_jungles, dungeons, nolight",
		-- ^ stops that annoying error message, but i kinda like it!
	})
end)

minetest.register_node("mapgen:grass", {
	description = "Dirt with Grass",
	tiles = {"mapgen_grass.png", "mapgen_dirt.png", "mapgen_dirt.png^mapgen_grass_side.png"},
	is_ground_content = true,
	drop = 'mapgen:dirt',
	groups = {crumbly=3, soil=1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("mapgen:snowy_grass", {
	description = "Dirt with Snow",
	tiles = {"mapgen_snow.png", "mapgen_dirt.png", "mapgen_dirt.png^mapgen_snow_side.png"},
	is_ground_content = true,
	drop = 'mapgen:dirt',
	groups = {crumbly=3, soil=1},
	sounds = default.node_sound_dirt_defaults(),
})


minetest.register_node("mapgen:dirt", {
	description = "Dirt",
	tiles = {"mapgen_dirt.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("mapgen:stone", {
	description = "Stone",
	tiles = {"mapgen_stone.png"},
	--is_ground_content = true,
	drop = {
		max_items = 1,
		items = {
			{
				items = {'mapgen:cobble'},
			},
			{
				items = {'ores:iron_fragment'},
				rarity = 75,
			},
			{
				items = {'ores:tin_fragment'},
				rarity = 125,
			},
			{
				items = {'ores:copper_fragment'},
				rarity = 62,
			}
		}
	},
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mapgen:cobble", {
	description = "Cobblestone",
	tiles = {"mapgen_cobble.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mapgen:mese_stone", {
	description = "Mese Stone",
	tiles = {"mapgen_mese_stone.png"},
	is_ground_content = true,
	sounds = default.node_sound_stone_defaults(),
	groups = {hardness=3, stone=1}, --hardness refers to 30 seconds with dia pick
})

minetest.register_node("mapgen:crust_cobble", {
	description = "Crust Cobblestone",
	tiles = {"mapgen_crust_cobble.png"},
	is_ground_content = true,
	groups = {cracky=1, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mapgen:crust_stone", {
	description = "Crust Stone",
	tiles = {"mapgen_crust_stone.png"},
	is_ground_content = true,
	drop = {
		max_items = 1,
		items = {
			{
				items = {'mapgen:iron_fragment'},
				rarity = 50,
			},
			{
				items = {'mapgen:tin_fragment'},
				rarity = 121,
			},
			{
				items = {'mapgen:cobalt_fragment'},
				rarity = 215,
			},
			{
				items = {'mapgen:iridium_fragment'},
				rarity = 960,
			},
			{
				items = {'mapgen:osmium_fragment'},
				rarity = 714,
			},
			{
				items = {'mapgen:bauxite_fragment'},
				rarity = 375,
			},
			{
				items = {'mapgen:bone_meal'},
				rarity = 75,
			},
			{
				items = {'mapgen:copper_fragment'},
				rarity = 38,
			},
			{
				items = {'mapgen:crust_cobble'},
			}
		}
	},
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky=1, stone=1},
})

minetest.register_node("mapgen:water_flowing", {
	description = "Flowing Water",
	inventory_image = minetest.inventorycube("mapgen_water.png"),
	drawtype = "flowingliquid",
	tiles = {"mapgen_water.png"},
	special_tiles = {
		{
			image="mapgen_water_flowing_animated.png",
			backface_culling=false,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=0.8}
		},
		{
			image="mapgen_water_flowing_animated.png",
			backface_culling=true,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=0.8}
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "mapgen:water_flowing",
	liquid_alternative_source = "mapgen:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {water=3, liquid=3, puts_out_fire=1},
})

minetest.register_node("mapgen:water_source", {
	description = "Water Source",
	inventory_image = minetest.inventorycube("mapgen_water.png"),
	drawtype = "liquid",
	tiles = {
		{name="mapgen_water_source_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0}}
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name="mapgen_water_source_animated.png",
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0},
			backface_culling = false,
		}
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "mapgen:water_flowing",
	liquid_alternative_source = "mapgen:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {water=3, liquid=3, puts_out_fire=1},
})

minetest.register_node("mapgen:lava_flowing", {
	description = "Flowing Lava",
	inventory_image = minetest.inventorycube("mapgen_lava.png"),
	drawtype = "flowingliquid",
	tiles = {"mapgen_lava.png"},
	special_tiles = {
		{
			image="mapgen_lava_flowing.png",
			backface_culling=false,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.3}
		},
		{
			image="mapgen_lava_flowing.png",
			backface_culling=true,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.3}
		},
	},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	light_source = 13,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "mapgen:lava_flowing",
	liquid_alternative_source = "mapgen:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4*2,
	post_effect_color = {a=192, r=255, g=64, b=0},
	groups = {lava=3, liquid=2, hot=3, igniter=1, not_in_creative_inventory=1},
})

minetest.register_node("mapgen:lava_source", {
	description = "Lava Source",
	inventory_image = minetest.inventorycube("mapgen_lava.png"),
	drawtype = "liquid",
	tiles = {
		{name="mapgen_lava_source.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}}
	},
	special_tiles = {
		-- New-style lava source material (mostly unused)
		{
			name="mapgen_lava_source.png",
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0},
			backface_culling = false,
		}
	},
	paramtype = "light",
	light_source = 13,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "mapgen:lava_flowing",
	liquid_alternative_source = "mapgen:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4*2,
	post_effect_color = {a=192, r=255, g=64, b=0},
	groups = {lava=3, liquid=2, hot=3, igniter=1},
})

minetest.register_abm({
	nodenames = {"mapgen:dirt"},
	neighbors = {"mapgen:grass"},
	interval = 180,
	chance = 3,
	action = function(pos)
		pos.y = pos.y + 1
		if not minetest.get_node_light(pos) then
			return
		end
		if minetest.get_node_light(pos) > 9 then
			pos.y = pos.y - 1
			minetest.env:add_node(pos,{name="mapgen:grass"})
		end
	end,
})

minetest.register_abm({
	nodenames = {"mapgen:dirt"},
	neighbors = {"mapgen:edens_grass", "mapgen:grass"},
	interval = 60,
	chance = 2,
	action = function(pos)
		pos.y = pos.y + 1
		if not minetest.get_node_light(pos) then
			return
		end
		if minetest.get_node_light(pos) > 9 then
			pos.y = pos.y - 1
			minetest.env:add_node(pos,{name="mapgen:grass"})
		end
	end,
})

minetest.register_abm({
	nodenames = {"mapgen:grass", "mapgen:snowy_grass"},
	interval = 60,
	chance = 2,
	action = function(pos)
		pos.y = pos.y + 1
		if not minetest.get_node_light(pos) then
			return
		end
		if minetest.get_node_light(pos) < 1 then
			pos.y = pos.y - 1
			minetest.env:add_node(pos,{name="mapgen:dirt"})
		end
	end,
})

minetest.register_abm({
	nodenames = {"mapgen:oak_sapling"},
	interval = 80,
	chance = 3,
	action = function(pos, node)
		
		local nu =  minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name
		local is_soil = minetest.get_item_group(nu, "soil")
		
		if is_soil == 0 then
			return
		end
		
		
		minetest.remove_node({x=pos.x, y=pos.y, z=pos.z})
		minetest.place_schematic({x=pos.x-2, y=pos.y-1, z=pos.z-2}, minetest.get_modpath("mapgen").."/schematics/mapgen_oak_tree.mts", "random", {{"base:leaves", "mapgen:oak_leaves"}, {"base:tree", "mapgen:oak_log_tree"}, {"base:dirt", "mapgen:dirt"}}, false)
	end,
})

minetest.register_abm({
	nodenames = {"mapgen:birch_sapling"},
	interval = 80,
	chance = 3,
	action = function(pos, node)
		
		local nu =  minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name
		local is_soil = minetest.get_item_group(nu, "soil")
		
		if is_soil == 0 then
			return
		end
		
		
		minetest.remove_node({x=pos.x, y=pos.y, z=pos.z})
		minetest.place_schematic({x=pos.x-2, y=pos.y-1, z=pos.z-2}, minetest.get_modpath("mapgen").."/schematics/mapgen_oak_tree.mts", "random", {{"base:leaves", "mapgen:birch_leaves"}, {"base:tree", "mapgen:birch_tree"}, {"base:dirt", "mapgen:dirt"}}, false)
	end,
})

minetest.register_abm({
	nodenames = {"mapgen:cherry_sapling"},
	interval = 80,
	chance = 3,
	action = function(pos, node)
		
		local nu =  minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name
		local is_soil = minetest.get_item_group(nu, "soil")
		
		if is_soil == 0 then
			return
		end
		
		
		minetest.remove_node({x=pos.x, y=pos.y, z=pos.z})
		minetest.place_schematic({x=pos.x-2, y=pos.y-1, z=pos.z-2}, minetest.get_modpath("mapgen").."/schematics/mapgen_oak_tree.mts", "random", {{"base:leaves", "mapgen:cherry_blossom_leaves"}, {"base:tree", "mapgen:cherry_tree"}, {"base:dirt", "mapgen:dirt"}}, false)
	end,
})

minetest.register_abm({
	nodenames = {"mapgen:evergreen_sapling"},
	interval = 80,
	chance = 3,
	action = function(pos, node)
		
		local nu =  minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name
		local is_soil = minetest.get_item_group(nu, "soil")
		
		if is_soil == 0 then
			return
		end
		
		
		minetest.remove_node({x=pos.x, y=pos.y, z=pos.z})
		minetest.place_schematic({x=pos.x-2, y=pos.y-1, z=pos.z-2}, minetest.get_modpath("mapgen").."/schematics/mapgen_evergreen.mts", "random", {{"base:leaves", "mapgen:evergreen_leaves"}, {"base:tree", "mapgen:evergreen_tree"}, {"base:dirt", "mapgen:dirt"}}, false)
	end,
})

---
--- World Layering
---

local function crusty(old, new)
	for i=1,8 do
		minetest.register_ore({
			ore_type = "scatter",
			ore = new,
			wherein = old,
			clust_scarcity = 1,
			clust_num_ores = 1,
			clust_size = 1,
			height_min = -16384,
			height_max = -4096,
		})
	end
end

crusty("mapgen:stone", "mapgen:crust_stone")

local function crustymese(old, new)
	for i=1,8 do
		minetest.register_ore({
			ore_type = "scatter",
			ore = new,
			wherein = old,
			clust_scarcity = 1,
			clust_num_ores = 1,
			clust_size = 1,
			height_max = -16385,
			height_min = -31000,
		})
	end
end

crustymese("mapgen:stone", "mapgen:mese_stone")