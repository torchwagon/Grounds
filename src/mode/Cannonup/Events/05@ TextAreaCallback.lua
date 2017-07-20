	eventTextAreaCallback = function(i,n,c)
		if c == "close" then
			for i = 1,2 do
				ui.removeTextArea(i,n)
			end
		end
	end,