	init = function()
		mode.sharpie.translations.pt = mode.sharpie.translations.br

		if mode.sharpie.translations[tfm.get.room.community] then
			mode.sharpie.langue = tfm.get.room.community
		end
	
		-- Init
		tfm.exec.disableAutoShaman()
		tfm.exec.disableAutoScore()
		
		tfm.exec.newGame()
	end,