--init.lua
--tools mod for BFD.

dofile(minetest.get_modpath("tools").."/crafts.lua")

print 'tools need to be programmed in at some point, must be done.'

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
			snappy={times={[2]=0.5, [3]=1.2}, uses=10, maxlevel=1},
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
