	reset = function()
		-- Data
		mode.hardcamp.info = {}
	end,
	init = function()
		-- Translations
		mode.hardcamp.translations.pt = mode.hardcamp.translations.br
		mode.hardcamp.langue = mode.hardcamp.translations[tfm.get.room.community] and tfm.get.room.community or "en"
		
		-- Settings
		mode.hardcamp.respawnCheese = system.miscAttrib == 1
		
		-- Init
		for _,f in next,{"AutoShaman","AutoScore","AutoTimeLeft","AutoNewGame","PhysicalConsumables","AfkDeath"} do
			tfm.exec["disable"..f]()
		end
		tfm.exec.setAutoMapFlipMode(false)

		mode.hardcamp.map()
		tfm.exec.newGame(table.random(mode.hardcamp.maps))
		
		-- Auto Admin
		system.roomAdmins.Mquk = true
	end,