--custom_tools.lua
	
function newtool(tool_name, tool_rod, tool_upgrade_1, tool_upgrade_2, tool_head, groups, desc, punch_time, damage)
	minetest.register_tool("tools:"..tool_name, {
		description = desc,
		inventory_image = {"tool_"..tool_rod..".png^tool_"..tool_head.."_head.png^".."tool_"..tool_upgrade_1.."_1.png^tool_"..tool_upgrade_2.."_2.png"}
		tool_capabilities = {
			max_drop_level = 0,
			full_punch_interval = punch_time,
			groupcaps = {
				groups,
			},
			damage_groups = damage,
		}
	})
end

