-- tool mods, by gsmanners
-- license: WTFPL

--------------------------------------------------

-- axes: lumber axes are designed to take down trees
-- the lumber axe can drop a tree with just a few hits

function gs_tools.after_axe(pos, oldnode, digger)
	if digger then
		local wielded = digger:get_wielded_item()
		local rank = minetest.get_item_group(wielded:get_name(), "lumberaxe")
		if rank > 0 then
			for _,k in ipairs(gs_tools.get_chopped(pos, "tree")) do
				gs_tools.drop_node(k, digger, wielded, rank)
			end
		end
	end
end

-- register_on_dignode is used here because after_use does not provide position
-- which is somewhat annoying

minetest.register_on_dignode(gs_tools.after_axe)

minetest.register_tool("gs_tools:lumberaxe", {
	description = "Lumber Axe",
	groups = {lumberaxe=1},
	inventory_image = "gs_lumberaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.5,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=4.00, [2]=3.00, [3]=2.00}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_craft({
	output = "gs_tools:lumberaxe",
	recipe = {
		{"default:steel_ingot", "default:steel_ingot"},
		{"default:steel_ingot", "default:steel_ingot"},
		{"", "default:axe_steel"},
	}
})
