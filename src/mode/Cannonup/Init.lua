	reset = function()
		-- Data
		mode.cannonup.info = {}
	end,
	init = function()
		mode.cannonup.translations.pt = mode.cannonup.translations.br
		
		-- Sets the main language according to the community
		if mode.cannonup.translations[tfm.get.room.community] then
			mode.cannonup.langue = tfm.get.room.community
		end
		
		-- Init
		for _,f in next,{"AutoShaman","AutoScore","AutoNewGame","AutoTimeLeft","PhysicalConsumables"} do
			tfm.exec["disable"..f]()
		end
		tfm.exec.setRoomMaxPlayers(25)
		tfm.exec.newGame('<C><P /><Z><S><S L="800" o="324650" H="100" X="400" Y="400" T="12" P="0,0,0.3,0.2,0,0,0,0" /></S><D /><O /></Z></C>')
	
		-- Auto Admin
		system.roomAdmins.Byontr = true
	end,