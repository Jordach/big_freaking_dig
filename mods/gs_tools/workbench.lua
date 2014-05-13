-- tool mods, by gsmanners
-- license: WTFPL

--------------------------------------------------

-- workbenches are extensions of your own personal crafting capabilities
-- they provide guides, automation, and four additional crafting areas
-- consequently, they can also store up to 36 stacks of items

--------------------------------------------------

gs_tools.mods = {}
gs_tools.groups = {}
gs_tools.items = {}
gs_tools.crafts = {}
gs_tools.all_mods = " all"
gs_tools.player_inv_width = 8

-- get list of items in all the indicated groups

gs_tools.get_group_items = function(groups)
	local f = string.split(groups)

	-- current list of items in the indicated groups
	local i = gs_tools.groups[f[1]]
	local c = 2
	while f[c] do

		-- find items that match up with the list in the next group
		local i2 = {}
		if i then

			-- make sure the item group is a real one
			if gs_tools.groups[f[c]] then
				for _,v1 in pairs(i) do
				for _,v2 in pairs(gs_tools.groups[f[c]]) do
					if v1 == v2 then table.insert(i2, v1) end
				end
				end
			end
			i = i2
		end
		c = c + 1
	end
	return i
end

-- load the crafting recipes for a particular item

gs_tools.load_crafts = function(item)
	local cr = minetest.get_all_craft_recipes(item)
	gs_tools.crafts[item] = {}

	if not cr then
		-- note: this is undocumented
		-- :: realname = registered_aliases[alias]
		for k,v in pairs(minetest.registered_aliases) do
			if v == item then
				-- get craft recipes listed under the alias
				cr = minetest.get_all_craft_recipes(k)
			end
		end
	end

	if cr and #cr > 0 then

		-- sanity check the recipes
		for k1,v1 in pairs(cr) do
			local gc = 1	-- assume it's good
			for k2,v2 in pairs(v1.items) do
				if string.sub(v2, 1, 6) == "group:" then
					-- check for bad group names
					local i = gs_tools.get_group_items(string.sub(v2, 7))
					if not i or #i == 0 then
						gc = 0
					end
				end
			end
			if gc > 0 then
				table.insert(gs_tools.crafts[item], v1)
			end
		end
	end

	-- technic support
	if minetest.get_modpath("technic") then

		-- alloy recipes
		for _, r in pairs(technic.alloy_recipes) do
			local t = { type = "alloy" }
			if r.output.name == item then
				t.width = 2
				t.items = {r.input[1].name, r.input[2].name}
				t.count = {r.input[1].count, r.input[2].count}
				t.output = r.output.name.." "..r.output.count
				table.insert(gs_tools.crafts[item], t)
			end
		end

		-- grinder recipes
		for _, r in pairs(technic.grinder_recipes) do
			local t = { type = "grind" }
			if r.output == item or string.match(r.output, "(.*) %d+$") == item then
				t.width = 0
				t.items = {r.input}
				t.output = r.output
				table.insert(gs_tools.crafts[item], t)
			end
		end

		-- compressor recipes
		for k, r in pairs(technic.compressor_recipes) do
			local t = { type = "comp" }
			if r.dst_name == item then
				t.width = 0
				t.items = {k}
				t.count = {r.src_count}
				t.output = r.dst_name.." "..r.dst_count
				table.insert(gs_tools.crafts[item], t)
			end
		end

		-- extractor recipes
		for k, r in pairs(technic.extractor_recipes) do
			local t = { type = "extr" }
			if r.dst_name == item then
				t.width = 0
				t.items = {k}
				t.count = {r.src_count}
				t.output = r.dst_name.." "..r.dst_count
				table.insert(gs_tools.crafts[item], t)
			end
		end
	end

	if #gs_tools.crafts[item] == 0 then
		gs_tools.crafts[item] = { { type = "unknown" } }
	end
end

-- update the crafting preview

gs_tools.update_preview = function(pos)
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	local w = meta:get_int("gs_slot") * 9

	local s = {}
	for i=1,9 do
		table.insert(s, inv:get_stack("main", i+w))
	end

	local o, r = minetest.get_craft_result( { method = "normal", width = 3, items = s } )
	inv:set_stack("preview", 1, o.item)
end

-- spill items into the world

