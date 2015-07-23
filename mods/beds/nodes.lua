-- help functions

local function remove_top(pos)
	local n = minetest.get_node_or_nil(pos)
	if not n then return end
	local dir = minetest.facedir_to_dir(n.param2)
	local p = {x=pos.x+dir.x,y=pos.y,z=pos.z+dir.z}
	local n2 = minetest.get_node(p)
	if minetest.get_item_group(n2.name, "bed") == 2 and n.param2 == n2.param2 then
		minetest.remove_node(p)
	end
end

local function add_top(pos)
	local n = minetest.get_node_or_nil(pos)
	if not n or not n.param2 then
		minetest.remove_node(pos)
		return true
	end
	local dir = minetest.facedir_to_dir(n.param2)
	local p = {x=pos.x+dir.x,y=pos.y,z=pos.z+dir.z}
	local n2 = minetest.get_node_or_nil(p)
	local def = minetest.registered_items[n2.name] or nil
	if not n2 or not def or not def.buildable_to then
		minetest.remove_node(pos)
		return true
	end
	minetest.set_node(p, {name="beds:bed_top", param2 = n.param2})
	return false
end


-- register nodes

minetest.register_node("beds:bed_bottom", {
	description = "Bed",
	inventory_image = "beds_bed.png",
	wield_image = "beds_bed.png",
	drawtype = "nodebox",
	tiles = {"beds_bed_top_bottom.png^[transformR90", "default_wood.png",  "beds_bed_side_bottom_r.png",  "beds_bed_side_bottom_r.png^[transformfx", "beds_transparent.png", "beds_bed_side_bottom.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	stack_max = 1,
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,bed=1},
	sounds = default.node_sound_wood_defaults(),
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.06, 0.5},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.06, 1.5},
				
	},
	after_place_node = function(pos, placer, itemstack)
		return add_top(pos)
	end,	
	on_destruct = function(pos)
		remove_top(pos)
	end,
	on_rightclick = function(pos, node, clicker)
		beds.on_rightclick(pos, clicker)
	end,
})

minetest.register_node("beds:bed_top", {
	drawtype = "nodebox",
	tiles = {"beds_bed_top_top.png^[transformR90", "default_wood.png",  "beds_bed_side_top_r.png",  "beds_bed_side_top_r.png^[transformfx",  "beds_bed_side_top.png", "beds_transparent.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,bed=2},
	sounds = default.node_sound_wood_defaults(),
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0.06, 0.5},
	},
	selection_box = {
		type = "fixed",
		fixed = {0, 0, 0, 0, 0, 0},
	},
})

minetest.register_alias("beds:bed", "beds:bed_bottom")


-- register recipe

minetest.register_craft({
	output = "beds:bed",
	recipe = {
		{"group:wool", "group:wool", "group:wool"},
		{"group:wood", "group:wood", "group:wood"}
	}
})

--aliases for PA's beds mod
-- minetest.register_alias("beds:bed_bottom_red", "beds:bed_bottom")
-- minetest.register_alias("beds:bed_bottom_orange", "beds:bed_bottom")
-- minetest.register_alias("beds:bed_bottom_yellow", "beds:bed_bottom")
-- minetest.register_alias("beds:bed_bottom_green", "beds:bed_bottom")
-- minetest.register_alias("beds:bed_bottom_blue", "beds:bed_bottom")
-- minetest.register_alias("beds:bed_bottom_violet", "beds:bed_bottom")
-- minetest.register_alias("beds:bed_bottom_black", "beds:bed_bottom")
-- minetest.register_alias("beds:bed_bottom_grey", "beds:bed_bottom")
-- minetest.register_alias("beds:bed_bottom_white", "beds:bed_bottom")

-- minetest.register_alias("beds:bed_top_red", "beds:bed_top")
-- minetest.register_alias("beds:bed_top_orange", "beds:bed_top")
-- minetest.register_alias("beds:bed_top_yellow", "beds:bed_top")
-- minetest.register_alias("beds:bed_top_green", "beds:bed_top")
-- minetest.register_alias("beds:bed_top_blue", "beds:bed_top")
-- minetest.register_alias("beds:bed_top_violet", "beds:bed_top")
-- minetest.register_alias("beds:bed_top_black", "beds:bed_top")
-- minetest.register_alias("beds:bed_top_grey", "beds:bed_top")
-- minetest.register_alias("beds:bed_top_white", "beds:bed_top")


local beds_list = {
	{ "Red Bed", "red"},
	{ "Orange Bed", "orange"},	
	{ "Yellow Bed", "yellow"},
	{ "Green Bed", "green"},
	{ "Blue Bed", "blue"},
	{ "Violet Bed", "violet"},
	{ "Black Bed", "black"},
	{ "Grey Bed", "grey"},
	{ "White Bed", "white"},
}

