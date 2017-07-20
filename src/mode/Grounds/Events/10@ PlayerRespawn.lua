	eventPlayerRespawn = function(n)
		if mode.grounds.info[n].checkpoint ~= -1 then
			local g = mode.grounds.gsys.grounds[mode.grounds.info[n].checkpoint]
			local hTP = mode.grounds.gsys.getTpPos(g,true)
			tfm.exec.movePlayer(n,hTP[1],hTP[2])
		end
		if mode.grounds.info[n].groundsDataLoaded and mode.grounds.availableRoom then
			mode.grounds.info[n].stats.rounds = mode.grounds.info[n].stats.rounds + 1
		end
		if mode.grounds.hasWater then
			mode.grounds.uibar(1,n,mode.grounds.info[n].drown,0x519DDA,100,20)
		end
		
		if not mode.grounds.isHouse then
			tfm.exec.chatMessage(string.format("<R>[•] %s",system.getTranslation("zombie",n)),n)
		end
	end,
