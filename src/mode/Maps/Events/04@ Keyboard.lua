	eventKeyboard = function(n,k,d)
		if k == string.byte("P") and _G.currentTime > 5 and #mode.maps.mapInfo > 0 then
			if d and not mode.maps.info[n].hasVoted then
				if n == mode.maps.mapInfo[2] or not system.isPlayer(n) then
					tfm.exec.chatMessage("<R>" .. system.getTranslation("cantvote"),n)
				else
					local ic = {{"+","VP"},{"-","R"}}
					for i = 0,1 do
						ui.addTextArea(i,"<p align='center'><font size='6'>\n<font size='17'><" .. ic[i+1][2] .. "><a href='event:" .. ic[i+1][1] .. "'><B>" .. ic[i+1][1] .. "1",n,5 + i * 50,30,40,40,1,1,.7,true)
					end
				end
			else
				for i = 0,1 do
					ui.removeTextArea(i,n)
				end
			end
		end
	end,