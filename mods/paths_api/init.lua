-- init.lua
-- for making playermade paths with specialised tools.

local function register_path_node(name, textures, desc, sound, group, drops)
	minetest.register_node("paths_api:"..name, {
		description = desc,
		tiles = textures,
		sounds = sound,
		groups = group,
		drop = drops,
		drawtype = "nodebox",
		node_box = {
			type = "fixed",
			fixed = {
				{0.5, (0.5-0.0625), 0.5, -0.5, -0.5, -0.5},
			},
		},
		paramtype = "light",

	})
end

minetest.register_craftitem("paths_api:path_tool", {
	description = "Path Creation Tool",
	inventory_image = "paths_api_path_tool.png",
	stack_max = 1,
	on_place = function(itemstack, user, pointed_thing)
		if pointed_thing.type ~= "node" then
			return
		end
		
		node = minetest.get_node(pointed_thing.under)
		
		--print (node.name)
		
		if node.name == "mapgen:grass" or node.name == "mapgen:grass1" or node.name == "mapgen:grass2" or node.name == "mapgen:grass3" or node.name == "mapgen:grass4" or node.name == "mapgen:snowy_grass" then
			minetest.add_node(pointed_thing.under,{name="paths_api:grass_path"})
		elseif node.name == "mapgen:dirt" then
			minetest.add_node(pointed_thing.under,{name="paths_api:dirt_path"})
		elseif node.name == "deco:stone_tile" then
			minetest.add_node(pointed_thing.under,{name="paths_api:stone_tile"})
		elseif node.name == "deco:stone_brick" then
			minetest.add_node(pointed_thing.under,{name="paths_api:stone_brick"})
		end
	end,
})

register_path_node("grass_path", {"mapgen_grass_rot1.png", "paths_dirt.png", "paths_dirt.png^mapgen_grass_side_1.png"}, "Grass Path", default.node_sound_dirt_defaults(), {crumbly=3}, "mapgen:dirt 1")

register_path_node("dirt_path", {"paths_dirt.png"}, "Dirt Path", default.node_sound_dirt_defaults(), {crumbly=3}, "mapgen:dirt 1")

register_path_node("stone_tile", {"deco_stone_tile.png"}, "Stone Tile Path", default.node_sound_stone_defaults(), {cracky=3}, "deco:cobble 1")

register_path_node("stone_brick", {"deco_stone_brick.png"}, "Stone Brick Path", default.node_sound_stone_defaults(), {cracky=3}, "deco:stone_brick 1")