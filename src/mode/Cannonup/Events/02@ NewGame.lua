	eventNewGame = function()
		ui.setMapName("#CannonUp")
		
		mode.cannonup.cannon = {
			x = 0,
			y = 0,
			time = 3,
			amount = ((mode.cannonup.totalPlayers - (mode.cannonup.totalPlayers % 10)) / 10) + math.setLim(system.miscAttrib+1,1,5), -- math.min(5,math.max(1,system.miscAttrib+1))
			speed = 20,
		}

		mode.cannonup.toDespawn = {}
		
		if mode.cannonup.currentXml == -1 then
			mode.cannonup.currentXml = 0
		elseif mode.cannonup.currentXml == -2 then
			mode.cannonup.currentXml = -1
		end
		
		ui.removeTextArea(0,nil)
		if mode.cannonup.isRunning then
			if mode.cannonup.currentXml == 0 then
				tfm.exec.setGameTime(5)
				
				mode.cannonup.currentXml = xml.addAttrib(tfm.get.room.xmlMapInfo.xml or "",{
					[1] = {
						tag = "BH",
						value = "",
					}
				},false)
				ui.addTextArea(0,"",nil,-1500,-1500,3e3,3e3,0x6A7495,0x6A7495,1,true)
				
				mode.cannonup.canMessage = false
			else
				tfm.exec.setGameTime(125)
				mode.cannonup.canMessage = true
				
				if mode.cannonup.totalPlayers > 3 then
					for k,v in next,mode.cannonup.info do
						v.round = v.round + 1
					end
				end
				
				xml.attribFunc(mode.cannonup.currentXml or "",{
					[1] = {
						attribute = "cn",
						func = function(value)
							local coord,axY = xml.getCoordinates(value)
							if type(coord) == "table" then
								mode.cannonup.cannon.x = coord[1].x
								mode.cannonup.cannon.y = coord[1].y
							else
								if axY == 0 then
									mode.cannonup.cannon.x = coord
								else
									mode.cannonup.cannon.y = coord
								end
							end
						end
					},
					[2] = {
						attribute = "cheese",
						func = function()
							table.foreach(tfm.get.room.playerList,tfm.exec.giveCheese)
						end,
					},
					[3] = {
						attribute = "meep",
						func = function()
							table.foreach(tfm.get.room.playerList,tfm.exec.giveMeep)
						end,
					},
				})
			
				mode.cannonup.currentXml = 0
				mode.cannonup.canMessage = true
			end
		else
			tfm.exec.setGameTime(1e7)
			mode.cannonup.currentXml = -1
			mode.cannonup.canMessage = false
		end
	end,
