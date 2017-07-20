	eventLoop = function()
		local alive = 100
		if _G.currentTime % 5 == 0 then
			alive,mode.maps.totalPlayers = system.players()
		end
		if _G.leftTime < 1 or alive < 1 or mode.maps.skip then
			if mode.maps.mapInfo[1] and mode.maps.canInfo then
				mode.maps.canInfo = false
				
				local totalVotes = mode.maps.mapInfo[3] + mode.maps.mapInfo[4]
				if totalVotes > 0 then
					tfm.exec.chatMessage(string.format("• [@%s] %s%% (%s)",mode.maps.mapInfo[1],math.percent(mode.maps.mapInfo[3],totalVotes),totalVotes),mode.maps.mapInfo[2])
				end
			end

			if #mode.maps.queue > 0 then
				mode.maps.nextMap()
			else
				tfm.exec.newGame()
			end
		end
	end,