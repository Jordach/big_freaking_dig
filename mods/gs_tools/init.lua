-- tool mods, by gsmanners
-- license: WTFPL

--------------------------------------------------

-- tool mods are Minetest modifications that add useful devices
--
-- the aim of this mod is to make tools that are simple, powerful, and fast
-- to be coherent, visually appealing, and as user friendly as possible

--------------------------------------------------
-- def

gs_tools = {}

local modpath = minetest.get_modpath("gs_tools")
gs_tools.modpath = modpath

--------------------------------------------------
-- modules

--dofile(modpath.."/crafts.lua")

dofile(modpath.."/axes.lua")
--dofile(modpath.."/ladders.lua")
dofile(modpath.."/sledges.lua")
--dofile(modpath.."/workbench.lua")

--------------------------------------------------
-- support

-- break a node and give the default drops

function gs_tools.drop_node(pos, digger, wielded, rank, group)
	tool_name = wielded:get_name()
	
	if tool_name:find("hammer", 1, true) then
	-- check if we can drop this node
		local node = minetest.get_node(pos)
		local def = ItemStack({name=node.name}):get_definition()

		if not def.diggable or (def.can_dig and not def.can_dig(pos,digger)) then return end
		if minetest.is_protected(pos, digger:get_player_name()) then return end

		local level = minetest.get_item_group(node.name, "level")
		if rank >= level then

			-- note that get_node_drops() is not future-safe
			-- though no alternative currently exists
			local drops = minetest.get_node_drops(node.name, wielded:get_name())
			minetest.handle_node_drops(pos, drops, digger)
			if minetest.get_item_group(minetest.get_node(pos).name, "cracky") > 0 then minetest.remove_node(pos) end
		end
	elseif tool_name:find("dirt_mover", 1, true) then
	-- check if we can drop this node
		local node = minetest.get_node(pos)
		local def = ItemStack({name=node.name}):get_definition()

		if not def.diggable or (def.can_dig and not def.can_dig(pos,digger)) then return end
		if minetest.is_protected(pos, digger:get_player_name()) then return end

		local level = minetest.get_item_group(node.name, "level")
		if rank >= level then

			-- note that get_node_drops() is not future-safe
			-- though no alternative currently exists
			local drops = minetest.get_node_drops(node.name, wielded:get_name())
			minetest.handle_node_drops(pos, drops, digger)
			if minetest.get_item_group(minetest.get_node(pos).name, "crumbly") > 0 then minetest.remove_node(pos) end
		end
	end
end

-- make a list of the 8 neighboring blocks around the pos a digger has targeted

function gs_tools.get_3x3s(pos, digger)
	local r = {}
	
	local a = 0		-- forward/backward
	if math.abs(pos.x - digger:getpos().x) > 
		math.abs(pos.z - digger:getpos().z) then a = 1 end -- sideways

	local b = 0		-- horizontal (default)
	local q = digger:get_look_pitch()
	if q < -0.78 or q > 0.78 then b = 1 end  -- vertical

	local c = 1
	for x=-1,1 do
	for y=-1,1 do
		if x ~= 0 or y ~= 0 then
			-- determine next perpendicular node
			local k = {x=0, y=0, z=0}
			if a > 0 then
				k.z = pos.z + x
				if b > 0 then
					k.x = pos.x + y
					k.y = pos.y
				else
					k.x = pos.x
					k.y = pos.y + y
				end
			else
				k.x = pos.x + x
				if b > 0 then
					k.y = pos.y
					k.z = pos.z + y
				else
					k.y = pos.y + y
					k.z = pos.z
				end
			end

			r[c] = {x=k.x, y=k.y, z=k.z}
			c = c + 1
		end
	end
	end

	return r
end

-- make a list of supported nodes that a chopped node has just dropped

function gs_tools.get_chopped(pos, group, digger)
	-- check if the 8 surrounding it on the xyz pos are snappy (eg, grass and leaves in a area)
	local p = pos
	local pos2 = p
	for x1=-1,1 do
		for z1=-1,1 do
			if minetest.get_item_group(minetest.get_node({x=p.x+x1, y=p.y, z=p.z+z1}).name, group) > 0 and minetest.get_item_group(minetest.get_node({x=p.x+x1, y=p.y, z=p.z+z1}).name, "leafdecay") > 0 then
				if minetest.is_protected(pos, digger:get_player_name()) then
					minetest.record_protection_violation(pos, digger:get_player_name())
					return
				end
				local node=minetest.env:get_node({x=p.x+x1, y=p.y, z=p.z+z1})
				if node.name == "air" or node.name == "ignore" then return end
				if node.name == "mapgen:lava_source" then return end
				if node.name == "mapgen:lava_flowing" then return end
				if node.name == "mapgen:water_source" then return end
				if node.name == "mapgen:water_flowing" then return end
				if node.name == "ores:oil_flowing" then return end
				if node.name == "ores:oil_source" then return end
				minetest.remove_node({x=p.x+x1, y=p.y, z=p.z+z1})
			end
		end
	end
end
