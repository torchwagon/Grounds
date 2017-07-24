	eventLoop = function(currentTime,leftTime)
		if _G.currentTime > 8 then
			if os.time() > mode.signal.sys[1] then
				mode.signal.sys[2] = (mode.signal.sys[2] % 3) + 1
				mode.signal.sys[1] = os.time() + ({math.random(7,13),math.random(2,3),math.random(3,5)})[mode.signal.sys[2]] * 1000
				mode.signal.update(mode.signal.sys[2])
				mode.signal.discrepancy = os.time() + 520
			end
		end

		if _G.leftTime > 2 and system.players() > 0 then
			if mode.signal.sys[2] == 3 and os.time() > mode.signal.discrepancy then
				for k,v in next,mode.signal.info do
					for i,j in next,v.isMoving do
						if j then
							tfm.exec.killPlayer(k)
							break
						end
					end
				end
			end
		else
			mode.signal.generateMap()
		end
	end,