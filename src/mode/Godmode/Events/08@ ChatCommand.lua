	eventChatCommand = function(n,c)
		local p = string.split(c,"[^%s]+",string.lower)
		if p[1] == "info" then
			tfm.exec.chatMessage("<J>" .. system.getTranslation("info"),n)
		elseif p[1] == "p" then
			if p[2] then
				p[2] = string.nick(p[2])
				if mode.godmode.info[p[2]] then
					mode.godmode.profile(n,p[2])
				end
			else
				mode.godmode.profile(n,n)
			end
		end
	end,