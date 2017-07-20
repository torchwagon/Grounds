	after = function()
		if mode.maps.category >= 0 then
			if table.find({0,1,4,5,6,8,9},mode.maps.category) then
				tfm.exec.setGameTime(135)
				if mode.maps.category == 8 and mode.maps.totalPlayers > 1 then
					local newShaman
					repeat
						newShaman = table.random(system.players(true))
					until not tfm.get.room.playerList[newShaman].isShaman

					ui.setShamanName((function()
						for k,v in next,tfm.get.room.playerList do
							if v.isShaman then
								return k
							end
						end
						return "?"
					end)() .. " - <PS>" .. newShaman)
					tfm.exec.setShaman(newShaman)

					local xml = tfm.get.room.xmlMapInfo.xml
					local attribute = string.match(xml,"<DC2 (.-)/>")
					if attribute then
						local x = string.match(attribute,"X=\"(%d+)\"")
						local y = string.match(attribute,"Y=\"(%d+)\"")
						if x and y then
							tfm.exec.movePlayer(newShaman,x,y)
						end
					end

					tfm.exec.setNameColor(newShaman,0xF1C4F6)
				end
			elseif mode.maps.category == 3 then
				tfm.exec.setGameTime(360)
			elseif mode.maps.category == 7 then
				tfm.exec.setGameTime(120)
			elseif mode.maps.category == 17 then
				tfm.exec.setGameTime(63)
			end
		end
	end,
