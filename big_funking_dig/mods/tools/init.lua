--init.lua
--tools mod for BFD.

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

dofile(minetest.get_modpath("tools").."/crafts.lua")

minetest.register_craft({
	type = "toolrepair",
	additional_wear = -0.02,
})

--tool rod defs

minetest.register_craftitem("tools:stick", {
	description = "Wooden Stick",
	inventory_image = "tool_stick.png",
})

-- tool rod crafts

minetest.register_craft({
	output = 'tools:stick 16',
	recipe = {
		{'group:wood'},
	}
})

-- ingot crafts

minetest.register_craft({
	type = "cooking",
	output = "tools:steel_ingot",
	recipe = "ores:iron_lump",
})

-- ingot defs

minetest.register_craftitem("tools:steel_ingot", {
	description = "Steel Ingot",
	inventory_image = "tool_steel_ingot.png",
})

--basic wooden tools, upgrades can only be applied to iron and beyond -- stone cannot have them either.

minetest.register_tool("tools:pick_wood", {
	description = "Wooden Pickaxe",
	inventory_image = "tool_woodpick.png",
	tool_capabilities = {
		full_punch_interval = 2.3,
		max_drop_level = 0,
		groupcaps={
			cracky = {times={[3]=6}, uses=1, maxlevel=1},
		},
		damage_groups = {fleshy=1},
	}
})

minetest.register_tool("tools:shovel_wood", {
	description = "Wooden Shovel",
	inventory_image = "tool_woodshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 2.3,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[1]=12.4, [2]=6.2, [3]=3.1}, uses=12, maxlevel=1},
		},
		damage_groups = {fleshy=1},
	}
})

