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
					 "freeze",
					 "GatesKeeper",
					 "Geopbyte",
					 "GreenDimond",
					 "GtX",
					 "hampa16",
					 "Herobrine",
					 "hippoHIH",
					 "HoboGaming",
					 "John",
					 "hunterx689",
					 "jojoa1997",
					 "iPlay",
					 "iPushButton1997",
					 "InfinityProject",
					 "jordan4ibanez",
					 "Josh",
					 "Kacey",
					 "kaeza",
					 "Jordach",
					 "KingBOBO",
					 "KOD",
					 "Lalluffi",
					 "Lemon",
					 "LforLeeeeeeeX",
					 "madin",
					 "marioaka47",
					 "markveidemanis",
					 "Mcc457",
					 "MichealEh",
					 "Microchip",
					 "minergamergogo",
					 "Mr_Meep",
					 "mrfrosty",
					 "MustLoveCats",
					 "Nate",
					 "NekoGloop",
					 "Novacain",
					 "Obiewan1111",
					 "onez",
					 "oOChainLynxOo",
					 "OWNSyouAll",
					 "Penguin",
					 "PenguinDad",
					 "PeterPanda",
					 "pheonixfire",
					 "PilzAdam",
					 "playzooki",
					 "pokemon_shadow",
					 "ProBoy",
					 "Rancon",
					 "Razor",
					 "Recker",
					 "RedDog",
					 "Rhys",
					 "Rick2",
					 "S",
					 "SantaKlaus",
					 "Sawag",
					 "sdzen",
					 "SetoAssassin",
					 "ShadowNinja",
					 "Shaheer",
					 "silly1089",
					 "SkyDoesMinecraft",
					 "solidus_1602",
					 "Sonic",
					 "Tails",
					 "stampylongnose",
					 "StephenGreat",
					 "Steve2",
					 "stormchaser2000",
					 "stormchaser3000",
					 "SuperBoy",
					 "Swordsman481",
					 "Tfz",
					 "TheKing",
					 "Tobunchies",
					 "Tom",
					 "tret",
					 "xaivanov",
					 --"X-treme", breaks minetest, uncomment when fixed
					 "YoYoBuddy",
					 "Zacharie",
					 "ZackBlance123",
					 "Zeal",
					 "Zeg9",
					 "Zephyrus1497",
					 "legendofexodia",
					 "Sam",
					 "Hoodedice",
					 }

female_statue_names = {"abigail",
					   "AmyLee",
					   "Angels_den",
					   "babe",
					   "Bearbar123",
					   "butterlover215",
					   "candyprincess",
					   "Cassie123",
					   "cherry_fish",
					   "ChubbaBubba",
					   "COOLCAT",
					   "corza",
					   "crazyginger72",
					   "crystaldynamic",
					   "CrystalGlow",
					   "CrystalGlows",
					   "CuteGamerGirl",
					   "CutieCupcake",
					   "flames",
					   "flams",
					   "fluffypillows93",
					   "grisha",
					   "Hayy_Its_Kenzie",
					   "iluvpeeps7",
					   "JadePlaysGames",
					   "jenna456",
					   "jessiebessie",
					   "josie",
					   "JusticeCutie9",
					   "kaity",
					   "KeeksMeepiness",
					   "Kenna455WarriorCats",
					   "KikaRz",
					   "KittyCatLover",
					   "ladyygaga",
					   "Lannie",
					   "lolol",
					   "Memow",
					   "mercedes1978",
					   "mercedes",
					   "Miki",
					   "Misty",
					   "NeonSkyz",
					   "NightVampire",
					   "omg",
					   "Oshawott117",
					   "Pelisan",
					   "PerryWinkle",
					   "picklelove45",
					   --"Pink-Pineapple", likewise, wait for hyphens to be allowed as a node name
					   "prettygirl01",
					   "ProGirl",
					   "Pudding_Warrior",
					   "RayRay",
					   "RedLoxx",
					   "rommiekerova",
					   "Salems_Lady_MC",
					   "Selah",
					   "selena",
					   "shadowzone",
					   "skittle",
					   "Tory10",
					   "Traxie21",
					   "Ukrain111",
					   "UmmerShamma",
					   "VanessaEzekowitz",
					   "WarriorCatlove",
					   "WarriorCatslove",
					   "wonderwomen",
					   "YunaMaria",
					   "Hoodedice",
					  }

