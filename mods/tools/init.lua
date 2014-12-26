--init.lua
--tools mod for BFD.

--dofile(minetest.get_modpath("tools").."/custom_tools.lua")

minetest.register_craft({
	type = "toolrepair",
	additional_wear = -0.02,
})

--tool rod defs

minetest.register_craftitem("tools:stick", {
	description = "Wooden Stick",
	inventory_image = "tool_stick.png",
})

-- chisel, for randomising the statues

minetest.register_craftitem("tools:chisel", {
	description = "Chisel",
	stack_max = 1,
	inventory_image = "tool_chisel.png",
})

-- get string from wool

minetest.register_craft({
	output = 'farming:string 9',
	recipe = { {'group:wool'} }
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

minetest.register_craft({
	type = "cooking",
	output = "tools:tin_ingot",
	recipe = "ores:tin_lump",
})

minetest.register_craft({
	type = "cooking",
	output = "tools:copper_ingot",
	recipe = "ores:copper_lump",
})

minetest.register_craft({
	output = 'tools:bronze_ingot 2',
	recipe = {
		{'tools:copper_ingot', 'tools:copper_ingot'},
		{'tools:copper_ingot', 'tools:tin_ingot'},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "tools:lead_ingot",
	recipe = "ores:lead_lump",
})

minetest.register_craft({
	type = "cooking",
	output = "tools:silver_ingot",
	recipe = "ores:silver_lump",
})

minetest.register_craft({
	type = "cooking",
	output = "tools:gold_ingot",
	recipe = "ores:gold_lump",
})

-- ingot defs

minetest.register_craftitem("tools:steel_ingot", {
	description = "Steel Ingot",
	inventory_image = "tools_steel_ingot.png",
})

minetest.register_craftitem("tools:tin_ingot", {
	description = "Tin Ingot",
	inventory_image = "tools_tin_ingot.png",
})

minetest.register_craftitem("tools:copper_ingot", {
	description = "Copper Ingot",
	inventory_image = "tools_copper_ingot.png",
})

minetest.register_craftitem("tools:bronze_ingot", {
	description = "Bronze Ingot",
	inventory_image = "tools_bronze_ingot.png",
})

minetest.register_craftitem("tools:lead_ingot", {
	description = "Lead Ingot",
	inventory_image = "tools_lead_ingot.png",
})

minetest.register_craftitem("tools:silver_ingot", {
	description = "Silver Ingot",
	inventory_image = "tools_silver_ingot.png",
})

minetest.register_craftitem("tools:gold_ingot", {
	description = "Silver Ingot",
	inventory_image = "tools_gold_ingot.png",
})

-- air sword!

minetest.register_tool("tools:sword_air", {
	description = "Air Sword",
	inventory_image = "tool_air_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.01,
		max_drop_level = 0,
		groupcaps = {
			snappy = {times={[1]=0.05, [2]=0.005, [3]=0.0005}, uses = 1337, maxlevel=1},
		},
		damage_groups = {fleshy=1000000, immortal=10000000},
	}
})

--basic wooden tools, upgrades can only be applied to iron and beyond; stone cannot have them either.

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
		{'tools:stick'},
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
			choppy = {times={[1]=9.8, [2]=4.2, [3]=3.1}, uses = 42, maxlevel=1},
		}, 
		damage_groups = {fleshy=5},
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

-- steel super tools

minetest.register_tool("tools:steel_hammer", {
	description = "Steel Dighammer",
	groups = {sledge=1},
	inventory_image = "tools_steel_hammer.png",
	tool_capabilities = {
		full_punch_interval = 4.1,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[1]=3.7*2.5, [2]=3.7*2.5, [3]=1.7*2.5}, uses=34, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	},
})


minetest.register_craft({
	output = "tools:steel_hammer",
	recipe = {
		{"tools:steel_ingot", "tools:steel_ingot","tools:steel_ingot"},
		{"tools:steel_ingot", "tools:steel_ingot","tools:steel_ingot"},
		{"", "tools:stick",""}
	}
})


