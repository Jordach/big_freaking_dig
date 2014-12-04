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
	elseif player:get_player_name() == "Jordach" then
		default.player_set_model(player, "character_jordach.b3d")
		player:set_local_animation({x=0, y=79}, {x=168, y=187}, {x=189, y=198}, {x=200, y=219}, 30)
	elseif player:get_player_name() == "Hoodedice" then
		default.player_set_model(player, "characterfemale.b3d")
		player:set_local_animation({x=0, y=79}, {x=168, y=187}, {x=189, y=198}, {x=200, y=219}, 30)
	else
		local filename = minetest.get_modpath("player_textures").."/textures/player_"..player:get_player_name()
		
		local f = io.open(filename..".png")
		
		if read_image_size(player) == 1 then
			if f == nil then
				default.player_set_model(player, "character_18.b3d")
				player:set_local_animation({x=0, y=79}, {x=168, y=187}, {x=189, y=198}, {x=200, y=219}, 30)
				minetest.chat_send_player(player:get_player_name(), "Model automatically set to 1.8 skin compatible.")
				changed = true
				if changed then
					local output = io.open(gender_file, "w")
					output:write("2".." "..player:get_player_name().."\n")
				end
				changed = false
			end
		else
			default.player_set_model(player, "character.b3d")
			player:set_local_animation({x=0, y=79}, {x=168, y=187}, {x=189, y=198}, {x=200, y=219}, 30)
			minetest.chat_send_player(player:get_player_name(), "Please set your gender via /player_male or /player_female, thank you. You can also ignore this message and use the ")
			minetest.chat_send_player(player:get_player_name(), "default male model. This message will be shown again when you rejoin.")
		end
	end
end)

local PNG_HDR = string.char(0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A)

function read_image_size(player2)
	local filename = minetest.get_modpath("player_textures").."/textures/player_"..player2:get_player_name()
	local filenameb = minetest.get_modpath("default").."/models/character"
	local f = io.open(filename..".png")
	if f then
		--f:close()
	else
		player2:set_properties({textures = {filenameb..".png"},})
		return 0
	end
	--f = 
	f:seek("set", 0x0)
	local hdr = f:read(8)
	if hdr ~= PNG_HDR then
		f:close()
		return
	end
	f:seek("set", 0x13)
	local ws = f:read(1)
	f:seek("set", 0x17)
	local hs = f:read(1)
	f:close()
	local ratio = ws:byte() / hs:byte()
	return ratio
end