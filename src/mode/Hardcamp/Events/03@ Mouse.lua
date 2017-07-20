	eventMouse = function(n,x,y)
		if mode.hardcamp.info[n].shift then
			for i = #mode.hardcamp.groundsData,1,-1 do
				local g = mode.hardcamp.groundsData[i]
				local rad = math.rad(g.angle)
				local ax = {math.cos(rad),math.sin(rad)}

				local gX = g.x + ax[1] * (x - g.x) - ax[2] * (y - g.y)
				local gY = g.y + ax[2] * (x - g.x) + ax[1] * (y - g.y)

				if (g.type == 13 and math.pythag(x,y,g.x,g.y,g.width/2) or (math.abs(gX - g.x) < g.width/2 and math.abs(gY - g.y) < g.heigth/2)) then
					local properties = {"Type","ID","X","Y","Heigth","Width","Friction","Restitution","Angle"}
					local info = ""

					for k,v in next,properties do
						info = info .. string.format("<N>%s : <V>%s\n",v,(v == "ID" and i or v == "Type" and (({[0] = "Unknown","Wood","Ice","Trampoline","Lava","Chocolate","Earth","Grass","Sand","Cloud","Water","Stone","Snow","Rectangle","Circle","Spiderweb"})[g.type + 1]) or tostring(g[string.lower(v)])))
					end

					local mapW = tonumber(mode.hardcamp.mapData.width)
					local mapH = tonumber(mode.hardcamp.mapData.heigth)
					ui.addTextArea(0,info,n,(x + 150 <= mapW and x) or (x < 0 and 0) or (mapW - 150),(y + 180 <= mapH and y > 20 and y) or (y < 20 and 25) or (mapH - 180),nil,nil,nil,nil,.8,false)
				end
			end
		else
			ui.removeTextArea(0,n)
		end
	end,