minetest.register_tool("tools:steel_sickle", {
	description = "Steel Sickle",
	groups = {lumberaxe=1},
	inventory_image = "tools_steel_sickle.png",
	tool_capabilities = {
		full_punch_interval = 2.34,
		max_drop_level=0,
		groupcaps = {
			snappy = {times={[1]=0.6, [2]=0.3, [3]=0.15}, uses = 36, maxlevel=1},
		},
		damage_groups = {fleshy=6},
	},
})

minetest.register_craft({
	output = "tools:steel_sickle",
	recipe = {
		{'tools:steel_ingot', 'tools:steel_ingot', 'tools:steel_ingot'},
		{'tools:steel_ingot', '', 'tools:steel_ingot'},
		{'', '', 'tools:stick'},
	}
})


minetest.register_tool("tools:steel_battleaxe", {
	description = "Steel Battle Axe",
	inventory_image = "tools_steel_battleaxe.png",
	tool_capabilities = {
		full_punch_interval = 2.05*2,
		max_drop_level = 0,
		groupcaps = {
			choppy = {times={[1]=9.8*1.5, [2]=4.2*1.5, [3]=3.1*1.5}, uses = 42*2, maxlevel=1},
		}, 
		damage_groups = {fleshy=9},
	},
})

minetest.register_craft({
	output = 'tools:steel_battleaxe',
	recipe = {
		{'tools:axe_steel', 'farming:string', 'tools:axe_steel'},
		{'', 'tools:stick', ''},
	}
})

minetest.register_tool("tools:steel_dirt_mover", {
	description = "Steel Dirt Mover",
	groups = {sledge=1},
	inventory_image = "tools_steel_dirt_mover.png",
	tool_capabilities = {
		full_punch_interval = 2.55,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[1]=4.1, [2]=2.55, [3]=1.75}, uses = 40, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
})

minetest.register_craft({
	output = "tools:steel_dirt_mover",
	recipe = {
		{'tools:steel_ingot', 'tools:steel_ingot', 'tools:steel_ingot'},
		{'tools:steel_ingot', 'tools:stick', 'tools:steel_ingot'},
		{'', 'tools:stick', ''},
	}
})

-- tin tools

