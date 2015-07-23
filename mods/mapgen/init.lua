--init.lua

mapgen = {}

minetest.clear_registered_biomes()

dofile(minetest.get_modpath("mapgen").."/mapgen.lua")
dofile(minetest.get_modpath("mapgen").."/nodes.lua")
dofile(minetest.get_modpath("mapgen").."/flowers.lua")
dofile(minetest.get_modpath("mapgen").."/functions.lua")

-- enable forcefields (useful for server admins
dofile(minetest.get_modpath("mapgen").."/forcefields.lua")

minetest.register_alias("mapgen_stair_cobble", "stairs:stair_cobble")
minetest.register_alias("mapgen_water_source", "mapgen:water_source")
minetest.register_alias("mapgen_lava_source", "mapgen:lava_source")
minetest.register_alias("mapgen_stone", "mapgen:stone")
minetest.register_alias("mapgen_dirt", "mapgen:dirt")
minetest.register_alias("mapgen_dirt_with_grass", "mapgen:grass")
minetest.register_alias("mapgen_sand", "mapgen:sand")

local function player_join_sounds()
	minetest.register_on_joinplayer(function()
		minetest.sound_play("player_join", {gain = 0.75})
	end)
end

local function player_leave_sounds()
	minetest.register_on_leaveplayer(function()
		minetest.sound_play("player_leave", {gain = 1})
	end)
end

minetest.after(5, player_join_sounds)
minetest.after(5, player_leave_sounds)

minetest.register_item(":", {
	type = "none",
	wield_image = "hand.png",
	wield_scale = {x=1,y=1,z=2.5},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[2]=6.2, [3]=3.1}, uses=0, maxlevel=1},
			snappy = {times={[3]=1.15}, uses=0, maxlevel=1},
			oddly_breakable_by_hand = {times={[1]=7.8,[2]=2.3,[3]=1.15}, uses=0}
		},
		damage_groups = {fleshy=1},
	}
})

-- vnum = 5 or 7

-- minetest.register_on_mapgen_init(function(params)
	-- minetest.set_mapgen_params({
		-- mgname = "v"..vnum,
		-- seed = params.seed,
		-- water_level = 1,
		-- flags = "caves",
		-- --flagmask = "trees, caves, flat, v6_biome_blend, v6_jungles, dungeons, nolight",
		-- -- ^ stops that annoying error message, but i kinda like it!
	-- })
-- end)

minetest.register_node("mapgen:gravel", {
	description = "Gravel",
	tiles = {"mapgen_gravel.png"},
	is_ground_content = true,
	drop = 'mapgen:gravel',
	groups = {crumbly=2, falling_node=1},
	sounds = default.node_sound_gravel_defaults(),
})

