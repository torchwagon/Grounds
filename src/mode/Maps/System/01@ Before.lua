	before = function()
		if mode.maps.category >= 0 then
			if table.find({0,1,4,5,6,8,9},mode.maps.category) then
				tfm.exec.disableAutoShaman(false)
				tfm.exec.disableAfkDeath(false)
				mode.maps.autoRespawn = false
			elseif table.find({3,7,17},mode.maps.category) then
				tfm.exec.disableAutoShaman()
				if mode.maps.category == 3 then
					mode.maps.autoRespawn = true
					tfm.exec.disableAfkDeath()
				end
			end
		end
	end,