	reset = function()
		-- Data
		mode.presents.info = {}
	end,
	init = function()
		mode.presents.translations.pt = mode.presents.translations.br

		-- Sets the main language according to the community
		if mode.presents.translations[tfm.get.room.community] then
			mode.presents.langue = tfm.get.room.community
		end
		
		-- Init
		for _,f in next,{"AutoShaman","AutoNewGame","AutoScore","AfkDeath","MortCommand","DebugCommand","PhysicalConsumables"} do
			tfm.exec["disable"..f]()
		end	
		tfm.exec.setRoomMaxPlayers(30)

		mode.presents.generateMap()
		
		-- Auto Admin
		system.roomAdmins.Ruamorangos = true
	end,