	nextMap = function()
		if os.time() > system.newGameTimer and #mode.maps.queue > 0 then
			local mapData = mode.maps.queue[1]

			mode.maps.mapInfo = {mapData[1],mapData[2],0,0}
			mode.maps.category = mapData[3]

			mode.maps.before()		
			tfm.exec.newGame(mapData[1])
		end
	end,