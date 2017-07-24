	eventChatCommand = function(n,c)
		if c == "info" or c == "help" or c == "?" then
			eventTextAreaCallback(nil,n,"info." .. mode.signal.sys[2])
		elseif c == "skip" and _G.currentTime > 8 and not mode.signal.possible and not mode.signal.info[n].skipped then
			mode.signal.skip = mode.signal.skip + 1
			tfm.exec.chatMessage(mode.signal.translations[mode.signal.langue].skipped,n)
			
			local alive,total = system.players()
			if mode.signal.skip == math.ceil(.5 * total) then
				tfm.exec.chatMessage("o/")
				mode.signal.generateMap()
			end
		end
	end,