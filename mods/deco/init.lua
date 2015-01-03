-- ingot blocks.lua

--dofile(minetest.get_modpath("deco") .. "/ingotblocks.lua")

deco = {}

-- glass

minetest.register_node("deco:obsidian_glass", {
	description = "Obsidian Glass",
	drawtype = "glasslike",
	tiles = {"deco_obsidian_glass.png"},
	paramtype = "light",
	is_ground_content = false,
	sunlight_propagates = true,
	sounds = default.node_sound_glass_defaults(),
	groups = {cracky=3,oddly_breakable_by_hand=3},
})

minetest.register_node("deco:glass", {
	description = "Glass",
	drawtype = "glasslike",
	tiles = {"deco_glass.png"},
	paramtype = "light",
	is_ground_content = false,
	sunlight_propagates = true,
	sounds = default.node_sound_glass_defaults(),
	groups = {cracky=3,oddly_breakable_by_hand=3},
})


-- wood planks

minetest.register_node("deco:oak_plank", {
	description = "Oak Planks",
	tiles = {"deco_wood_oak_planks.png"},
	sounds = default.node_sound_wood_defaults(),
	groups = {oddly_breakable_by_hand=1, flammable=1, choppy=3, wood=1},
})

minetest.register_node("deco:birch_plank", {
	description = "Birch Planks",
	tiles = {"deco_wood_birch_planks.png"},
	sounds = default.node_sound_wood_defaults(),
	groups = {oddly_breakable_by_hand=1, flammable=1, choppy=3, wood=1},
})

minetest.register_node("deco:cherry_plank", {
	description = "Cherry Planks",
	tiles = {"deco_wood_cherry_planks.png"},
	sounds = default.node_sound_wood_defaults(),
	groups = {oddly_breakable_by_hand=1, flammable=1, choppy=3, wood=1},
})

minetest.register_node("deco:evergreen_plank", {
	description = "Evergreen Planks",
	tiles = {"deco_wood_evergreen_planks.png"},
	sounds = default.node_sound_wood_defaults(),
	groups = {oddly_breakable_by_hand=1, flammable=1, choppy=3, wood=1},
})

minetest.register_node("deco:deathly_plank", {
	description = "Deathly Planks",
	tiles = {"deco_wood_deathly_planks.png"},
	sounds = default.node_sound_wood_defaults(),
	groups = {oddly_breakable_by_hand=1, flammable=1, choppy=3, wood=1},
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

minetest.register_craft({
	output = 'deco:evergreen_plank 6',
	recipe = {
		{'mapgen:evergreen_log'},
	}
})

minetest.register_craft({
	output = 'deco:deathly_plank 6',
	recipe = {
		{'mapgen:deathly_log'},
	}
})

--chest crafts

minetest.register_craft({
	output = 'deco:chest',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', '', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
	}
})

minetest.register_craft({
	output = 'deco:locked_chest',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', 'tools:steel_ingot', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
	}
})

--chests

function default.chest_formspec(pos)
	local spos = pos.x .. "," .. pos.y .. "," ..pos.z
	local lid_state = "neither"
	local formspec = 
		"size[8,9]"..
		"list[nodemeta:"..spos..";main;0,0;8,4;]"..
		"list[current_player;main;0,5;8,4;]"..
		"background[-0.5,-0.65;9,10.35;".."chestui.png".."]"..
		"listcolors[#664620;#f9ca93;#ffffff;#c69c6a;#ffffff]"
		
	return formspec
end

function default.get_locked_chest_formspec(pos)
	local spos = pos.x .. "," .. pos.y .. "," ..pos.z
	local lid_state = "neither"
	local formspec =
		"size[8,9]"..
		"list[nodemeta:".. spos .. ";main;0,0;8,4;]"..
		"list[current_player;main;0,5;8,4;]"..
		"background[-0.5,-0.65;9,10.35;".."chestui.png".."]"..
		"listcolors[#664620;#f9ca93;#ffffff;#c69c6a;#ffffff]"
	return formspec
end


local function has_locked_chest_privilege(meta, player)
	if player:get_player_name() ~= meta:get_string("owner") then
		return false
	end
	return true
end

--torches

