	eventPlayerWon = function(n)
		mode.signal.possible = true
		mode.signal.info[n].canRev = false
		tfm.exec.setGameTime(40,false)
	end,