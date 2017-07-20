mode.maps = {
	-- Translations
	translations = {
		en = {
			-- Init
			welcome = "Welcome to #maps! Here you can test your maps in different categories and check its approvation in the community!\n\tAdd a map to the queue with the command <B>!maptest @Code PCategory</B> and check the map info using the command <B>!mapinfo</B>.\n\n\tReport any problem to Bolodefchoco.",

			-- Info
			savenewmap = "Your map %s is in the position %s",
			newmaptime = "Less than %s minutes",
			vote = "Your vote has been recorded.",
			dovote = "Hold P and vote according to your opinion about this map!",

			-- Map Info
			mapby = "Map %s loaded by %s as %s.",

			-- Security
			cantvote = "You cannot vote.",
			
			-- Simple words
			grounds = "Grounds",
			status = "Status",
			author = "Author",
		},
		br = {
			welcome = "Bem-vindo ao #maps! Aqui você pode testar seus mapas em diferentes categorias e checar sua aprovação na comunidade!\n\tAdicione um mapa na lista de espera com o comando <B>!maptest @Código PCategoria</B> e cheque as informações do mapa usando o comando <B>!mapinfo</B>.\n\n\tReporte qualquer problema para Bolodefchoco.",

			savenewmap = "Seu mapa %s está na posição %s",
			newmaptime = "Menos de %s minutos",
			vote = "Seu voto foi registrado.",
			dovote = "Segure P e vote de acordo com sua opinião sobre este mapa!",

			mapby = "Mapa %s carregado por %s como %s.",

			cantvote = "Vote não pode votar.",
			
			grounds = "Pisos",
			status = "Estado",
			author = "Autor",
		}
	},
	langue = "en",
	--[[ Data ]]--
	info = {},
	--[[ Maps ]]--
	queue = {},
	--[[ Settings ]]--
	autoRespawn = false,
	category = -1,
	mapInfo = {},
	canInfo = false,
	totalPlayers = 0,
	skip = false,
	images = {},
	--[[ RoundDealer ]]--
	nextMap = function()
		if os.time() > system.newGameTimer and #mode.maps.queue > 0 then
			local mapData = mode.maps.queue[1]

			mode.maps.mapInfo = {mapData[1],mapData[2],0,0}
			mode.maps.category = mapData[3]

			mode.maps.before()		
			tfm.exec.newGame(mapData[1])
		end
	end,
	--[[ System ]]--
	-- Before
	before = function()
		if mode.maps.category >= 0 then
			if table.find({0,1,4,5,6,8,9},mode.maps.category) then
				tfm.exec.disableAutoShaman(false)
				tfm.exec.disableAfkDeath(false)
				mode.maps.autoRespawn = false
			elseif table.find({3,7,17},mode.maps.category) then
				tfm.exec.disableAutoShaman()
				if mode.maps.category == 3 then
					mode.maps.autoRespawn = true
					tfm.exec.disableAfkDeath()
				end
			end
		end
	end,
	-- After
	after = function()
		if mode.maps.category >= 0 then
			if table.find({0,1,4,5,6,8,9},mode.maps.category) then
				tfm.exec.setGameTime(135)
				if mode.maps.category == 8 and mode.maps.totalPlayers > 1 then
					local newShaman
					repeat
						newShaman = table.random(system.players(true))
					until not tfm.get.room.playerList[newShaman].isShaman

					ui.setShamanName((function()
						for k,v in next,tfm.get.room.playerList do
							if v.isShaman then
								return k
							end
						end
						return "?"
					end)() .. " - <PS>" .. newShaman)
					tfm.exec.setShaman(newShaman)

					local xml = tfm.get.room.xmlMapInfo.xml
					local attribute = string.match(xml,"<DC2 (.-)/>")
					if attribute then
						local x = string.match(attribute,"X=\"(%d+)\"")
						local y = string.match(attribute,"Y=\"(%d+)\"")
						if x and y then
							tfm.exec.movePlayer(newShaman,x,y)
						end
					end

					tfm.exec.setNameColor(newShaman,0xF1C4F6)
				end
			elseif mode.maps.category == 3 then
				tfm.exec.setGameTime(360)
			elseif mode.maps.category == 7 then
				tfm.exec.setGameTime(120)
			elseif mode.maps.category == 17 then
				tfm.exec.setGameTime(63)
			end
		end
	end,
	--[[ Init ]]--
	init = function()
		mode.maps.translations.pt = mode.maps.translations.br
		mode.maps.langue = mode.maps.translations[tfm.get.room.community] and tfm.get.room.community or "en"

		tfm.exec.disableAutoNewGame()
		tfm.exec.setGameTime(10,false)
		
		local alive
		alive,mode.maps.totalPlayers = system.players()
	end,
	--[[ Events ]]--
	-- NewPlayer
	eventNewPlayer = function(n)
		if not mode.maps.info[n] then
			mode.maps.info[n] = {
				hasVoted = false
			}
		end

		for i = 1,2 do
			system.bindKeyboard(n,string.byte("P"),i == 1,true)
		end

		tfm.exec.chatMessage("<J>" .. system.getTranslation("welcome"),n)
	end,
	-- NewGame
	eventNewGame = function()
		ui.removeTextArea(2,nil)
		mode.maps.skip = false
		if mode.maps.mapInfo[1] then
			mode.maps.canInfo = true
			
			mode.maps.after()
			mode.maps.after = function() end
			table.remove(mode.maps.queue,1)

			for k,v in next,mode.maps.info do
				v.hasVoted = false
			end
			
			for k,v in next,mode.maps.images do
				tfm.exec.removeImage(v)
			end
			
			xml.attribFunc(tfm.get.room.xmlMapInfo.xml,{
				[1] = {
					attribute = "img",
					func = function(value)
						local images = string.split(value,"[^;]+")
						for k,v in next,images do
							local info = string.split(v,"[^,]+")
							
							-- "img.png,x or 0,y or 0,0/1 (foreground)"
							info[4] = tonumber(info[4]) or 0
							if table.find({0,1},info[4]) then
								mode.maps.images[#mode.maps.images + 1] = tfm.exec.addImage(info[1],(info[4] == 0 and "?" or info[4] == 1 and "&") .. k,tonumber(info[2]) or 5,tonumber(info[3]) or 30)
							end
						end
					end
				}
			})

			tfm.exec.chatMessage("<J>" .. string.format(system.getTranslation("mapby"),"@" .. mode.maps.mapInfo[1],mode.maps.mapInfo[2],"P" .. mode.maps.category))
			tfm.exec.chatMessage("<J>" .. system.getTranslation("dovote"))
		end
	end,
	-- ChatCommand
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
	-- Keyboard
	eventKeyboard = function(n,k,d)
		if k == string.byte("P") and _G.currentTime > 5 and #mode.maps.mapInfo > 0 then
			if d and not mode.maps.info[n].hasVoted then
				if n == mode.maps.mapInfo[2] or not system.isPlayer(n) then
					tfm.exec.chatMessage("<R>" .. system.getTranslation("cantvote"),n)
				else
					local ic = {{"+","VP"},{"-","R"}}
					for i = 0,1 do
						ui.addTextArea(i,"<p align='center'><font size='6'>\n<font size='17'><" .. ic[i+1][2] .. "><a href='event:" .. ic[i+1][1] .. "'><B>" .. ic[i+1][1] .. "1",n,5 + i * 50,30,40,40,1,1,.7,true)
					end
				end
			else
				for i = 0,1 do
					ui.removeTextArea(i,n)
				end
			end
		end
	end,
	-- TextAreaCallback
	eventTextAreaCallback = function(i,n,c)
		mode.maps.info[n].hasVoted = true
		if c == "+" then
			mode.maps.mapInfo[3] = mode.maps.mapInfo[3] + 1
		elseif c == "-" then
			mode.maps.mapInfo[4] = mode.maps.mapInfo[4] + 1
		end
		mode.maps.eventKeyboard(n,string.byte("P"),false)

		tfm.exec.chatMessage("• " .. system.getTranslation("vote"),n)
	end,
	-- Loop
	eventLoop = function()
		local alive = 100
		if _G.currentTime % 5 == 0 then
			alive,mode.maps.totalPlayers = system.players()
		end
		if _G.leftTime < 1 or alive < 1 or mode.maps.skip then
			if mode.maps.mapInfo[1] and mode.maps.canInfo then
				mode.maps.canInfo = false
				
				local totalVotes = mode.maps.mapInfo[3] + mode.maps.mapInfo[4]
				if totalVotes > 0 then
					tfm.exec.chatMessage(string.format("• [@%s] %s%% (%s)",mode.maps.mapInfo[1],math.percent(mode.maps.mapInfo[3],totalVotes),totalVotes),mode.maps.mapInfo[2])
				end
			end

			if #mode.maps.queue > 0 then
				mode.maps.nextMap()
			else
				tfm.exec.newGame()
			end
		end
	end,
	-- PlayerDied
	eventPlayerDied = function(n)
		if mode.maps.autoRespawn then
			tfm.exec.respawnPlayer(n)
		end
	end,
	-- PlayerWon
	eventPlayerWon = function(n)
		mode.maps.eventPlayerDied(n)
	end,
}