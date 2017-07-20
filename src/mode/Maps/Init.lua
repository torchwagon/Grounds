	init = function()
		mode.maps.translations.pt = mode.maps.translations.br
		mode.maps.langue = mode.maps.translations[tfm.get.room.community] and tfm.get.room.community or "en"

		tfm.exec.disableAutoNewGame()
		tfm.exec.setGameTime(10,false)
		
		local alive
		alive,mode.maps.totalPlayers = system.players()
	end,