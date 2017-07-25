events = {}

events.eventLoop = function(currentTime,leftTime)
	_G.currentTime = normalizeTime(currentTime / 1e3)
	_G.leftTime = normalizeTime(leftTime / 1e3)
end

events.eventChatCommand = function(n,c)
	disableChatCommand(c)
	if module._FREEACCESS[n] then
		if c == "refresh" and (not system.isRoom or module._FREEACCESS[n] > 1) then
			eventModeChanged()
			system.init(true)
		elseif string.sub(c,1,4) == "room" and (not system.isRoom or module._FREEACCESS[n] > 1) then
			system.roomNumber = tonumber(string.sub(c,6)) or 0
			if _G["eventChatCommand"] then
				eventChatCommand(n,"refresh")
			end
		elseif string.sub(c,1,4) == "load" and (not system.isRoom or module._FREEACCESS[n] > 2) then
			if os.time() > system.modeChanged and os.time() > system.newGameTimer then
				local newMode = system.getGameMode(string.sub(c,6),true)
				if newMode then
					system.init(system.isRoom)
				end
			end
		end
	end
	if string.sub(c,1,6) == "module" then
		c = string.upper(string.sub(c,8))
		if module["_" .. c] then
			tfm.exec.chatMessage(c .. " : " .. table.concat(table.turnTable(module["_" .. c]),"\n",function(k,v)
				return (c == "FREEACCESS" and string.format("%s(%s)",k,v) or v)
			end),n)
		else
			tfm.exec.chatMessage(string.format("VERSION : %s\nNAME : %s\nSTATUS : %s\nAUTHOR : %s\n\nMODE : %s",module._VERSION,module._NAME,module._STATUS,module._AUTHOR,system.gameMode),n)
		end
	elseif c == "modes" then
		tfm.exec.chatMessage(table.concat(system.submodes,"\n",function(k,v)
			return "#" .. v
		end),n)
	elseif c == "admin" then
		tfm.exec.chatMessage(table.concat(system.roomAdmins,", ",tostring),n)
	elseif c == "stop" and system.roomAdmins[n] then
		system.exit()
	elseif string.sub(c,1,3) == "adm" and (system.roomAdmins[n] or module._FREEACCESS[n] > 2) then
		system.roomAdmins[string.nick(string.sub(c,5))] = true
	end
end

events.eventNewPlayer = function(n)
	tfm.exec.lowerSyncDelay(n)
	
	if system.officialMode[2] ~= "" then
		tfm.exec.chatMessage(system.officialMode[2],n)
	end
end
