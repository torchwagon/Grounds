-- Initially based on Jordynl19#Pokelua repository
local modulePath = string.match(debug.getinfo(1).source:sub(2),"(.-\\)builder.lua")

menu = {
	display = function(id)
		os.execute("cls")
		io.write("Insert the number according to the needed option.\n")
		for k,v in next,menu[id].options do
			io.write(string.format("\t%s. %s\n",k,v))
		end
		io.write(">> ")
		return io.read()
	end,
	get = function(id)
		local option
		repeat
			option = tonumber(menu.display(id)) or 0
		until option > 0 and option <= #menu[id].options
		
		if menu[id].func then
			menu[id].func(option)
		end
		
		return option
	end,
	[1] = {
		options = {
			"Update all modes",
			"Update specified modes",
			"Skip modes updating",
			"Exit",
		},
		func = function(option)
			if option < 3 then
				if option == 1 then
					local files = io.popen("dir " .. modulePath.."src\\mode" .. " /b")
					files = files:read("*a")

					for file in files:gmatch("[^\n]+") do
						os.execute("start ".. modulePath.."src\\mode\\"..file.."\\Debug\\combine.lua")
					end
					io.write("Submodes updated!")
				elseif option == 2 then
					local updating = true
					while updating do
						local modeName
						repeat
							io.write("Enter mode name: ")
							modeName = io.read()
						until #modeName > 0

						os.execute("start ".. modulePath.."src\\mode\\"..modeName:sub(2).."\\Debug\\combine.lua")
						
						local answer
						repeat
							io.write("Update new mode? (y/n): ")
							answer = io.read():lower()
						until answer == "y" or answer == "n"
						
						if answer == "n" then
							updating = false
						end
					end
				end
				io.write("Updated!")
				os.execute("ping localhost >nul -n 4")
			elseif option == #menu[1].options then
				os.exit()
			end
		end,
	},
	[2] = {
		options = {
			"Combine Tree",
			"Use Maintenance Mode",
			"Use Combine Builder",
			"Set Modes",
			"Exit",
		},
		func = function(option)
			if option == #menu[2].options then
				os.exit()
			end
		end
	}
}

local update = menu.get(1)
local option = menu.get(2)

local script = {
	[1] = "--Creator: Bolodefchoco\n--Made in: 06/02/2017\n--Last update: " .. os.date("%d/%m/%Y")
}

local fileExist = function(file)
	local f = io.open(file,"r")
	if f then
		f:close()
	end
	return f
end
local fileLines = function(file)
	local lines = {}
	for line in io.lines(file) do
		lines[#lines+1] = line
	end
	return table.concat(lines,"\n")
end
local getFile = function(file,d)
	local code = ""
	
	local path = modulePath.."src"..(d and "\\mode\\"..file.."\\CURRENTVERSION_" or "\\")..file..".lua"
	
	if fileExist(path) then
		code = "--[[ " .. file .. " ]]--\n"
		
		code = code .. fileLines(path)
		io.write("> " .. file .. " loaded!\n")
	else
		code = "--[[ File " .. file .. " doesn't exist. ]]--\n"
		io.write("> " .. file .. " not found!\n")
	end
	
	return code
end

construct = setmetatable({true,true,true,true},{
	__call = function()
		for id,chunk in next,construct[option] do
			if chunk[1] ~= "Optimization" then
				chunk[2] = chunk[2]:gsub("string%.","string")
				chunk[2] = chunk[2]:gsub("math%.","math")
				chunk[2] = chunk[2]:gsub("table%.","table")
			end
			
			script[#script + 1] = chunk[2]
			io.write(string.format("[%s] %s",id,chunk[1]) .. " loaded successfully!\n")
		end
		
		local buildFile = string.format("%s\\versions\\Grounds_%s.lua",modulePath,os.date("%y_%m_%d")) 
		local file = io.open(buildFile,"w")
		file:write(table.concat(script,"\n\n"))
		file:flush()
		
		io.write("File created!\n")
		
		file:close()
		
		io.read()
	end
})
construct[1] = setmetatable({
	"Module"	,
	"Optimization",
	"API",
	"GameMode",
	"Modes",
	"@Grounds",
	"@Jokenpo",
	"@Click",
	"@Presents",
	"@Chat",
	"@Cannonup",
	"@Xmas",
	"@Signal",
	"@Hardcamp",
	"@Maps",
	"@Godmode",
	"@Sharpie",
	"ModeChanged",
	"Events",
	"RoomSettings",
	"Initialize",	
},{
	__call = function(this)
		for i = 1,#this do
			local d = not not this[i]:find("@")
			this[i] = {this[i],getFile(this[i]:sub(d and 2 or 1),d)}
		end
	end
})
construct[2] = setmetatable({
	"Module",
	"Optimization",
	"Maintenance",
},getmetatable(construct[1]))
construct[3] = setmetatable({},{
	__call = function(this)
		local files = true
		while files do
			local fileName
			repeat
				io.write("Enter file name: ")
				fileName = io.read()
			until #fileName > 0
			
			local d = not not fileName:find("@")
			this[#this+1] = {fileName,getFile(fileName:sub(d and 2 or 1),d)}
			
			local answer
			repeat
				io.write("Continue? (y/n): ")
				answer = io.read():lower()
			until answer == "y" or answer == "n"
			
			if answer == "n" then
				files = false
			end
		end
	end
})
construct[4] = setmetatable({
	"Module",
	"Optimization",
	"API",
	"GameMode",
	"Modes",
	
	"ModeChanged",
	"Events",
	"RoomSettings",
	"Initialize"
},{
	__call = function(this)
		for i = 1,#this do
			local d = not not this[i]:find("@")
			this[i] = {this[i],getFile(this[i]:sub(d and 2 or 1),d)}
		end

		local files = true
		while files do
			local modeName
			repeat
				io.write("Enter mode name: ")
				modeName = io.read()
			until #modeName > 0

			table.insert(this,#this - 3,{modeName,getFile(modeName:sub(2),true)})
			
			local answer
			repeat
				io.write("Continue? (y/n): ")
				answer = io.read():lower()
			until answer == "y" or answer == "n"
			
			if answer == "n" then
				files = false
			end
		end
	end
})

construct[option]()
construct()	