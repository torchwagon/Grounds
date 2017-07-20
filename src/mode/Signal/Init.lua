	reset = function()
		-- Data
		mode.signal.info = {}
	end,
	init = function()
		mode.signal.translations.pt = mode.signal.translations.br
		mode.signal.langue = mode.signal.translations[tfm.get.room.community] and tfm.get.room.community or "en"

		for _,f in next,{"AutoShaman","AutoNewGame","AutoTimeLeft","PhysicalConsumables"} do
			tfm.exec["disable"..f]()
		end

		mode.signal.generateMap()
	end,