for i in ipairs(beds_list) do
	local beddesc = beds_list[i][1]
	local colour = beds_list[i][2]

	minetest.register_node("beds:bed_bottom_"..colour, {
		description = beddesc,
		drawtype = "nodebox",
		tiles = {"beds_bed_top_bottom_"..colour..".png", "deco_wood_oak_planks.png",  "beds_bed_side_"..colour..".png",  "beds_bed_side_"..colour..".png",  "beds_bed_side_"..colour..".png",  "beds_bed_side_"..colour..".png"},
		paramtype = "light",
		paramtype2 = "facedir",
		stack_max = 1,
		groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		sounds = default.node_sound_wood_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
						-- bed
						{-0.5, 0.0, -0.5, 0.5, 0.3125, 0.5},
						
						-- legs
						{-0.5, -0.5, -0.5, -0.4, 0.0, -0.4},
						{0.4, 0.0, -0.4, 0.5, -0.5, -0.5},
					}
		},
		selection_box = {
			type = "fixed",
			fixed = {
						{-0.5, -0.5, -0.5, 0.5, 0.3125, 1.5},
					}
		},

		after_place_node = function(pos, placer, itemstack)
			local node = minetest.env:get_node(pos)
			local p = {x=pos.x, y=pos.y, z=pos.z}
			local param2 = node.param2
			node.name = "beds:bed_top_"..colour
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
	
		on_rightclick = function(pos, node, clicker)
			beds.on_rightclick(pos, clicker)
		end,
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
			if( minetest.env:get_node({x=pos.x, y=pos.y, z=pos.z}).name == "beds:bed_top_"..colour ) then
				if( minetest.env:get_node({x=pos.x, y=pos.y, z=pos.z}).param2 == param2 ) then
					minetest.env:remove_node(pos)
				end	
			end
		end,
	})
	
	minetest.register_node("beds:bed_top_"..colour, {
		drawtype = "nodebox",
		tiles = {"beds_bed_top_top_"..colour..".png", "deco_wood_oak_planks.png",  "beds_bed_side_top_r_"..colour..".png",  "beds_bed_side_top_l_"..colour..".png",  "beds_bed_top_front.png",  "beds_bed_side_"..colour..".png"},
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		sounds = default.node_sound_wood_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
						-- bed
						{-0.5, 0.0, -0.5, 0.5, 0.3125, 0.5},
						{-0.4375, 0.3125, 0.1, 0.4375, 0.4375, 0.5},
						
						-- legs
						{-0.4, 0.0, 0.4, -0.5, -0.5, 0.5},
						{0.5, -0.5, 0.5, 0.4, 0.0, 0.4},
					}
		},
		selection_box = {
			type = "fixed",
			fixed = {
						{0, 0, 0, 0, 0, 0},
					}
		},
	})
	
	minetest.register_alias("beds:bed_"..colour, "beds:bed_bottom_"..colour)
	
	minetest.register_craft({
		output = "beds:bed_"..colour,
		recipe = {
			{"wool:"..colour, "wool:"..colour, "wool:white", },
			{"tools:stick", "", "tools:stick", }
		}
	})
	
	minetest.register_craft({
		output = "beds:bed_"..colour,
		recipe = {
			{"wool:white", "wool:"..colour, "wool:"..colour, },
			{"tools:stick", "", "tools:stick", }
		}
	})
	
end

minetest.register_node("beds:steel_bed", {
	drawtype = "mesh",
	mesh = "bed_steel.b3d",
	description = "Steel Bed",
	tiles = {"bed_steel.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	sounds = default.node_sound_wood_defaults(),
	after_place_node = function(pos, placer)
		local pn = placer:get_player_name()
		local meta = minetest.env:get_meta(pos)
		meta:set_string("bed_owner", pn)
		meta:set_string("infotext", "Bed owned by "..pn)
	end,
	can_dig = function(pos, player)
		local pn = player:get_player_name()
		local meta = minetest.env:get_meta(pos)
		if pn == meta:get_string("bed_owner") then
			return true
		else
			return false
		end
	end,
	on_rightclick = function(pos, node, clicker)
		local pn = clicker:get_player_name()
		local meta = minetest.env:get_meta(pos)
		
		if pn == meta:get_string("bed_owner") then
			beds.on_rightclick(pos, clicker)
		else
			minetest.chat_send_player(pn, "HEY! This is not your bed! Sleep in your own bed or a wooden bed!")
		end
	end,
})

minetest.register_craft({
	output = "beds:steel_bed",
	recipe = {
		{'carpet:red_wool', 'carpet:red_wool', 'wool:grey'},
		{'wool:white', 'wool:white', 'wool:white'},
		{'tools:steel_ingot', 'tools:steel_ingot', 'tools:steel_ingot'},
	}
})

minetest.register_node("beds:admin_bed", {
	drawtype = "mesh",
	mesh = "bed_steel.b3d",
	description = "Steel Bed",
	tiles = {"bed_steel.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3,not_in_creative_inventory=1},
	sounds = default.node_sound_wood_defaults(),
	after_place_node = function(pos, placer)
		local pn = placer:get_player_name()
		local meta = minetest.env:get_meta(pos)
		meta:set_string("bed_owner", pn)
		meta:set_string("infotext", "Bed owned by "..pn)
	end,
	can_dig = function(pos, player)
		local pn = player:get_player_name()
		local meta = minetest.env:get_meta(pos)
		if pn == meta:get_string("bed_owner") then
			return true
		else
			return false
		end
	end,
	on_rightclick = function(pos, node, clicker)
		beds.on_rightclick(pos, clicker)
	end,
})