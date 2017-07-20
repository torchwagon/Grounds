	init = function()
		mode.chat.translations.pt = mode.chat.translations.br
		mode.chat.langue = mode.chat.translations[tfm.get.room.community] and tfm.get.room.community or "en"
		tfm.exec.setRoomMaxPlayers(30)
		system.disableChatCommandDisplay("title",true)
		mode.chat.displayChat()
	end,