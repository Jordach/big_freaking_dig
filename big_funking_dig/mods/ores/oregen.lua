--oregen.lua

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
	
minetest.register_ore({
	ore_type = "scatter",
	ore = "ores:coal_ore",
	wherein = "mapgen:stone",
	clust_scarcity = 4*4*4,
	clusm_num_ores = 8,
	clust_size = 3,
	height_min = -4096,
	height_max = 220,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "ores:coal_ore",
	wherein = "mapgen:stone",
	clust_scarcity = 12*12*12,
	clust_num_ores = 12,
	clust_size = 6,
	height_min = -4096,
	height_max = 220,
	flags = "absheight",
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "ores:iron_ore",
	wherein = "mapgen:stone",
	clust_scarcity = 7*7*7,
	clust_num_ores = 5,
	clust_size = 3,
	height_min = -4096,
	height_max = -64,
	flags = "absheight",
})