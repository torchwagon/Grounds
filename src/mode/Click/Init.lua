	reset = function()
		-- Data
		mode.click.info = {}
	end,
	init = function()
		mode.click.translations.pt = mode.click.translations.br

		-- Sets the main language according to the community
		if mode.click.translations[tfm.get.room.community] then
			mode.click.langue = tfm.get.room.community
		end
		
		-- Init
		for _,f in next,{"AutoShaman","AutoScore","AutoNewGame","AfkDeath"} do
			tfm.exec["disable"..f]()
		end

		tfm.exec.newGame(5993911)
	end,