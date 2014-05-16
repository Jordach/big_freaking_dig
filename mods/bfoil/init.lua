-- Big F***ing Oil mod by paramat for Jordach

-- Parameters

local YMAXU = 16
local YMINU = -4096
local YMAXL = -16392
local YMINL = -33000
local RAD = 20 -- Average radius of oil sphere
local NAMP = 0.33 -- Oily noise amplitude, controls reserve shape irregularity
local TSTONE = -0.2 -- Oily stone threshold, controls width of stone shell
local CHA = 1 / 5 ^ 3 -- Chance of reserve per chunk in upper layer
			-- 1 / n ^ 3 where n is average separation in chunks

-- 3D noise for reserve shape noise

local np_oil = {
	offset = 0,
	scale = 1,
	spread = {x=16, y=16, z=16},
	seed = 5900033,
	octaves = 2,
	persist = 0.5
}

-- Stuff

bfoil = {}

-- On generated function

minetest.register_on_generated(function(minp, maxp, seed)
	local y0 = minp.y
	local y1 = maxp.y
	if minp.y < YMINL or maxp.y > YMAXU
	or (minp.y < YMINU and maxp.y > YMAXL) then
		return
	end
	
	if (minp.y >= YMINU and math.random() > CHA)
	or (maxp.y <= YMAXL and math.random() > CHA * 3) then -- 3 x more common in lower layer
		return
	end
	
	local t1 = os.clock()
	local x0 = minp.x
	local x1 = maxp.x
	local z0 = minp.z
	local z1 = maxp.z
	print ("[bfoil] chunk ("..minp.x.." "..minp.y.." "..minp.z..")")
	local ccenx = math.floor((x0 + x1) / 2)
	local cceny = math.floor((y0 + y1) / 2)
	local ccenz = math.floor((z0 + z1) / 2)
		
	local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
	local area = VoxelArea:new{MinEdge=emin, MaxEdge=emax}
	local data = vm:get_data()
	
	local c_oil = minetest.get_content_id("ores:oil_source")
	local c_stone = minetest.get_content_id("mapgen:stone")
	
	local sidelen = x1 - x0 + 1
	local chulens = {x=sidelen, y=sidelen, z=sidelen}
	local minposxyz = {x=x0, y=y0, z=z0}
	
	local nvals_oil = minetest.get_perlin_map(np_oil, chulens):get3dMap_flat(minposxyz)
	
	local nixyz = 1
	for z = z0, z1 do
	for y = y0, y1 do
		local vi = area:index(x0, y, z)
		for x = x0, x1 do
			local n_oil = nvals_oil[nixyz]
			local nodrad = ((x - ccenx) ^ 2 + (y - cceny) ^ 2 + (z - ccenz) ^ 2) ^ 0.5
			local oily = (RAD - nodrad) / RAD + n_oil * NAMP -- oily = 1 at centre, = 0 at edge
			if oily >= 0 then
				data[vi] = c_oil
			elseif oily >= TSTONE then
				data[vi] = c_stone
			end
			nixyz = nixyz + 1
			vi = vi + 1
		end
	end
	end
	
	vm:set_data(data)
	vm:set_lighting({day=0, night=0})
	vm:calc_lighting()
	vm:write_to_map(data)
	local chugent = math.ceil((os.clock() - t1) * 1000)
	print ("[bfoil] "..chugent.." ms")
end)