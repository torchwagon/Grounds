	eventNewGame = function()
		tfm.exec.setGameTime(mode.hardcamp.standardTime * 60)
		mode.hardcamp.groundsData = {}
		mode.hardcamp.mapData = {}
		for k,v in next,mode.hardcamp.info do
			v.cheese = false
			v.checkpoint = {false,0,0,false}
			ui.removeTextArea(1,n)
		end
		
		local xml = tfm.get.room.xmlMapInfo.xml
		if xml then
			local grounds = string.match(xml,"<S>(.-)</S>")
			local properties = string.match(xml,"<C><P (.-)/>.*<Z>")
			if properties then
				mode.hardcamp.mapData = {
					width = string.match(properties,'L="(%d+)"') or 800,
					heigth = string.match(properties,'H="(%d+)"') or 400,
				}
			else
				mode.hardcamp.mapData = {
					width = 800,
					heigth = 400,
				}
			end

			local data = {}
			local foo = function(attributes)
				data[#data + 1] = attributes
			end
			stringgsub(grounds,"<S (.-)/>",foo)
			for i = 1,#data do
				mode.hardcamp.groundsData[i] = {}
				
				local type = string.match(data[i],'T="(%d+)"')
				mode.hardcamp.groundsData[i].type = type and tonumber(type) or -1

				local x = string.match(data[i],'X="(%d+)"')
				mode.hardcamp.groundsData[i].x = x and tonumber(x) or 0

				local y = string.match(data[i],'Y="(%d+)"')
				mode.hardcamp.groundsData[i].y = y and tonumber(y) or 0

				local width = string.match(data[i],'L="(%d+)"')
				mode.hardcamp.groundsData[i].width = width and tonumber(width) or 0

				local heigth = string.match(data[i],'H="(%d+)"')
				mode.hardcamp.groundsData[i].heigth = heigth and tonumber(heigth) or 0

				local info = string.match(data[i],'P="(.*)"')
				info = string.split(info,"[^,]+")

				mode.hardcamp.groundsData[i].friction = info[3] and tonumber(info[3]) or .3
				mode.hardcamp.groundsData[i].restitution = info[3] and tonumber(info[4]) or .2
				mode.hardcamp.groundsData[i].angle = info[3] and tonumber(info[5]) or 0
			end
		end
	end,
