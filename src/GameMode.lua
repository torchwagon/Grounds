system.submodes = {}

system.gameMode = module._NAME
system.modeChanged = os.time() + 10e3

system.getGameMode = function(value,notFirst)
	local found,submode = table.find(system.submodes,string.lower(value),nil,string.lower)
	if found then
		system.gameMode = system.submodes[submode]
		
		if notFirst then
			eventModeChanged()
		end
		
		system.modeChanged = os.time() + 10e3
	end
	return found
end