gs_tools.do_spill_items = function(pos, stack)
	if stack and not stack:is_empty() then
		local p = {x=pos.x,y=pos.y+1,z=pos.z}
		local obj = minetest.add_entity(p, "__builtin:item")
		obj:get_luaentity():set_item(stack:to_string())	-- undocumented
		obj:setvelocity({x=math.random(0,4)-2, y=0, z=math.random(0,4)-2})
	end
end

-- perform the craft

gs_tools.do_craft = function(pos, player)
	minetest.log("action", player:get_player_name() .. " crafts stuff on workbench at " .. 
		minetest.pos_to_string(pos))

	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	local w = meta:get_int("gs_slot") * 9

	local s = {}
	for i=1,9 do
		table.insert(s, inv:get_stack("main", i+w))
	end

	local o, r = minetest.get_craft_result( { method = "normal", width = 3, items = s } )

	-- set decremented_input
	for k,v in pairs(r.items) do
		inv:set_stack("main", k+w, v)
	end

	-- check for leftovers
	local l = inv:get_stack("preview", 1)
	if not l:is_empty() then
		local p = player:get_inventory()
		local x = p:add_item("main", l)
		gs_tools.do_spill_items(pos, x)
	end

	gs_tools.update_preview(pos)
end

-- move items off the workbench

gs_tools.clear_workbench = function(pos, player)
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	local w = meta:get_int("gs_slot") * 9

	local s = {}
	local p = player:get_inventory()
	for i=1,9 do
		local x = p:add_item("main", inv:get_stack("main", i+w))
		gs_tools.do_spill_items(pos, x)
		inv:set_stack("main", i+w, "")
	end
	gs_tools.update_preview(pos)
end

-- add components of the current recipe to the workbench

gs_tools.add_craft = function(pos, player, count)
	if not count then count = 1 end

	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	local i = meta:get_string("gs_item")
	local r = meta:get_int("gs_recipe")
	local w = meta:get_int("gs_slot") * 9

	local p = player:get_inventory()

	if i and #i > 0 then
		if not gs_tools.crafts[i] then
			gs_tools.load_crafts(i)
		end
		local rt = gs_tools.crafts[i][r].type
		local ri = gs_tools.crafts[i][r].items
		local rw = gs_tools.crafts[i][r].width
		if ri and rt == "normal" then
			local ix = 1
			local ic = w + 1
			for k=1,9 do
				local s = inv:get_stack("main", ic)
				local s2 = ItemStack("")
				local m = 1
				local c = count
				local v = ri[k]

				if v and #v > 0 then
					if string.sub(v, 1, 6) == "group:" then
						-- group item recipe component
						local g = gs_tools.get_group_items(string.sub(v, 7))
						if g and #g > 0 then
							m = 0
							-- if the item on the workbench is in these groups, then use that
							for _,v2 in pairs(g) do
								if s:get_name() == v2 then
									s2 = ItemStack(v2)
									s2:set_count(c)
									m = 1
								end
							end
							-- if not, then find something in the player's inventory that works
							if m == 0 then
								local q = 0
								for _,v2 in pairs(g) do
									local s3 = ItemStack(v2)
									s3:set_count(c)
									if p:contains_item("main", s3) and q == 0 then
										s2 = s3
										q = 1
									end
								end
							end
						end
					else
						-- new stack = item
						s2 = ItemStack(v)
						s2:set_count(c)
	
						-- new item matches old?
						if s:get_name() ~= v then m = 0 end
					end
	
					if not s2:is_empty() then
	
						-- check whether count will overflow and clamp it
						if m > 0 and s:get_count() + c > s:get_stack_max() then 
							c = s:get_stack_max() - s:get_count()
							s2:set_count(c)
						end
	
						-- check player's inventory
						if p:contains_item("main", s2) then
	
							p:remove_item("main", s2)
	
							-- clear off junk in the workbench
							if m == 0 then
								local x = p:add_item("main", s)
								gs_tools.do_spill_items(pos, x)
								inv:set_stack("main", ic, "")
								s:clear()
							end
	
							-- move stack to the workbench
							s2:set_count(c + s:get_count())
							inv:set_stack("main", ic, s2)
						end
					end
				end

				-- next item in recipe
				ix = ix + 1
				ic = ic + 1
				if ix > rw then
					ix = 1
					if rw > 0 then
						ic = ic + (3 - rw)
					end
				end
			end
		end
	end

	gs_tools.update_preview(pos)
end

-- do formspec stuff
-- mental note: lots going on here, might want to divide this up at some point

