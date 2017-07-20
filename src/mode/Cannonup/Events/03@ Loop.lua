	eventLoop = function()
		mode.cannonup.updatePlayers()

		if mode.cannonup.isRunning then
			if mode.cannonup.totalPlayers < 2 then
				mode.cannonup.isRunning = false
				mode.cannonup.canMessage = false
				mode.cannonup.currentXml = -2
			else
				if mode.cannonup.currentXml == -1 then
					tfm.exec.newGame(table.random(mode.cannonup.maps))
				elseif mode.cannonup.currentXml ~= 0 then
					tfm.exec.newGame(mode.cannonup.currentXml)
				else		
					if _G.leftTime < 4 or #mode.cannonup.alivePlayers < 2 then
						if mode.cannonup.canMessage and mode.cannonup.totalPlayers > 1  then
							mode.cannonup.canMessage = false
							if #mode.cannonup.alivePlayers > 0 then
								for k,v in next,mode.cannonup.alivePlayers do
									tfm.exec.giveCheese(v)
									tfm.exec.playerVictory(v)
									if mode.cannonup.totalPlayers > 3 then
										mode.cannonup.info[v].victory = mode.cannonup.info[v].victory + 1
									end
									tfm.exec.setPlayerScore(v,5,true)
								end
								
								tfm.exec.chatMessage("<J>" .. table.concat(mode.cannonup.alivePlayers,"<G>, <J>") .. " <J>" .. system.getTranslation("won"))
							else
								tfm.exec.chatMessage("<J>" .. system.getTranslation("nowinner"))
							end
						end
						tfm.exec.newGame(table.random(mode.cannonup.maps))
					else
						if _G.currentTime > 5 and mode.cannonup.currentXml == 0 then
							if _G.currentTime % mode.cannonup.cannon.time == 0 then
								for i = 1,mode.cannonup.cannon.amount do
									mode.cannonup.newCannon()
								end
							end
							
							if #mode.cannonup.toDespawn > 0 then
								for i = 1,#mode.cannonup.toDespawn do
									if os.time() > mode.cannonup.toDespawn[i][2] then
										tfm.exec.removeObject(mode.cannonup.toDespawn[i][1])
									end
								end
							end
							
							if _G.currentTime % 20 == 0 then
								mode.cannonup.cannon.amount = ((mode.cannonup.totalPlayers - (mode.cannonup.totalPlayers % 10)) / 10) + math.setLim(system.miscAttrib+1,1,5) --math.min(5,math.max(1,system.miscAttrib+1))
								mode.cannonup.cannon.speed = mode.cannonup.cannon.speed + 20
								mode.cannonup.cannon.time = math.max(.5,mode.cannonup.cannon.time-.5)
							end
						end
					end
				end
			end
		else
			if mode.cannonup.currentXml == -2 then
				tfm.exec.newGame('<C><P /><Z><S><S L="800" o="324650" H="100" X="400" Y="400" T="12" P="0,0,0.3,0.2,0,0,0,0" /></S><D /><O /></Z></C>')
			end
		
			if mode.cannonup.totalPlayers > 1 then
				mode.cannonup.isRunning = true
			end
		end
	end,
