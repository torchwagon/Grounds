	eventNewPlayer = function(n)
		tfm.exec.chatMessage("<CE>" .. system.getTranslation("welcome"),n)

		system.bindKeyboard(n,32,true,true)
	end,
