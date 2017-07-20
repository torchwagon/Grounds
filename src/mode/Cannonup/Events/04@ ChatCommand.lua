	eventChatCommand = function(n,c)
		local p = string.split(c,"[^%s]+",string.lower)
		if p[1] == "p" or p[1] == "profile" then
			if p[2] then
				p[2] = string.nick(p[2])
				if tfm.get.room.playerList[p[2]] then
					mode.cannonup.uiprofile(p[2],n)
				end
			else
				mode.cannonup.uiprofile(n,n)
			end
		end
	end,