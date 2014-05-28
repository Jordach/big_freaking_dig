-- basic empty tank

minetest.register_node("tanks:level_0", {
	description = "Tank",
	node_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
			{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
			{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
			{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
			--{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+0.0625, -0.43750},
		},
	},
	tiles = {"tankgaugetop.png", "tankgaugetop.png", "tankgauge.png"},
	groups = {oddly_breakable_by_hand=1},
	paramtype = "light",
	drawtype = "nodebox",
})


-- tank crafting

minetest.register_craft({
	output = 'tanks:level_0',
	recipe = {
		{'deco:glass', '', 'deco:glass'},
		{'deco:glass', '', 'deco:glass'},
		{'deco:glass', '', 'deco:glass'},
	}
})

-- tank nodeboxes

tank_level = {}

tank_level[1] = {
	{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
	{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
	{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
	{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
	{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+0.0625, -0.43750},
}

tank_level[2] = {
	{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
	{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
	{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
	{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
	{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*3), -0.43750},
}

tank_level[3] = {
	{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
	{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
	{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
	{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
	{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*5), -0.43750},
}

tank_level[4] = {
	{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
	{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
	{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
	{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
	{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*7), -0.43750},
}

tank_level[5] = {
	{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
	{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
	{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
	{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
	{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*9), -0.43750},
}

tank_level[6] = {
	{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
	{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
	{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
	{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
	{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*11), -0.43750},
}

tank_level[7] = {
	{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
	{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
	{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
	{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
	{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*13), -0.43750},
}

tank_level[8] = {
	{0.5, 0.5, 0.5, -0.5, -0.5, 0.43750},
	{-0.43750, 0.5, 0.43750, -0.5, -0.5, -0.5},
	{0.5, -0.5, -0.5, -0.5, 0.5, -0.43750},
	{0.5, -0.5, -0.43750, 0.43750, 0.5, 0.43750},
	{-0.43750, -0.5, 0.43750, 0.43750, -0.43750+(0.0625*15), -0.43750},
}

-- register tank function
		
function register_tank(name, light_min)
	for level=1,8 do
		textures = "nope.avi"
		if name == "w" then
			textures = {"tank_water_level_8.png^tankgaugetop.png", "tank_water_level_8.png^tankgaugetop.png", "tank_water_level_"..level..".png^tankgauge.png"}
			light = 0
		elseif name == "l" then
			textures = {"tank_lava_level_8.png^tankgaugetop.png", "tank_lava_level_8.png^tankgaugetop.png", "tank_lava_level_"..level..".png^tankgauge.png"}
			light = light_min+level
		elseif name == "o" then
			textures = {"tank_oil_level_8.png^tankgaugetop.png", "tank_oil_level_8.png^tankgaugetop.png", "tank_oil_level_"..level..".png^tankgauge.png"}
			light = 0
		else
			textures = {"tankgaugetop.png", "tankgaugetop.png", "tankgauge.png"}
			light = 0
		end

		minetest.register_node("tanks:"..name.."_level_"..level, {
			description = name .." Tank Level "..level,
			drawtype = "nodebox",
			paramtype = "light",
			tiles = textures,
			node_box = {
				type = "fixed",
				fixed = tank_level[level],
			},
			light_source = light,
			groups = {impossible=1},
		})
	end
end

-- water tanks

register_tank("w", 1)

-- lava tanks

register_tank("l", 6)

-- oil tanks

register_tank("o", 1)

-- black magic here

minetest.register_on_punchnode(function(pos, node, puncher)
	if not puncher then return end
	
	tnodename = minetest.get_node(pos)
	bname = puncher:get_wielded_item():get_name()
	
	for level=1,8 do
		if tnodename.name == "tanks:level_0" then
			if bname == "bucket:oil" then
				puncher:set_wielded_item("bucket:bucket_empty 1")
				minetest.set_node(pos, {name="tanks:o_level_1"})
			end
		end
			
		if tnodename.name == "tanks:o_level_"..level then
			if bname == "bucket:bucket_empty" then
				puncher:set_wielded_item("bucket:oil 1")
				if tnodename.name == "tanks:o_level_1" then
					minetest.set_node(pos, {name="tanks:level_0"})
				else
					minetest.set_node(pos, {name="tanks:o_level_"..level-1})
				end
			end
			if bname == "bucket:oil" then
				if tnodename.name == "tanks:o_level_8" then
					--nothing
				else
					minetest.set_node(pos, {name="tanks:o_level_"..level+1})
					puncher:set_wielded_item("bucket:bucket_empty 1")
				end
			end
			--level = level + 1
		end
	end
	
	for level=1,8 do
		if tnodename.name == "tanks:level_0" then
			if bname == "bucket:bucket_water" then
				puncher:set_wielded_item("bucket:bucket_empty 1")
				minetest.set_node(pos, {name="tanks:w_level_1"})
			end
		end

		if tnodename.name == "tanks:w_level_"..level then
			if bname == "bucket:bucket_empty" then
				puncher:set_wielded_item("bucket:bucket_water 1")
				if tnodename.name == "tanks:w_level_1" then
					minetest.set_node(pos, {name="tanks:level_0"})
				else
					minetest.set_node(pos, {name="tanks:w_level_"..level-1})
				end
			end
		end
		
			if bname == "bucket:bucket_water" then
				if tnodename.name == "tanks:w_level_8" then
					--do nothing
				else
					minetest.set_node(pos, {name="tanks:w_level_"..level+1})
					puncher:set_wielded_item("bucket:bucket_empty 1")
				end
			end
		end
	end
	
	for level=1,8 do
		if tnodename.name == "tanks:level_0" then
			if bname == "bucket:bucket_lava" then
				puncher:set_wielded_item("bucket:bucket_empty 1")
				minetest.set_node(pos, {name="tanks:l_level_1"})
			end
		end
		
		if tnodename.name == "tanks:l_level_"..level then
			if bname == "bucket:bucket_empty" then
				puncher:set_wielded_item("bucket:bucket_lava 1")
				if tnodename.name == "tanks:l_level_1" then
					minetest.set_node(pos, {name="tanks:level_0"})
				else
					minetest.set_node(pos, {name="tanks:l_level_"..level-1})
				end
			end
			
			if bname == "bucket:bucket_lava" then
				if tnodename.name == "tanks:l_level_8" then
					--do nothing
				else
					minetest.set_node(pos, {name="tanks:l_level_"..level+1})
					puncher:set_wielded_item("bucket:bucket_empty 1")
				end
			end
		end
	end
	
end)
