	eventLoop = function()
		if _G.leftTime < 1 then
			tfm.exec.newGame(table.random(mode.hardcamp.maps))
		end
	end,