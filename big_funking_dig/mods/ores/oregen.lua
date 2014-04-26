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

-- coal, turns out, not very cold

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
	ore = "ores:coal_ore",
	wherein = "mapgen:stone",
	clust_scarcity = 12*12*12,
	clust_num_ores = 12,
	clust_size = 6,
	height_min = -31000,
	height_max = -16392,
	flags = "absheight",
})

-- iron, good for the blood oxygen supply, and tools

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

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ores:iron_ore",
	wherein        = "mapgen:stone",
	clust_scarcity = 7*7*7,
	clust_num_ores = 9,
	clust_size     = 3,
	height_min     = -4096,
	height_max     = -128,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ores:iron_ore",
	wherein        = "mapgen:stone",
	clust_scarcity = 7*7*7,
	clust_num_ores = 9,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -16392,
	flags          = "absheight",
})

-- copper, LAPD, FREEZE!

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ores:copper_ore",
	wherein        = "mapgen:stone",
	clust_scarcity = 12*12*12,
	clust_num_ores = 4,
	clust_size     = 3,
	height_min     = -4096,
	height_max     = -16,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ores:copper_ore",
	wherein        = "mapgen:stone",
	clust_scarcity = 12*12*12,
	clust_num_ores = 4,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -16392,
	flags          = "absheight",
})

-- tin, those speakers sound rather tinny, timmy.

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ores:tin_ore",
	wherein        = "mapgen:stone",
	clust_scarcity = 15*15*15,
	clust_num_ores = 5,
	clust_size     = 4,
	height_min     = -4096,
	height_max     = -32,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ores:tin_ore",
	wherein        = "mapgen:stone",
	clust_scarcity = 15*15*15,
	clust_num_ores = 5,
	clust_size     = 4,
	height_min     = -4096,
	height_max     = -32,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ores:tin_ore",
	wherein        = "mapgen:stone",
	clust_scarcity = 15*15*15,
	clust_num_ores = 5,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = -16392,
	flags          = "absheight",
})

-- lead, perhaps related to heavy metal bands?

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ores:lead_ore",
	wherein        = "mapgen:stone",
	clust_scarcity = 9*9*9,
	clust_num_ores = 10,
	clust_size     = 3,
	height_min     = -4096,
	height_max     = -256,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ores:lead_ore",
	wherein        = "mapgen:stone",
	clust_scarcity = 13*13*13,
	clust_num_ores = 12,
	clust_size     = 4,
	height_min     = -4096,
	height_max     = -256,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ores:lead_ore",
	wherein        = "mapgen:stone",
	clust_scarcity = 9*9*9,
	clust_num_ores = 10,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -16392,
	flags          = "absheight",
})

-- feed me with a silver spoon ;)

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ores:silver_ore",
	wherein        = "mapgen:stone",
	clust_scarcity = 10*10*10,
	clust_num_ores = 15,
	clust_size     = 6,
	height_min     = -4096,
	height_max     = -256,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ores:silver_ore",
	wherein        = "mapgen:stone",
	clust_scarcity = 9*9*9,
	clust_num_ores = 19,
	clust_size     = 9,
	height_min     = -31000,
	height_max     = -16392,
	flags          = "absheight",
})

--diamonds, rare, but eyes don't twinkle like diamonds.

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ores:diamond_ore",
	wherein        = "mapgen:stone",
	clust_scarcity = 17*17*17,
	clust_num_ores = 4,
	clust_size     = 3,
	height_min     = -1024,
	height_max     = -256,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ores:diamond_ore",
	wherein        = "mapgen:stone",
	clust_scarcity = 15*15*15,
	clust_num_ores = 4,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -256,
	flags          = "absheight",
})

-- gold, the football players choice of scoring: GOALLLDDDD!

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ores:gold_ore",
	wherein        = "mapgen:stone",
	clust_scarcity = 15*15*15,
	clust_num_ores = 3,
	clust_size     = 2,
	height_min     = -255,
	height_max     = -64,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ores:gold_ore",
	wherein        = "mapgen:stone",
	clust_scarcity = 13*13*13,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -4096,
	height_max     = -512,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ores:gold_ore",
	wherein        = "mapgen:stone",
	clust_scarcity = 13*13*13,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -16392,
	flags          = "absheight",
})

-- MESE, must be easy MESEY getting this stuff

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ores:mese_ore",
	wherein        = "mapgen:stone",
	clust_scarcity = 18*18*18,
	clust_num_ores = 3,
	clust_size     = 2,
	height_min     = -255,
	height_max     = -64,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ores:mese_ore",
	wherein        = "mapgen:stone",
	clust_scarcity = 14*14*14,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -16392,
	height_max     = -256,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ores:mese",
	wherein        = "mapgen:stone",
	clust_scarcity = 36*36*36,
	clust_num_ores = 3,
	clust_size     = 2,
	height_min     = -31000,
	height_max     = -4096,
	flags          = "absheight",
})

-- black gold, otherwise known as oil

