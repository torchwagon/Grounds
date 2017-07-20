	uibar = function(id,player,value,color,size,height)
		size = size or 100
		height = height or 20

		if value > size then
			value = size
		elseif value < 0 then
			value = 0
		end

		ui.addTextArea(id,"",player,5,(height+8) * id,size + 4,height,0xC7CED2,1,1,true)
		if value ~= 0 then
			ui.addTextArea(id+1,"",player,6,(height+8) * id + 2,value + 2,height - 4,color,color,1,true)
		end
		ui.addTextArea(id+2,"<p align='center'><B><font color='#0'>"..value.."%",player,5,(height+8) * id,size + 4,height,1,1,0,true)
	end,