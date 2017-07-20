	getCannon = function()
		local currentMonth = tonumber(os.date("%m"))
		
		if currentMonth == 12 then
			return 1703 -- Christmas [Ornament]
		elseif currentMonth == 10 then
			return table.random({17,1701,1702}) -- Halloween [Normal, Glass, Lollipop]
		elseif currentMonth == 5 and tonumber(os.date("%d")) < 11 then
			return 1704 -- Transformice's Birthday [Shaman]
		elseif currentMonth == 7 then
			return table.random({17,1705,1706}) -- Vacations [Normal, Apple, Watermellon]
		else
			return table.random({17,17,17,1706}) -- Standard
		end
	end,