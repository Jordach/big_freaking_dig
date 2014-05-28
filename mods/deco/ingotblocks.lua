--ingotblocks.lua
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

function IngotBlock(name, crackylevel)
	local lowercase_name = string.lower(name)
	minetest.register_node("deco:"..lowercase_name.."_block", {
		description = name .. " Block",
		tiles = {"deco_"..lowercase_name.."_block.png"},
		sounds = default.node_sound_stone_defaults(),
		groups = {cracky=crackylevel},
	})
end

IngotBlock("Aluminium", 2)
IngotBlock("Bronze", 2)
IngotBlock("Cobalt", 1)
IngotBlock("Copper", 1)
IngotBlock("Diamond", 1)
IngotBlock("Gold", 2)
IngotBlock("Iridium", 1)
IngotBlock("Lead", 1)
IngotBlock("Meteoric", 1)
IngotBlock("Osmium", 1)
IngotBlock("Platinum", 1)
IngotBlock("Silver", 1)
IngotBlock("Steel", 2)
IngotBlock("Tin", 2)