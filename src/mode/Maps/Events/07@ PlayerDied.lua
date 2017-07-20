	eventPlayerDied = function(n)
		if mode.maps.autoRespawn then
			tfm.exec.respawnPlayer(n)
		end
	end,