gs_tools.workbench_formspec = function(pos, params)
	local modname = params.modname
	local mode = params.mode
	local item = params.item
	local page = params.page
	local search = params.search
	local recipe = params.recipe
	local hist = string.split(params.history)
	local slot = params.slot

	-- modnames
	local mods = "button[0,0;1,1;do_mods;Mods]dropdown[1,0.2;3;mods;"
	local i = 1
	local all = gs_tools.all_mods
	mods = mods .. all .. ","
	local c = 2
	for _,n in pairs(gs_tools.mods) do
		mods = mods .. n .. ","
		if n == modname then i = c end
		c = c + 1
	end
	mods = string.sub(mods, 1, #mods - 1) .. ";" .. i .. "]"

	-- check for mode-changing conditions
	if mode ~= 0 and string.sub(search, 1, 6) == "group:" then
		mode = 0
	end

	-- put together the item list
	local itemlist = {}
	local listhead = ""
	if mode == 1 and item and #item > 0 then

		local def = minetest.registered_items[item]
		if def and def.description then
			listhead = "label[0,0.75;Uses for " .. def.description .. ":]"
		end

		-- find the uses for selected item
		for _,v1 in pairs(gs_tools.items) do
			-- this could take a while
			if not gs_tools.crafts[v1] then
				gs_tools.load_crafts(v1)
			end
			local c = gs_tools.crafts[v1]	-- table of recipes for this item
			local fc = 0
			for _,v2 in pairs(c) do
				if v2.items and fc == 0 then
					for _,v3 in pairs(v2.items) do
						-- exact match?
						if item == v3 and fc == 0 then
							table.insert(itemlist, v1)
							fc = 1	-- no need for redundancy
						end
						-- group match?
						if string.sub(v3, 1, 6) == "group:" and fc == 0 then
							local ggi = gs_tools.get_group_items(string.sub(v3, 7))
							if ggi then
								for _,v4 in pairs(ggi) do
									if item == v4 then
										table.insert(itemlist, v1)
										fc = 1	-- this works, too
									end
								end
							end		-- wheee!
						end
					end
				end
			end
		end		-- aww... no more slide

	elseif mode < 0 then

		-- show history mode
		listhead = "label[0,0.75;Previously selected items:]"
		for _,v in pairs(hist) do
			table.insert(itemlist, v)
		end

	else

		-- normal mode
		listhead = "label[0,0.75;Items in "
		if search and #search > 0 then
			listhead = listhead .. search
		else
			listhead = listhead .. modname
		end
		listhead = listhead ..":]"

		-- get a list of items by mod/search
		if i > 1 then
			-- factor in the modname
			for _,z in pairs(gs_tools.items) do
				local m = string.match(z, "(.*):")
				if m == modname then
					table.insert(itemlist, z)
				end
			end
		else
			itemlist = gs_tools.items
		end

		-- factor in the search
		local xs = 1
		local itemlist2 = {}
		if search and #search > 0 then
			if string.sub(search, 1, 6) == "group:" then
				-- group search
				local gi = gs_tools.get_group_items(string.sub(search, 7))
				if gi then
					for _,v in pairs(gi) do
						table.insert(itemlist2, v)
					end
				end
			else
				for _,z in pairs(itemlist) do
					-- search the description of the item
					local def = minetest.registered_items[z]
					if def and def.description then
						-- case insensitive
						local s1 = string.lower(def.description)
						local s2 = string.lower(search)
						if string.find(s1, s2, 1, true) then
							table.insert(itemlist2, z)
						end
					end
				end
			end
			itemlist = itemlist2
		end
	end

	-- calculate number of pages
	local pages = math.floor((#itemlist - 1) / (4 * 6)) + 1

	-- sanity check the page value
	if page >= pages then page = pages - 1 end
	if page < 0 then page = 0 end

	-- item list view (4x6 item_image_button grid)
	local p = page * 4 * 6
	local ilv = ""
	for y=1,6 do
	for x=0,3 do
		p = p + 1
		if itemlist[p] then
			local s = itemlist[p]
			ilv = ilv .. "item_image_button[" .. x .. "," .. y+0.25 .. ";1,1;" ..
				s .. ";item:" .. s .. ";]"
		end
	end
	end

	-- arrow buttons
	if pages > 0 then
		if page > 0 then
			ilv = ilv .. "button[0.25,7.25;1.25,1;list_prev;<<]"
		end
		ilv = ilv .. "label[1.6,7.35;" .. page + 1 .. "/" .. pages .."]"
		if (page + 1) < pages then
			ilv = ilv .. "button[2.5,7.25;1.25,1;list_next;>>]"
		end
	end

	-- search item
	local stxt = "button[0,8;1.2,1;do_search;Search]" ..
		"textarea[1.4,8.33;1.85,0.65;search;;" .. search .. "]" ..
		"button[2.9,8;0.6,1;clear_search;x]" ..
		"button[3.4,8;0.6,1;show_history;^]"

	-- recipe
	local rec = ""

	if item and #item > 0 then

		-- get the registered recipes that produce this item
		local ritems = {}
		if not gs_tools.crafts[item] then
			gs_tools.load_crafts(item)
		end

		-- sanity check the recipe value
		if recipe > #gs_tools.crafts[item] then
			recipe = #gs_tools.crafts[item]
		end

		-- recipe type
		local rt = gs_tools.crafts[item][recipe].type
		if rt == "normal" then
			rec = rec .. "button[4.5,0;1,1;craft_this;Craft]"
		end
		if rt == "cooking" then
			rec = rec .. "button[4.5,0;1,1;cook_this;Cook]"
		end
		if rt == "alloy" then
			rec = rec .. "button[4.5,0;1,1;alloy_this;Alloy]"
		end
		if rt == "grind" then
			rec = rec .. "button[4.5,0;1,1;grind_this;Grind]"
		end
		if rt == "comp" then
			rec = rec .. "button[4.5,0;1,1;comp_this;Comp]"
		end
		if rt == "extr" then
			rec = rec .. "button[4.5,0;1,1;extr_this;Extr]"
		end

		-- recipe buttons
		if recipe > 1 then
			rec = rec .. "button[5.5,0;1,1;prev_recipe;<<]"
		end
		if recipe < #gs_tools.crafts[item] then
			rec = rec .. "button[6.5,0;1,1;next_recipe;>>]"
		end

		local ri = gs_tools.crafts[item][recipe].items
		local ro = gs_tools.crafts[item][recipe].output
		local rw = gs_tools.crafts[item][recipe].width

		if rw and rw == 0 then rw = 3 end

		-- recipe list grid
		if ri then
			c = 1
			if rw > 3 then rw = 3 end	-- todo: figure out how to support higher widths
			for y=1,3 do
			for x=0,rw-1 do
				s = ri[c]
				c = c + 1
				if s and #s > 0 then
					-- is this a group item?
					if string.sub(s, 1, 6) == "group:" then
						s = string.sub(s, 7)
						i = gs_tools.get_group_items(s)
						-- find the representative sample
						if i and #i > 0 then
							local xl = 9999
							local xn = ""
							for _,v in pairs(i) do
								-- the one with the shortest name is usually it
								if #v < xl then
									xl = #v
									xn = v
								end
							end
							-- item to texture
							local tex = "unknown_item.png"
							local d = minetest.registered_items[xn]
							if d then
								if d.inventory_image and #d.inventory_image > 0 then
									tex = d.inventory_image
								else
									-- this is a little hacky (only uses 1 tile)
									-- the dialog blinks when this comes up the 1st time
									-- \ is an undocumented feature
									tex = "\\" .. minetest.inventorycube(d.tiles[1])
								end
							end
							-- use image rather than item
							-- so you don't get a misleading tooltip
							rec = rec .. "image_button[".. (x + 4.5) .. "," .. y ..
								";1,1;" .. tex .. ";group:" .. s .. ";Group]"
						end
					else
						-- not a group item (way easier to deal with)
						local cc = gs_tools.crafts[item][recipe].count
						if cc then	-- input item counts (this is for Technic)
							rec = rec .. "item_image_button[" .. (x + 4.5) .. "," .. y ..
								";1,1;" .. s .. ";item:" .. s .. ";" .. cc[c-1] .. "]"
						else
							rec = rec .. "item_image_button[" .. (x + 4.5) .. "," .. y ..
								";1,1;" .. s .. ";item:" .. s .. ";]"
						end
					end
				end
			end
			end
		else
			-- unknown
			if gs_tools.crafts[item][recipe].type == "unknown" then
				rec = rec .. "label[4.5,1;No known recipe for]" ..
					"label[4.5,1.25;" .. item .. "]"
			end
		end

		-- mode button
		if mode < 1 then
			rec = rec .. "button[4.5,3.9;1,1;do_uses;Uses]"
		else
			rec = rec .. "button[4.5,3.9;1,1;do_list;List]"
		end

		-- item label
		local def = minetest.registered_items[item]
		if def and def.description then
			s = def.description
			if ro then
				-- output more than 1?
				local n = string.match(ro, " (%d+)$")
				if n and tonumber(n) > 1 then
					s = n .. " x " .. s
				end
			end
			rec = rec .. "label[5.5,4;".. s .."]"
		end
	end

	-- craft buttons
	local cbut = "button[8,0;1,1;plus1;+]" ..
		"button[9,0;1,1;plus10;+10]" ..
		"button[10,0;1,1;do_make;Make]" ..
		"button[11,0;1,1;do_clear;Clear]"

	-- craft list
	local blabs = { "A", "B", "C", "D" }
	blabs[slot + 1] = ">" .. blabs[slot + 1] .. "<"
	local craft = "list[current_name;main;8,1;3,3;" .. slot * 9 .. "]" ..
		"list[current_name;preview;11.5,2;1,1;]" ..
		"button[8,3.9;1,1;slot0;" .. blabs[1] .. "]" ..
		"button[9,3.9;1,1;slot1;" .. blabs[2] .. "]" ..
		"button[10,3.9;1,1;slot2;" .. blabs[3] .. "]" ..
		"button[11,3.9;1,1;slot3;" .. blabs[4] .. "]"

	-- player inventory
	local pinv = "list[current_player;main;4.5,4.75;" ..
		gs_tools.player_inv_width .. ",4;]"

	-- update the meta with the new values
	local meta = minetest.get_meta(pos)
	meta:set_string("gs_search", search)
	meta:set_string("gs_modname", modname)
	meta:set_int("gs_page", page)
	meta:set_string("gs_item", item)
	meta:set_int("gs_recipe", recipe)
	meta:set_int("gs_mode", mode)
	meta:set_string("gs_history", table.concat(hist, ","))
	meta:set_int("gs_slot", slot)

	-- assemble formspec string
	local fw = gs_tools.player_inv_width + 4.5
	local fs = "size[" .. fw .. ",8.75]" .. mods .. listhead .. ilv .. stxt .. rec ..
		cbut .. craft .. pinv

	meta:set_string("formspec", fs)
end

-- reg

minetest.register_node("gs_tools:workbench", {
	description = "Workbench",
	drawtype = "nodebox",
	tiles = {"gs_workbench.png","default_wood.png","default_wood.png",
		"default_wood.png","default_wood.png","default_wood.png" },
	paramtype = "light",
	paramtype2 = "facedir",
	is_ground_content = true,
	node_box = {
		type = "fixed",
		fixed = {
			{ -0.5, 0.3,-0.5,  0.5, 0.5, 0.5 },
			{ -0.5,-0.5,-0.5, -0.3, 0.3,-0.3 },
			{  0.5,-0.5, 0.5,  0.3, 0.3, 0.3 },
			{ -0.5,-0.5, 0.5, -0.3, 0.3, 0.3 },
			{  0.5,-0.5,-0.5,  0.3, 0.3,-0.3 },
		}
	},
	groups = { choppy=2, oddly_breakable_by_hand=2 },
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Workbench")
		local inv = meta:get_inventory()
		inv:set_size("main", 9*4)
		inv:set_size("preview", 1)
	end,
	after_place_node = function(pos, placer, itemstack)
		gs_tools.workbench_formspec(pos, { modname=gs_tools.all_mods, mode=0, item="", 
			page=0, search="", recipe=1, history="", slot=0 })
	end,
	can_dig = function(pos, player)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, 
			count, player)
		if from_list == "preview" or to_list == "preview" then
			return 0
		else
			return count
		end
	end,
	allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		if listname == "preview" then
			return 0
		else
			return stack:get_count()
		end
	end,
	allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		return stack:get_count()
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, 
			count, player)
		gs_tools.update_preview(pos)
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		gs_tools.update_preview(pos)
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		if listname == "preview" then
			gs_tools.do_craft(pos, player)
		else
			gs_tools.update_preview(pos)
		end
	end,
	on_receive_fields = function(pos, formname, fields, sender)
		if fields then
--			print(dump(fields))
			local b = 0
			local pre = 0
			local meta = minetest.get_meta(pos)
			local s = meta:get_string("gs_search")
			local m = meta:get_string("gs_modname")
			local p = meta:get_int("gs_page")
			local i = meta:get_string("gs_item")
			local r = meta:get_int("gs_recipe")
			local u = meta:get_int("gs_mode")
			local h = meta:get_string("gs_history")
			local w = meta:get_int("gs_slot")

			if fields.do_mods then
				u = 0
				s = ""
				b = 1
			end
			if fields.list_prev then
				p = p - 1
				b = 1
			end
			if fields.list_next then
				p = p + 1
				b = 1
			end
			if fields.prev_recipe then
				r = r - 1
				b = 1
			end
			if fields.next_recipe then
				r = r + 1
				b = 1
			end
			if fields.clear_search then
				s = ""
				b = 1
			end
			if fields.show_history then
				u = -1
				s = ""
				b = 1
			end
			if fields.do_list then
				u = 0
				b = 1
			end
			if fields.do_uses then
				u = 1
				s = ""
				b = 1
			end
			if fields.plus1 then
				gs_tools.add_craft(pos, sender)
			end
			if fields.plus10 then
				gs_tools.add_craft(pos, sender, 10)
			end
			if fields.do_make then
				gs_tools.do_craft(pos, sender)
			end
			if fields.do_clear then
				gs_tools.clear_workbench(pos, sender)
			end
			if fields.slot0 then
				w = 0
				b = 1
				pre = 1
			end
			if fields.slot1 then
				w = 1
				b = 1
				pre = 1
			end
			if fields.slot2 then
				w = 2
				b = 1
				pre = 1
			end
			if fields.slot3 then
				w = 3
				b = 1
				pre = 1
			end
			if fields.mods ~= m then
				m = fields.mods
				u = 0
				p = 0
				b = 1
			end
			if fields.search ~= s and b == 0 then
				s = fields.search
				u = 0
				b = 1
			end
			for k, v in pairs(fields) do
				if string.sub(k, 1, 5) == "item:" then
					i = string.sub(k, 6)
					b = 1
					-- add this item into history
					local h2 = string.split(h)
					local f = 0
					for _,v in pairs(h2) do
						if v == i then f = 1 end	-- redundant?
					end
					if f == 0 then
						table.insert(h2, i)
						if #h2 > (4 * 6) then	-- no more than 1 page worth
							table.remove(h2, 1)	-- FIFO queue
						end
					end
					h = table.concat(h2, ",")
				end
				if string.sub(k, 1, 6) == "group:" then
					s = k
					b = 1
				end
			end
			if b > 0 then
				gs_tools.workbench_formspec(pos, { modname=m, mode=u, item=i, 
					page=p, search=s, recipe=r, history=h, slot=w })
				if pre > 0 then
					gs_tools.update_preview(pos)
				end
			end
		end
	end,
})

minetest.register_craft({
	output = "gs_tools:workbench",
	recipe = { 
		{ "group:wood","group:wood","group:wood" },
		{ "group:stick","default:chest","group:stick" },
		{ "group:stick","","group:stick" },
	}
})

-- examine items after loading all the mods

minetest.after(0, function()
	local moditems = {}
	for name,def in pairs(minetest.registered_items) do

		-- anything good enough for creative is good enough for me
		if (not def.groups.not_in_creative_inventory
				or def.groups.not_in_creative_inventory == 0)
				and def.description and def.description ~= "" then

			-- one more gotcha
			if (not def.groups.not_in_craft_guide) then

				-- has modname?
				local m = string.match(name, "(.*):")
				if m and #m > 0 then
					moditems[m] = 1		-- just make note of this modname
				end
	
				-- add item name to the groups list for each group it belongs in
				for g,v in pairs(def.groups) do
					if not gs_tools.groups[g] then
						gs_tools.groups[g] = {}
					end
					table.insert(gs_tools.groups[g], name)
				end
	
				-- add item name to the master list
				table.insert(gs_tools.items, name)

			end
		end

	end

	-- unspool the list of mods
	for n,v in pairs(moditems) do table.insert(gs_tools.mods, n) end

	-- sort things
	table.sort(gs_tools.mods)
	table.sort(gs_tools.items)
	for n,v in pairs(gs_tools.groups) do table.sort(v) end
end)

-- get player inventory width
-- this is set dynamically, so I have to detect this dynamically

gs_tools.get_player_inv_width = function()
	local p = minetest.get_connected_players()
	if p and #p > 0 then
		local i,v = next(p)
		-- I'm kind of assuming that the player inventory has 4 rows, here
		gs_tools.player_inv_width = math.floor( v:get_inventory():get_size("main") / 4 )
	else
		-- just keep waiting till we get this info
		minetest.after(1.5, gs_tools.get_player_inv_width)
	end
end

minetest.after(1.5, gs_tools.get_player_inv_width)
