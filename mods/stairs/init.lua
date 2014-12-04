-- Minetest 0.4 mod: stairs
-- See README.txt for licensing and other information.

stairs = {}

-- Node will be called stairs:stair_<subname>
function stairs.register_stair(subname, recipeitem, groups, images, description, sounds)
	minetest.register_node(":stairs:stair_" .. subname, {
		description = description,
		drawtype = "mesh",
		tiles = images,
		mesh = "stairs.b3d",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		sounds = sounds,
		collision_box = {
			type = "fixed",
			fixed = {
				{0.5, -0.5, -0.5, -0.5, -0.16406, 0.5},
				{0.5, -0.16406, -0.16406, -0.5, 0.17188, 0.5},
				{0.5, 0.17188, 0.17188, -0.5, 0.5, 0.5},
			},
		},
		
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local param2 = 0

			local placer_pos = placer:getpos()
			if placer_pos then
				local dir = {
					x = p1.x - placer_pos.x,
					y = p1.y - placer_pos.y,
					z = p1.z - placer_pos.z
				}
				param2 = minetest.dir_to_facedir(dir)
			end

			if p0.y-1 == p1.y then
				param2 = param2 + 20
				if param2 == 21 then
					param2 = 23
				elseif param2 == 23 then
					param2 = 21
				end
			end

			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
	})

	-- for replace ABM
	minetest.register_node(":stairs:stair_" .. subname.."upside_down", {
		replace_name = "stairs:stair_" .. subname,
		groups = {slabs_replace=1},
	})

	minetest.register_craft({
		output = 'stairs:stair_' .. subname .. ' 8',
		recipe = {
			{recipeitem, "", ""},
			{recipeitem, recipeitem, ""},
			{recipeitem, recipeitem, recipeitem},
		},
	})

	-- Flipped recipe for the silly minecrafters
	minetest.register_craft({
		output = 'stairs:stair_' .. subname .. ' 8',
		recipe = {
			{"", "", recipeitem},
			{"", recipeitem, recipeitem},
			{recipeitem, recipeitem, recipeitem},
		},
	})
end

-- Node will be called stairs:slab_<subname>
function stairs.register_slab(subname, recipeitem, groups, images, description, sounds)
	minetest.register_node(":stairs:slab_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		sounds = sounds,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			-- If it's being placed on an another similar one, replace it with
			-- a full block
			local slabpos = nil
			local slabnode = nil
			local p0 = pointed_thing.under
			local p1 = pointed_thing.above
			local n0 = minetest.get_node(p0)
			local n1 = minetest.get_node(p1)
			local param2 = 0

			local n0_is_upside_down = (n0.name == "stairs:slab_" .. subname and
					n0.param2 >= 20)

			if n0.name == "stairs:slab_" .. subname and not n0_is_upside_down and p0.y+1 == p1.y then
				slabpos = p0
				slabnode = n0
			elseif n1.name == "stairs:slab_" .. subname then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(recipeitem)
				fakestack:set_count(itemstack:get_count())

				pointed_thing.above = slabpos
				local success
				fakestack, success = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if success then
					itemstack:set_count(fakestack:get_count())
				-- Else put old node back
				else
					minetest.set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			-- Upside down slabs
			if p0.y-1 == p1.y then
				-- Turn into full block if pointing at a existing slab
				if n0_is_upside_down  then
					-- Remove the slab at the position of the slab
					minetest.remove_node(p0)
					-- Make a fake stack of a single item and try to place it
					local fakestack = ItemStack(recipeitem)
					fakestack:set_count(itemstack:get_count())

					pointed_thing.above = p0
					local success
					fakestack, success = minetest.item_place(fakestack, placer, pointed_thing)
					-- If the item was taken from the fake stack, decrement original
					if success then
						itemstack:set_count(fakestack:get_count())
					-- Else put old node back
					else
						minetest.set_node(p0, n0)
					end
					return itemstack
				end

				-- Place upside down slab
				param2 = 20
			end

			-- If pointing at the side of a upside down slab
			if n0_is_upside_down and p0.y+1 ~= p1.y then
				param2 = 20
			end

			return minetest.item_place(itemstack, placer, pointed_thing, param2)
		end,
	})

	-- for replace ABM
	minetest.register_node(":stairs:slab_" .. subname.."upside_down", {
		replace_name = "stairs:slab_"..subname,
		groups = {slabs_replace=1},
	})

	minetest.register_craft({
		output = 'stairs:slab_' .. subname .. ' 6',
		recipe = {
			{recipeitem, recipeitem, recipeitem},
		},
	})
end

-- Replace old "upside_down" nodes with new param2 versions
minetest.register_abm({
	nodenames = {"group:slabs_replace"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		node.name = minetest.registered_nodes[node.name].replace_name
		node.param2 = node.param2 + 20
		if node.param2 == 21 then
			node.param2 = 23
		elseif node.param2 == 23 then
			node.param2 = 21
		end
		minetest.set_node(pos, node)
	end,
})

-- Nodes will be called stairs:{stair,slab}_<subname>
function stairs.register_stair_and_slab(subname, recipeitem, groups, images, desc_stair, desc_slab, sounds)
	stairs.register_stair(subname, recipeitem, groups, images, desc_stair, sounds)
	stairs.register_slab(subname, recipeitem, groups, images, desc_slab, sounds)
end

stairs.register_stair_and_slab("oak_wood", "deco:oak_plank",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"deco_wood_oak_planks.png"},
		"Oak Plank Stair",
		"Oak Plank Slab",
		default.node_sound_wood_defaults())
		
