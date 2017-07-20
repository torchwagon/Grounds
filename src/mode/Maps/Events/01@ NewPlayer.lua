	eventNewPlayer = function(n)
		if not mode.maps.info[n] then
			mode.maps.info[n] = {
				hasVoted = false
			}
		end

		for i = 1,2 do
			system.bindKeyboard(n,string.byte("P"),i == 1,true)
		end

		tfm.exec.chatMessage("<J>" .. system.getTranslation("welcome"),n)
	end,