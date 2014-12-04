-- init.lua for statues mod within BFD.

-- special variable used to concatenate 

co = "player_"

-- create a table to store skins texture names and player names, requires -two tables- one table
-- i worked out an optimisation

male_statue_names = {"Adarqet", 
					 "Ade96", 
					 "aracnus", 
					 "AspireMint",
					 "Beast",
					 "BeastMaster",
					 "BROWNIEKILLZ",
					 "BSB",
					 "bulldog1",
					 "C1ff",
					 "cadx",
					 "Calinou",
					 "captainLAD",
					 "cg72test",
					 "cheapie",
					 "combrello",
					 "cool132",
					 "CRPeters101",
					 "CWz",
					 "dacthebull",
					 "Dan",
					 "DaneSoul32",
					 "Daven",
					 "david",
					 "deadlox_MC",
					 "DerTobi1",
					 "Dolan",
					 "Dopium",
					 "doyouseemysword123",
					 "drae",
					 "DutchGamer",
					 "Dylan5",
					 "EchoShora",
					 "EclipseVampire",
					 "Ecu",
					 "elseran",
					 "Enke",
					 "Esteban",
					 "Evergreen",
					 "Fang8413",
					 "flames",
					 "flams",
					 "freeze",
					 }

female_statue_names = {"abigail",
					   "AmyLee",
					   "Angels_den",
					   "babe",
					   "Bearbar123",
					   "butterlover215",
					  }

cloth_statue_names = {}

-- create a statue that looks like the default skins
minetest.register_node("statues:default_skin", {
	description = "Statue of Sam II",
	tiles = {"character.png"},
	drawtype = "mesh",
	mesh = "male_statue.b3d",
	groups = {choppy=3},
	paramtype = "light",
	paramtype2 = "facedir",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 1.29, 0.5}
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 1.29, 0.5}
		},
	},
})

-- create a loop the length of each table

for i=1, #male_statue_names do
	minetest.register_node("statues:"..string.lower(male_statue_names[i]), {
		description = "Statue of "..male_statue_names[i],
		tiles = {co..male_statue_names[i]..".png"},
		drawtype = "mesh",
		mesh = "male_statue.b3d",
		groups = {choppy=3, not_in_creative_inventory=1},
		paramtype = "light",
		paramtype2 = "facedir",
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 1.29, 0.5}
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.4, -0.5, -0.21, 0.4, 1.29, 0.2}
			},
		},
	})
end

for j=1, #female_statue_names do
	-- create female models
	
	minetest.register_node("statues:"..string.lower(female_statue_names[j]), {
		description = "Statue of "..female_statue_names[j],
		tiles = {co..female_statue_names[j]..".png"},
		drawtype = "mesh",
		mesh = "male_statue.b3d",
		groups = {choppy=3, not_in_creative_inventory=1},
		paramtype = "light",
		paramtype2 = "facedir",
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 1.29, 0.5}
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 1.29, 0.5}
			},
		},
	})
end