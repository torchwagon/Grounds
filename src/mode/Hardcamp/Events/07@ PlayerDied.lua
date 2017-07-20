	eventPlayerDied = function(n)
		system.newTimer(function()
			tfm.exec.respawnPlayer(n)
			
			if mode.hardcamp.checkpoint and mode.hardcamp.info[n].checkpoint[1] then
				tfm.exec.movePlayer(n,mode.hardcamp.info[n].checkpoint[2],mode.hardcamp.info[n].checkpoint[3])
			end
			if mode.hardcamp.checkpoint and mode.hardcamp.info[n].cheese and mode.hardcamp.respawnCheese then
				tfm.exec.giveCheese(n)
			end
		end,1500,false)
	end,