minetest.register_tool("tools:pick_tin", {
	description = "Tin Pickaxe",
	inventory_image = "tool_tinpick.png",
	tool_capabilities = {
		full_punch_interval = 2.05,
		max_drop_level = 0,
		groupcaps = {
			cracky = {times={[2]=3.7*1.5, [3]=1.7*1.5}, uses=52, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	}
})

minetest.register_tool("tools:shovel_tin", {
	description = "Tin Shovel",
	inventory_image = "tool_tinshovel.png",
	tool_capabilities = {
		full_punch_interval = 2.05,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[1]=3.1*1.5, [2]=1.55*1.5, [3]=0.75*1.5}, uses = 56, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	}
})

minetest.register_tool("tools:axe_tin", {
	description = "Tin Axe",
	inventory_image = "tool_tinaxe.png",
	tool_capabilities = {
		full_punch_interval = 2.3,
		max_drop_level = 0,
		groupcaps = {
			choppy = {times={[1]=9.8*1.5, [2]=4.2*1.5, [1]=3.1*1.5}, uses =62, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	}
})

minetest.register_tool("tools:sword_tin", {
	description = "Tin Sword",
	inventory_image = "tool_tinsword.png",
	tool_capabilities = {
		full_punch_interval = 2.3,
		max_drop_level = 0,
		groupcaps = {
			snappy = {times={[1]=0.6*1.5, [2]=0.3*1.5, [3]=0.15*1.5}, uses = 42, maxlevel=1},
		},
		damage_groups = {fleshy = 6},
	}
})

-- tin tool crafts (again, this is seriously boring and repetitive, trust me.)

minetest.register_craft({
	output = 'tools:pick_tin',
	recipe = {
		{'tools:tin_ingot', 'tools:tin_ingot', 'tools:tin_ingot'},
		{'', 'tools:stick', ''},
		{'', 'tools:stick', ''},
	}
})

minetest.register_craft({
	output = 'tools:shovel_tin',
	recipe = {
		{'tools:tin_ingot'},
		{'tools:stick'},
		{'tools:stick'},
	}
})

minetest.register_craft({
	output = 'tools:axe_tin',
	recipe = {
		{'tools:tin_ingot', 'tools:tin_ingot'},
		{'tools:tin_ingot', 'tools:stick'},
		{'', 'tools:stick'},
	}
})

minetest.register_craft({
	output = 'tools:sword_tin',
	recipe = {
		{'tools:tin_ingot'},
		{'tools:tin_ingot'},
		{'tools:stick'},
	
	}
})

-- bronze tools; mergin that ingots

minetest.register_tool("tools:pick_bronze", {
	description = "Bronze Pickaxe",
	inventory_image = "tool_bronzepick.png",
	tool_capabilities = {
		full_punch_interval = 1.67,
		max_drop_level = 0,
		groupcaps = {
			cracky = {times={[1]=3.7, [2]=1.7, [3]=1.7/2}, uses=64, maxlevel=1},
		},
		damage_groups = {fleshy=6},
	}
})

minetest.register_tool("tools:shovel_bronze", {
	description = "Bronze Shovel",
	inventory_image = "tool_steelshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.67,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[1]=3.1/2, [2]=1.55/2, [3]=0.75/2}, uses = 66, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	}
})

minetest.register_tool("tools:axe_bronze", {
	description = "Bronze Axe",
	inventory_image = "tool_steelaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.67,
		max_drop_level = 0,
		groupcaps = {
			choppy = {times={[1]=9.8/2, [2]=4.2/2, [1]=3.1/2}, uses = 42, maxlevel=1},
		},
		damage_groups = {fleshy=8},
	}
})

minetest.register_tool("tools:sword_bronze", {
	description = "Bronze Sword",
	inventory_image = "tool_steelsword.png",
	tool_capabilities = {
		full_punch_interval = 1.78,
		max_drop_level = 0,
		groupcaps = {
			snappy = {times={[1]=0.6/2, [2]=0.3/2, [3]=0.15/2}, uses = 32, maxlevel=1},
		},
		damage_groups = {fleshy = 10},
	}
})

-- bronze tool crafting (it is very easy to bypass steel and go staight to bronze)
-- remind me to nerf herd this!

minetest.register_craft({
	output = 'tools:pick_bronze',
	recipe = {
		{'tools:bronze_ingot', 'tools:bronze_ingot', 'tools:bronze_ingot'},
		{'', 'tools:stick', ''},
		{'', 'tools:stick', ''},
	}
})

minetest.register_craft({
	output = 'tools:shovel_bronze',
	recipe = {
		{'tools:bronze_ingot'},
		{'tools:stick'},
		{'tools:stick'},
	}
})

minetest.register_craft({
	output = 'tools:axe_bronze',
	recipe = {
		{'tools:bronze_ingot', 'tools:bronze_ingot'},
		{'tools:bronze_ingot', 'tools:stick'},
		{'', 'tools:stick'},
	}
})

minetest.register_craft({
	output = 'tools:sword_bronze',
	recipe = {
		{'tools:bronze_ingot'},
		{'tools:bronze_ingot'},
		{'tools:stick'},
	}
})

-- bronze extra tools

minetest.register_tool("tools:steel_hammer", {
	description = "Steel Dighammer",
	groups = {sledge=1},
	inventory_image = "tools_steel_hammer.png",
	tool_capabilities = {
		full_punch_interval = 4.1,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[1]=3.7*2.5, [2]=3.7*2.5, [3]=1.7*2.5}, uses=34, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	},
})


minetest.register_craft({
	output = "tools:steel_hammer",
	recipe = {
		{"tools:steel_ingot", "tools:steel_ingot","tools:steel_ingot"},
		{"tools:steel_ingot", "tools:steel_ingot","tools:steel_ingot"},
		{"", "tools:stick",""}
	}
})


minetest.register_tool("tools:steel_sickle", {
	description = "Steel Sickle",
	groups = {lumberaxe=1},
	inventory_image = "tools_steel_sickle.png",
	tool_capabilities = {
		full_punch_interval = 2.34,
		max_drop_level=0,
		groupcaps = {
			snappy = {times={[1]=0.6, [2]=0.3, [3]=0.15}, uses = 36, maxlevel=1},
		},
		damage_groups = {fleshy=6},
	},
})

minetest.register_craft({
	output = "tools:steel_sickle",
	recipe = {
		{'tools:steel_ingot', 'tools:steel_ingot', 'tools:steel_ingot'},
		{'tools:steel_ingot', '', 'tools:steel_ingot'},
		{'', '', 'tools:stick'},
	}
})


minetest.register_tool("tools:steel_battleaxe", {
	description = "Steel Battle Axe",
	inventory_image = "tools_steel_battleaxe.png",
	tool_capabilities = {
		full_punch_interval = 2.05*2,
		max_drop_level = 0,
		groupcaps = {
			choppy = {times={[1]=9.8*1.5, [2]=4.2*1.5, [3]=3.1*1.5}, uses = 42*2, maxlevel=1},
		}, 
		damage_groups = {fleshy=9},
	},
})

minetest.register_craft({
	output = 'tools:steel_battleaxe',
	recipe = {
		{'tools:axe_steel', 'farming:string', 'tools:axe_steel'},
		{'', 'tools:stick', ''},
	}
})

minetest.register_tool("tools:steel_dirt_mover", {
	description = "Steel Dirt Mover",
	groups = {sledge=1},
	inventory_image = "tools_steel_dirt_mover.png",
	tool_capabilities = {
		full_punch_interval = 2.55,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[1]=4.1, [2]=2.55, [3]=1.75}, uses = 40, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
})

minetest.register_craft({
	output = "tools:steel_dirt_mover",
	recipe = {
		{'tools:steel_ingot', 'tools:steel_ingot', 'tools:steel_ingot'},
		{'tools:steel_ingot', 'tools:stick', 'tools:steel_ingot'},
		{'', 'tools:stick', ''},
	}
})

-- mese stuff

--mese pick

minetest.register_tool("tools:pick_mese", {
	description = "Mese Pickaxe",
	inventory_image = "tool_mesepick.png",
	tool_capabilities = {
		full_punch_interval = 1.67,
		max_drop_level = 0,
		groupcaps = {
			cracky = {times={[1]=1.7, [2]=1.7/2, [3]=1.7/4}, uses=128, maxlevel=1},
			hardness = {times={[1]=27, [2]=18, [3]=9}, uses=64, maxlevel=1},
		},
		damage_groups = {fleshy=7},
	}
})

minetest.register_tool("tools:shovel_mese", {
	description = "Mese Shovel",
	inventory_image = "tool_meseshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.67,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[1]=1.55/2, [2]=0.75/2, [3]=0.75/4}, uses = 122, maxlevel=1},
		},
		damage_groups = {fleshy=5},
	}
})