stairs.register_stair_and_slab("birch_wood", "deco:birch_plank",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"deco_wood_birch_planks.png"},
		"Birch Plank Stair",
		"Birch Plank Slab",
		default.node_sound_wood_defaults())

stairs.register_stair_and_slab("cherry_wood", "deco:cherry_plank",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"deco_wood_cherry_planks.png"},
		"Cherry Plank Stair",
		"Cherry Plank Slab",
		default.node_sound_wood_defaults())		

stairs.register_stair_and_slab("evergreen_wood", "deco:evergreen_plank",
		{snappy=2,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"deco_wood_evergreen_planks.png"},
		"Evergreen Plank Stair",
		"Evergreen Plank Slab",
		default.node_sound_wood_defaults())		
		
stairs.register_stair_and_slab("stone", "mapgen:stone",
		{cracky=3},
		{"mapgen_stone.png"},
		"Stone Stair",
		"Stone Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("cobble", "mapgen:cobble",
		{cracky=3},
		{"mapgen_cobble.png"},
		"Cobble Stair",
		"Cobble Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("brick", "deco:brick",
		{cracky=3},
		{"deco_brick.png"},
		"Brick Stair",
		"Brick Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("sandstone", "mapgen:sandstone",
		{crumbly=2,cracky=3},
		{"mapgen_sandstone.png"},
		"Sandstone Stair",
		"Sandstone Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("ice", "mapgen:ice",
		{cracky=3},
		{"mapgen_ice.png"},
		"Solid Ice Stair",
		"Solid Ice Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("stone_brick", "deco:stone_brick",
		{cracky=3},
		{"deco_stone_brick.png"},
		"Stone Brick Stair",
		"Stone Brick Slab",
		default.node_sound_stone_defaults())
		
stairs.register_stair_and_slab("stone_tile", "deco:stone_tile",
		{cracky=3},
		{"deco_stone_tile.png"},
		"Stone Tile Stair",
		"Stone Tile Slab",
		default.node_sound_stone_defaults())
		
-- soap stone

stairs.register_stair_and_slab("soapstone", "mapgen:soap_stone",
		{cracky=2},
		{"mapgen_soap_stone.png"},
		"Soapstone Stair",
		"Soapstone Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("soapstone_tile", "deco:soapstone_tile",
		{cracky=2},
		{"deco_soapstone_tile.png"},
		"Soapstone Tile Stair",
		"Soapstone Tile Slab",
		default.node_sound_stone_defaults())

stairs.register_stair_and_slab("soapstone_brick", "deco:soapstone_brick",
		{cracky=2},
		{"deco_soapstone_brick.png"},
		"Soapstone Brick Stair",
		"Soapstone Brick Slab",
		default.node_sound_stone_defaults())

--mother fuckin wool

stairs.register_stair_and_slab("black_wool",      "wool:black",      {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1}, {"wool_black.png"},      "Black Wool Stair",      "Black Wool Slab")
stairs.register_stair_and_slab("blue_wool",       "wool:blue",       {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1}, {"wool_blue.png"},       "Blue Wool Stair",       "Blue Wool Slab")
stairs.register_stair_and_slab("brown_wool",      "wool:brown",      {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1}, {"wool_black.png"},      "Brown Wool Stair",      "Brown Wool Slab")
stairs.register_stair_and_slab("cyan_wool",       "wool:cyan",       {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1}, {"wool_cyan.png"},       "Cyan Wool Stair",       "Cyan Wool Slab")
stairs.register_stair_and_slab("dark_green_wool", "wool:dark_green", {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1}, {"wool_dark_green.png"}, "Dark Green Wool Stair", "Dark Green Wool Slab")
stairs.register_stair_and_slab("dark_grey_wool",  "wool:dark_grey",  {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1}, {"wool_dark_grey.png"},  "Dark Grey Wool Stair",  "Dark Grey Wool Slab")
stairs.register_stair_and_slab("green_wool",      "wool:green",      {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1}, {"wool_green.png"},      "Green Wool Stair",      "Green Wool Slab")
stairs.register_stair_and_slab("grey_wool",       "wool:grey",       {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1}, {"wool_grey.png"},       "Grey Wool Stair",       "Grey Wool Slab")
stairs.register_stair_and_slab("magenta_wool",    "wool:magenta",    {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1}, {"wool_magenta.png"},    "Magenta Wool Stair",    "Magenta Wool Slab")
stairs.register_stair_and_slab("orange_wool",     "wool:orange",     {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1}, {"wool_orange.png"},     "Orange Wool Stair",     "Orange Wool Slab")
stairs.register_stair_and_slab("pink_wool",       "wool:pink",       {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1}, {"wool_pink.png"},       "Pink Wool Stair",       "Pink Wool Slab")
stairs.register_stair_and_slab("red_wool",        "wool:red",        {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1}, {"wool_red.png"},        "Red Wool Stair",        "Red Wool Slab")
stairs.register_stair_and_slab("violet_wool",     "wool:violet",     {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1}, {"wool_violet.png"},     "Violet Wool Stair",     "Violet Wool Slab")
stairs.register_stair_and_slab("white_wool",      "wool:white",      {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1}, {"wool_white.png"},      "White Wool Stair",      "White Wool Slab")
stairs.register_stair_and_slab("yellow_wool",     "wool:yellow",     {snappy=2,choppy=2,oddly_breakable_by_hand=3,flammable=3,wool=1}, {"wool_yellow.png"},     "Yellow Wool Stair",     "Yellow Wool Slab")
