--custom_tools.lua

 -- This file is part of BFD.

    -- BFD is free software: you can redistribute it and/or modify
    -- it under the terms of the GNU General Public License as published by
    -- the Free Software Foundation, either version 3 of the License, or
    -- (at your option) any later version.

    -- BFD is distributed in the hope that it will be useful,
    -- but WITHOUT ANY WARRANTY; without even the implied warranty of
    -- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    -- GNU General Public License for more details.
	
	-- You may contact Jordach via the Minetest Forums PM service for help
	-- or ask on the forum topic for which this game is set on.

    -- You should have received a copy of the GNU General Public License
    -- along with BFD.  If not, see <http://www.gnu.org/licenses/>.
	
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

