--forcefields, used to limit the world size. Once the walls have been assembled you can disable the mod by commenting out line 13 for mapgen/init.lua
-- note: by default - the forcefields are disabled by default! enable them by uncommenting out line 13 for mapgen/init.lua

-- configure world size here - max = 30000, min = 32 (can be smaller, spawn might be outside of area.)

-- note: default settings are 31000

-- Warning: you will have to set all six dimensions.

x_pos_position = 31000
x_nega_position = -31000

y_pos_position = 31000
y_nega_position = -31000

z_pos_position = 31000
z_nega_position = -31000

--psuedo ignore node - however, can be built on as it's a solid object.

minetest.register_node("mapgen:force_field", {
	description = "Alien Forcefield",
	tiles = {"mapgen_force.png"},
	sunlight_propagates = true,
	paramtype = "light",
	drawtype = "airlike",
	pointable = false,
	inventory_image = minetest.inventorycube("mapgen_force_inv_wield.png"),
	wield_image = minetest.inventorycube("mapgen_force_inv_wield.png"),
	is_ground_content = true,
	groups = {not_in_creative_inventory=1},
})

-- sorry, inefficient code - can't do any better yet. not unless a contributor wants to improve it.

minetest.register_abm({
	nodenames = {"air"},
	interval = 2,
	chance = 1,
	action = function(pos, node)
		if x_nega_position == pos.x then
			minetest.set_node(pos, {name="mapgen:force_field"})
		elseif x_pos_position == pos.x then
			minetest.set_node(pos, {name="mapgen:force_field"})
		elseif y_nega_position == pos.y then
			minetest.set_node(pos, {name="mapgen:force_field"})
		elseif y_pos_position == pos.y then
			minetest.set_node(pos, {name="mapgen:force_field"})
		elseif z_nega_position == pos.z then
			minetest.set_node(pos, {name="mapgen:force_field"})
		elseif z_pos_position == pos.z then
			minetest.set_node(pos, {name="mapgen:force_field"})
		else
			--no forcefields constructed.
		end
	end,
})