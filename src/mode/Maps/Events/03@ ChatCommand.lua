	eventChatCommand = function(n,c)
		local p = string.split(c,"[^%s]+",string.lower)
		if system.isPlayer(n) and p[1] == "maptest" and p[2] then
			p[2] = tonumber(string.sub(p[2],(string.find(p[2],"@") and 2 or 1),8))
			if p[2] and #tostring(p[2]) > 3 then
				if #mode.maps.mapInfo == 0 then
					tfm.exec.setGameTime(10,false)
				end

				local pos = #mode.maps.queue + 1
				local category = (p[3] and tonumber(string.sub(p[3],(string.find(p[3],"p") and 2 or 1))) or 0)
				if table.find({0,1,3,4,5,6,7,8,9,17,18},category) then
					if category == 18 then
						category = 1
					end
				else
					category = 0
				end

				mode.maps.queue[pos] = {p[2],n,category}
				tfm.exec.chatMessage("<J><B>" .. string.format(system.getTranslation("savenewmap"),string.format("@%s (P%s)",p[2],category),"#" .. pos) .. "</B>. <ROSE>" .. string.format("(%s)",string.format(system.getTranslation("newmaptime"),pos * 2.5)),n)
			end
		elseif mode.maps.mapInfo[1] and p[1] == "mapinfo" then
			local xml = tfm.get.room.xmlMapInfo
			xml = xml and xml.xml or "?"
			
			local attributes = string.match(xml,"<P (.-)/>") or "?"
			
			local totalGrounds = (function()
				local g = string.match(xml,"<S>(.-)</S>") or "?"

				local total = 0
				string.gsub(g,"<S ",function()
					total = total + 1		
				end)

				return total
			end)()
			
			local info = {attributes,system.getTranslation("grounds") .. ": " .. totalGrounds,system.getTranslation("author") .. ": " .. (tfm.get.room.xmlMapInfo.author or "?"),system.getTranslation("status") .. ": " .. ("P" .. tfm.get.room.xmlMapInfo.permCode or "?")}
			ui.addTextArea(2,"\t<J>" .. table.concat(info,"   <G>|<J>   "),n,5,380,790,20,1,1,.7,true)
		elseif n == mode.maps.mapInfo[2] and p[1] == "time" then
			tfm.exec.setGameTime(tonumber(string.sub(p[2],1,3)) or 60,false)
		elseif n == mode.maps.mapInfo[2] and p[1] == "skip" then
			if os.time() > system.newGameTimer then
				mode.maps.skip = true
				mode.maps.mapInfo = {}
			end
		end
	end,