minetest.register_tool("tools:axe_wood", {
	description = "Wooden Axe",
	inventory_image = "tool_woodaxe.png",
	tool_capabilities = {
		full_punch_interval = 2.3,
		max_drop_level = 0,
		groupcaps = {
			choppy = {times={[2]=18.2, [3]=9.8}, uses = 8, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	}
})

minetest.register_tool("tools:sword_wood", {
	description = "Wooden Sword",
	inventory_image = "tool_woodsword.png",
	tool_capabilities = {
		full_punch_interval = 2.3,
		max_drop_level = 0,
		groupcaps = {
			snappy={times={[2]=1.2, [3]=0.5}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	}
})

-- wooden tool crafts

minetest.register_craft({
	output = 'tools:pick_wood',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'', 'tools:stick', ''},
		{'', 'tools:stick', ''},
	}
})

minetest.register_craft({
	output = 'tools:shovel_wood',
	recipe = {
		{'', 'group:wood', ''},
		{'', 'tools:stick', ''},
		{'', 'tools:stick', ''},
	}
})

minetest.register_craft({
	output = 'tools:sword_wood',
	recipe = {
		{'', 'group:wood', ''},
		{'', 'group:wood', ''},
		{'', 'tools:stick', ''},
	}
})

minetest.register_craft({
	output = 'tools:axe_wood',
	recipe = {
		{'group:wood', 'group:wood'},
		{'group:wood', 'tools:stick'},
		{'', 'tools:stick'},
	}
})

-- stone tool defs

minetest.register_tool("tools:pick_stone", {
	description = "Stone Pickaxe",
	inventory_image = "tool_stonepick.png",
	tool_capabilities = {
		full_punch_interval = 3.4,
		max_drop_level = 0,
		groupcaps={
			cracky = {times={[3]=3.7}, uses=12, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	}
})

minetest.register_tool("tools:shovel_stone", {
	description = "Stone Shovel",
	inventory_image = "tool_stoneshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 3.1,
		max_drop_level = 0,
		groupcaps={
			crumbly = {times={[1]=6.2, [2]=3.1, [3]=1.55}, uses=23, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	}
})

minetest.register_tool("tools:axe_stone", {
	description = "Stone Axe",
	inventory_image = "tool_stoneaxe.png",
	tool_capabilities = {
		full_punch_interval = 2.8,
		max_drop_level = 0,
		groupcaps={
			choppy = {times={[1]=18.2, [2]=9.8, [3]=4.2}, uses = 24, maxlevel=1},
		},
		damage_groups= {fleshy=3},
	}
})

minetest.register_tool("tools:sword_stone", {
	description = "Stone Sword",
	inventory_image = "tool_stonesword.png",
	tool_capabilities = {
		full_punch_interval = 4.1,
		max_drop_level = 0,
		groupcaps = {
			snappy={times={[1]=1.2, [2]=0.6, [3]=0.3}, uses=17, maxlevel=1},
		},
		damage_groups = {fleshy=5},
	}
})

-- stone tool crafts

minetest.register_craft({
	output = 'tools:pick_stone',
	recipe = {
		{'group:stone', 'group:stone', 'group:stone'},
		{'', 'tools:stick', ''},
		{'', 'tools:stick', ''},
	}
})

minetest.register_craft({
	output = 'tools:shovel_stone',
	recipe = {
		{'', 'group:stone', ''},
		{'', 'tools:stick', ''},
		{'', 'tools:stick', ''},
	}
})

minetest.register_craft({
	output = 'tools:axe_stone',
	recipe = {
		{'group:stone', 'group:stone', ''},
		{'group:stone', 'tools:stick', ''},
		{'', 'tools:stick', ''},
	}
})

minetest.register_craft({
	output = 'tools:sword_stone',
	recipe = {
		{'group:stone'},
		{'group:stone'},
		{'tools:stone'},
	}
})

-- steel tools (regular)

minetest.register_tool("tools:pick_steel", {
	description = "Steel Pickaxe",
	inventory_image = "tool_steelpick.png",
	tool_capabilities = {
		full_punch_interval = 2.05,
		max_drop_level = 0,
		groupcaps = {
			cracky = {times={[1]=3.7*2, [2]=3.7, [3]=1.7}, uses=34, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	}
})

minetest.register_tool("tools:shovel_steel", {
	description = "Steel Shovel",
	inventory_image = "tool_steelshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 2.05,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[1]=3.1, [2]=1.55, [3]=0.75}, uses = 36, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	}
})

minetest.register_tool("tools:axe_steel", {
	description = "Steel Axe",
	inventory_image = "tool_steelaxe.png",
	tool_capabilities = {
		full_punch_interval = 2.05,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[1]=9.8, [2]=4.2, [1]=3.1}, uses = 42, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	}
})

minetest.register_tool("tools:sword_steel", {
	description = "Steel Sword",
	inventory_image = "tool_steelsword.png",
	tool_capabilities = {
		full_punch_interval = 1.78,
		max_drop_level = 0,
		groupcaps = {
			snappy = {times={[1]=0.6, [2]=0.3, [3]=0.15}, uses = 32, maxlevel=1},
		},
		damage_groups = {fleshy = 7},
	}
})

-- steel tool crafts (fuck me, i'm tired of this repetitive shit when it comes to working on tools.

minetest.register_craft({
	output = 'tools:pick_steel',
	recipe = {
		{'tools:steel_ingot', 'tools:steel_ingot', 'tools:steel_ingot'},
		{'', 'tools:stick', ''},
		{'', 'tools:stick', ''},
	}
})

minetest.register_craft({
	output = 'tools:shovel_steel',
	recipe = {
		{'tools:steel_ingot'},
		{'tools:stick'},
		{'tools:stick'},
	}
})

minetest.register_craft({
	output = 'tools:axe_steel',
	recipe = {
		{'tools:steel_ingot', 'tools:steel_ingot', ''},
		{'tools:steel_ingot', 'tools:stick', ''},
		{'', 'tools:stick', ''},
	}
})

minetest.register_craft({
	output = 'tools:sword_steel',
	recipe = {
		{'tools:steel_ingot'},
		{'tools:steel_ingot'},
		{'tools:stick'},
	}
})