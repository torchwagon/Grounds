	eventNewGame = function()
		ui.removeTextArea(2,nil)
		mode.maps.skip = false
		if mode.maps.mapInfo[1] then
			mode.maps.canInfo = true
			
			mode.maps.after()
			mode.maps.after = function() end
			table.remove(mode.maps.queue,1)

			for k,v in next,mode.maps.info do
				v.hasVoted = false
			end
			
			for k,v in next,mode.maps.images do
				tfm.exec.removeImage(v)
			end
			
			xml.attribFunc(tfm.get.room.xmlMapInfo.xml,{
				[1] = {
					attribute = "img",
					func = function(value)
						local images = string.split(value,"[^;]+")
						for k,v in next,images do
							local info = string.split(v,"[^,]+")
							
							-- "img.png,x or 0,y or 0,0/1 (foreground)"
							info[4] = tonumber(info[4]) or 0
							if table.find({0,1},info[4]) then
								mode.maps.images[#mode.maps.images + 1] = tfm.exec.addImage(info[1],(info[4] == 0 and "?" or info[4] == 1 and "&") .. k,tonumber(info[2]) or 5,tonumber(info[3]) or 30)
							end
						end
					end
				}
			})

			tfm.exec.chatMessage("<J>" .. string.format(system.getTranslation("mapby"),"@" .. mode.maps.mapInfo[1],mode.maps.mapInfo[2],"P" .. mode.maps.category))
			tfm.exec.chatMessage("<J>" .. system.getTranslation("dovote"))
		end
	end,
