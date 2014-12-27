--[[

Craft Guide for Minetest

Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>
Source Code: https://github.com/cornernote/minetest-craft_guide
License: BSD-3-Clause https://raw.github.com/cornernote/minetest-craft_guide/master/LICENSE

REGISTER NODES

]]--

-- craft pc
minetest.register_node("deco:craft_terminal", {
	description = "Craft PC",
	drawtype = "mesh",
	mesh = "craft_guide_terminal.b3d",
	tiles = {"craft_guide_terminal.png",},
	paramtype = 'light',
	paramtype2 = "facedir",
	sunlight_propagates = true,
	groups = {choppy=2,dig_immediate=2},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 1.5, 0.5}
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 1.5, 0.5}
		},
	},
	--sounds = default.node_sound_defaults(),
	on_construct = craft_guide.on_construct,
	on_receive_fields = craft_guide.on_receive_fields,
	allow_metadata_inventory_move = craft_guide.allow_metadata_inventory_move,
	allow_metadata_inventory_put = craft_guide.allow_metadata_inventory_put,
	allow_metadata_inventory_take = craft_guide.allow_metadata_inventory_take,
})
