-- Dumpster nodes
-- by Mossmanikin
-- License: WTFPL

--Custom Sounds
function default.node_sound_metal_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name="default_hard_footstep", gain=0.4}
	table.dig = table.dig or
			{name="metal_bang", gain=0.6}
	table.dug = table.dug or
			{name="default_dug_node", gain=1.0}
	
	default.node_sound_defaults(table)
	return table
end

--Nodeboxes(some are unused)

local cube =	{-0.5   ,  -0.5   ,  -0.5   ,  0.5   ,  0.5   ,  0.5   }

local selectah =	{-0.4375,  -0.5   ,  -0.9375,  1.4375,  0.75  ,  0.4375}

local container = {
				{-0.4375,  -0.5   ,  -0.9375,  1.4375,  0.75  ,  0.4375},
				{-0.5   ,  0.75   ,  -1.0   ,  1.5   ,  0.875 ,  0.5   },
}

local container2 = { -- the one on Container.png
				{-0.4375,  -0.4375,  -0.9375, -0.375 ,  0.625 ,  0.4375},
				{ 1.375 ,  -0.4375,  -0.9375,  1.4375,  0.625 ,  0.4375},
				{-0.4375,  -0.4375,  -0.9375,  1.4375,  0.625 , -0.875 },
				{-0.4375,  -0.4375,   0.375 ,  1.4375,  0.625 ,  0.4375},
				{-0.375 ,  -0.5   ,  -0.875 ,  1.375 , -0.4375,  0.375 },
				
				{-0.5   ,  0.625  ,  -1.0   , -0.375 ,  0.75  ,  0.5   },
				{ 1.375 ,  0.625  ,  -1.0   ,  1.5   ,  0.75  ,  0.5   },
				{-0.5   ,  0.625  ,  -1.0   ,  1.5   ,  0.75  , -0.875 },
				{-0.5   ,  0.625  ,   0.375 ,  1.5   ,  0.75  ,  0.5   },
}

local container3 = {
				-- Top
				{-0.4375,   1.125 ,   0.1875,  1.4375,  1.1875,  0.4375},
				{-0.4375,   1.0625,   0.0   ,  1.4375,  1.125 ,  0.4375},
				{-0.4375,   1.0   ,  -0.1875,  1.4375,  1.0625,  0.4375},
				{-0.4375,   0.9375,  -0.375 ,  1.4375,  1.0   ,  0.4375},
				{-0.4375,   0.875 ,  -0.5625,  1.4375,  0.9375,  0.4375},
				{-0.4375,   0.8125,  -0.75  ,  1.4375,  0.875 ,  0.4375},
				{-0.4375,   0.75  ,  -0.9375,  1.4375,  0.8125,  0.4375},
				-- Border
				{-0.5   ,   0.625 ,  -1.0   ,  1.5   ,  0.75  ,  0.5   },
				-- Main Body
				{-0.4375,  -0.4375,  -0.9375,  1.4375,  0.625 ,  0.4375},
				-- Grip
				{-0.5   ,   0.0   ,  -1.0   , -0.25  ,  0.25  ,  0.5   },
				{ 1.25  ,   0.0   ,  -1.0   ,  1.5   ,  0.25  ,  0.5   },
				-- Feet
				{-0.4375,  -0.5   ,  -0.9375, -0.1875, -0.4375, -0.6875},
				{ 1.1875,  -0.5   ,  -0.9375,  1.4375, -0.4375, -0.6875},
				{-0.4375,  -0.5   ,   0.1875, -0.1875, -0.4375,  0.4375},
				{ 1.1875,  -0.5   ,   0.1875,  1.4375, -0.4375,  0.4375},
}

local container4 = { -- the one on Dumpster.png
				-- Top
				{-0.4375,   0.75  ,  -0.9375,  1.4375,  0.875 ,  0.4375},
				-- Border
				{-0.5   ,   0.625 ,  -1.0   ,  1.5   ,  0.75  ,  0.5   },
				-- Main Body
				{-0.4375,  -0.4375,  -0.9375,  1.4375,  0.625 ,  0.4375},
				-- Feet
				{-0.4375,  -0.5   ,  -0.9375, -0.1875, -0.4375, -0.6875},
				{ 1.1875,  -0.5   ,  -0.9375,  1.4375, -0.4375, -0.6875},
				{-0.4375,  -0.5   ,   0.1875, -0.1875, -0.4375,  0.4375},
				{ 1.1875,  -0.5   ,   0.1875,  1.4375, -0.4375,  0.4375},
}

--Node Registration

minetest.register_node("trash_can:dumpster", {
	description = "Dumpster",
	paramtype = "light",
	paramtype2 = "facedir",
	inventory_image = "dumpster_wield.png",
	tiles = {
		"dumpster_top.png", 
		"dumpster_bottom.png", 
		"dumpster_side.png",
		"dumpster_side.png",
		"dumpster_side.png",
		"dumpster_side.png"
		},
	drawtype = "nodebox",
	selection_box = {
		type = "fixed",
		fixed = selectah,
	},
	node_box = {
		type = "fixed",
		fixed = container4,
	},
	groups = {
		cracky = 3,
		oddly_breakable_by_hand = 1,
		},
	
	sounds = default.node_sound_metal_defaults(),
	
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
			meta:set_string("formspec",
				"size[8,9]"..
				"button[0,0;2,1;empty;Empty Trash]"..
                                "list[current_name;main;1,1;6,3;]"..
                                "list[current_player;main;0,5;8,4;]")
                meta:set_string("infotext", "Dumpster")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
	end,
        can_dig = function(pos,player)
		local meta = minetest.env:get_meta(pos);
		local inv = meta:get_inventory()
                return inv:is_empty("main")
        end,
        on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
			" moves stuff in dumpster at "..minetest.pos_to_string(pos))
	end,
        on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
			" moves stuff to dumpster at "..minetest.pos_to_string(pos))
	end,
        on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
			" takes stuff from dumpster at "..minetest.pos_to_string(pos))
        end,
	on_receive_fields = function(pos, formname, fields, sender)
		if fields.empty then
		local meta = minetest.get_meta(pos)
			local inv = meta:get_inventory()
			for i = 1, inv:get_size("main") do
				inv:set_stack("main", i, nil)
			end
			minetest.sound_play("trash", {to_player=player_name, gain = 2.0})
		end
        end,
})


--Crafting
minetest.register_craft({
	output = 'trash_can:dumpster',
	recipe = {
		{'default:coalblock', 'default:coalblock', 'default:coalblock'},
		{'default:steel_ingot', 'dye:dark_green', 'default:steel_ingot'},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
	}
})