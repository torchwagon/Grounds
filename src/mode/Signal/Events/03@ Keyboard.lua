	eventKeyboard = function(n,k,d)
		if mode.signal.sys[2] == 3 and d and os.time() > mode.signal.discrepancy then
			tfm.exec.killPlayer(n)
		else
			mode.signal.info[n].isMoving[k + 1] = d
		end
		mode.signal.info[n].afk = false
	end,