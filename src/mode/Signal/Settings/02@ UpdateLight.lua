	update = function(id)
		tfm.exec.removeImage(mode.signal.lightId)
		mode.signal.lightId = tfm.exec.addImage(mode.signal.lights[mode.signal.sys[2]] .. ".png","&0",375,30)
		local color = ({0x1CB70C,0xF4D400,0xEC0000})[mode.signal.sys[2]]
		for k,v in next,mode.signal.info do
			if id == 1 then
				if not v.afk and v.canRev then
					tfm.exec.respawnPlayer(k)
				end
			end
			tfm.exec.setNameColor(k,color)
		end
	end,