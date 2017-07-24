	eventTextAreaCallback = function(i,n,c)
		local p = string.split(c,"[^%.]+")
		if p[1] == "info" then
			mode.signal.displayInfo(n,tonumber(p[2]))
		elseif p[1] == "close" then
			tfm.exec.removeImage(mode.signal.info[n].imageId)
			for i = 1,3 do
				ui.removeTextArea(i,n)
			end
		end
	end,