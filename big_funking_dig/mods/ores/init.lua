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

dofile(minetest.get_modpath("ores").."/oregen.lua")

minetest.register_node("ores:iridium_ore", {
	description = "Iridium Ore",
	tiles = {"mapgen_stone.png^ores_iridium.png"},
	is_ground_content = true,
	drop = 'ores:iridium_lump',
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("ores:iridium_lump", {
	description = "Iridium Lump",
	inventory_image = "ores_iridium.png",
})

minetest.register_node("ores:osmium_ore", {
	description = "Osmium Ore",
	tiles = {"mapgen_stone.png^ores_osmium.png"},
	is_ground_content = true,
	drop = 'ores:osmium_lump',
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky=1},
})

minetest.register_craftitem("ores:osmium_lump", {
	description = "Osmium Lump",
	inventory_image = "ores_osmium_lump.png",
})

minetest.register_node("ores:bauxite_ore", {
	description = "Osmium Ore",
	tiles = {"mapgen_stone.png^ores_bauxite.png"},
	is_ground_content = true,
	drop = 'ores:bauxite_lump',
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky=2},
})

minetest.register_craftitem("ores:bauxite_lump", {
	description = "Bauxite Lump",
	inventory_image = "ores_bauxite_lump.png",
})

minetest.register_node("ores:coal_ore", {
	description = "Coal Ore",
	tiles = {"mapgen_stone.png^ores_coal.png"},
	is_ground_content = true,
	drop = 'ores:coal_lump',
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("ores:coal_lump", {
	description = "Coal Lump",
	inventory_image = "ores_coal_lump.png",
})

minetest.register_node("ores:cobalt_ore", {
	description = "Osmium Ore",
	tiles = {"mapgen_stone.png^ores_cobalt.png"},
	is_ground_content = true,
	drop = 'ores:coal_lump',
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("ores:cobalt_lump", {
	description = "Cobalt Lump",
	inventory_image = "ores_cobalt_lump.png",
})

minetest.register_node("ores:copper_ore", {
	description = "Copper Ore",
	tiles = {"mapgen_stone.png^ores_copper.png"},
	is_ground_content = true,
	drop = 'ores:copper_lump',
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("ores:copper_lump", {
	description = "Copper Lump",
	inventory_image = "ores_copper_lump.png",
})

minetest.register_node("ores:diamond_ore", {
	description = "Diamond Ore",
	tiles = {"mapgen_stone.png^ores_diamond.png"},
	is_ground_content = true,
	drop = 'ores:diamond',
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("ores:diamond", {
	description = "Diamond",
	inventory_image = "ores_diamond_crystal.png",
})

minetest.register_node("ores:mese", {
	description = "Mese Block",
	tiles = {"ores_mese_block.png"},
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("ores:mese_ore", {
	description = "Mese Ore",
	tiles = {"mapgen_stone.png^ores_mese.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = 'ores:mese_crystal',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("ores:mese_crystal", {
	description = "Mese Crystal",
	inventory_image = "ores_mese_crystal.png",
})

minetest.register_node("ores:obsidian", {
	description = "Obsidian",
	tiles = {"ores_obsidian_block.png"},
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("ores:obsidian_ore", {
	description = "Obsidian Ore",
	tiles = {"mapgen_stone.png^ores_obsidian.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("ores:obsidian_fragment", {
	description = "Obsidian Fragment",
	inventory_image = "ores_obsidian_fragment.png",
})

minetest.register_node("ores:lead_ore", {
	description = "Lead Ore",
	tiles = {"mapgen_stone.png^ores_lead.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = 'ores:lead_lump',
})

minetest.register_craftitem("ores:lead_lump", {
	description = "Lead Lump",
	inventory_image = "ores_lead_lump.png",
})

minetest.register_node("ores:silver_ore", {
	description = "Silver Ore",
	tiles = {"mapgen_stone.png^ores_silver.png"},
	drop = 'ores:silver_lump',
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("ores:silver_lump", {
	description = "Silver Lump",
	inventory_image = "ores_silver_lump.png",
})

minetest.register_node("ores:platinum_ore", {
	description = "Platinum Ore",
	drop = 'ores:platinum_lump',
	tiles = {"mapgen_stone.png^ores_platinum.png"},
	is_ground_content = true,
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky=1},
})

minetest.register_craftitem("ores:platinum_lump", {
	description = "Platinum Lump",
	inventory_image = "ores_platinum_lump.png",
})

minetest.register_node("ores:tin_ore", {
	description = "Tin Ore",
	sounds = default.node_sound_stone_defaults(),
	drop = 'ores:tin_lump',
	tiles = {"mapgen_stone.png^ores_tin.png"},
	is_ground_content = true,
	groups = {cracky=3},
})

minetest.register_craftitem("ores:tin_lump", {
	description = "Tin Lump",
	inventory_image = "ores_tin_lump.png",
})

minetest.register_node("ores:iron_ore", {
	description = "Iron Ore",
	sounds = default.node_sound_stone_defaults(),
	drop = 'ores:iron_lump',
	tiles = {"mapgen_stone.png^ores_iron.png"},
	is_ground_content = true,
	groups = {cracky=3},
})

minetest.register_craftitem("ores:iron_lump", {
	description = "Iron Lump",
	inventory_image = "ores_iron_lump.png",
})

-- Liquids

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
	liquid_renewable = false,
	liquidtype = "flowing",
	liquid_alternative_flowing = "ores:oil_flowing",
	liquid_alternative_source = "ores:oil_source",
	liquid_viscosity = 12,
	post_effect_color = {a=250, r=10, g=10, b=10},
	groups = {water=3, liquid=3, flammable=1},
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
	liquid_renewable = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "ores:oil_flowing",
	liquid_alternative_source = "ores:oil_source",
	liquid_viscosity = 12,
	post_effect_color = {a=250, r=10, g=10, b=10},
	groups = {water=3, liquid=3, flammable=1},
})