minetest.register_tool("tools:axe_mese", {
	description = "Mese Axe",
	inventory_image = "tool_meseaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.67,
		max_drop_level = 0,
		groupcaps = {
			choppy = {times={[1]=4.2/2, [2]=3.1/2, [1]=1.55/2}, uses = 42, maxlevel=1},
		},
		damage_groups = {fleshy=8},
	}
})

minetest.register_tool("tools:sword_mese", {
	description = "Mese Sword",
	inventory_image = "tool_mesesword.png",
	tool_capabilities = {
		full_punch_interval = 1.78,
		max_drop_level = 0,
		groupcaps = {
			snappy = {times={[1]=0.3/2, [2]=0.15/2, [3]=0.7/2}, uses = 32, maxlevel=1},
		},
		damage_groups = {fleshy = 12},
	}
})

-- mese tool crafting

minetest.register_craft({
	output = 'tools:pick_mese',
	recipe = {
		{'ores:mese_crystal', 'ores:mese_crystal', 'ores:mese_crystal'},
		{'', 'tools:stick', ''},
		{'', 'tools:stick', ''},
	}
})

minetest.register_craft({
	output = 'tools:shovel_mese',
	recipe = {
		{'ores:mese_crystal'},
		{'tools:stick'},
		{'tools:stick'},
	}
})

minetest.register_craft({
	output = 'tools:axe_mese',
	recipe = {
		{'ores:mese_crystal', 'ores:mese_crystal'},
		{'ores:mese_crystal', 'tools:stick'},
		{'', 'tools:stick'},
	}
})

minetest.register_craft({
	output = 'tools:sword_mese',
	recipe = {
		{'ores:mese_crystal'},
		{'ores:mese_crystal'},
		{'tools:stick'},
	}
})