minetest.register_node("deco:torch", {
	description = "Torch",
	drawtype = "airlike",
	tiles = {"xfences_space.png"},
	inventory_image = "deco_torch_ng_wield.png",
	wield_image = "deco_torch_ng_wield.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	is_ground_content = false,
	walkable = false,
	light_source = 15,
	selection_box = {
		type = "wallmounted",
		wall_top = {-0.1, 0.5-0.6, -0.1, 0.1, 0.5, 0.1},
		wall_bottom = {-0.1, -0.5, -0.1, 0.1, -0.5+0.6, 0.1},
		wall_side = {-0.5, -0.3, -0.1, -0.5+0.3, 0.3, 0.1},
	},
	groups = {choppy=2,dig_immediate=3,flammable=1,attached_node=1,hot=2},
	legacy_wallmounted = true,
	sounds = default.node_sound_defaults(),
	after_place_node = function(pos, placer)
		--print (minetest.get_node(pos).param2)
		local entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
		if entity_remove[1] == nil then
			
			if minetest.get_node(pos).param2 == 4 then --done
			--list of rad to 90 degree: 3.142/2 = 90; 3.142 = 180; 3*3.142 = 270
				minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_torch_w") --+(0.0625*10)
				entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
				entity_remove[1]:setyaw(3.142)
			elseif minetest.get_node(pos).param2 == 2 then --done
				minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_torch_w") --+(0.0625*10)
				entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
				entity_remove[1]:setyaw(3.142/2)
			elseif minetest.get_node(pos).param2 == 3 then -- done				
				minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_torch_w") --+(0.0625*10)
				entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
				entity_remove[1]:setyaw(-3.142/2)
			elseif minetest.get_node(pos).param2 == 5 then --done
				minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_torch_w") --+(0.0625*10)
				entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
				entity_remove[1]:setyaw(0)
			elseif minetest.get_node(pos).param2 == 0 then
				minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_torch_c") --+(0.0625*10)
				entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
				entity_remove[1]:setyaw(0)
			else
				minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_torch_f") --+(0.0625*10)
				entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
				entity_remove[1]:setyaw(0)
			end
		end
	end,
	on_rightclick = function(pos, node)
		local entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
		if entity_remove[1] == nil then
			if minetest.get_node(pos).param2 == 4 then --done
			--list of rad to 90 degree: 3.142/2 = 90; 3.142 = 180; 3*3.142 = 270
				minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_torch_w") --+(0.0625*10)
				entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
				entity_remove[1]:setyaw(3.142)
			elseif minetest.get_node(pos).param2 == 2 then --done
				minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_torch_w") --+(0.0625*10)
				entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
				entity_remove[1]:setyaw(3.142/2)
			elseif minetest.get_node(pos).param2 == 3 then -- done				
				minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_torch_w") --+(0.0625*10)
				entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
				entity_remove[1]:setyaw(-3.142/2)
			elseif minetest.get_node(pos).param2 == 5 then --done
				minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_torch_w") --+(0.0625*10)
				entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
				entity_remove[1]:setyaw(0)
			elseif minetest.get_node(pos).param2 == 0 then
				minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_torch_c") --+(0.0625*10)
				entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
				entity_remove[1]:setyaw(0)
			else
				minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_torch_f") --+(0.0625*10)
				entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
				entity_remove[1]:setyaw(0)
			end
		end
	end,
	after_dig_node = function(pos)
		local entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
		entity_remove[1]:remove()
	end,
})

minetest.register_entity("deco:mesh_torch_f", {
    collisionbox = { 0, 0, 0, 0, 0, 0 },
    visual = "mesh",
	mesh = "TorchNG_Floor.b3d",
    textures = {"deco_torch_ng.png"},
	visual_size = {x=20, y=20},
})

minetest.register_entity("deco:mesh_torch_c", {
    collisionbox = { 0, 0, 0, 0, 0, 0 },
    visual = "mesh",
	mesh = "TorchNG_Ceiling.b3d",
    textures = {"deco_torch_ng.png"},
	visual_size = {x=20, y=20},
})

