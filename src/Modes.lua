mode = setmetatable({},{
	__newindex = function(list,key,value)
		rawset(list,key,value)
		system.submodes[#system.submodes+1] = key
	end
})
