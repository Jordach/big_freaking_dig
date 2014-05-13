-- tool mods, by gsmanners
-- license: WTFPL

--------------------------------------------------

-- sledges: sledges are basically like pickaxes that do additional digging
-- (when you break a block, it instantly mines out the 8 blocks perpendicular
-- to the direction the tool is used)
--
-- there are 3 types of sledges: stone, bronze and obsidian
-- stone is cheap, but is slow, brittle and cannot break very hard blocks
-- bronze is extremely fast but wears out relatively quickly
-- obsidian is not as fast as bronze, but it is very durable

--------------------------------------------------

function gs_tools.after_sledge(pos, oldnode, digger)
	if digger then
		local wielded = digger:get_wielded_item()
		local rank = minetest.get_item_group(wielded:get_name(), "sledge")
		if rank > 0 then
			for _,k in ipairs(gs_tools.get_3x3s(pos, digger)) do
				gs_tools.drop_node(k, digger, wielded, rank)
			end
		end
	end
end

-- register_on_dignode is used here because after_use does not provide position
-- which is somewhat annoying

minetest.register_on_dignode(gs_tools.after_sledge)
