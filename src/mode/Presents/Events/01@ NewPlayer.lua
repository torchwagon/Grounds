	eventNewPlayer = function(n)
		if not mode.presents.info[n] then
			mode.presents.info[n] = {
				rounds = 0,
				gifts = 0,
				victories = 0,
			}
		end
		
		tfm.exec.chatMessage(system.getTranslation("welcome"),n)
		
		if mode.presents.isRunning then
			local m = "<PT>" .. system.getTranslation("appear")
			ui.addTextArea(0,"<p align='center'><font size='20'><VP>" .. m,n,216,65,365,35,1,1,1,true)
			tfm.exec.chatMessage(m,n)
		else
			tfm.exec.respawnPlayer(n)
		end
	end,