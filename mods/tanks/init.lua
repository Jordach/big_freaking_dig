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
	tnodepos = pos
	
	--store the highest tank point to be drained
	highpoint = 1
	
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
				
				if tnodename.name == "tanks:o_level_1" then
					minetest.set_node(pos, {name="tanks:level_0"})
					puncher:set_wielded_item("bucket:oil 1")
				else
					nodeset = "false"
					for nodeup=1,16 do
						tnodepos.y = tnodepos.y + 1
						abovenode = minetest.get_node(tnodepos)
						--print (abovenode.name)
						if abovenode.name == "tanks:o_level_8" or abovenode.name == "tanks:o_level_1" or abovenode.name == "tanks:o_level_2" or abovenode.name == "tanks:o_level_3" or abovenode.name == "tanks:o_level_4" or abovenode.name == "tanks:o_level_5" or abovenode.name == "tanks:o_level_6" or abovenode.name == "tanks:o_level_7" then
							--do nothing
						else
							highpoint = nodeup
							print ('high point found at '..highpoint)
							tnodepos.y = tnodepos.y-nodeup --reset tnodepos
							break
						end
					end
						
					abovenode = minetest.get_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z})
					
					nodeset = "false"
					
					if abovenode.name == "tanks:o_level_1" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:level_0"})
						puncher:set_wielded_item("bucket:oil 1")
						nodeset = "true"
					end
					
					if abovenode.name == "tanks:o_level_2" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:o_level_1"})
						puncher:set_wielded_item("bucket:oil 1")
						nodeset = "true"
					end
					
					if abovenode.name == "tanks:o_level_3" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:o_level_2"})
						puncher:set_wielded_item("bucket:oil 1")
						nodeset = "true"
					end
					
					if abovenode.name == "tanks:o_level_4" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:o_level_3"})
						puncher:set_wielded_item("bucket:oil 1")
						nodeset = "true"
					end
					
					if abovenode.name == "tanks:o_level_5" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:o_level_4"})
						puncher:set_wielded_item("bucket:oil 1")
						nodeset = "true"
					end
					
					if abovenode.name == "tanks:o_level_6" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:o_level_5"})
						puncher:set_wielded_item("bucket:oil 1")
						nodeset = "true"
					end
					
					if abovenode.name == "tanks:o_level_7" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:o_level_6"})
						puncher:set_wielded_item("bucket:oil 1")
						nodeset = "true"
					end
					
					if abovenode.name == "tanks:o_level_8" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:o_level_7"})
						puncher:set_wielded_item("bucket:oil 1")
						nodeset = "true"
					end

					abovenode = minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z})
					
					if abovenode.name:find("tanks:level_0", 1, true) ~= nil and nodeset == "false" then
						minetest.set_node(pos, {name="tanks:o_level_"..level-1})
						puncher:set_wielded_item("bucket:oil 1")
						nodeset = "true"
					end
				end
			end
			if bname == "bucket:oil" then
				if tnodename.name == "tanks:o_level_8" then
					nodeset = "false"
					for nodeup=1,16 do
						tnodepos.y = tnodepos.y + 1
						abovenode = minetest.get_node(tnodepos)
						
						if abovenode.name == "tanks:level_0" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:o_level_1"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							nodeset = "true"
						end
						
						if abovenode.name == "tanks:o_level_1" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:o_level_2"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							nodeset = "true"
						end
						
						if abovenode.name == "tanks:o_level_2" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:o_level_3"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							nodeset = "true"
						end
						
						if abovenode.name == "tanks:o_level_3" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:o_level_4"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							nodeset = "true"
						end
						
						if abovenode.name == "tanks:o_level_4" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:o_level_5"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							nodeset = "true"
						end
						
						if abovenode.name == "tanks:o_level_5" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:o_level_6"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							nodeset = "true"
						end
						
						if abovenode.name == "tanks:o_level_6" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:o_level_7"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							nodeset = "true"
						end
						
						if abovenode.name == "tanks:o_level_7" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:o_level_8"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							--return
						end
						
						if abovenode.name:find("level_0", 1, true) == true then
							print 'broke loop, tank not found'
							break
						end
					end
				else
					minetest.set_node(pos, {name="tanks:o_level_"..level+1})
					puncher:set_wielded_item("bucket:bucket_empty 1")
				end
			end
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
				
				if tnodename.name == "tanks:w_level_1" then
					minetest.set_node(pos, {name="tanks:level_0"})
					puncher:set_wielded_item("bucket:bucket_water 1")
				else
					nodeset = "false"
					for nodeup=1,16 do
						tnodepos.y = tnodepos.y + 1
						abovenode = minetest.get_node(tnodepos)
						--print (abovenode.name)
						if abovenode.name == "tanks:w_level_8" or abovenode.name == "tanks:w_level_1" or abovenode.name == "tanks:w_level_2" or abovenode.name == "tanks:w_level_3" or abovenode.name == "tanks:w_level_4" or abovenode.name == "tanks:w_level_5" or abovenode.name == "tanks:w_level_6" or abovenode.name == "tanks:w_level_7" then
							--do nothing
						else
							highpoint = nodeup
							print ('high point found at '..highpoint)
							tnodepos.y = tnodepos.y-nodeup --reset tnodepos
							break
						end
					end
						
					abovenode = minetest.get_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z})
					
					nodeset = "false"
					
					if abovenode.name == "tanks:w_level_1" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:level_0"})
						puncher:set_wielded_item("bucket:bucket_water 1")
						nodeset = "true"
					end
					
					if abovenode.name == "tanks:w_level_2" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:w_level_1"})
						puncher:set_wielded_item("bucket:bucket_water 1")
						nodeset = "true"
					end
					
					if abovenode.name == "tanks:w_level_3" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:w_level_2"})
						puncher:set_wielded_item("bucket:bucket_water 1")
						nodeset = "true"
					end
					
					if abovenode.name == "tanks:w_level_4" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:w_level_3"})
						puncher:set_wielded_item("bucket:bucket_water 1")
						nodeset = "true"
					end
					
					if abovenode.name == "tanks:w_level_5" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:w_level_4"})
						puncher:set_wielded_item("bucket:bucket_water 1")
						nodeset = "true"
					end
					
					if abovenode.name == "tanks:w_level_6" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:w_level_5"})
						puncher:set_wielded_item("bucket:bucket_water 1")
						nodeset = "true"
					end
					
					if abovenode.name == "tanks:w_level_7" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:w_level_6"})
						puncher:set_wielded_item("bucket:bucket_water 1")
						nodeset = "true"
					end
					
					if abovenode.name == "tanks:w_level_8" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:w_level_7"})
						puncher:set_wielded_item("bucket:bucket_water 1")
						nodeset = "true"
					end

					abovenode = minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z})
					
					if abovenode.name:find("tanks:level_0", 1, true) ~= nil and nodeset == "false" then
						minetest.set_node(pos, {name="tanks:w_level_"..level-1})
						puncher:set_wielded_item("bucket:bucket_water 1")
						nodeset = "true"
					end
				end
			end
			if bname == "bucket:bucket_water" then
				if tnodename.name == "tanks:w_level_8" then
					nodeset = "false"
					for nodeup=1,16 do
						tnodepos.y = tnodepos.y + 1
						abovenode = minetest.get_node(tnodepos)
						
						if abovenode.name == "tanks:level_0" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:w_level_1"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							nodeset = "true"
						end
						
						if abovenode.name == "tanks:w_level_1" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:w_level_2"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							nodeset = "true"
						end
						
						if abovenode.name == "tanks:w_level_2" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:w_level_3"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							nodeset = "true"
						end
						
						if abovenode.name == "tanks:w_level_3" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:w_level_4"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							nodeset = "true"
						end
						
						if abovenode.name == "tanks:w_level_4" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:w_level_5"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							nodeset = "true"
						end
						
						if abovenode.name == "tanks:w_level_5" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:w_level_6"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							nodeset = "true"
						end
						
						if abovenode.name == "tanks:w_level_6" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:w_level_7"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							nodeset = "true"
						end
						
						if abovenode.name == "tanks:w_level_7" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:w_level_8"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							--return
						end
						
						if abovenode.name:find("level_0", 1, true) == true then
							print 'broke loop, tank not found'
							break
						end
					end
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
				
				if tnodename.name == "tanks:l_level_1" then
					minetest.set_node(pos, {name="tanks:level_0"})
					puncher:set_wielded_item("bucket:bucket_lava 1")
				else
					nodeset = "false"
					for nodeup=1,16 do
						tnodepos.y = tnodepos.y + 1
						abovenode = minetest.get_node(tnodepos)
						--print (abovenode.name)
						if abovenode.name == "tanks:l_level_8" or abovenode.name == "tanks:l_level_1" or abovenode.name == "tanks:l_level_2" or abovenode.name == "tanks:l_level_3" or abovenode.name == "tanks:l_level_4" or abovenode.name == "tanks:l_level_5" or abovenode.name == "tanks:l_level_6" or abovenode.name == "tanks:l_level_7" then
							--do nothing
						else
							highpoint = nodeup
							print ('high point found at '..highpoint)
							tnodepos.y = tnodepos.y-nodeup --reset tnodepos
							break
						end
					end
						
					abovenode = minetest.get_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z})
					
					nodeset = "false"
					
					if abovenode.name == "tanks:l_level_1" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:level_0"})
						puncher:set_wielded_item("bucket:bucket_lava 1")
						nodeset = "true"
					end
					
					if abovenode.name == "tanks:l_level_2" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:l_level_1"})
						puncher:set_wielded_item("bucket:bucket_lava 1")
						nodeset = "true"
					end
					
					if abovenode.name == "tanks:l_level_3" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:l_level_2"})
						puncher:set_wielded_item("bucket:bucket_lava 1")
						nodeset = "true"
					end
					
					if abovenode.name == "tanks:l_level_4" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:l_level_3"})
						puncher:set_wielded_item("bucket:bucket_lava 1")
						nodeset = "true"
					end
					
					if abovenode.name == "tanks:l_level_5" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:l_level_4"})
						puncher:set_wielded_item("bucket:bucket_lava 1")
						nodeset = "true"
					end
					
					if abovenode.name == "tanks:l_level_6" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:l_level_5"})
						puncher:set_wielded_item("bucket:bucket_lava 1")
						nodeset = "true"
					end
					
					if abovenode.name == "tanks:l_level_7" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:l_level_6"})
						puncher:set_wielded_item("bucket:bucket_lava 1")
						nodeset = "true"
					end
					
					if abovenode.name == "tanks:l_level_8" and nodeset == "false" then
						minetest.set_node({x=pos.x, y=pos.y+highpoint-1, z=pos.z}, {name="tanks:l_level_7"})
						puncher:set_wielded_item("bucket:bucket_lava 1")
						nodeset = "true"
					end

					abovenode = minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z})
					
					if abovenode.name:find("tanks:level_0", 1, true) ~= nil and nodeset == "false" then
						minetest.set_node(pos, {name="tanks:l_level_"..level-1})
						puncher:set_wielded_item("bucket:bucket_lava 1")
						nodeset = "true"
					end
				end
			end
			if bname == "bucket:bucket_lava" then
				if tnodename.name == "tanks:l_level_8" then
					nodeset = "false"
					for nodeup=1,16 do
						tnodepos.y = tnodepos.y + 1
						abovenode = minetest.get_node(tnodepos)
						
						if abovenode.name == "tanks:level_0" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:l_level_1"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							nodeset = "true"
						end
						
						if abovenode.name == "tanks:l_level_1" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:l_level_2"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							nodeset = "true"
						end
						
						if abovenode.name == "tanks:l_level_2" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:l_level_3"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							nodeset = "true"
						end
						
						if abovenode.name == "tanks:l_level_3" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:l_level_4"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							nodeset = "true"
						end
						
						if abovenode.name == "tanks:l_level_4" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:l_level_5"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							nodeset = "true"
						end
						
						if abovenode.name == "tanks:l_level_5" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:l_level_6"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							nodeset = "true"
						end
						
						if abovenode.name == "tanks:l_level_6" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:l_level_7"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							nodeset = "true"
						end
						
						if abovenode.name == "tanks:l_level_7" and nodeset == "false" then
							minetest.set_node(tnodepos, {name="tanks:l_level_8"})
							puncher:set_wielded_item("bucket:bucket_empty 1")
							--return
						end
						
						if abovenode.name:find("level_0", 1, true) == true then
							print 'broke loop, tank not found'
							break
						end
					end
				else
					minetest.set_node(pos, {name="tanks:l_level_"..level+1})
					puncher:set_wielded_item("bucket:bucket_empty 1")
				end
			end
		end
	end
end)
