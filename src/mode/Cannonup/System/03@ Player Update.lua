	updatePlayers = function()
		local alive,total = system.players()
		mode.cannonup.alivePlayers = system.players(true)
		mode.cannonup.totalPlayers = total
	end,