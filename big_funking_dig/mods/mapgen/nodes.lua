--nodes.lua
--for BFD

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
	buildable_to = true,
	groups = {snappy=3,flammable=3,flora=1,attached_node=1, waving=1},
	--sounds = default.node_sound_leaves_defaults(),
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
	--sounds = default.node_sound_leaves_defaults(),
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
	drop = "mapgen:long_grass_1",
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
	walkable = false,
	is_ground_content = true,
	buildable_to = true,
	groups = {snappy=3,flammable=3,flora=1,attached_node=1, waving=1},
	--sounds = default.node_sound_leaves_defaults(),
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
	drop = "mapgen:long_grass_1",
})

minetest.register_node("mapgen:long_grass_1", {
	description = "Long Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"mapgen_grass_1.png"},
	-- use a bigger inventory image
	inventory_image = "mapgen_grass_3.png",
	wield_image = "mapgen_grass_3.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	buildable_to = true,
	groups = {snappy=3,flammable=3,flora=1,attached_node=1, waving=1},
	--sounds = default.node_sound_leaves_defaults(),
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
	drop = "mapgen:long_grass_1",
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
	buildable_to = true,
	groups = {snappy=3,flammable=3,flora=1,attached_node=1, waving=1},
	--sounds = default.node_sound_leaves_defaults(),
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
	drop = "mapgen:long_grass_1",
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
	--sounds = default.node_sound_leaves_defaults(),
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
	drop = "mapgen:long_grass_1",
})

--
-- Desert Stuff, plus dead dirt
--

minetest.register_node("mapgen:cactus", {
	description = "Cactus",
	tiles = {"mapgen_cactus_top.png", "mapgen_cactus_top.png", "mapgen_cactus_side.png"},
	paramtype2 = "facedir",
	is_ground_content = true,
	groups = {snappy=1,choppy=3,flammable=2},
	--sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
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
	--sounds = default.node_sound_wood_defaults(),
	drop = "mapgen:dead_oak_log"
})

minetest.register_node("mapgen:dead_oak_log", {
	description = "Dead Oak Log",
	tiles = {"mapgen_dead_oak_top.png", "mapgen_dead_oak_top.png", "mapgen_dead_oak_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {choppy=2,oddly_breakable_by_hand=1,flammable=2},
	--sounds = default.node_sound_wood_defaults(),
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
				rarity = 40,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'mapgen:oak_leaves'},
			}
		}
	},
	--sounds = default.node_sound_leaves_defaults(),
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
})

--
-- Cherry Blossom Stuff
--

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
				rarity = 40,
			},
			{
				items = {'mapgen:cherry_blossom_leaves'},
			}
		}
	},
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
				rarity = 40,
			},
			{
				items = {'mapgen:birch_leaves'},
			}
		}
	},
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
})

minetest.register_node("mapgen:birch_log", {
	description = "Birch Log",
	tiles = {"mapgen_birch_top.png", "mapgen_birch_top.png", "mapgen_birch_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {choppy=2,oddly_breakable_by_hand=1,flammable=2},
	--sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mapgen:birch_tree", {
	description = "Birch Log",
	tiles = {"mapgen_birch_top.png", "mapgen_birch_top.png", "mapgen_birch_tree.png"},
	is_ground_content = false,
	groups = {choppy=2,oddly_breakable_by_hand=1,flammable=2,tree=1},
	drop = "mapgen:birch_log",
})

---
--- Stuff
---

minetest.register_node("mapgen:edens_grass", {
	description = "Eden's Grass",
	tiles = {"mapgen_edens_grass.png", "mapgen_dirt.png", "mapgen_dirt.png^mapgen_edens_grass_side.png"},
	groups = {crumbly=3, soil=1},
	is_ground_content = true,
})

