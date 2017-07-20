	eventKeyboard = function(n,k,d,x,y)
		if k == 16 then
			mode.hardcamp.info[n].shift = d
		elseif k == string.byte("E") and mode.hardcamp.checkpoint then
			if mode.hardcamp.info[n].shift then
				mode.hardcamp.info[n].checkpoint = {false,0,0,mode.hardcamp.info[n].checkpoint[4]}
				ui.removeTextArea(1,n)
			else
				mode.hardcamp.info[n].checkpoint = {true,x,y,true}
				ui.addTextArea(1,"",n,x-5,y-5,10,10,0x56A75A,0x56A75A,.5,true)
			end
		elseif k == string.byte("K") then
			if d then
				ui.addTextArea(2,mode.hardcamp.rank(tfm.get.room.playerList,{tfm.get.room.playerList,"score"},true,true,"points",20),n,5,30,nil,200,nil,nil,.8,true)
			else
				ui.removeTextArea(2,n)
			end
		elseif k == 46 then
			tfm.exec.killPlayer(n)
		end
	end,