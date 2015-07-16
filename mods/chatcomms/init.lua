--init.lua

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
	
minetest.register_chatcommand("skins", {
	description = "Instructions on getting your skin into the game",
	func = function(name)
		minetest.chat_send_player(name, "To install a skin, go to minecraftskins.com for a skin and then paste the website address to the chat eg,")
		minetest.chat_send_player(name, "http://www.minecraftskins.net/ and paste it into the chat, as the")
		minetest.chat_send_player(name, "server operator / admin will install it and will be availible at server restart, which is usually 10AM PDT.")
	end,
})

adminname = "yournamehere"

minetest.register_chatcommand("admin", {
	description = "Call an admin with a message attached", -- WARNING: ONLY OPERABLE WITH IRC MOD ENABLED.
	privs = {shout=true},
	params = "<message to admins>",
	func = function (name, param)
		if minetest.get_modpath("irc") ~= nil then
			mt_irc:say(adminname, param)
		else
			return
		end
	end,
})