minetest.register_entity("deco:mesh_torch_w", {
    collisionbox = { 0, 0, 0, 0, 0, 0 },
    visual = "mesh",
	mesh = "TorchNG_Wall.b3d",
    textures = {"deco_torch_ng.png"},
	visual_size = {x=20, y=20},
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

--
-- Furnace
--

function default.get_furnace_active_formspec(pos, percent)
	local formspec =
		"size[8,9]"..
		"image[2,2;1,1;deco_furnace_fire_bg.png^[lowpart:"..
		(100-percent)..":deco_furnace_fire_fg.png]"..
		"list[current_name;fuel;2,3;1,1;]"..
		"list[current_name;src;2,1;1,1;]"..
		"list[current_name;dst;5,1;2,2;]"..
		"list[current_player;main;0,5;8,4;]"..
		"background[-0.5,-0.65;9,10.35;".."furnace.png".."]"..
		"listcolors[#afb7ba;#ced8dc;#5b5547;#7c786e;#ffffff]"
	return formspec
end

default.furnace_inactive_formspec =
	"size[8,9]"..
	"image[2,2;1,1;deco_furnace_fire_bg.png]"..
	"list[current_name;fuel;2,3;1,1;]"..
	"list[current_name;src;2,1;1,1;]"..
	"list[current_name;dst;5,1;2,2;]"..
	"list[current_player;main;0,5;8,4;]"..
	"background[-0.5,-0.5;9,10.15;".."furnace.png".."]"..
	"listcolors[#afb7ba;#ced8dc;#5b5547;#7c786e;#ffffff]"

minetest.register_node("deco:furnace", {
	description = "Furnace",
	tiles = {"deco_furnace_top.png", "deco_furnace_bottom.png", "deco_furnace_side.png",
		"deco_furnace_side.png", "deco_furnace_side.png", "deco_furnace_front.png"},
	paramtype2 = "facedir",
	groups = {cracky=3},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", default.furnace_inactive_formspec)
		meta:set_string("infotext", "Furnace")
		local inv = meta:get_inventory()
		inv:set_size("fuel", 1)
		inv:set_size("src", 1)
		inv:set_size("dst", 4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		if not inv:is_empty("fuel") then
			return false
		elseif not inv:is_empty("dst") then
			return false
		elseif not inv:is_empty("src") then
			return false
		end
		return true
	end,
	allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		if listname == "fuel" then
			if minetest.get_craft_result({method="fuel",width=1,items={stack}}).time ~= 0 then
				if inv:is_empty("src") then
					meta:set_string("infotext","Furnace is empty")
				end
				return stack:get_count()
			else
				return 0
			end
		elseif listname == "src" then
			return stack:get_count()
		elseif listname == "dst" then
			return 0
		end
	end,
	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		local stack = inv:get_stack(from_list, from_index)
		if to_list == "fuel" then
			if minetest.get_craft_result({method="fuel",width=1,items={stack}}).time ~= 0 then
				if inv:is_empty("src") then
					meta:set_string("infotext","Furnace is empty")
				end
				return count
			else
				return 0
			end
		elseif to_list == "src" then
			return count
		elseif to_list == "dst" then
			return 0
		end
	end,
})

minetest.register_node("deco:furnace_active", {
	description = "Furnace",
	tiles = {
		"deco_furnace_top.png",
		"deco_furnace_bottom.png",
		"deco_furnace_side.png",
		"deco_furnace_side.png",
		"deco_furnace_side.png",
		{
			image = "deco_furnace_front_active.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1.5
			},
		}
	},
	paramtype2 = "facedir",
	light_source = 8,
	drop = "deco:furnace",
	--groups = {cracky=2, not_in_creative_inventory=1,hot=1},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", default.furnace_inactive_formspec)
		meta:set_string("infotext", "Furnace");
		local inv = meta:get_inventory()
		inv:set_size("fuel", 1)
		inv:set_size("src", 1)
		inv:set_size("dst", 4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		if not inv:is_empty("fuel") then
			return false
		elseif not inv:is_empty("dst") then
			return false
		elseif not inv:is_empty("src") then
			return false
		end
		return true
	end,
	allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		if listname == "fuel" then
			if minetest.get_craft_result({method="fuel",width=1,items={stack}}).time ~= 0 then
				if inv:is_empty("src") then
					meta:set_string("infotext","Furnace is empty")
				end
				return stack:get_count()
			else
				return 0
			end
		elseif listname == "src" then
			return stack:get_count()
		elseif listname == "dst" then
			return 0
		end
	end,
	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		local stack = inv:get_stack(from_list, from_index)
		if to_list == "fuel" then
			if minetest.get_craft_result({method="fuel",width=1,items={stack}}).time ~= 0 then
				if inv:is_empty("src") then
					meta:set_string("infotext","Furnace is empty")
				end
				return count
			else
				return 0
			end
		elseif to_list == "src" then
			return count
		elseif to_list == "dst" then
			return 0
		end
	end,
})

local function swap_node(pos,name)
	local node = minetest.get_node(pos)
	if node.name == name then
		return
	end
	node.name = name
	minetest.swap_node(pos,node)
end

minetest.register_abm({
	nodenames = {"deco:furnace","deco:furnace_active"},
	interval = 1.0,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local meta = minetest.get_meta(pos)
		for i, name in ipairs({
				"fuel_totaltime",
				"fuel_time",
				"src_totaltime",
				"src_time"
		}) do
			if meta:get_string(name) == "" then
				meta:set_float(name, 0.0)
			end
		end

		local inv = meta:get_inventory()

		local srclist = inv:get_list("src")
		local cooked = nil
		local aftercooked

		if srclist then
			cooked, aftercooked = minetest.get_craft_result({method = "cooking", width = 1, items = srclist})
		end

		local was_active = false

		if meta:get_float("fuel_time") < meta:get_float("fuel_totaltime") then
			was_active = true
			meta:set_float("fuel_time", meta:get_float("fuel_time") + 1)
			meta:set_float("src_time", meta:get_float("src_time") + 1)
			if cooked and cooked.item and meta:get_float("src_time") >= cooked.time then
				-- check if there's room for output in "dst" list
				if inv:room_for_item("dst",cooked.item) then
					-- Put result in "dst" list
					inv:add_item("dst", cooked.item)
					-- take stuff from "src" list
					inv:set_stack("src", 1, aftercooked.items[1])
				else
					--print("Could not insert '"..cooked.item:to_string().."'")
				end
				meta:set_string("src_time", 0)
			end
		end

		if meta:get_float("fuel_time") < meta:get_float("fuel_totaltime") then
			local percent = math.floor(meta:get_float("fuel_time") /
					meta:get_float("fuel_totaltime") * 100)
			meta:set_string("infotext","Furnace active: "..percent.."%")
			swap_node(pos,"deco:furnace_active")
			meta:set_string("formspec",default.get_furnace_active_formspec(pos, percent))
			return
		end

		local fuel = nil
		local afterfuel
		local cooked = nil
		local fuellist = inv:get_list("fuel")
		local srclist = inv:get_list("src")

		if srclist then
			cooked = minetest.get_craft_result({method = "cooking", width = 1, items = srclist})
		end
		if fuellist then
			fuel, afterfuel = minetest.get_craft_result({method = "fuel", width = 1, items = fuellist})
		end

		if not fuel or fuel.time <= 0 then
			meta:set_string("infotext","Furnace out of fuel")
			swap_node(pos,"deco:furnace")
			meta:set_string("formspec", default.furnace_inactive_formspec)
			return
		end

		if cooked.item:is_empty() then
			if was_active then
				meta:set_string("infotext","Furnace is empty")
				swap_node(pos,"deco:furnace")
				meta:set_string("formspec", default.furnace_inactive_formspec)
			end
			return
		end

		meta:set_string("fuel_totaltime", fuel.time)
		meta:set_string("fuel_time", 0)

		inv:set_stack("fuel", 1, afterfuel.items[1])
	end,
})

-- furnace crafting

minetest.register_craft({
	output = 'deco:furnace',
	recipe = {
		{'group:stone', 'group:stone', 'group:stone'},
		{'group:stone', '', 'group:stone'},
		{'group:stone', 'group:stone', 'group:stone'},
	}
})

minetest.register_craft({
	output = 'deco:sign_wall 3',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
		{'', 'tools:stick', ''},
	}
})

-- on a rail!

minetest.register_node("deco:rail", {
	description = "Rail",
	drawtype = "raillike",
	tiles = {"deco_rail.png", "deco_rail_curved.png", "deco_rail_t_junction.png", "deco_rail_crossing.png"},
	inventory_image = "deco_rail.png",
	wield_image = "deco_rail.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
                -- but how to specify the dimensions for curved and sideways rails?
                fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
	},
	groups = {bendy=2,snappy=1,dig_immediate=2,attached_node=1,rail=1,connect_to_raillike=1},
})


minetest.register_craft({
	output = 'deco:rail 20',
	recipe = {
		{'tools:steel_ingot','','tools:steel_ingot'},
		{'tools:steel_ingot','tools:stick','tools:steel_ingot'},
		{'tools:steel_ingot','','tools:steel_ingot'}
	}
})

--desk chair :3

minetest.register_node("deco:desk_chair", {
	description = "Desk Chair",
	drawtype = "nodebox",
	paramtype = "light",
	tiles = {"deco_wood_oak_planks.png"},
	paramtype2 = "facedir",
	groups = {choppy=3, oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1, -0.5, -0.5, 0.1, -0.4, -0.1},
			{-0.1, -0.4, 0.1, -0.5, -0.5, -0.1},
			{0.1, -0.4, 0.1, -0.1, -0.5, 0.5},
			{-0.1, 0, 0.3, 0.1, 0.6, 0.4},
			{0.5, -0.5, 0.1, 0.1, -0.4, -0.1},
			{0.1, 0, -0.1, -0.1, -0.5, 0.1},
			{0.3, 0.1, 0.3, -0.3, 0, -0.2},
			{0.3, 0.4, 0.2, -0.3, 0.7, 0.3},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.8, 0.5},
		}
	},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craft({
	output = 'deco:desk_chair',
	recipe = {
		{'', 'group:wood', ''},
		{'', 'group:wood', ''},
		{'tools:stick', 'tools:stick', 'tools:stick'},
	}
})

