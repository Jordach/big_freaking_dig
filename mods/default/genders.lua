local gender_file = minetest.get_worldpath() .. "/player_genders"
local genders = {}

local function loadgenders()
	local input = io.open(gender_file, "r")
	if input then
		repeat
			local gender_choice = input:read("*n")
			if gender_choice == nil then
				break
			end
			local name = input:read("*l")
			genders[name:sub(2)] = gender_choice
		until input:read(0) == nil
		io.close(input)
	else
		genders = {}
	end
end

loadgenders()

local changed = false

minetest.register_chatcommand("player_male", {
	description = "Sets your player model to the default male one",
	func = function(name)
		local player = minetest.env:get_player_by_name(name)
		if player == nil then
			return false
		end
		if true then
			default.player_set_model(player, "character.b3d")
			local filename = minetest.get_modpath("player_textures").."/textures/player_"..player:get_player_name()
			local f = io.open(filename..".png")
			if f then
				f:close()
				player:set_properties({
				textures = {"player_"..player:get_player_name()..".png"},
				})
			end
			player:set_local_animation({x=0, y=79}, {x=168, y=187}, {x=189, y=198}, {x=200, y=219}, 30)
			minetest.chat_send_player(name, "Set player model to male!")
			changed = true
			if changed then
				local output = io.open(gender_file, "w")
				output:write("1".." "..player:get_player_name().."\n")
				output:close()
			end
			changed = false
		end
	end,
})

minetest.register_chatcommand("player_cloth", {
	description = "Sets your player model to the Minecraft 1.8 one",
	func = function(name)
		local player = minetest.env:get_player_by_name(name)
		if player == nil then
			return false
		end
		if true then
			default.player_set_model(player, "character_18.b3d")
			local filename = minetest.get_modpath("player_textures").."/textures/player_"..player:get_player_name()
			local f = io.open(filename..".png")
			if f then
				f:close()
				player:set_properties({
				textures = {"player_"..player:get_player_name()..".png"},
				})
			end
			player:set_local_animation({x=0, y=79}, {x=168, y=187}, {x=189, y=198}, {x=200, y=219}, 30)
			minetest.chat_send_player(name, "Set player model to 1.8 compat!")
			changed = true
			if changed then
				local output = io.open(gender_file, "w")
				output:write("2".." "..player:get_player_name().."\n")
				output:close()
			end
			changed = false
		end
	end,
})

minetest.register_chatcommand("player_female", {
	description = "Sets your player model to the female one",
	func = function(name)
		local player = minetest.env:get_player_by_name(name)
		if player == nil then
			return false
		end
		if true then
			default.player_set_model(player, "characterfemale.b3d")
			local filename = minetest.get_modpath("player_textures").."/textures/player_"..player:get_player_name()
			local f = io.open(filename..".png")
			if f then
				f:close()
				player:set_properties({
				textures = {"player_"..player:get_player_name()..".png"},
				})
			end
			player:set_local_animation({x=0, y=79}, {x=168, y=187}, {x=189, y=198}, {x=200, y=219}, 30)
			minetest.chat_send_player(name, "Set player model to female!")
			changed = true
			if changed then
				local output = io.open(gender_file, "w")
				output:write("0".." "..player:get_player_name().."\n")
				output:close()
			end
			changed = false
		end
	end,
})

minetest.register_on_joinplayer(function(player)
	loadgenders()
	default.player_attached[player:get_player_name()] = false
	if genders[player:get_player_name()] == 1 then
		default.player_set_model(player, "character.b3d")
		player:set_local_animation({x=0, y=79}, {x=168, y=187}, {x=189, y=198}, {x=200, y=219}, 30)
	elseif genders[player:get_player_name()] == 0 then
		default.player_set_model(player, "characterfemale.b3d")
		player:set_local_animation({x=0, y=79}, {x=168, y=187}, {x=189, y=198}, {x=200, y=219}, 30)
	elseif genders[player:get_player_name()] == 2 then
		default.player_set_model(player, "character_18.b3d")
		player:set_local_animation({x=0, y=79}, {x=168, y=187}, {x=189, y=198}, {x=200, y=219}, 30)
	elseif player:get_player_name() == "Hoodedice" then
		default.player_set_model(player, "characterfemale.b3d")
		player:set_local_animation({x=0, y=79}, {x=168, y=187}, {x=189, y=198}, {x=200, y=219}, 30)
	elseif player:get_player_name() == "singleplayer" then
		default.player_set_model(player, "character_18.b3d")
		player:set_local_animation({x=0, y=79}, {x=168, y=187}, {x=189, y=198}, {x=200, y=219}, 30)
	else
		local filename = minetest.get_modpath("player_textures").."/textures/player_"..player:get_player_name()
		
		local f = io.open(filename..".png")
		
			default.player_set_model(player, "character.b3d")
			player:set_local_animation({x=0, y=79}, {x=168, y=187}, {x=189, y=198}, {x=200, y=219}, 30)
			minetest.chat_send_player(player:get_player_name(), "Please set your gender via /player_male or /player_female, thank you. You can also ignore this message and use the ")
			minetest.chat_send_player(player:get_player_name(), "default male model. This message will be shown again when you rejoin.")
	end
end)