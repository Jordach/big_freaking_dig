--[[

Craft Guide for Minetest

Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>
Source Code: https://github.com/cornernote/minetest-craft_guide
License: BSD-3-Clause https://raw.github.com/cornernote/minetest-craft_guide/master/LICENSE

REGISTER CRAFTS

]]--

-- craft pc
minetest.register_craft({
	output = 'deco:craft_terminal',
	recipe = {
		{'deco:sign_wall'},
		{'deco:glass'},
		{'stairs:slab_stone'},
	}
})
--minetest.register_craft({
--	output = 'craft_guide:lcd_pc',
--	recipe = {
--		{'craft_guide:sign_wall'},
--		{'default:glass'},
--		{'stairsplus:slab_stone'},
--	}
--})