cloth_statue_names = {"18_test", "Sokomine"}

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
	on_punch = function(pos, node, puncher)
		if not puncher then return end
	
		-- chance of model choosing (m,f have 40%, cloth has 20%)
	
		local model_cha = math.random(1,100)
	
	
		if model_cha <= 80 then
			model_set = math.random(1,2)
		end
		if model_cha > 80 then
			model_set = 3
		end
	
		local toolname = puncher:get_wielded_item():get_name()
	
		if toolname == "tools:chisel" then
			if model_set == 1 then
				local choice = math.random(1,#male_statue_names)
				minetest.set_node(pos, {name="statues:"..string.lower(male_statue_names[choice])})
			elseif model_set == 2 then
				local choice = math.random(1,#female_statue_names)
				minetest.set_node(pos, {name="statues:"..string.lower(female_statue_names[choice])})
			else
				local choice = math.random(1,#cloth_statue_names)
				minetest.set_node(pos, {name="statues:"..string.lower(cloth_statue_names[choice])})
			end
		end
	end
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
		on_punch = function(pos, node, puncher)
			if not puncher then return end
	
			-- chance of model choosing (m,f have 40%, cloth has 20%)
	
			local model_cha = math.random(1,100)
	
	
			if model_cha <= 80 then
				model_set = math.random(1,2)
			end
			if model_cha > 80 then
				model_set = 3
			end
	
			local toolname = puncher:get_wielded_item():get_name()
	
			if toolname == "tools:chisel" then
				if model_set == 1 then
					local choice = math.random(1,#male_statue_names)
					minetest.set_node(pos, {name="statues:"..string.lower(male_statue_names[choice])})
				elseif model_set == 2 then
					local choice = math.random(1,#female_statue_names)
					minetest.set_node(pos, {name="statues:"..string.lower(female_statue_names[choice])})
				else
					local choice = math.random(1,#cloth_statue_names)
					minetest.set_node(pos, {name="statues:"..string.lower(cloth_statue_names[choice])})
				end
			end
		end
	})
end

for j=1, #female_statue_names do
	-- create female models
	
	minetest.register_node("statues:"..string.lower(female_statue_names[j]), {
		description = "Statue of "..female_statue_names[j],
		tiles = {co..female_statue_names[j]..".png"},
		drawtype = "mesh",
		mesh = "female_statue.b3d",
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
		on_punch = function(pos, node, puncher)
			if not puncher then return end
	
			-- chance of model choosing (m,f have 40%, cloth has 20%)
	
			local model_cha = math.random(1,100)
	
	
			if model_cha <= 80 then
				model_set = math.random(1,2)
			end
			if model_cha > 80 then
				model_set = 3
			end
	
			local toolname = puncher:get_wielded_item():get_name()
	
			if toolname == "tools:chisel" then
				if model_set == 1 then
					local choice = math.random(1,#male_statue_names)
					minetest.set_node(pos, {name="statues:"..string.lower(male_statue_names[choice])})
				elseif model_set == 2 then
					local choice = math.random(1,#female_statue_names)
					minetest.set_node(pos, {name="statues:"..string.lower(female_statue_names[choice])})
				else
					local choice = math.random(1,#cloth_statue_names)
					minetest.set_node(pos, {name="statues:"..string.lower(cloth_statue_names[choice])})
				end
			end
		end
	})
end

for k=1, #cloth_statue_names do
	-- create MC 1.8 models
	
	minetest.register_node("statues:"..string.lower(cloth_statue_names[k]), {
		description = "Statue of "..cloth_statue_names[k],
		tiles = {co..cloth_statue_names[k]..".png"},
		drawtype = "mesh",
		mesh = "male-18-statue.b3d",
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
		on_punch = function(pos, node, puncher)
			if not puncher then return end
	
			-- chance of model choosing (m,f have 40%, cloth has 20%)
	
			local model_cha = math.random(1,100)
	
	
			if model_cha <= 80 then
				model_set = math.random(1,2)
			end
			if model_cha > 80 then
				model_set = 3
			end
	
			local toolname = puncher:get_wielded_item():get_name()
	
			if toolname == "tools:chisel" then
				if model_set == 1 then
					local choice = math.random(1,#male_statue_names)
					minetest.set_node(pos, {name="statues:"..string.lower(male_statue_names[choice])})
				elseif model_set == 2 then
					local choice = math.random(1,#female_statue_names)
					minetest.set_node(pos, {name="statues:"..string.lower(female_statue_names[choice])})
				else
					local choice = math.random(1,#cloth_statue_names)
					minetest.set_node(pos, {name="statues:"..string.lower(cloth_statue_names[choice])})
				end
			end
		end
	})
end

-- randomise the statue from using the chisel

minetest.register_on_punchnode(function(pos, node, puncher)
	
	
end)