-- desk formspec stuff

default.desk_formspec =
	"size[8,9]"..
	"list[current_name;main;2,0;4,4;]"..
	"list[current_player;main;0,5;8,4;]"..
	"background[-0.5,-0.65;9,10.35;".."chestui.png".."]"..
	"listcolors[#664620;#f9ca93;#ffffff;#c69c6a;#ffffff]"

--desks with micro amounts of storage :)

minetest.register_node("deco:desk_2", {
	description = "Desk",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"deco_wood_oak_planks.png"},
	groups = {choppy=3, oddly_breakable_by_hand=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.3, -0.4, -0.4, -0.5, -0.5},
			{0.5, -0.3, -0.5, 0.4, -0.5, -0.4},
			{-0.5, -0.3, -0.5, 0.5, 0.3, 0.2},
			{0.5, 0.5, -0.5, -0.5, 0.3, 0.5},
		},
	},

		on_destruct = function(pos)
			local node = minetest.env:get_node(pos)
			local param2 = node.param2
			if param2 == 0 then
				pos.z = pos.z+1
			elseif param2 == 1 then
				pos.x = pos.x+1
			elseif param2 == 2 then
				pos.z = pos.z-1
			elseif param2 == 3 then
				pos.x = pos.x-1
			end
			if( minetest.env:get_node({x=pos.x, y=pos.y, z=pos.z}).name == "deco:desk" ) then
				if( minetest.env:get_node({x=pos.x, y=pos.y, z=pos.z}).param2 == param2 ) then
					minetest.env:remove_node(pos)
				end
			end
		end,

		selection_box = {
			type = "fixed",
			fixed = {
						{-0.5, 0.5, -0.5, 0.5, -0.5, 1.5},
					}
		},

		sounds = default.node_sound_wood_defaults(),
		on_construct = function(pos)
			local meta = minetest.get_meta(pos)
			meta:set_string("formspec",default.desk_formspec)
			meta:set_string("infotext", "Desk")
			local inv = meta:get_inventory()
			inv:set_size("main", 8*4)
		end,
		after_place_node = function(pos, placer)
			local meta = minetest.get_meta(pos)
			meta:set_string("owner", placer:get_player_name() or "")
			meta:set_string("infotext", "Desk (owned by "..
				meta:get_string("owner")..")")
			local node = minetest.env:get_node(pos)
			local p = {x=pos.x, y=pos.y, z=pos.z}
			local param2 = node.param2
			node.name = "deco:desk"
			if param2 == 0 then
				pos.z = pos.z+1
			elseif param2 == 1 then
				pos.x = pos.x+1
			elseif param2 == 2 then
				pos.z = pos.z-1
			elseif param2 == 3 then
				pos.x = pos.x-1
			end
			if minetest.registered_nodes[minetest.env:get_node(pos).name].buildable_to  then
				minetest.env:set_node(pos, node)
			else
				minetest.env:remove_node(p)
				return true
			end
		end,
		can_dig = function(pos,player)
			local meta = minetest.get_meta(pos);
			local inv = meta:get_inventory()
			return inv:is_empty("main")
		end,
		on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
			minetest.log("action", player:get_player_name()..
				" moves stuff in desk at "..minetest.pos_to_string(pos))
		end,
		on_metadata_inventory_put = function(pos, listname, index, stack, player)
			minetest.log("action", player:get_player_name()..
				" moves stuff to desk at "..minetest.pos_to_string(pos))
		end,
		on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from desk at "..minetest.pos_to_string(pos))
		end,
})

