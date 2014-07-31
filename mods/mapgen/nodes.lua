--nodes.lua

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

minetest.register_node("mapgen:long_grass_1", {
	description = "Long Grass",
	drawtype = "plantlike",
	tiles = {"mapgen_grass_1.png"},
	-- use a bigger inventory image
	inventory_image = "mapgen_grass_3.png",
	wield_image = "mapgen_grass_3.png",
	waving = 1,
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	drop = {
		max_items = 1,
		items = {
			{items = {'farming:seed_wheat'},rarity = 5},
			{items = {'mapgen:long_grass_1'}},
		}
	},
	buildable_to = true,
	groups = {snappy=3,flammable=3,flora=1,attached_node=1, waving=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("mapgen:long_grass_"..math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("mapgen:long_grass_" .. math.random(1,5) .. " "..itemstack:get_count()-(1-ret:get_count()))
	end,
})

minetest.register_node("mapgen:long_grass_2", {
	description = "Long Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"mapgen_grass_2.png"},
	-- use a bigger inventory image
	inventory_image = "mapgen_grass_3.png",
	wield_image = "mapgen_grass_3.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	buildable_to = true,
	groups = {snappy=3,flammable=3,flora=1,attached_node=1, waving=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
	drop = {
		max_items = 1,
		items = {
			{items = {'farming:seed_wheat'},rarity = 5},
			{items = {'mapgen:long_grass_1'}},
		}
	},
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("mapgen:long_grass_"..math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("mapgen:long_grass_" .. math.random(1,5) .. " "..itemstack:get_count()-(1-ret:get_count()))
	end,
})

minetest.register_node("mapgen:long_grass_3", {
	description = "Long Grass",
	waving = 1,
	drawtype = "plantlike",
	tiles = {"mapgen_grass_3.png"},
	-- use a bigger inventory image
	inventory_image = "mapgen_grass_3.png",
	wield_image = "mapgen_grass_3.png",
	paramtype = "light",
	drop = {
		max_items = 1,
		items = {
			{items = {'farming:seed_wheat'},rarity = 5},
			{items = {'mapgen:long_grass_1'}},
		}
	},
	walkable = false,
	is_ground_content = true,
	buildable_to = true,
	groups = {snappy=3,flammable=3,flora=1,attached_node=1, waving=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("mapgen:long_grass_"..math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("mapgen:long_grass_" .. math.random(1,5) .. " "..itemstack:get_count()-(1-ret:get_count()))
	end,
})

minetest.register_node("mapgen:long_grass_4", {
	description = "Long Grass",
	drawtype = "plantlike",
	tiles = {"mapgen_grass_4.png"},
	waving = 1,
	-- use a bigger inventory image
	inventory_image = "mapgen_grass_3.png",
	wield_image = "mapgen_grass_3.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	drop = {
		max_items = 1,
		items = {
			{items = {'farming:seed_wheat'},rarity = 5},
			{items = {'mapgen:long_grass_1'}},
		}
	},
	buildable_to = true,
	groups = {snappy=3,flammable=3,flora=1,attached_node=1, waving=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("mapgen:long_grass_"..math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("mapgen:long_grass_" .. math.random(1,5) .. " "..itemstack:get_count()-(1-ret:get_count()))
	end,
})

minetest.register_node("mapgen:long_grass_5", {
	description = "Long Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"mapgen_grass_5.png"},
	-- use a bigger inventory image
	inventory_image = "mapgen_grass_3.png",
	wield_image = "mapgen_grass_3.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	buildable_to = true,
	groups = {snappy=3,flammable=3,flora=1,attached_node=1, waving=1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {
		max_items = 1,
		items = {
			{items = {'farming:seed_wheat'},rarity = 5},
			{items = {'mapgen:long_grass_1'}},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("mapgen:long_grass_"..math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("mapgen:long_grass_" .. math.random(1,5) .. " "..itemstack:get_count()-(1-ret:get_count()))
	end,
})

--
-- Desert Stuff, plus dead dirt
--

minetest.register_node("mapgen:cactus", {
	description = "Cactus",
	tiles = {"mapgen_cactus_top.png", "mapgen_cactus_top.png", "mapgen_cactus_side.png"},
	is_ground_content = true,
	groups = {snappy=1,choppy=3,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	damage_per_second = 1,
	node_box = {
		type = "fixed",
		fixed = {{-7/16, -0.5, -7/16, 7/16, 0.5, 7/16}, {-8/16, -0.5, -7/16, -7/16, 0.5, -7/16},
			 {7/16, -0.5, -7/16, 7/16, 0.5, -8/16},{-7/16, -0.5, 7/16, -7/16, 0.5, 8/16},{7/16, -0.5, 7/16, 8/16, 0.5, 7/16}}--
	},
	selection_box = {
		type = "fixed",
		fixed = {-7/16, -0.5, -7/16, 7/16, 0.5, 7/16},
				
	},
})

minetest.register_node("mapgen:sand", {
	description = "Sand",
	tiles = {"mapgen_sand.png"},
	groups = {crumbly=3, falling_node=1, sand=1},
	is_ground_content = true,
})

minetest.register_node("mapgen:sandstone", {
	description = "Sandstone",
	tiles = {"mapgen_sandstone.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mapgen:dead_bush", {
	description = "Dead Bush",
	tiles = {"mapgen_dead_bush.png"},
	inventory_image = "mapgen_dead_bush.png",
	wield_image = "mapgen_dead_bush.png",
	waving = 1,
	groups = {snappy=3,flammable=3,flora=1,attached_node=1, waving=1},
	drawtype = "plantlike",
	paramtype = "light",
	walkable = false,
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("mapgen:perma_dirt", {
	description = "Perma Dirt",
	tiles = {"mapgen_perma_dirt.png"},
	groups = {crumbly=3},
})

--
-- Dead Oak Stuff
--


minetest.register_node("mapgen:dead_oak", {
	description = "Dead Oak Log",
	tiles = {"mapgen_dead_oak_top.png", "mapgen_dead_oak_top.png", "mapgen_dead_oak_tree.png"},
	is_ground_content = false,
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	drop = "mapgen:dead_oak_log"
})

minetest.register_node("mapgen:dead_oak_log", {
	description = "Dead Oak Log",
	tiles = {"mapgen_dead_oak_top.png", "mapgen_dead_oak_top.png", "mapgen_dead_oak_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

--
-- Oak Tree
--

minetest.register_node("mapgen:oak_log_tree", {
	description = "Oak Log",
	tiles = {"mapgen_oak_top.png", "mapgen_oak_top.png", "mapgen_oak_tree.png"},
	is_ground_content = false,
	groups = {choppy=2,oddly_breakable_by_hand=1,flammable=2,tree=1},
	drop = "mapgen:oak_log",
})

minetest.register_node("mapgen:oak_log", {
	description = "Oak Log",
	paramtype2 = "facedir",
	tiles = {"mapgen_oak_top.png", "mapgen_oak_top.png", "mapgen_oak_tree.png"},
	is_ground_content = false,
	groups = {choppy=2,oddly_breakable_by_hand=1,flammable=2},
	on_place = minetest.rotate_node,
})

minetest.register_node("mapgen:oak_leaves", {
	description = "Oak Leaves",
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	tiles = {"mapgen_oak_leaves.png"},
	paramtype = "light",
	waving = 1,
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'mapgen:oak_sapling'},
				rarity = 32,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'mapgen:oak_leaves'},
			},
			{
				items = {'mapgen:apple'},
				rarity = 20,
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("mapgen:oak_leaves_deco")
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("mapgen:oak_leaves".." "..itemstack:get_count()-(1-ret:get_count()))
	end,
})

minetest.register_node("mapgen:oak_leaves_deco", {
	description = "Oak Leaves",
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	tiles = {"mapgen_oak_leaves.png"},
	paramtype = "light",
	waving=1,
	is_ground_content = false,
	groups = {snappy=3, flammable=2, leaves=1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {'mapgen:oak_leaves'},
})

minetest.register_node("mapgen:oak_sapling", {
	description = "Oak Sapling",
	waving = 1,
	visual_scale = 1.0,
	drawtype = "plantlike",
	tiles = {"mapgen_oak_sapling.png"},
	inventory_image = "mapgen_oak_sapling.png",
	wield_image = "mapgen_oak_sapling.png",
	walkable = false,
	paramtype = "light",
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
})

--
-- Cherry Blossom Stuff
--

minetest.register_node("mapgen:cherry_tree", {
	description = "Cherry Log",
	tiles = {"mapgen_cherry_top.png", "mapgen_cherry_top.png", "mapgen_cherry_tree.png"},
	is_ground_content = false,
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	drop = "mapgen:cherry_log"
})

minetest.register_node("mapgen:cherry_log", {
	description = "Cherry Log",
	tiles = {"mapgen_cherry_top.png", "mapgen_cherry_top.png", "mapgen_cherry_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mapgen:cherry_sapling", {
	description = "Cherry Sapling",
	waving = 1,
	visual_scale = 1.0,
	inventory_image = "mapgen_cherry_sapling.png",
	wield_image = "mapgen_cherry_sapling.png",
	drawtype = "plantlike",
	paramtype = "light",
	tiles = {"mapgen_cherry_sapling.png"},
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("mapgen:cherry_blossom_leaves", {
	description = "Cherry Blossom Leaves",
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	tiles = {"mapgen_cherry_blossom_leaves.png"},
	paramtype = "light",
	waving = 1,
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				items = {'mapgen:cherry_sapling'},
				rarity = 32,
			},
			{
				items = {'mapgen:cherry_blossom_leaves'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("mapgen:cherry_leaves_deco")
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("mapgen:cherry_blossom_leaves".." "..itemstack:get_count()-(1-ret:get_count()))
	end,
})

minetest.register_node("mapgen:cherry_leaves_deco", {
	description = "Cherry Leaves",
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	tiles = {"mapgen_cherry_blossom_leaves.png"},
	paramtype = "light",
	waving=1,
	is_ground_content = false,
	groups = {snappy=3, flammable=2, leaves=1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {'mapgen:cherry_blossom_leaves'},
})

--
-- Birch
--

minetest.register_node("mapgen:birch_leaves", {
	description = "Birch Leaves",
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	tiles = {"mapgen_birch_leaves.png"},
	paramtype = "light",
	waving = 1,
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				items = {'mapgen:birch_sapling'},
				rarity = 32,
			},
			{
				items = {'mapgen:birch_leaves'},
			},
			{
				items = {'mapgen:apple'},
				rarity = 20,
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("mapgen:birch_leaves_deco")
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("mapgen:birch_leaves".." "..itemstack:get_count()-(1-ret:get_count()))
	end,
})

minetest.register_node("mapgen:birch_leaves_deco", {
	description = "Birch Leaves",
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	tiles = {"mapgen_birch_leaves.png"},
	paramtype = "light",
	waving=1,
	is_ground_content = false,
	groups = {snappy=3, flammable=2, leaves=1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {'mapgen:birch_leaves'},
})

minetest.register_node("mapgen:birch_sapling", {
	description = "Birch Sapling",
	waving = 1,
	visual_scale = 1.0,
	wield_image = "mapgen_birch_sapling.png",
	inventory_image = "mapgen_birch_sapling.png",
	drawtype = "plantlike",
	paramtype = "light",
	tiles = {"mapgen_birch_sapling.png"},
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("mapgen:birch_log", {
	description = "Birch Log",
	tiles = {"mapgen_birch_top.png", "mapgen_birch_top.png", "mapgen_birch_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mapgen:birch_tree", {
	description = "Birch Log",
	tiles = {"mapgen_birch_top.png", "mapgen_birch_top.png", "mapgen_birch_tree.png"},
	is_ground_content = false,
	groups = {choppy=2,oddly_breakable_by_hand=1,flammable=2,tree=1},
	sounds = default.node_sound_wood_defaults(),
	drop = "mapgen:birch_log",
})

--
-- Evergreen Tree <3
--

minetest.register_node("mapgen:evergreen_tree", {
	description = "Evergreen Log",
	tiles = {"mapgen_evergreen_top.png", "mapgen_evergreen_top.png", "mapgen_evergreen_side.png"},
	is_ground_content = false,
	groups = {choppy=2,oddly_breakable_by_hand=1,flammable=2,tree=1},
	drop = "mapgen:evergreen_log",
})

minetest.register_node("mapgen:evergreen_log", {
	description = "Evergreen Log",
	paramtype2 = "facedir",
	tiles = {"mapgen_evergreen_top.png", "mapgen_evergreen_top.png", "mapgen_evergreen_side.png"},
	is_ground_content = false,
	groups = {choppy=2,oddly_breakable_by_hand=1,flammable=2},
	on_place = minetest.rotate_node,
})

minetest.register_node("mapgen:evergreen_leaves", {
	description = "Evergreen Leaves",
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	tiles = {"mapgen_evergreen_leaves.png"},
	paramtype = "light",
	waving = 1,
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'mapgen:evergreen_sapling'},
				rarity = 32,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'mapgen:evergreen_leaves'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("mapgen:evergreen_leaves_deco")
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("mapgen:evergreen_leaves".." "..itemstack:get_count()-(1-ret:get_count()))
	end,
})

minetest.register_node("mapgen:evergreen_leaves_deco", {
	description = "Evergreen Leaves",
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	tiles = {"mapgen_evergreen_leaves.png"},
	paramtype = "light",
	waving=1,
	is_ground_content = false,
	groups = {snappy=3, flammable=2, leaves=1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {'mapgen:evergreen_leaves'},
})

minetest.register_node("mapgen:evergreen_leaves_snowy", {
	description = "Evergreen Leaves",
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	tiles = {"mapgen_evergreen_leaves_snowy.png"},
	paramtype = "light",
	waving = 1,
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'mapgen:evergreen_sapling'},
				rarity = 32,
			},
			{
				items = {'mapgen:snow'},
				rarity = 10,
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("mapgen:evergreen_sapling", {
	description = "Evergreen Sapling",
	waving = 1,
	visual_scale = 1.0,
	drawtype = "plantlike",
	tiles = {"mapgen_evergreen_sapling.png"},
	inventory_image = "mapgen_evergreen_sapling.png",
	wield_image = "mapgen_evergreen_sapling.png",
	walkable = false,
	paramtype = "light",
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
})

--
-- Snow and stuff related to snow
--

minetest.register_node("mapgen:snow", {
	description = "Snow",
	tiles = {"mapgen_snow.png"},
	inventory_image = "mapgen_snowball.png",
	wield_image = "mapgen_snowball.png",
	is_ground_content = true,
	paramtype = "light",
	buildable_to = true,
	leveled = 7,
	drawtype = "nodebox",
	node_box = {
		type = "leveled",
		fixed = {
			{-0.5, -0.5, -0.5,  0.5, -0.5+2/16, 0.5},
		},
	},
	groups = {crumbly=3,falling_node=1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_snow_footstep", gain=0.25},
		dug = {name="default_snow_footstep", gain=0.75},
	}),
	on_construct = function(pos)
		pos.y = pos.y - 1
		if minetest.get_node(pos).name == "mapgen:grass" then
			minetest.set_node(pos, {name="mapgen:snowy_grass"})
		end
	end,
})

minetest.register_node("mapgen:snowblock", {
	description = "Snow Block",
	tiles = {"mapgen_snow.png"},
	is_ground_content = true,
	groups = {crumbly=3},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_snow_footstep", gain=0.25},
		dug = {name="default_snow_footstep", gain=0.75},
	}),
})

minetest.register_craft({
	output = 'mapgen:snowblock',
	recipe = {
		{'mapgen:snow', 'mapgen:snow'},
		{'mapgen:snow', 'mapgen:snow'},
	}
})

minetest.register_node("mapgen:ice", {
	description = "Ice",
	tiles = {"mapgen_ice.png"},
	is_ground_content = true,
	paramtype = "light",
	groups = {cracky=3},
	sounds = default.node_sound_glass_defaults(),
})

-- wheat grass

minetest.register_node("mapgen:wheat_grass_1", {
	description = "Wheat Grass",
	drawtype = "plantlike",
	tiles = {"mapgen_wheat_grass_1.png"},
	-- use a bigger inventory image
	inventory_image = "mapgen_wheat_grass_3.png",
	wield_image = "mapgen_wheat_grass_3.png",
	waving = 1,
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	drop = {
		max_items = 1,
		items = {
			{items = {'farming:seed_wheat'},rarity = 2},
			{items = {'farming:wheat'}, rarity=7},
			{items = {''},},
		}
	},
	buildable_to = true,
	groups = {snappy=3,flammable=3,flora=1,attached_node=1, waving=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("mapgen:wheat_grass_"..math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("mapgen:wheat_grass_" .. math.random(1,5) .. " "..itemstack:get_count()-(1-ret:get_count()))
	end,
})

minetest.register_node("mapgen:wheat_grass_2", {
	description = "Wheat Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"mapgen_wheat_grass_2.png"},
	-- use a bigger inventory image
	inventory_image = "mapgen_wheat_grass_3.png",
	wield_image = "mapgen_wheat_grass_3.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	buildable_to = true,
	groups = {snappy=3,flammable=3,flora=1,attached_node=1, waving=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
	drop = {
		max_items = 1,
		items = {
			{items = {'farming:seed_wheat'},rarity = 2},
			{items = {'farming:wheat'}, rarity=7},
			{items = {''},},
		}
	},
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("mapgen:wheat_grass_"..math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("mapgen:wheat_grass_" .. math.random(1,5) .. " "..itemstack:get_count()-(1-ret:get_count()))
	end,
})

minetest.register_node("mapgen:wheat_grass_3", {
	description = "Wheat Grass",
	waving = 1,
	drawtype = "plantlike",
	tiles = {"mapgen_wheat_grass_3.png"},
	-- use a bigger inventory image
	inventory_image = "mapgen_wheat_grass_3.png",
	wield_image = "mapgen_wheat_grass_3.png",
	paramtype = "light",
	drop = {
		max_items = 1,
		items = {
			{items = {'farming:seed_wheat'},rarity = 2},
			{items = {'farming:wheat'}, rarity=7},
			{items = {''},},
		}
	},
	walkable = false,
	is_ground_content = true,
	buildable_to = true,
	groups = {snappy=3,flammable=3,flora=1,attached_node=1, waving=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("mapgen:wheat_grass_"..math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("mapgen:wheat_grass_" .. math.random(1,5) .. " "..itemstack:get_count()-(1-ret:get_count()))
	end,
})

minetest.register_node("mapgen:wheat_grass_4", {
	description = "Wheat Grass",
	drawtype = "plantlike",
	tiles = {"mapgen_wheat_grass_4.png"},
	waving = 1,
	-- use a bigger inventory image
	inventory_image = "mapgen_wheat_grass_3.png",
	wield_image = "mapgen_wheat_grass_3.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	drop = {
		max_items = 1,
		items = {
			{items = {'farming:seed_wheat'},rarity = 2},
			{items = {'farming:wheat'}, rarity=7},
			{items = {''},},
		}
	},
	buildable_to = true,
	groups = {snappy=3,flammable=3,flora=1,attached_node=1, waving=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("mapgen:wheat_grass_"..math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("mapgen:wheat_grass_" .. math.random(1,5) .. " "..itemstack:get_count()-(1-ret:get_count()))
	end,
})

minetest.register_node("mapgen:wheat_grass_5", {
	description = "Wheat Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"mapgen_wheat_grass_5.png"},
	-- use a bigger inventory image
	inventory_image = "mapgen_wheat_grass_3.png",
	wield_image = "mapgen_wheat_grass_3.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	buildable_to = true,
	groups = {snappy=3,flammable=3,flora=1,attached_node=1, waving=1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {
		max_items = 1,
		items = {
			{items = {'farming:seed_wheat'},rarity = 2},
			{items = {'farming:wheat'}, rarity=7},
			{items = {''},},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("mapgen:wheat_grass_"..math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("mapgen:wheat_grass_" .. math.random(1,5) .. " "..itemstack:get_count()-(1-ret:get_count()))
	end,
})

--
-- don't drop the *soap*stone
--

minetest.register_node("mapgen:soap_stone", {
	description = "Soap Stone",
	tiles = {"mapgen_soap_stone.png"},
	groups = {cracky=2, stone=1},
	is_ground_content = true,
	sounds = default.node_sound_stone_defaults(),
})

--
-- deathly stuff
--

d_grass_min = 1
d_grass_max = 4

minetest.register_node("mapgen:deathly_grass", {
	description = "Deathly Grass",
	tiles = {"mapgen_deathly_grass_1.png", "mapgen_dirt.png", "mapgen_dirt.png^mapgen_deathly_grass_side_"..math.random(d_grass_min,d_grass_max)..".png", "mapgen_dirt.png^mapgen_deathly_grass_side_"..math.random(d_grass_min,d_grass_max)..".png", "mapgen_dirt.png^mapgen_deathly_grass_side_"..math.random(d_grass_min,d_grass_max)..".png", "mapgen_dirt.png^mapgen_deathlgrass_side_"..math.random(d_grass_min,d_grass_max)..".png"},
	groups = {crumbly=1},
	is_ground_content = true,
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("mapgen:deathly_grass_1", {
	description = "Deathly Grass",
	tiles = {"mapgen_deathly_grass_1.png", "mapgen_dirt.png", "mapgen_dirt.png^mapgen_deathly_grass_side_"..math.random(d_grass_min,d_grass_max)..".png", "mapgen_dirt.png^mapgen_deathly_grass_side_"..math.random(d_grass_min,d_grass_max)..".png", "mapgen_dirt.png^mapgen_deathly_grass_side_"..math.random(d_grass_min,d_grass_max)..".png", "mapgen_dirt.png^mapgen_deathlgrass_side_"..math.random(d_grass_min,d_grass_max)..".png"},
	groups = {crumbly=1},
	drops = "mapgen:dirt",
	is_ground_content = true,
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("mapgen:deathly_grass_2", {
	description = "Deathly Grass",
	tiles = {"mapgen_deathly_grass_2.png", "mapgen_dirt.png", "mapgen_dirt.png^mapgen_deathly_grass_side_"..math.random(d_grass_min,d_grass_max)..".png", "mapgen_dirt.png^mapgen_deathly_grass_side_"..math.random(d_grass_min,d_grass_max)..".png", "mapgen_dirt.png^mapgen_deathly_grass_side_"..math.random(d_grass_min,d_grass_max)..".png", "mapgen_dirt.png^mapgen_deathlgrass_side_"..math.random(d_grass_min,d_grass_max)..".png"},
	groups = {crumbly=1},
	drops = "mapgen:dirt",
	is_ground_content = true,
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("mapgen:deathly_grass_3", {
	description = "Deathly Grass",
	tiles = {"mapgen_deathly_grass_3.png", "mapgen_dirt.png", "mapgen_dirt.png^mapgen_deathly_grass_side_"..math.random(d_grass_min,d_grass_max)..".png", "mapgen_dirt.png^mapgen_deathly_grass_side_"..math.random(d_grass_min,d_grass_max)..".png", "mapgen_dirt.png^mapgen_deathly_grass_side_"..math.random(d_grass_min,d_grass_max)..".png", "mapgen_dirt.png^mapgen_deathlgrass_side_"..math.random(d_grass_min,d_grass_max)..".png"},
	groups = {crumbly=1},
	drops = "mapgen:dirt",
	is_ground_content = true,
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("mapgen:deathly_grass_4", {
	description = "Deathly Grass",
	tiles = {"mapgen_deathly_grass_1.png", "mapgen_dirt.png", "mapgen_dirt.png^mapgen_deathly_grass_side_"..math.random(d_grass_min,d_grass_max)..".png", "mapgen_dirt.png^mapgen_deathly_grass_side_"..math.random(d_grass_min,d_grass_max)..".png", "mapgen_dirt.png^mapgen_deathly_grass_side_"..math.random(d_grass_min,d_grass_max)..".png", "mapgen_dirt.png^mapgen_deathlgrass_side_"..math.random(d_grass_min,d_grass_max)..".png"},
	groups = {crumbly=1},
	drops = "mapgen:dirt",
	is_ground_content = true,
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("mapgen:deathly_long_grass_1", {
	description = "Deathly Long Grass",
	drawtype = "plantlike",
	tiles = {"mapgen_deathly_long_grass_1.png"},
	-- use a bigger inventory image
	inventory_image = "mapgen_deathly_long_grass_1.png",
	wield_image = "mapgen_deathly_long_grass_1.png",
	waving = 1,
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	drop = 'mapgen:deathly_long_grass_1',
	buildable_to = true,
	groups = {snappy=3,flammable=3,attached_node=1, waving=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("mapgen:deathly_long_grass_"..math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("mapgen:deathly_long_grass_" .. math.random(1,5) .. " "..itemstack:get_count()-(1-ret:get_count()))
	end,
})

minetest.register_node("mapgen:deathly_long_grass_2", {
	description = "Deathly Long Grass",
	drawtype = "plantlike",
	tiles = {"mapgen_deathly_long_grass_2.png"},
	-- use a bigger inventory image
	inventory_image = "mapgen_deathly_long_grass_2.png",
	wield_image = "mapgen_deathly_long_grass_2.png",
	waving = 1,
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	drop = 'mapgen:deathly_long_grass_1',
	buildable_to = true,
	groups = {snappy=3,flammable=3,attached_node=1, waving=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})

minetest.register_node("mapgen:deathly_long_grass_3", {
	description = "Deathly Long Grass",
	drawtype = "plantlike",
	tiles = {"mapgen_deathly_long_grass_3.png"},
	-- use a bigger inventory image
	inventory_image = "mapgen_deathly_long_grass_3.png",
	wield_image = "mapgen_deathly_long_grass_3.png",
	waving = 1,
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	drop = 'mapgen:deathly_long_grass_1',
	buildable_to = true,
	groups = {snappy=3,flammable=3,attached_node=1, waving=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})

-- deathly random

minetest.register_abm({
	nodenames = {"mapgen:deathly_grass"},
	interval = 1,
	chance = 1,
	action = function(pos)
		local rotationrand = math.random(1,4)
		minetest.env:add_node(pos,{name="mapgen:deathly_grass_"..rotationrand})
	end,
})

-- deathly spread

minetest.register_abm({
	nodenames = {"mapgen:grass1","mapgen:grass2","mapgen:grass3","mapgen:grass4",},
	neighbors = {"mapgen:deathly_grass_1","mapgen:deathly_grass_2","mapgen:deathly_grass_3","mapgen:deathly_grass_4","mapgen:deathly_long_grass_1","mapgen:deathly_long_grass_2","mapgen:deathly_long_grass_3","mapgen:deathly_tree","mapgen:deathly_log","mapgen:deathly_leaves","mapgen:deathly_leaves_deco","mapgen:deathly_sapling"},
	interval = 180*4,
	chance = 4,
	action = function(pos)
		minetest.add_node(pos,{name="mapgen:deathly_grass_"..math.random(1,4)})
	end,
})
	
-- deathly trees

minetest.register_node("mapgen:deathly_tree", {
	description = "Deathly Log",
	tiles = {"mapgen_deathly_log_top.png", "mapgen_deathly_log_top.png", "mapgen_deathly_log.png"},
	is_ground_content = false,
	groups = {choppy=2,oddly_breakable_by_hand=1,flammable=2,tree=1},
	drop = "mapgen:deathly_log",
})

minetest.register_node("mapgen:deathly_log", {
	description = "Deathly Log",
	paramtype2 = "facedir",
	tiles = {"mapgen_deathly_log_top.png", "mapgen_deathly_log_top.png", "mapgen_deathly_log.png"},
	is_ground_content = false,
	groups = {choppy=2,oddly_breakable_by_hand=1,flammable=2},
	on_place = minetest.rotate_node,
})

minetest.register_node("mapgen:deathly_leaves", {
	description = "Deathly Leaves",
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	tiles = {"mapgen_deathly_leaves.png"},
	paramtype = "light",
	waving = 1,
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=2, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'mapgen:deathly_sapling'},
				rarity = 32,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'mapgen:deathly_leaves'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("mapgen:deathly_leaves_deco")
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("mapgen:deathly_leaves".." "..itemstack:get_count()-(1-ret:get_count()))
	end,
})

minetest.register_node("mapgen:deathly_leaves_deco", {
	description = "Deathly Leaves",
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	tiles = {"mapgen_deathly_leaves.png"},
	paramtype = "light",
	waving=1,
	is_ground_content = false,
	groups = {snappy=3, flammable=2, leaves=1},
	sounds = default.node_sound_leaves_defaults(),
	drop = {'mapgen:deathly_leaves'},
})

minetest.register_node("mapgen:deathly_sapling", {
	description = "Deathly Sapling",
	waving = 1,
	visual_scale = 1.0,
	drawtype = "plantlike",
	tiles = {"mapgen_deathly_sapling.png"},
	inventory_image = "mapgen_deathly_sapling.png",
	wield_image = "mapgen_deathly_sapling.png",
	walkable = false,
	paramtype = "light",
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=2,attached_node=1},
	sounds = default.node_sound_leaves_defaults(),
})

---
--- Stuff
---

minetest.register_node("mapgen:edens_grass", {
	description = "Eden's Grass",
	tiles = {"mapgen_edens_grass.png", "mapgen_dirt.png", "mapgen_dirt.png^mapgen_edens_grass_side.png"},
	groups = {crumbly=3, soil=1},
	is_ground_content = true,
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_craftitem("mapgen:apple", {
	description = "Apple",
	inventory_image = "mapgen_apple.png",
	on_use = minetest.item_eat(2),
})

-- eden's restoration liquids abm

minetest.register_abm({
	nodenames = {"mapgen:deathly_grass_1","mapgen:deathly_grass_2","mapgen:deathly_grass_3","mapgen:deathly_grass_4"},
	neighbors = {"mapgen:edens_water_source", "mapgen:edens_water_flowing"},
	interval = 1,
	chance = 1,
	action = function(pos)
		minetest.set_node(pos,{name="mapgen:grass"})		
	end,
})

minetest.register_abm({
	nodenames = {"mapgen:deathly_long_grass_1","mapgen:deathly_long_grass_2","mapgen:deathly_long_grass_3"},
	neighbors = {"mapgen:edens_water_source", "mapgen:edens_water_flowing"},
	interval = 1,
	chance = 1,
	action = function(pos)
		local rand = math.random(1,3)
		minetest.set_node(pos,{name="mapgen:long_grass_"..rand})
	end,
})

minetest.register_abm({
	nodenames = {"mapgen:deathly_tree", "mapgen:deathly_log"},
	neighbors = {"mapgen:edens_water_source", "mapgen:edens_water_flowing"},
	interval = 1,
	chance = 1,
	action = function(pos)
		minetest.set_node(pos,{name="mapgen:oak_log_tree"})
	end,
})

minetest.register_abm({
	nodenames = {"mapgen:deathly_leaves","mapgen:deathly_leaves_deco"},
	neighbors = {"mapgen:edens_water_source", "mapgen:edens_water_flowing"},
	interval = 1,
	chance = 1,
	action = function(pos)
		minetest.set_node(pos,{name="mapgen:oak_leaves"})
	end,
})

minetest.register_abm({
	nodenames = {"mapgen:deathly_sapling"},
	neighbors = {"mapgen:edens_water_source", "mapgen:edens_water_flowing"},
	interval = 1,
	chance = 1,
	action = function(pos)
		minetest.set_node(pos,{name="mapgen:oak_sapling"})
	end,
})

minetest.register_craft({
	output = 'bucket:edens_water 1',
	recipe = {
		{'mapgen:edens_grass'},
		{'bucket:bucket_water'},
	}
})