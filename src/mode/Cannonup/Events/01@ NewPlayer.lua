	eventNewPlayer = function(n)
		if not mode.cannonup.info[n] then
			mode.cannonup.info[n] = {
				round = 0,
				victory = 0,
				death = 0
			}
		end
		
		tfm.exec.chatMessage("<J>" .. system.getTranslation("welcome"),n)
	end,