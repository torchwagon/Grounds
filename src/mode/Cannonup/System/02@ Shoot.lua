	newCannon = function()
		local alive = system.players(true)
		if #alive > 0 then
			local player
			repeat
				player = tfm.get.room.playerList[table.random(alive)]
			until not player.isDead
			
			local coordinates = {
				{player.x,math.random() * 700},
				{player.y,math.random() * 300},
				{false,false}
			}
			
			if mode.cannonup.cannon.x ~= 0 then
				coordinates[1][2] = mode.cannonup.cannon.x
				coordinates[3][1] = true
			end
			if mode.cannonup.cannon.y ~= 0 then
				coordinates[2][2] = mode.cannonup.cannon.y
				coordinates[3][2] = true
			end
			
			if not coordinates[3][2] and coordinates[2][2] > coordinates[2][1] then
				coordinates[2][2] = coordinates[2][1] - math.random(100) - 35
			end
			if not coordinates[3][1] and math.abs(coordinates[1][2] - coordinates[1][1]) > 350 then
				coordinates[1][2] = coordinates[1][1] + math.random(-100,100)
			end
			
			local ang = math.deg(math.atan2(coordinates[2][2] - coordinates[2][1],coordinates[1][2] - coordinates[1][1]))
			tfm.exec.addShamanObject(0,coordinates[1][2] - (coordinates[3][1] and 0 or 10),coordinates[2][2] - (coordinates[3][2] and 0 or 10),ang + 90)
			
			--system.newTimer(function()
				mode.cannonup.toDespawn[#mode.cannonup.toDespawn + 1] = {tfm.exec.addShamanObject(mode.cannonup.getCannon(),coordinates[1][2],coordinates[2][2],ang - 90,mode.cannonup.cannon.speed),os.time() + 5000}
			--end,math.isNegative((mode.cannonup.cannon.speed - 1) * 500,0),false)
		end
	end,