	eventNewGame = function()
		mode.signal.skip = 0
		mode.signal.possible = false
		mode.signal.rounds = mode.signal.rounds + 1
		
		if mode.signal.rounds % 3 == 0 then
			tfm.exec.chatMessage(mode.signal.translations[mode.signal.langue].skip)
		end
		
		ui.setMapName("<BL>@" .. math.random(999) .. "   <G>|   <N>Round : <V>" .. mode.signal.rounds)
		
		for k,v in next,mode.signal.info do
			v.isMoving = {false,false,false,false}
			v.afk = true
			v.skipped = false
			v.canRev = true
		end
		
		mode.signal.sys = {0,1}
		mode.signal.update(mode.signal.sys[2])
	end,