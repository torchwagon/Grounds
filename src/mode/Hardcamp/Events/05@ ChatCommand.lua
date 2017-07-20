	eventChatCommand = function(n,c)
		local p = string.split(c,"[^%s]+",string.lower)
		if p[1] == "info" then
			tfm.exec.chatMessage("<T>" .. system.getTranslation("info"),n)
		else
			if system.roomAdmins[n] then
				if p[1] == "next" and os.time() > system.newGameTimer then
					tfm.exec.newGame(table.random(mode.hardcamp.maps))
					tfm.exec.chatMessage("<T>• " .. string.format(system.getTranslation("skip"),n))
				elseif p[1] == "again" and os.time() > system.newGameTimer then
					tfm.exec.newGame(tfm.get.room.currentMap)
					tfm.exec.chatMessage("<T>• " .. string.format(system.getTranslation("restart"),n))
				elseif (p[1] == "np" or p[1] == "map") and os.time() > system.newGameTimer then
					tfm.exec.newGame(p[2])
					tfm.exec.chatMessage("<T>• " .. string.format(system.getTranslation("loadmap"),n,string.find(p[2],"@") and p[2] or "@"..p[2]))
				elseif p[1] == "time" then
					tfm.exec.setGameTime(p[2] * 60)
					tfm.exec.chatMessage(string.format(system.getTranslation("settime"),p[2]))
				elseif p[1] == "standtime" then
					p[2] = p[2] and tonumber(p[2]) or 6
					if p[2] > 0 and p[2] < 10 then
						mode.hardcamp.standardTime = p[2]
						tfm.exec.chatMessage(string.format(system.getTranslation("setstandtime",p[2])))
					end
				elseif p[1] == "checkpoint" then
					local attribute = false
					if p[2] then
						attribute = true
						if p[2] == "not" and p[3] and p[3] == "cheese" then
							mode.hardcamp.respawnCheese = false
						elseif p[2] == "cheese" then
							mode.hardcamp.respawnCheese = true
						else
							attribute = false
						end
					end
					
					if not (mode.hardcamp.checkpoint and attribute) then
						mode.hardcamp.checkpoint = not mode.hardcamp.checkpoint
						tfm.exec.chatMessage("<T>Checkpoint " .. system.getTranslation(mode.hardcamp.checkpoint and "enabled" or "disabled"))
					
						if not mode.hardcamp.checkpoint then
							ui.removeTextArea(1,nil)
							for k,v in next,mode.hardcamp.info do
								v.checkpoint = {false,0,0,v.checkpoint[4]}
							end
							if system.miscAttrib ~= 1 then
								mode.hardcamp.respawnCheese = false
							end
							for k,v in next,mode.hardcamp.info do
								v.cheese = false
							end
						end
					end
				elseif p[1] == "queue" then
					if p[2] == "clear" then
						mode.hardcamp.maps = {}
						tfm.exec.chatMessage("• " .. string.format(system.getTranslation("queuecleared"),n))
					elseif p[2] == "add" then
						mode.hardcamp.maps[#mode.hardcamp.maps + 1] = p[3]
						tfm.exec.chatMessage("• " .. string.format(system.getTranslation("queuemapadded"),n,string.find(p[3],"@") and p[3] or "@"..p[3]))
					elseif p[2] and string.sub(p[2],1,1) == "p" then
						if p[2] == "p3" or p[2] == "p13" or p[2] == "p23" then
							mode.hardcamp.maps[#mode.hardcamp.maps + 1] = "#" .. string.sub(p[2],2)
							tfm.exec.chatMessage("• " .. string.format(system.getTranslation("queueperm"),n,string.upper(p[2])))
						end
					else
						mode.hardcamp.map()
						tfm.exec.chatMessage("• " .. string.format(system.getTranslation("queuereset"),n))
					end
				end
			end
		end
	end,
