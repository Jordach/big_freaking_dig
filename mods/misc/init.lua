-- init.lua part of the misc mod.

function attached_node(p)
	local nn = core.get_node(p).name
	core.remove_node(p)
	for _,item in ipairs(core.get_node_drops(nn, "")) do
		local pos = {
			x = p.x + math.random()/2 - 0.25,
			y = p.y + math.random()/2 - 0.25,
			z = p.z + math.random()/2 - 0.25,
		}
		core.add_item(pos, item)
	end
end

liquids = {
"mapgen:water_flowing",
"mapgen:lava_flowing",
"ores:oil_flowing"
}

node_list = {
"flowers:dandelion_white",
"flowers:dandelion_yellow",
"flowers:geranium",
"flowers:rose",
"flowers:tulip",
"flowers:viola",
"mapgen:long_grass_1",
"mapgen:long_grass_2",
"mapgen:long_grass_3",
"mapgen:long_grass_4",
"mapgen:long_grass_5",
"deco:torch",
"mapgen:dead_bush",
"mapgen:oak_sapling",
"mapgen:cherry_sapling",
"mapgen:birch_sapling",
"mapgen:evergreen_sapling",
"mapgen:deathly_sapling",
"mapgen:snow",
"mapgen:wheat_grass_1",
"mapgen:wheat_grass_2",
"mapgen:wheat_grass_3",
"mapgen:wheat_grass_4",
"mapgen:wheat_grass_5",
"mapgen:deathly_long_grass_1",
"mapgen:deathly_long_grass_2",
"mapgen:deathly_long_grass_3",
"farming:wheat_1",
"farming:wheat_2",
"farming:wheat_3",
"farming:wheat_4",
"farming:wheat_5",
"farming:wheat_6",
"farming:wheat_7",
"farming:wheat_8",
"farming:cotton_1",
"farming:cotton_2",
"farming:cotton_3",
"farming:cotton_4",
"farming:cotton_5",
"farming:cotton_6",
"farming:cotton_7",
"farming:cotton_8"
}

minetest.register_abm({
	nodenames = node_list,
	neighbors = liquids,
	interval = 1,
	chance = 2,
	action = function(pos)
		attached_node(pos)
	end,
})