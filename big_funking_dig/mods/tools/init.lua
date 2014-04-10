--init.lua
--tools mod for BFD.

dofile(minetest.get_modpath("tools").."/crafts.lua")

print 'tools need to be programmed in at some point, must be done.'

--basic wooden toools, upgrades can only be applied to iron and beyond -- stone cannot have them either.

minetest.register_tool("tools:pick_wood", {
	description = "Wooden Pickaxe",
	inventory_image = "tool_woodpick.png",
	tool_capabilities = {
		full_punch_interval = 2.3,
		max_drop_level = 0,
		groupcaps={
			cracky = {times={[3]=6}, uses=1, maxlevel=1},
		},
		damage_groups = {fleshy=1},
	},
})

minetest.register_tool("tools:shovel_wood", {
	description = "Wooden Shovel",
	inventory_image = "tool_woodshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 2.3,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[1]=12.4, [2]=6.2, [3]=3.1}, uses=12, maxlevel=1},
		},
		damage_groups = {fleshy=1},
	},
})
			