minetest.register_node("deco:desk", {
		description = "Desk",
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {choppy=3, oddly_breakable_by_hand=1},
		tiles = {"deco_wood_oak_planks.png"},
		node_box = {
			type = "fixed",
			fixed = {
				{-0.4, 0.3, 0.5, -0.5, -0.5, 0.4},
				{0.5, 0.3, 0.5, -0.5, 0.5, -0.5},
				{0.4, 0.3, 0.5, 0.5, -0.5, 0.4},
			},
		},

		selection_box = {
			type = "fixed",
			fixed = {
						{0, 0, 0, 0, 0, 0},
					}
		},
		sounds = default.node_sound_wood_defaults(),
})

--desk crafting

minetest.register_craft({
	output = 'deco:desk_2',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'tools:stick', 'deco:chest', 'tools:stick'},
	}
})

--stone square

minetest.register_node("deco:stone_tile", {
	description = "Stone Tile",
	tiles = {"deco_stone_tile.png"},
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
	drop = 'deco:cobble',
})

minetest.register_craft({
	output = 'deco:stone_tile 4',
	recipe = {
		{'mapgen:cobble', 'mapgen:cobble'},
		{'mapgen:cobble', 'mapgen:cobble'},
	}
})

minetest.register_craft({
	output = 'deco:stone_tile 4',
	recipe = {
		{'deco:cobble', 'deco:cobble'},
		{'deco:cobble', 'deco:cobble'},
	}
})

-- stone brick

minetest.register_node("deco:stone_brick", {
	description = "Stone Brick",
	tiles = {"deco_stone_brick.png"},
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'deco:stone_brick 4',
	recipe = {
		{'mapgen:stone', 'mapgen:stone'},
		{'mapgen:stone', 'mapgen:stone'},
	}
})

-- decorative cobble

