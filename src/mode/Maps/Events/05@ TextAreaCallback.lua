	eventTextAreaCallback = function(i,n,c)
		mode.maps.info[n].hasVoted = true
		if c == "+" then
			mode.maps.mapInfo[3] = mode.maps.mapInfo[3] + 1
		elseif c == "-" then
			mode.maps.mapInfo[4] = mode.maps.mapInfo[4] + 1
		end
		mode.maps.eventKeyboard(n,string.byte("P"),false)

		tfm.exec.chatMessage("• " .. system.getTranslation("vote"),n)
	end,