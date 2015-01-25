
--= Carrot (Original textures from PixelBox texture pack)
-- https://forum.minetest.net/viewtopic.php?id=4990

minetest.register_craftitem("farming:carrot", {
	description = "Carrot",
	inventory_image = "farming_carrot.png",
	on_place = function(itemstack, placer, pointed_thing)
		return farming.place_seed(itemstack, placer, pointed_thing, "farming:carrot_1")
	end,
	on_use = minetest.item_eat(4),
})
-- Define Carrot growth stages

for i=1,8 do
	local drop = { items = { {items = {'farming:carrot'},rarity=}}
	minetest.register_node("farming:carrot_"..i, {
		drawtype = "plantlike",
		tiles = {"farming_wheat_"..i..".png"},
		paramtype = "light",
		waving = 1,
		walkable = false,
		buildable_to = true,
		is_ground_content = true,
		drop = drop,
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
		},
		drop = drop,
		groups = {snappy=3,flammable=2,plant=1,carrot=i,not_in_creative_inventory=1,attached_node=1},
		sounds = default.node_sound_leaves_defaults(),
	})
end

minetest.register_abm({
	nodenames = {"group:carrot"},
	neighbors = {"group:soil"},
	interval = 90,
	chance = 2,
	action = function(pos, node)
		-- return if already full grown
		if minetest.get_item_group(node.name, "carrot") == 8 then
			return
		end
		
		-- check if on wet soil
		pos.y = pos.y-1
		local n = minetest.get_node(pos)
		if minetest.get_item_group(n.name, "soil") < 3 then
			return
		end
		pos.y = pos.y+1
		
		-- check light
		if not minetest.get_node_light(pos) then
			return
		end
		if minetest.get_node_light(pos) < 10 then
			return
		end
		
		-- grow
		local height = minetest.get_item_group(node.name, "carrot") + 1
		minetest.set_node(pos, {name="farming:carrot_"..height})
	end
})