minetest.register_node("deco:cobble", {
	description = "Deco Cobble",
	tiles = {"deco_cobble.png"},
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

-- ladders

minetest.register_node("deco:ladder", {
	description = "Ladder",
	drawtype = "nodebox",
	tiles = {"deco_ladder.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
	climbable = true,
	is_ground_content = false,
	node_box = {
		type = "fixed",
		fixed = {
			{ -0.4, 0.5, 0.5, -0.3,-0.5, 0.4 },
			{  0.3, 0.5, 0.4,  0.4,-0.5, 0.5 },

			{ -0.3, 0.42, 0.4,  0.4, 0.32, 0.5 },
			{ -0.3, 0.17, 0.4,  0.4, 0.07, 0.5 },
			{ -0.3,-0.07, 0.4,  0.4,-0.17, 0.5 },
			{ -0.3,-0.32, 0.4,  0.4,-0.42, 0.5 },
		},
	},

	selection_box = {
			type = "fixed",
			fixed = {
						{-0.4, 0.5, 0.4, 0.4, -0.5, 0.5},
					}
		},
	groups = {oddly_breakable_by_hand=2},
	sounds = default.node_sound_wood_defaults(),
})

-- ladder crafting

minetest.register_craft({
	output = 'deco:ladder 4',
	recipe = {
		{'tools:stick', '', 'tools:stick'},
		{'tools:stick', 'tools:stick', 'tools:stick'},
		{'tools:stick', '', 'tools:stick'},
	}
})

--
-- Fuels
--

minetest.register_craft({
	type = "fuel",
	recipe = "ores:coal_lump",
	burntime = 60,
})

minetest.register_craft({
	type = "fuel",
	recipe = "bucket:bucket_lava",
	burntime = 120,
	replacements = {{"bucket:bucket_lava", "bucket:bucket_empty"}},
})

minetest.register_craft({
	type = "fuel",
	recipe = "bucket:oil",
	burntime = 360,
	replacements = {{"bucket:oil", "bucket:bucket_empty"}},
})

minetest.register_craft({
	type = "fuel",
	recipe = "group:leaves",
	burntime = 5,
})

minetest.register_craft({
	type = "fuel",
	recipe = "group:tree",
	burntime = 45,
})

minetest.register_craft({
	type = "fuel",
	recipe = "group:wood",
	burntime = 7,
})

minetest.register_craft({
	type = "fuel",
	recipe = "group:flower",
	burntime = 2,
})

--
-- Cooking Recipes
--

minetest.register_craft({
	type = "cooking",
	output = "deco:glass",
	recipe = "mapgen:sand",
})

minetest.register_craft({
	type = "cooking",
	recipe = 'mapgen:cobble',
	output = 'mapgen:stone'
})

minetest.register_craft({
	type = "cooking",
	recipe = 'deco:cobble',
	output = 'mapgen:stone'
})

minetest.register_craft({
	type = "cooking",
	recipe = 'mapgen:crust_cobble',
	output = 'mapgen:crust_stone'
})

-- mesh chest (testing)

minetest.register_node("deco:locked_chest", {
	description = "Locked Chest",
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, -0.4375, 0.4375, 0.1250, 0.4375}, -- MainBody
		}
	},
	tiles = {"deco_chest_top.png", "deco_chest_top.png", "deco_chest_side.png",
		"deco_chest_side.png", "deco_chest_side.png", "deco_chest_side.png"},
	paramtype2 = "facedir",
	groups = {choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	},
	after_place_node = function(pos, placer)
		minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_chest_locked") --+(0.0625*10)
		local entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
		if minetest.get_node(pos).param2 == 0 then --list of rad to 90 degree: 3.142/2 = 90; 3.142 = 180; 3*3.142 = 270
				entity_remove[1]:setyaw(3.142)
			elseif minetest.get_node(pos).param2 == 1 then
				entity_remove[1]:setyaw(3.142/2)
			elseif minetest.get_node(pos).param2 == 3 then
				entity_remove[1]:setyaw((-3.142/2))
			else
				entity_remove[1]:setyaw(0)
		end
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "Locked Chest (owned by "..
		meta:get_string("owner")..")")
	end,
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Locked Chest")
		meta:set_string("owner", "")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
	end,
	on_punch = function(pos)
		local entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
		if entity_remove[1] == nil then
			minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_chest_locked") --+(0.0625*10)
			entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
			if minetest.get_node(pos).param2 == 0 then --list of rad to 90 degree: 3.142/2 = 90; 3.142 = 180; 3*3.142 = 270
				entity_remove[1]:setyaw(3.142)
			elseif minetest.get_node(pos).param2 == 1 then
				entity_remove[1]:setyaw(3.142/2)
			elseif minetest.get_node(pos).param2 == 3 then
				entity_remove[1]:setyaw((-3.142/2))
			else
				entity_remove[1]:setyaw(0)
			end
		end
	end,

	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		local entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
		entity_remove[1]:remove()
		return inv:is_empty("main") and has_locked_chest_privilege(meta, player)
	end,
	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		local meta = minetest.get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			minetest.log("action", player:get_player_name()..
					" tried to access a locked chest belonging to "..
					meta:get_string("owner").." at "..
					minetest.pos_to_string(pos))
			return 0
		end
		return count
	end,
    allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			minetest.log("action", player:get_player_name()..
					" tried to access a locked chest belonging to "..
					meta:get_string("owner").." at "..
					minetest.pos_to_string(pos))
			return 0
		end
		return stack:get_count()
	end,
    allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			minetest.log("action", player:get_player_name()..
					" tried to access a locked chest belonging to "..
					meta:get_string("owner").." at "..
					minetest.pos_to_string(pos))
			return 0
		end
		return stack:get_count()
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in locked chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to locked chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from locked chest at "..minetest.pos_to_string(pos))
	end,
	on_rightclick = function(pos, node, clicker)
		local meta = minetest.get_meta(pos)
		if has_locked_chest_privilege(meta, clicker) then
			local entity_anim = minetest.get_objects_inside_radius(pos, 0.1)
			local speedy_meta = minetest.get_meta(pos)
			speedy_meta:set_string("lid_state", "open")
			if entity_anim[1] == nil then
				minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_chest_locked") --+(0.0625*10)
				entity_anim = minetest.get_objects_inside_radius(pos, 0.1)
				if minetest.get_node(pos).param2 == 0 then --list of rad to 90 degree: 3.142/2 = 90; 3.142 = 180; 3*3.142 = 270
					entity_anim[1]:setyaw(3.142)
				elseif minetest.get_node(pos).param2 == 1 then
					entity_anim[1]:setyaw(3.142/2)
				elseif minetest.get_node(pos).param2 == 3 then
					entity_anim[1]:setyaw((-3.142/2))
				else
					entity_anim[1]:setyaw(0)
				end
			end
			entity_anim[1]:set_animation({x=1,y=220}, 15, 0)
			local timerlocked = minetest.get_node_timer(pos)
			timerlocked:start(7.3)
			--print (dump(minetest.get_objects_inside_radius(pos, 0.1)))
			minetest.show_formspec(
				clicker:get_player_name(),
				-- we need to pass the position here so the helper function knowns where the chest to close is
				"deco:locked_chest_"..pos.x.."_"..pos.y.."_"..pos.z,
				default.get_locked_chest_formspec(pos)
			)
		end
	end,
	on_timer = function(pos,elapsed)
		local entity_anim = minetest.get_objects_inside_radius(pos, 0.1)
		local nodetimer = minetest.get_node_timer(pos)
		nodetimer:stop()
		if entity_anim[1] == nil then
			minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_chest_locked") --+(0.0625*10)
			entity_anim = minetest.get_objects_inside_radius(pos, 0.1)
		end
		if minetest.get_meta(pos):get_string("lid_state") == "open" then
			entity_anim[1]:set_animation({x=40,y=40}, 1, 0)
		elseif minetest.get_meta(pos):get_string("lid_state") == "shut" then
			entity_anim[1]:set_animation({x=440,y=440}, 1, 0)
		end
	end,
})

-- helper function to close the chest lids.

