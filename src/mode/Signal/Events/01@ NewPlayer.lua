	eventNewPlayer = function(n)
		if not mode.signal.info[n] then
			mode.signal.info[n] = {
				isMoving = {false,false,false,false},
				imageId = -1,
				afk = true,
				skipped = false,
				canRev = true,
			}
		end
		for i = 0,3 do
			system.bindKeyboard(n,i,true,true)
			system.bindKeyboard(n,i,false,true)
		end
		tfm.exec.chatMessage(mode.signal.translations[mode.signal.langue].welcome,n)
		
		ui.banner("15d60d9212c",220,130,n)
	end,