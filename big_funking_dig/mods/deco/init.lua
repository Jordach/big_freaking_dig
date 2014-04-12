--deco.lua

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

-- wood planks

minetest.register_node("deco:oak_plank", {
	description = "Oak Planks",
	tiles = {"deco_wood_oak_planks.png"},
	sounds = default.node_sound_wood_defaults(),
	groups = {oddly_breakable_by_hand=1, flammable=1, snappy=1, choppy=3, wood=1},
})

minetest.register_node("deco:birch_plank", {
	description = "Birch Planks",
	tiles = {"deco_wood_birch_planks.png"},
	sounds = default.node_sound_wood_defaults(),
	groups = {oddly_breakable_by_hand=1, flammable=1, snappy=1, choppy=3, wood=1},
})

minetest.register_node("deco:cherry_plank", {
	description = "Cherry Planks",
	tiles = {"deco_wood_cherry_planks.png"},
	sounds = default.node_sound_wood_defaults(),
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

--torches

minetest.register_node("deco:torch", {
	description = "Torch",
	drawtype = "torchlike",
	tiles = {
		{name="deco_torch_floor.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}},
		{name="deco_torch_ceiling.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}},
		{name="deco_torch.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}}
	},
	inventory_image = "deco_torch_wield.png",
	wield_image = "deco_torch_wield.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	is_ground_content = false,
	walkable = false,
	light_source = 13,
	selection_box = {
		type = "wallmounted",
		wall_top = {-0.1, 0.5-0.6, -0.1, 0.1, 0.5, 0.1},
		wall_bottom = {-0.1, -0.5, -0.1, 0.1, -0.5+0.6, 0.1},
		wall_side = {-0.5, -0.3, -0.1, -0.5+0.3, 0.3, 0.1},
	},
	groups = {choppy=2,dig_immediate=3,flammable=1,attached_node=1,hot=2},
	legacy_wallmounted = true,
	sounds = default.node_sound_defaults(),
})

minetest.register_craft({
	output = 'deco:torch 4',
	recipe = {
		{'ores:coal_lump'},
		{'tools:stick'},
	}
})

minetest.register_craft({
	output = 'deco:torch 4',
	recipe = {
		{'ores:coal_fragment'},
		{'tools:stick'},
	}
})