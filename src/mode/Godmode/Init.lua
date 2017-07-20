	reset = function()
		-- Data
		mode.godmode.info = {}
	end,
	init = function()
		-- Translations
		mode.godmode.translations.pt = mode.godmode.translations.br
		mode.godmode.langue = mode.godmode.translations[tfm.get.room.community] and tfm.get.room.community or "en"

		-- Titles
		mode.godmode.title = system.getTranslation("titles")
		
		-- Init
		tfm.exec.disableAutoNewGame()
		tfm.exec.disableAllShamanSkills()
		tfm.exec.newGame("#4")
		
		-- Auto Admin
		system.roomAdmins.Mcqv = true
	end,