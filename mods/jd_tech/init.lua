--init.lua
-- jd_tech
-- for BFD

minetest.register_tool("jd_tech:gravity_flip_off", {
	description = "Flip Gravity to up",
	inventory_image = "tool_j_pick.png",
	
	on_place = function(itemstack, user, pointed_thing)
		if user:is_player() == nil then
			return nil
		end
		local pname = user:get_player_name()
		
		if itemstack:get_wear() < 65528 then
		
			itemstack:add_wear(65535/8-1)
		
			user:set_physics_override({
				speed = 1.0,
				jump = -1.0,
				gravity = -1.0,
				sneak = true,
				sneak_glitch = true,
			})
		
			local item = itemstack:to_table()
			item["name"] = "jd_tech:gravity_flip_on"
			
			itemstack:replace(item)
		
			minetest.chat_send_player(pname, "Inverting gravity now.")
		
			return itemstack
		
		else
			minetest.chat_send_player(pname, "No charge remaining. Refuel me using Hadronium.")
			return nil
		end
	end,
})

minetest.register_tool("jd_tech:gravity_flip_on", {
	description = "Flip Gravity to off",
	inventory_image = "tool_j_sword.png",
	
	on_place = function(itemstack, user, pointed_thing)
		if user:is_player() == nil then
			return nil
		end
		local pname = user:get_player_name()
		if itemstack:get_wear() < 65528 then
		
			itemstack:add_wear(65535/8-1)
		
			user:set_physics_override({
				speed = 1.0,
				jump = 1.0,
				gravity = 1.0,
				sneak = true,
				sneak_glitch = true,
			})
			
			local item = itemstack:to_table()
			item["name"] = "jd_tech:gravity_flip_off"
		
			itemstack:replace(item)
		
			minetest.chat_send_player(pname, "Inverting gravity now.")
		
			return itemstack
		else
			minetest.chat_send_player(pname, "No charge remaining. Refuel me using Hadronium.")
			return nil
		end
	end,
})