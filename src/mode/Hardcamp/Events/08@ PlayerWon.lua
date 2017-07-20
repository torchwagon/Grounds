	eventPlayerWon = function(n,t,time)
		mode.hardcamp.info[n].cheese = false
		mode.hardcamp.info[n].checkpoint = {false,0,0,mode.hardcamp.info[n].checkpoint[4]}
		ui.removeTextArea(1,n)

		mode.hardcamp.eventPlayerDied(n)
		tfm.exec.setPlayerScore(n,1,true)
		tfm.exec.chatMessage(string.format("<ROSE>%s (%ss <PT>(%scheckpoint)</PT>)",n,time/100,mode.hardcamp.info[n].checkpoint[4] and "" or "no "),n)
	end,