minetest.register_on_player_receive_fields(function(player, formname, fields)
	if formname:find('deco:locked_chest_') == 1 then
		if not fields.quit then return end
		local x, y, z = formname:match('deco:locked_chest_(.-)_(.-)_(.*)')
		local pos = {x=tonumber(x), y=tonumber(y), z=tonumber(z)}
		local entity_anim = minetest.get_objects_inside_radius(pos, 0.1)
		if entity_anim[1] == nil then
			minetest.log("error", "Did not find entity for chest at " .. minetest.pos_to_string(pos))
		end
		
		entity_anim[1]:set_animation({x=220,y=440}, 30, 0) -- Play the close animation
		local speedy_meta = minetest.get_meta(pos)
		speedy_meta:set_string("lid_state", "shut")
		local quicktime = minetest.get_node_timer(pos)
		quicktime:start(7.333333333333333)
	end
	if formname:find('deco:chest_') == 1 then
		if not fields.quit then return end
		local x, y, z = formname:match('deco:chest_(.-)_(.-)_(.*)')
		local pos = {x=tonumber(x), y=tonumber(y), z=tonumber(z)}
		local entity_anim = minetest.get_objects_inside_radius(pos, 0.1)
		if entity_anim[1] == nil then
			minetest.log("error", "Did not find entity for chest at " .. minetest.pos_to_string(pos))
		end
		
		entity_anim[1]:set_animation({x=220,y=440}, 30, 0) -- Play the close animation
		local speedy_meta = minetest.get_meta(pos)
		speedy_meta:set_string("lid_state", "shut")
		local quicktime = minetest.get_node_timer(pos)
		quicktime:start(7.333333333333333)
	end
end)


--mesh notes

--[[

animation is played at 30 fps, and is between the ranges of 0-40 40-130 is the open frames, and 130 - 260 is the closing down frames

40 is open fully, 260 is closed fully.

--]]

minetest.register_entity("deco:mesh_chest_locked", {
    collisionbox = { 0, 0, 0, 0, 0, 0 },
    visual = "mesh",
	mesh = "ChestLocked.b3d",
    textures = {"chest_uv.png"},
	visual_size = {x=10, y=10},
})

minetest.register_entity("deco:mesh_chest", {
    collisionbox = { 0, 0, 0, 0, 0, 0 },
    visual = "mesh",
	mesh = "ChestUnlocked.b3d",
    textures = {"chest_uv.png"},
	visual_size = {x=10, y=10},
})

minetest.register_node("deco:chest", {
	description = "Chest",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, -0.4375, 0.4375, 0.1250, 0.4375}, -- MainBody
		}
	},
	tiles = {"deco_chest_top.png", "deco_chest_top.png", "deco_chest_side.png",
		"deco_chest_side.png", "deco_chest_side.png", "deco_chest_side.png"},
	paramtype2 = "facedir",
	paramtype = "light",
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	},
	
	groups = {choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),
	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_chest") --+(0.0625*10)
		local entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
		if minetest.get_node(pos).param2 == 0 then --list of rad to 90 degree: 3.142/2 = 90; 3.142 = 180; 3*3.142 = 270
				entity_remove[1]:setyaw(3.142)
			elseif minetest.get_node(pos).param2 == 1 then
				entity_remove[1]:setyaw(3.142/2)
			elseif minetest.get_node(pos).param2 == 3 then
				entity_remove[1]:setyaw((-3.142/2))
			else
				entity_remove[1]:setyaw(0)
		end
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "Unlocked Chest (owned by "..
		meta:get_string("owner")..")")
	end,
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		--meta:set_string("formspec",default.chest_formspec(pos))
		meta:set_string("infotext", "Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
	end,
	on_punch = function(pos)
		local entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
		if entity_remove[1] == nil then
			minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_chest") --+(0.0625*10)
			entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
			if minetest.get_node(pos).param2 == 0 then --list of rad to 90 degree: 3.142/2 = 90; 3.142 = 180; 3*3.142 = 270
				entity_remove[1]:setyaw(3.142)
			elseif minetest.get_node(pos).param2 == 1 then
				entity_remove[1]:setyaw(3.142/2)
			elseif minetest.get_node(pos).param2 == 3 then
				entity_remove[1]:setyaw((-3.142/2))
			else
				entity_remove[1]:setyaw(0)
			end
		end
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		local entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
		entity_remove[1]:remove()
		return inv:is_empty("main")
	end,
	
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from chest at "..minetest.pos_to_string(pos))
	end,
	on_rightclick = function(pos, node, clicker)
		local meta = minetest.get_meta(pos)
		local entity_anim = minetest.get_objects_inside_radius(pos, 0.1)
			local speedy_meta = minetest.get_meta(pos)
			speedy_meta:set_string("lid_state", "open")
			if entity_anim[1] == nil then
				minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_chest") --+(0.0625*10)
				entity_anim = minetest.get_objects_inside_radius(pos, 0.1)
				if minetest.get_node(pos).param2 == 0 then --list of rad to 90 degree: 3.142/2 = 90; 3.142 = 180; 3*3.142 = 270
					entity_anim[1]:setyaw(3.142)
				elseif minetest.get_node(pos).param2 == 1 then
					entity_anim[1]:setyaw(3.142/2)
				elseif minetest.get_node(pos).param2 == 3 then
					entity_anim[1]:setyaw((-3.142/2))
				else
					entity_anim[1]:setyaw(0)
				end
			end
		entity_anim[1]:set_animation({x=1,y=220}, 15, 0)
		local timerlocked = minetest.get_node_timer(pos)
		timerlocked:start(7.3)
		minetest.show_formspec(
				clicker:get_player_name(),
				-- we need to pass the position here so the helper function knowns where the chest to close is
				"deco:chest_"..pos.x.."_"..pos.y.."_"..pos.z,
				default.chest_formspec(pos)
		)
	end,
	on_timer = function(pos,elapsed)
		local entity_anim = minetest.get_objects_inside_radius(pos, 0.1)
		local nodetimer = minetest.get_node_timer(pos)
		nodetimer:stop()
		if entity_anim[1] == nil then
			minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_chest") --+(0.0625*10)
			entity_anim = minetest.get_objects_inside_radius(pos, 0.1)
		end
		if minetest.get_meta(pos):get_string("lid_state") == "open" then
			entity_anim[1]:set_animation({x=40,y=40}, 1, 0)
		elseif minetest.get_meta(pos):get_string("lid_state") == "shut" then
			entity_anim[1]:set_animation({x=440,y=440}, 1, 0)
		end
	end,
})

