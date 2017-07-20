	reset = function()
		-- Scores
		mode.jokenpo.tie = 0
		mode.jokenpo.round = 0
		mode.jokenpo.roundsPerGame = 5
		
		-- Data
		mode.jokenpo.players = {}
		mode.jokenpo.playing = false
		
		-- Timers
		mode.jokenpo.timer = 9.5
		mode.jokenpo.partialTimer = 0
	end,
	init = function()
		mode.jokenpo.translations.pt = mode.jokenpo.translations.br
	
		-- Sets the main language according to the community
		if mode.jokenpo.translations[tfm.get.room.community] then
			mode.jokenpo.langue = tfm.get.room.community
		end
		
		-- Sets the rounds per game
		mode.jokenpo.roundsPerGame = math.max(5,system.miscAttrib)
		
		-- Init
		for _,f in next,{"AutoShaman","AutoNewGame","PhysicalConsumables","AfkDeath"} do
			tfm.exec["disable"..f]()
		end
		tfm.exec.setAutoMapFlipMode(false)
		tfm.exec.setRoomMaxPlayers(20)

		tfm.exec.newGame(table.random(mode.jokenpo.maps))
	end,