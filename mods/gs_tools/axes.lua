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
			gs_tools.get_chopped(pos, "snappy", digger)
		end
	end
end

-- register_on_dignode is used here because after_use does not provide position
-- which is somewhat annoying

minetest.register_on_dignode(gs_tools.after_axe)


