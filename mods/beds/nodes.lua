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

-- aliases for PA's beds mod
minetest.register_alias("beds:bed_bottom_red", "beds:bed_bottom")
minetest.register_alias("beds:bed_bottom_orange", "beds:bed_bottom")
minetest.register_alias("beds:bed_bottom_yellow", "beds:bed_bottom")
minetest.register_alias("beds:bed_bottom_green", "beds:bed_bottom")
minetest.register_alias("beds:bed_bottom_blue", "beds:bed_bottom")
minetest.register_alias("beds:bed_bottom_violet", "beds:bed_bottom")
minetest.register_alias("beds:bed_bottom_black", "beds:bed_bottom")
minetest.register_alias("beds:bed_bottom_grey", "beds:bed_bottom")
minetest.register_alias("beds:bed_bottom_white", "beds:bed_bottom")

minetest.register_alias("beds:bed_top_red", "beds:bed_top")
minetest.register_alias("beds:bed_top_orange", "beds:bed_top")
minetest.register_alias("beds:bed_top_yellow", "beds:bed_top")
minetest.register_alias("beds:bed_top_green", "beds:bed_top")
minetest.register_alias("beds:bed_top_blue", "beds:bed_top")
minetest.register_alias("beds:bed_top_violet", "beds:bed_top")
minetest.register_alias("beds:bed_top_black", "beds:bed_top")
minetest.register_alias("beds:bed_top_grey", "beds:bed_top")
minetest.register_alias("beds:bed_top_white", "beds:bed_top")