minetest.register_node("mapgen:clay", {
	description = "Clay Block",
	tiles = {"mapgen_clay.png"},
	is_ground_content = true,
	drop = "mapgen:clay_lump 4",
	groups = {crumbly = 3, oddly_breakable_by_hand=3, falling_node=1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_craftitem("mapgen:clay_lump", {
	description = "Clay Lump",
	inventory_image = "mapgen_clay_lump.png",
})

minetest.register_craft({
	type = "cooking",
	output = "deco:brick",
	recipe = "mapgen:clay_lump",
})

minetest.register_craft({
	output = 'mapgen:clay_lump 4',
	recipe = {
		{'mapgen:clay'},
	}
})

minetest.register_craft({
	output = 'mapgen:clay 1',
	recipe = {
		{'mapgen:clay_lump', 'mapgen:clay_lump'},
		{'mapgen:clay_lump', 'mapgen:clay_lump'},
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "mapgen:grass 1",
	recipe = {"mapgen:dirt", "mapgen:edens_grass"},
	replacements = {{"mapgen:edens_grass", "mapgen:edens_grass"}},
})
	
minetest.register_node("mapgen:grass", {
	description = "Dirt with Grass",
	tiles = {"mapgen_grass_rot1.png", "mapgen_dirt.png", "mapgen_dirt.png^mapgen_grass_side_1.png"},
	is_ground_content = true,
	drop = 'mapgen:dirt',
	groups = {crumbly=3, soil=1},
	sounds = default.node_sound_dirt_defaults(),
	on_place = function(itemstack, placer, pointed_thing)
		-- place a random grass node
		local stack = ItemStack("mapgen:grass"..math.random(1,4))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("mapgen:grass".. " "..itemstack:get_count()-(1-ret:get_count()))
	end,
})

minetest.register_node("mapgen:grass1", {
	description = "Dirt with Grass",
	tiles = {"mapgen_grass_rot1.png", "mapgen_dirt.png", "mapgen_dirt.png^mapgen_grass_side_1.png", "mapgen_dirt.png^mapgen_grass_side_2.png", 
		"mapgen_dirt.png^mapgen_grass_side_3.png", "mapgen_dirt.png^mapgen_grass_side_4.png"},
	is_ground_content = true,
	drop = 'mapgen:dirt',
	groups = {crumbly=3, soil=1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("mapgen:grass2", {
	description = "Dirt with Grass",
	tiles = {"mapgen_grass_rot2.png", "mapgen_dirt.png", "mapgen_dirt.png^mapgen_grass_side_2.png", "mapgen_dirt.png^mapgen_grass_side_3.png", 
		"mapgen_dirt.png^mapgen_grass_side_4.png", "mapgen_dirt.png^mapgen_grass_side_1.png"},
	is_ground_content = true,
	drop = 'mapgen:dirt',
	groups = {crumbly=3, soil=1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("mapgen:grass3", {
	description = "Dirt with Grass",
	tiles = {"mapgen_grass_rot3.png", "mapgen_dirt.png", "mapgen_dirt.png^mapgen_grass_side_3.png", "mapgen_dirt.png^mapgen_grass_side_4.png", 
		"mapgen_dirt.png^mapgen_grass_side_1.png", "mapgen_dirt.png^mapgen_grass_side_2.png"},
	is_ground_content = true,
	drop = 'mapgen:dirt',
	groups = {crumbly=3, soil=1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("mapgen:grass4", {
	description = "Dirt with Grass",
	tiles = {"mapgen_grass_rot4.png", "mapgen_dirt.png", "mapgen_dirt.png^mapgen_grass_side_4.png", "mapgen_dirt.png^mapgen_grass_side_1.png", 
		"mapgen_dirt.png^mapgen_grass_side_2.png", "mapgen_dirt.png^mapgen_grass_side_3.png"},
	is_ground_content = true,
	drop = 'mapgen:dirt',
	groups = {crumbly=3, soil=1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("mapgen:snowy_grass", {
	description = "Dirt with Snow",
	tiles = {"mapgen_snow.png", "mapgen_dirt.png", "mapgen_dirt.png^mapgen_snow_side.png"},
	is_ground_content = true,
	drop = 'mapgen:dirt',
	groups = {crumbly=3, soil=1},
	sounds = default.node_sound_snow_defaults(),
})


minetest.register_node("mapgen:dirt", {
	description = "Dirt",
	tiles = {"mapgen_dirt.png"},
	is_ground_content = true,
	groups = {crumbly=3, soil=1},
	sounds = default.node_sound_dirt_defaults(),
})

-- stone

minetest.register_node("mapgen:stone", {
	description = "Stone",
	tiles = {"mapgen_stone.png"},
	--is_ground_content = true,
	drop = 'mapgen:cobble',
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mapgen:stone_1", {
	description = "Stone",
	tiles = {"mapgen_stone_1.png"},
	--is_ground_content = true,
	drop = 'mapgen:cobble',
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mapgen:stone_2", {
	description = "Stone",
	tiles = {"mapgen_stone_2.png"},
	--is_ground_content = true,
	drop = 'mapgen:cobble',
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mapgen:stone_3", {
	description = "Stone",
	tiles = {"mapgen_stone_2.png"},
	--is_ground_content = true,
	drop = 'mapgen:cobble',
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mapgen:stone_4", {
	description = "Stone",
	tiles = {"mapgen_stone_4.png"},
	--is_ground_content = true,
	drop = 'mapgen:cobble',
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

-- cobble

minetest.register_node("mapgen:cobble", {
	description = "Cobblestone",
	tiles = {"mapgen_cobble.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mapgen:mese_stone", {
	description = "Mese Stone",
	tiles = {"mapgen_mese_stone.png"},
	is_ground_content = true,
	sounds = default.node_sound_stone_defaults(),
	groups = {hardness=3, stone=1}, --hardness refers to 30 seconds with dia pick
})

minetest.register_node("mapgen:crust_cobble", {
	description = "Crust Cobblestone",
	tiles = {"mapgen_crust_cobble.png"},
	is_ground_content = true,
	groups = {cracky=1, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mapgen:crust_stone", {
	description = "Crust Stone",
	tiles = {"mapgen_crust_stone.png"},
	is_ground_content = true,
	drop = 'mapgen:crust_cobble',
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky=1, stone=1},
})

minetest.register_node("mapgen:water_flowing", {
	description = "Flowing Water",
	inventory_image = minetest.inventorycube("mapgen_water.png"),
	drawtype = "flowingliquid",
	tiles = {"mapgen_water.png"},
	special_tiles = {
		{
			image="mapgen_water_flowing_animated.png",
			backface_culling=false,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=0.8}
		},
		{
			image="mapgen_water_flowing_animated.png",
			backface_culling=true,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=0.8}
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "mapgen:water_flowing",
	liquid_alternative_source = "mapgen:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {water=3, liquid=3, puts_out_fire=1},
})

minetest.register_node("mapgen:water_source", {
	description = "Water Source",
	inventory_image = minetest.inventorycube("mapgen_water.png"),
	drawtype = "liquid",
	tiles = {
		{name="mapgen_water_source_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0}}
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name="mapgen_water_source_animated.png",
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0},
			backface_culling = false,
		}
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "mapgen:water_flowing",
	liquid_alternative_source = "mapgen:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {water=3, liquid=3, puts_out_fire=1},
})

minetest.register_node("mapgen:lava_flowing", {
	description = "Flowing Lava",
	inventory_image = minetest.inventorycube("mapgen_lava.png"),
	drawtype = "flowingliquid",
	tiles = {"mapgen_lava.png"},
	special_tiles = {
		{
			image="mapgen_lava_flowing.png",
			backface_culling=false,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.3}
		},
		{
			image="mapgen_lava_flowing.png",
			backface_culling=true,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.3}
		},
	},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	light_source = 13,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "mapgen:lava_flowing",
	liquid_alternative_source = "mapgen:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4*2,
	post_effect_color = {a=192, r=255, g=64, b=0},
	groups = {lava=3, liquid=2, hot=3, igniter=1, not_in_creative_inventory=1},
})

minetest.register_node("mapgen:lava_source", {
	description = "Lava Source",
	inventory_image = minetest.inventorycube("mapgen_lava.png"),
	drawtype = "liquid",
	tiles = {
		{name="mapgen_lava_source.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}}
	},
	special_tiles = {
		-- New-style lava source material (mostly unused)
		{
			name="mapgen_lava_source.png",
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0},
			backface_culling = false,
		}
	},
	paramtype = "light",
	light_source = 13,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "mapgen:lava_flowing",
	liquid_alternative_source = "mapgen:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4*2,
	post_effect_color = {a=192, r=255, g=64, b=0},
	groups = {lava=3, liquid=2, hot=3, igniter=1},
})

-- node names as content ids

local c_air = minetest.get_content_id("air")
local c_ignore = minetest.get_content_id("ignore")
local c_stone = minetest.get_content_id("mapgen:stone")
local c_stone1 = minetest.get_content_id("mapgen:stone_1")
local c_stone2 = minetest.get_content_id("mapgen:stone_2")
local c_stone3 = minetest.get_content_id("mapgen:stone_3")
local c_stone4 = minetest.get_content_id("mapgen:stone_4")

local c_grass = minetest.get_content_id("mapgen:grass")
local c_grass1 = minetest.get_content_id("mapgen:grass1")
local c_grass2 = minetest.get_content_id("mapgen:grass2")
local c_grass3 = minetest.get_content_id("mapgen:grass3")
local c_grass4 = minetest.get_content_id("mapgen:grass4")

local cdgrass = minetest.get_content_id("mapgen:deathly_grass")
local cdgrass1 = minetest.get_content_id("mapgen:deathly_grass_1")
local cdgrass2 = minetest.get_content_id("mapgen:deathly_grass_2")
local cdgrass3 = minetest.get_content_id("mapgen:deathly_grass_3")
local cdgrass4 = minetest.get_content_id("mapgen:deathly_grass_4")

-- this voxelmanip saves SO MUCH CPU TIME IT IS UNREAL

minetest.register_on_generated(function(minp, maxp, seed)
	-- begin to randomise grass into grassx
	local timer = os.clock()
	local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
	local data = vm:get_data()
	local area = VoxelArea:new{MinEdge=emin, MaxEdge=emax}
	
	for z=minp.z, maxp.z, 1 do
		for y=minp.y, maxp.y, 1 do
			for x=minp.x, maxp.x, 1 do
				local p_pos = area:index(x,y,z)
				local content_id = data[p_pos]
				if content_id == c_stone then
					local random_choice = math.random(1,4)
					if random_choice == 1 then
						data[p_pos] = c_stone1
					elseif random_choice == 2 then
						data[p_pos] = c_stone2
					elseif random_choice == 3 then
						data[p_pos] = c_stone3
					else
						data[p_pos] = c_stone4
					end
				elseif content_id == c_grass then
					local random_choice = math.random(1,4)
					if random_choice == 1 then
						data[p_pos] = c_grass1
					elseif random_choice == 2 then
						data[p_pos] = c_grass2
					elseif random_choice == 3 then
						data[p_pos] = c_grass3
					else
						data[p_pos] = c_grass4
					end
				elseif content_id == c_ignore then
					-- doing this fixes mgv5's generation of ignore for some reason.
					data[p_pos] = c_air
				elseif content_id == c_dgrass then
					local random_choice = math.random(1,4)
					if random_choice == 1 then
						data[p_pos] = cdgrass1
					elseif random_choice == 2 then
						data[p_pos] = cdgrass2
					elseif random_choice == 3 then
						data[p_pos] = cdgrass3
					else
						data[p_pos] = cdgrass4
					end
				else
					--do nothin
				end
			end
		end
	end
	
	vm:set_data(data)
	vm:calc_lighting()
	vm:update_liquids()
	vm:write_to_map()
	
	local geninfo = string.format("node randomisation done after: %.2fs", os.clock() - timer)
	print(geninfo)	
end)

-- generate trees

minetest.register_node("mapgen:mg_birch_sapling", {
	description = "Impossible to get node.",
	drawtype = "airlike",
	paramtype = "light",
	tiles = {"xfences_space.png"},
	groups = {not_in_creative_inventory=1},
})

minetest.register_node("mapgen:mg_cherry_sapling", {
	description = "Impossible to get node.",
	drawtype = "airlike",
	paramtype = "light",
	tiles = {"xfences_space.png"},
	groups = {not_in_creative_inventory=1},
})

minetest.register_node("mapgen:mg_oak_sapling", {
	description = "Impossible to get node.",
	drawtype = "airlike",
	paramtype = "light",
	tiles = {"xfences_space.png"},
	groups = {not_in_creative_inventory=1},
})

minetest.register_node("mapgen:mg_evergreen_sapling", {
	description = "Impossible to get node.",
	drawtype = "airlike",
	paramtype = "light",
	tiles = {"xfences_space.png"},
	groups = {not_in_creative_inventory=1},
})

local c_mg_oak_sapling = minetest.get_content_id("mapgen:mg_oak_sapling")
local c_mg_cherry_sapling = minetest.get_content_id("mapgen:mg_cherry_sapling")
local c_mg_birch_sapling = minetest.get_content_id("mapgen:mg_birch_sapling")
local c_mg_evergreen_sapling = minetest.get_content_id("mapgen:mg_evergreen_sapling")
local c_mg_evergreen_snow = minetest.get_content_id("mapgen:mg_evergreen_snow")

minetest.register_on_generated(function(minp, maxp, seed)
	local timer = os.clock()
	local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
	local data = vm:get_data()
	local area = VoxelArea:new{MinEdge=emin, MaxEdge=emax}
	local trees_grown = 0
	for z=minp.z, maxp.z, 1 do
		for y=minp.y, maxp.y, 1 do
			for x=minp.x, maxp.x, 1 do
				local p_pos = area:index(x,y,z)
				local content_id = data[p_pos]
				if content_id == c_mg_birch_sapling then
					mapgen.grow_tree({x=x, y=y, z=z}, false, "mapgen:birch_tree", "mapgen:birch_leaves")
					trees_grown = trees_grown + 1
				elseif content_id == c_mg_cherry_sapling then
					mapgen.grow_tree({x=x, y=y, z=z}, false, "mapgen:cherry_tree", "mapgen:cherry_blossom_leaves")
					trees_grown = trees_grown + 1
				elseif content_id == c_mg_evergreen_sapling then
					mapgen.grow_evergreen({x=x, y=y, z=z}, false)
					trees_grown = trees_grown + 1
				elseif content_id == c_mg_evergreen_snow then
					mapgen.grow_evergreen({x=x, y=y, z=z}, true)
					trees_grown = trees_grown + 1
				elseif content_id == c_mg_oak_sapling then
					mapgen.grow_tree({x=x, y=y, z=z}, false, "mapgen:oak_log_tree", "mapgen:oak_leaves")
					trees_grown = trees_grown + 1
				else
					-- nope
				end
			end
		end
	end
	local geninfo = string.format(" trees grown after: %.2fs", os.clock() - timer)
	print (trees_grown..geninfo)
end)

-- abms here

minetest.register_abm({
	nodenames = {"mapgen:dirt"},
	neighbors = {"mapgen:grass", "mapgen:grass_1", "mapgen:grass_2", "mapgen:grass_3", "mapgen:grass_4"},
	interval = 180,
	chance = 3,
	action = function(pos)
		pos.y = pos.y + 1
		if not minetest.get_node_light(pos) then
			return
		end
		if minetest.get_node_light(pos) > 9 then
			pos.y = pos.y - 1
			local rotationrand = math.random(1,4)
			if rotationrand == 1 then
				minetest.env:add_node(pos,{name="mapgen:grass1"})
			elseif rotationrand == 2 then
				minetest.env:add_node(pos,{name="mapgen:grass2"})
			elseif rotationrand == 3 then
				minetest.env:add_node(pos,{name="mapgen:grass3"})
			else
				minetest.env:add_node(pos,{name="mapgen:grass4"})
			end
		end
	end,
})

minetest.register_abm({
	nodenames = {"mapgen:dirt",},
	neighbors = {"mapgen:edens_grass"},
	interval = 60,
	chance = 2,
	action = function(pos)
		pos.y = pos.y + 1
		if not minetest.get_node_light(pos) then
			return
		end
		if minetest.get_node_light(pos) > 9 then
			pos.y = pos.y - 1
			local rotationrand = math.random(1,4)
			if rotationrand == 1 then
				minetest.env:add_node(pos,{name="mapgen:grass1"})
			elseif rotationrand == 2 then
				minetest.env:add_node(pos,{name="mapgen:grass2"})
			elseif rotationrand == 3 then
				minetest.env:add_node(pos,{name="mapgen:grass3"})
			else
				minetest.env:add_node(pos,{name="mapgen:grass4"})
			end
		end
	end,
})

minetest.register_abm({
	nodenames = {"mapgen:grass1", "mapgen:grass2", "mapgen:grass3", "mapgen:grass4", "mapgen:snowy_grass", "mapgen:deathly_grass_1", "mapgen:deathly_grass_2", "mapgen:deathly_grass_3", "mapgen:deathly_grass_4"},
	interval = 60,
	chance = 2,
	action = function(pos)
		pos.y = pos.y + 1
		if not minetest.get_node_light(pos) then
			return
		end
		
		if minetest.get_node_light(pos) < 1 then
			pos.y = pos.y - 1
			minetest.env:add_node(pos,{name="mapgen:dirt"})
		end
	end,
})

minetest.register_abm({
	nodenames = {"mapgen:oak_sapling"},
	interval = 80,
	chance = 3,
	action = function(pos, node)
		
		local nu =  minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name
		local is_soil = minetest.get_item_group(nu, "soil")
		
		if is_soil == 0 then
			return
		end
		
		
		minetest.remove_node({x=pos.x, y=pos.y, z=pos.z})
		mapgen.grow_tree(pos, false, "mapgen:oak_log_tree", "mapgen:oak_leaves")
	end,
})

minetest.register_abm({
	nodenames = {"mapgen:birch_sapling"},
	interval = 80,
	chance = 3,
	action = function(pos, node)
		
		local nu =  minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name
		local is_soil = minetest.get_item_group(nu, "soil")
		
		if is_soil == 0 then
			return
		end
		
		
		minetest.remove_node({x=pos.x, y=pos.y, z=pos.z})
		mapgen.grow_tree(pos, false, "mapgen:birch_tree", "mapgen:birch_leaves")
	end,
})

minetest.register_abm({
	nodenames = {"mapgen:cherry_sapling"},
	interval = 80,
	chance = 3,
	action = function(pos, node)
		
		local nu =  minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name
		local is_soil = minetest.get_item_group(nu, "soil")
		
		if is_soil == 0 then
			return
		end
		
		
		minetest.remove_node({x=pos.x, y=pos.y, z=pos.z})
		mapgen.grow_tree(pos, false, "mapgen:cherry_tree", "mapgen:cherry_blossom_leaves")
	end,
})

minetest.register_abm({
	nodenames = {"mapgen:evergreen_sapling"},
	interval = 80*3,
	chance = 3,
	action = function(pos, node)
		
		local nu =  minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name
		local is_soil = minetest.get_item_group(nu, "soil")
		
		if is_soil == 0 then
			return
		end
		
		if math.random(1,4000) == 69 then
			minetest.add_entity({x=pos.x, y=pos.y+1, z=pos.z}, "mobs:evergreen_tree")
			minetest.remove_node({x=pos.x, y=pos.y, z=pos.z})
		else
			
			minetest.remove_node({x=pos.x, y=pos.y, z=pos.z})
			mapgen.grow_evergreen(pos, true)
		end
	end,
})

---
--- World Layering
---

local function crusty(old, new)
	for i=1,8 do
		minetest.register_ore({
			ore_type = "scatter",
			ore = new,
			wherein = old,
			clust_scarcity = 1,
			clust_num_ores = 1,
			clust_size = 1,
			height_min = -16384,
			height_max = -4096,
		})
	end
end

crusty("mapgen:stone", "mapgen:crust_stone")

local function crustymese(old, new)
	for i=1,8 do
		minetest.register_ore({
			ore_type = "scatter",
			ore = new,
			wherein = old,
			clust_scarcity = 1,
			clust_num_ores = 1,
			clust_size = 1,
			height_max = -16385,
			height_min = -31000,
		})
	end
end

crustymese("mapgen:stone", "mapgen:mese_stone")

--
-- Flowing water sound
--

minetest.register_abm({
	nodenames = {"mapgen:water_flowing"},
	interval = 1.8,
	chance = 1.5,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.sound_play("mapgen_water", {pos = pos, gain = 0.005, max_hear_distance = 2})
end})


minetest.register_node("mapgen:edens_water_flowing", {
	description = "Flowing Water",
	inventory_image = minetest.inventorycube("mapgen_edens_water.png"),
	drawtype = "flowingliquid",
	tiles = {"mapgen_water.png"},
	special_tiles = {
		{
			image="mapgen_edens_water_flowing_animated.png",
			backface_culling=false,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=0.8}
		},
		{
			image="mapgen_edens_water_flowing_animated.png",
			backface_culling=true,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=0.8}
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "mapgen:edens_water_flowing",
	liquid_alternative_source = "mapgen:edens_water_source",
	liquid_viscosity = 1,
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {water=3, liquid=3, puts_out_fire=1},
})

minetest.register_node("mapgen:edens_water_source", {
	description = "Water Source",
	inventory_image = minetest.inventorycube("mapgen_edens_water.png"),
	drawtype = "liquid",
	tiles = {
		{name="mapgen_edens_water_source_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0}}
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name="mapgen_edens_water_source_animated.png",
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0},
			backface_culling = false,
		}
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "mapgen:edens_water_flowing",
	liquid_alternative_source = "mapgen:edens_water_source",
	liquid_viscosity = 1,
	post_effect_color = {a=64, r=100, g=100, b=200},
	groups = {water=3, liquid=3, puts_out_fire=1},
})

-- fair warning, bullshit ahead

minetest.register_node(":base:dirt", {
	description = "bullshit from the api",
	tiles = {"mapgen_dirt.png"},
	is_ground_content = true,
	drop = 'mapgen:dirt',
	groups = {crumbly=3, soil=1, not_in_creative_inventory=1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node(":base:tree", {
	description = "bullshit from the api",
	tiles = {"mapgen_oak_tree.png"},
	is_ground_content = true,
	drop = 'mapgen:dirt',
	groups = {crumbly=3, soil=1, not_in_creative_inventory=1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node(":base:leaves", {
	description = "bullshit from the api",
	tiles = {"mapgen_oak_leaves.png"},
	is_ground_content = true,
	drop = 'mapgen:dirt',
	groups = {crumbly=3, soil=1, not_in_creative_inventory=1},
	sounds = default.node_sound_dirt_defaults(),
})