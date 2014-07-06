local default = "inventory.png"

local function getFormSize(formspec)
	
end

local function setFormspec(player, formspec)
	local size = getFormSize(formspec)
	player:set_inventory_formspec(formspec.."background[-0.5,-0.65;9,8.75;"..default.."]")
end

minetest.register_on_joinplayer(function(player)
	minetest.after(0.5, function() end)
	setFormspec(player, player:get_inventory_formspec())
end)

minetest.register_on_player_receive_fields(function(player, formname, fields)
	minetest.after(0.5, function() end)
	setFormspec(player, player:get_inventory_formspec())
end)