-- desk fans

function deco.desk_fan()
	local active = "false"
end

minetest.register_entity("deco:mesh_desk_fan", {
    collisionbox = { 0, 0, 0, 0, 0, 0 },
    visual = "mesh",
	mesh = "desk_fan.b3d",
    textures = {"fan_uv.png"},
	visual_size = {x=10, y=10},
})

minetest.register_node("deco:desk_fan", {
	description = "Desk Fan",
	drawtype = "nodebox",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	paramtype = "light",
	groups = {oddly_breakable_by_hand=2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.1875, 0.1875, -0.375, 0.1875}, -- NodeBox1
		}
	},
	tiles = {"deco_fan_body.png"},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	},
	on_construct = function(pos)
		local entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
		local meta = minetest.get_meta(pos)
		meta:set_string("active", "no")
		print (meta:get_string("active"))
		if entity_remove[1] == nil then
			minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_desk_fan") --+(0.0625*10)
			entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
			if minetest.get_node(pos).param2 == 0 then --list of rad to 90 degree: 3.142/2 = 90; 3.142 = 180; 3*3.142 = 270
				entity_remove[1]:setyaw(3.142)
			elseif minetest.get_node(pos).param2 == 1 then
				entity_remove[1]:setyaw(3.142/2)
			elseif minetest.get_node(pos).param2 == 3 then
				entity_remove[1]:setyaw((-3.142/2))
			else
				entity_remove[1]:setyaw(0)
			end
		end
	end,
	on_punch = function(pos)
		local entity_anim = minetest.get_objects_inside_radius(pos, 0.1)
		local speedy_meta = minetest.get_meta(pos)
		if speedy_meta:get_string("active") == "no" then
			speedy_meta:set_string("active", "yes")
			print (speedy_meta:get_string("active"))
		elseif speedy_meta:get_string("active") == "yes" then
			speedy_meta:set_string("active", "no")
			print (speedy_meta:get_string("active"))
		end
		
		if entity_anim[1] == nil then
			minetest.add_entity({x=pos.x, y=pos.y, z=pos.z}, "deco:mesh_desk_fan") --+(0.0625*10)
			local entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
			if minetest.get_node(pos).param2 == 0 then --list of rad to 90 degree: 3.142/2 = 90; 3.142 = 180; 3*3.142 = 270
				entity_remove[1]:setyaw(3.142)
			elseif minetest.get_node(pos).param2 == 1 then
				entity_remove[1]:setyaw(3.142/2)
			elseif minetest.get_node(pos).param2 == 3 then
				entity_remove[1]:setyaw((-3.142/2))
			else
				entity_remove[1]:setyaw(0)
			end
		end
		local entity_anim = minetest.get_objects_inside_radius(pos, 0.1)
		if minetest.get_meta(pos):get_string("active") == "no" then
			entity_anim[1]:set_animation({x=0,y=0}, 1, 0)
		elseif minetest.get_meta(pos):get_string("active") == "yes" then
			entity_anim[1]:set_animation({x=0,y=96}, 24, 0)
		end
	end,
	after_dig_node = function(pos)
		local entity_remove = minetest.get_objects_inside_radius(pos, 0.1)
		entity_remove[1]:remove()
	end,
})

--

-- soapstone

minetest.register_node("deco:soapstone_tile", {
	description = "Soapstone Tile",
	tiles = {"deco_soapstone_tile.png"},
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky=2, stone=1},
})

minetest.register_node("deco:soapstone_brick", {
	description = "Soapstone Brick",
	tiles = {"deco_soapstone_brick.png"},
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky=2, stone=1},
})

-- crafting

minetest.register_craft({
	output = 'deco:soapstone_tile 4',
	recipe = {
		{'mapgen:soap_stone', 'mapgen:soap_stone'},
		{'mapgen:soap_stone', 'mapgen:soap_stone'},
	}
})

minetest.register_craft({
	output = 'deco:soapstone_brick 4',
	recipe = {
		{'deco:soapstone_tile', 'deco:soapstone_tile'},
		{'deco:soapstone_tile', 'deco:soapstone_tile'},
	}
})

minetest.register_craft({
	output = 'mapgen:soap_stone 4',
	recipe = {
		{'deco:soapstone_brick', 'deco:soapstone_brick'},
		{'deco:soapstone_brick', 'deco:soapstone_brick'},
	}
})

-- clay bricks

minetest.register_craft({
	output = 'deco:brick_block 1',
	recipe = {
		{'deco:brick', 'deco:brick'},
		{'deco:brick', 'deco:brick'},
	}
})

minetest.register_node("deco:brick_block", {
	description = "Brick Block",
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky=3},
	tiles = {"deco_brick.png"},
})

minetest.register_craftitem("deco:brick", {
	description = "Brick",
	inventory_image = "deco_brick_wield.png",
})