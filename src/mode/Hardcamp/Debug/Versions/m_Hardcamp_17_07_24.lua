mode.hardcamp = {
	-- Translations
	translations = {
		en = {
			-- Init
			welcome = "Welcome to <B>#Hardcamp</B>! Type !info to check the commands\n\tReport any issue to Bolodefchoco!",
			
			-- Info
			info = "Checkpoint:\n\tIf the checkpoint system is enabled, press <B>E</B> to put a checkpoint and <B>Shift+E</B> to remove it.\nAdmin\n\tIf you are a room admin, there are some commands that you can execute:\n\tMaps\n\t\t!next <V>--> Pass the map</V>\n\t\t!again <V>--> Resets the current map</V>\n\t\t!np @Code <VP>or</VP> !map @Code <V>--> Loads a map</V>\n\t\t!queue clear <V>--> Clear the map queue</V>\n\t\t!queue add @Code <V>--> Adds a map in the map queue</V>\n\t\t!queue P3 <VP>or</VP> P13 <VP>or</VP> P23 <V>--> Adds the whole official rotation of P3 or P13 or P23 in the map queue</V>\n\tTime\n\t\t!time TimeInMinutes <V>--> Set the time of the current round in TimeInMinutes</V>\n\t\t!standtime TimeInMinutes <V>--> Set the time of all the rounds in TimeInMinutes</V>\n\tOthers\n\t\t<B>Shift+Click</B> in a ground to read its properties\n\t\t!checkpoint [[not] cheese] <V>--> Enables/Disables the checkpoint system</V>\n\t\tKey Delete <V>--> Kills you</V>",
			skip = "<VP>%s</VP> just skipped the map!",
			restart = "<VP>%s</VP> just restarted the current map!",
			loadmap = "<VP>%s</VP> just loaded the map %s!",
			settime = "The time has been set to %s minutes!",
			setstandtime = "The standard time of all the rounds has been set to %s minutes!",
			enabled = "enabled! Press <B>E</B> to put a checkpoint and <B>Shift+E</B> to remove it.",
			queuecleared = "%s just cleared the map queue",
			queuemapadded = "%s just added the map %s to the map queue",
			queueperm = "%s just added the category %s to the map queue",
			queuereset = "%s just reseted the queue to the main maps",
			
			-- Simple words
			disabled = "disabled!",
		},
		br = {
			welcome = "Bem-vindo ao <B>#Hardcamp</B>! Digite !info para checar os comandos\n\tReporte quaisquer problemas para Bolodefchoco!",
			
			info = "Checkpoint:\n\tSe o sistema de checkpoint está ativado, pressione <B>E</B> para marcar um checkpoint e <B>Shift+E</B> para remove-lo.\nAdmin\n\tSe você é um administrador da sala, há alguns comandos que você pode executar:\n\tMapas\n\t\t!next <V>--> Passa o mapa</V>\n\t\t!again <V>--> Reinicia o mapa atual</V>\n\t\t!np @Código <VP>ou</VP> !map @Código <V>--> Carrega um mapa</V>\n\t\t!queue clear <V>--> Limpa a lista de mapas</V>\n\t\t!queue add @Código <V>--> Adiciona um mapa na lista de mapas</V>\n\t\t!queue P3 <VP>ou</VP> P13 <VP>ou</VP> P23 <V>--> Adiciona a rotação inteira de P3 ou P13 ou P23 na lista de mapas</V>\n\tTempo\n\t\t!time TempoEmMinutos <V>--> Define o tempo do mapa atual em TempoEmMinutos</V>\n\t\t!standtime TempoEmMinutos <V>--> Define o tempo de todas as partidas em TempoEmMinutos</V>\n\tOutros\n\t\t<B>Shift+Click</B> sobre um piso para ler suas propriedades\n\t\t!checkpoint [[not] cheese] <V>--> Ativa/Desativa o sistema de checkpoint</V>\n\t\tTecla Delete <V>--> Mata-o</V>",
			skip = "<VP>%s</VP> acabou de passar o mapa!",
			restart = "<VP>%s</VP> acabou de reiniciar o mapa atual!",
			loadmap = "<VP>%s</VP> acabou de carregar o mapa %s!",
			settime = "O tempo foi definido para %s minutos!",
			setstandtime = "O tempo padrão para todas as partidas foram definidas para %s minutos!",
			enabled = "ativado! Pressione <B>E</B> para marcar um checkpoint e <B>Shift+E</B> para remove-lo.",
			queuecleared = "%s acabou de limpar a rotação de mapas",
			queuemapadded = "%s acabou de adicionar o mapa %s na rotação de mapas",
			queueperm = "%s acabou de adicionar a categoria %s na rotação de mapas",
			queuereset = "%s acabou de resetar a rotação de mapas para os mapas principais",
			
			disabled = "desativado!",
		},
		pl = {
			welcome = "Witaj w <B>#Hardcamp</B>! Wpisz !info na czacie aby sprawdzić jakie są komendy\n\tZgłaszaj wszelkie błędy do Bolodefchoco!",
	
			info = "Checkpoint:\n\tJeżeli system checkpointów jest włączony, kliknij <B>E</B>, aby ustawić checkpoint i <B>Shift+E</B>, aby go usunąć.\nAdmin\n\tJeżeli jesteś administratorem pokoju, jest kilka komend, które możesz użyć:\n\tMapy\n\t\t!next <V>--> Przełącza mapę</V>\n\t\t!again <V>--> Restartuje mapę</V>\n\t\t!np @Code <VP>albo</VP> !map @Code <V>--> Ładuje mapę</V>\n\t\t!queue clear <V>--> Czyści kolejkę map</V>\n\t\t!queue add @Code <V>--> Dodaję mapę do kolejki</V>\n\t\t!queue P3 <VP>albo</VP> P13 <VP>albo</VP> P23 <V>--> Dodaje wszystkie oficjalne rotacje z permów P3 albo P13 albo P23 do kolejki map</V>\n\tCzas\n\t\t!time CzasWMinutach <V>--> Ustawia czas obecnej mapy na CzasWMinutach</V>\n\t\t!standtime CzasWMinutach <V>--> Ustawia czas dla wszystkich rund na CzasWMinutach</V>\n\tInne\n\t\t<B>Shift+Click</B> na gruncie aby przeczytać jego właściwości\n\t\t!checkpoint [[not] cheese] <V>--> Włącza/Wyłącza system checkpointów</V>\n\t\tKey Delete <V>--> Kills you</V>",
			skip = "<VP>%s</VP> pominął/-ęła mapę!",
			restart = "<VP>%s</VP> zrestartował/-a mapę!",
			loadmap = "<VP>%s</VP> załadował/-a mapę %s!",
			settime = "Czas został ustawiony na %s minut!",
			setstandtime = "Standardowy czas dla wszystkich map został ustawiony na %s minut!",
			enabled = "włączony! Kliknij <B>E</B>, aby ustawić checkpoint i <B>Shift+E</B>, aby go usunąć.",
			queuecleared = "%s just cleared the map queue",
			queuemapadded = "%s just added the map %s to the map queue",
			queueperm = "%s just added the category %s to the map queue",
			queuereset = "%s just reseted the queue to the main maps",
			
			disabled = "wyłączony!",
		},
	},
	langue = "en",
	--[[ Data ]]--
	info = {},
	--[[ Maps ]]--
	maps = {},
	map = function()
		mode.hardcamp.maps = {6501305,6118143,2604997,2836937,6921682,3339586,5776126,5678468,6531399,5847160,5745650,7091808,7000003,6999993,4559999,4784241,3883780,4976520,4854044,6374076,3636206,6793803,4499335,4694197,5485847,6258690,3938895,1719709,4209243,6550335,5994088,3866650,3999455,4095418,4523127,1964971,1554670,4423047,764650,5562230,4883346,2978216,1947288,7025830,7108857,4766627,5888889,6782978,5699275,6422459,2634659,4808290,3620953,2973289,2604643,6591698,7134487,7054821,6900009,7159725,3737744,6933187,6864581,4701337,6631702,6761156,4212122,4160675,4623227,5191670,6377984,1132272,2781845,3460976,7167027,4834444,3734991,7138019,7037760,6521356,6502657,6469688,6092666,2749928,7175796,7142063,7167539,7173296,6995540,7151000,3931358,3374686,6324891,3704015,3937060,2429057,7192029,7192034,7192689,7192031,7192035}
	end,
	--[[ Settings ]]--
	groundsData = {},
	mapData = {},
	standardTime = 6,
	checkpoint = false,
	respawnCheese = false,
	--[[ Leaderboard ]]--
	rank = function(players,fromValue,showPos,showPoints,pointsName,lim)
		local p,rank = {},""
		fromValue,lim = fromValue or {tfm.get.room.playerList,"score"},tonumber(lim) or 100
		for n in next,players do
			p[#p+1] = {name=n,v=fromValue[1][n][fromValue[2]]}
		end
		table.sort(p,function(f,s) return f.v>s.v end)
		for o,n in next,p do
			if o <= lim then
				rank = rank .. (showPos and "<J>"..o..". " or "") .. "<V>" .. n.name .. (showPoints and " <BL>- <VP>" .. n.v .. " "..(pointsName or "points") .."\n" or "\n")
			end
		end
		return rank
	end,
	--[[ Init ]]--
	reset = function()
		-- Data
		mode.hardcamp.info = {}
	end,
	init = function()
		-- Translations
		mode.hardcamp.translations.pt = mode.hardcamp.translations.br
		mode.hardcamp.langue = mode.hardcamp.translations[tfm.get.room.community] and tfm.get.room.community or "en"
		
		-- Settings
		mode.hardcamp.respawnCheese = system.miscAttrib == 1
		
		-- Init
		for _,f in next,{"AutoShaman","AutoScore","AutoTimeLeft","AutoNewGame","PhysicalConsumables","AfkDeath"} do
			tfm.exec["disable"..f]()
		end
		tfm.exec.setAutoMapFlipMode(false)

		mode.hardcamp.map()
		tfm.exec.newGame(table.random(mode.hardcamp.maps))
		
		-- Auto Admin
		system.roomAdmins.Mquk = true
	end,
	--[[ Events ]]--
	-- NewGame
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
	-- NewPlayer
	eventNewPlayer = function(n)
		if not mode.hardcamp.info[n] then
			mode.hardcamp.info[n] = {
				shift = false,
				checkpoint = {false,0,0,false},
				cheese = false,
			}
		end
		
		system.bindMouse(n,true)
		for i = 1,2 do
			system.bindKeyboard(n,16,i==1,true)
			system.bindKeyboard(n,string.byte("K"),i==1,true)
		end
		
		system.bindKeyboard(n,string.byte("E"),true,true)
		system.bindKeyboard(n,46,true,true) -- Delete key
		tfm.exec.chatMessage("<T>" .. system.getTranslation("welcome") .. "\n\t<CEP>/w Mquk #bootcamp+ @mapCode",n)
		
		ui.banner("15d75ac6aa9",120,100,n)
	end,
	-- Mouse
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
	-- Keyboard
	eventKeyboard = function(n,k,d,x,y)
		if k == 16 then
			mode.hardcamp.info[n].shift = d
		elseif k == string.byte("E") and mode.hardcamp.checkpoint then
			if mode.hardcamp.info[n].shift then
				mode.hardcamp.info[n].checkpoint = {false,0,0,mode.hardcamp.info[n].checkpoint[4]}
				ui.removeTextArea(1,n)
			else
				mode.hardcamp.info[n].checkpoint = {true,x,y,true}
				ui.addTextArea(1,"",n,x-5,y-5,10,10,0x56A75A,0x56A75A,.5,true)
			end
		elseif k == string.byte("K") then
			if d then
				ui.addTextArea(2,mode.hardcamp.rank(tfm.get.room.playerList,{tfm.get.room.playerList,"score"},true,true,"points",20),n,5,30,nil,200,nil,nil,.8,true)
			else
				ui.removeTextArea(2,n)
			end
		elseif k == 46 then
			tfm.exec.killPlayer(n)
		end
	end,
	-- ChatCommand
	eventChatCommand = function(n,c)
		local p = string.split(c,"[^%s]+",string.lower)
		if p[1] == "info" then
			tfm.exec.chatMessage("<T>" .. system.getTranslation("info"),n)
		else
			if system.roomAdmins[n] then
				if p[1] == "next" and os.time() > system.newGameTimer then
					tfm.exec.newGame(table.random(mode.hardcamp.maps))
					tfm.exec.chatMessage("<T>• " .. string.format(system.getTranslation("skip"),n))
				elseif p[1] == "again" and os.time() > system.newGameTimer then
					tfm.exec.newGame(tfm.get.room.currentMap)
					tfm.exec.chatMessage("<T>• " .. string.format(system.getTranslation("restart"),n))
				elseif (p[1] == "np" or p[1] == "map") and os.time() > system.newGameTimer then
					tfm.exec.newGame(p[2])
					tfm.exec.chatMessage("<T>• " .. string.format(system.getTranslation("loadmap"),n,string.find(p[2],"@") and p[2] or "@"..p[2]))
				elseif p[1] == "time" then
					tfm.exec.setGameTime(p[2] * 60)
					tfm.exec.chatMessage(string.format(system.getTranslation("settime"),p[2]))
				elseif p[1] == "standtime" then
					p[2] = p[2] and tonumber(p[2]) or 6
					if p[2] > 0 and p[2] < 10 then
						mode.hardcamp.standardTime = p[2]
						tfm.exec.chatMessage(string.format(system.getTranslation("setstandtime",p[2])))
					end
				elseif p[1] == "checkpoint" then
					local attribute = false
					if p[2] then
						attribute = true
						if p[2] == "not" and p[3] and p[3] == "cheese" then
							mode.hardcamp.respawnCheese = false
						elseif p[2] == "cheese" then
							mode.hardcamp.respawnCheese = true
						else
							attribute = false
						end
					end
					
					if not (mode.hardcamp.checkpoint and attribute) then
						mode.hardcamp.checkpoint = not mode.hardcamp.checkpoint
						tfm.exec.chatMessage("<T>Checkpoint " .. system.getTranslation(mode.hardcamp.checkpoint and "enabled" or "disabled"))
					
						if not mode.hardcamp.checkpoint then
							ui.removeTextArea(1,nil)
							for k,v in next,mode.hardcamp.info do
								v.checkpoint = {false,0,0,v.checkpoint[4]}
							end
							if system.miscAttrib ~= 1 then
								mode.hardcamp.respawnCheese = false
							end
							for k,v in next,mode.hardcamp.info do
								v.cheese = false
							end
						end
					end
				elseif p[1] == "queue" then
					if p[2] == "clear" then
						mode.hardcamp.maps = {}
						tfm.exec.chatMessage("• " .. string.format(system.getTranslation("queuecleared"),n))
					elseif p[2] == "add" then
						mode.hardcamp.maps[#mode.hardcamp.maps + 1] = p[3]
						tfm.exec.chatMessage("• " .. string.format(system.getTranslation("queuemapadded"),n,string.find(p[3],"@") and p[3] or "@"..p[3]))
					elseif p[2] and string.sub(p[2],1,1) == "p" then
						if p[2] == "p3" or p[2] == "p13" or p[2] == "p23" then
							mode.hardcamp.maps[#mode.hardcamp.maps + 1] = "#" .. string.sub(p[2],2)
							tfm.exec.chatMessage("• " .. string.format(system.getTranslation("queueperm"),n,string.upper(p[2])))
						end
					else
						mode.hardcamp.map()
						tfm.exec.chatMessage("• " .. string.format(system.getTranslation("queuereset"),n))
					end
				end
			end
		end
	end,
	-- Loop
	eventLoop = function()
		if _G.leftTime < 1 then
			tfm.exec.newGame(table.random(mode.hardcamp.maps))
		end
	end,
	-- PlayerDied
	eventPlayerDied = function(n)
		system.newTimer(function()
			tfm.exec.respawnPlayer(n)
			
			if mode.hardcamp.checkpoint and mode.hardcamp.info[n].checkpoint[1] then
				tfm.exec.movePlayer(n,mode.hardcamp.info[n].checkpoint[2],mode.hardcamp.info[n].checkpoint[3])
			end
			if mode.hardcamp.checkpoint and mode.hardcamp.info[n].cheese and mode.hardcamp.respawnCheese then
				tfm.exec.giveCheese(n)
			end
		end,1500,false)
	end,
	-- PlayerWon
	eventPlayerWon = function(n,t,time)
		mode.hardcamp.info[n].cheese = false
		mode.hardcamp.info[n].checkpoint = {false,0,0,mode.hardcamp.info[n].checkpoint[4]}
		ui.removeTextArea(1,n)

		mode.hardcamp.eventPlayerDied(n)
		tfm.exec.setPlayerScore(n,1,true)
		tfm.exec.chatMessage(string.format("<ROSE>%s (%ss <PT>(%scheckpoint)</PT>)",n,time/100,mode.hardcamp.info[n].checkpoint[4] and "" or "no "),n)
	end,
	-- PlayerGetCheese
	eventPlayerGetCheese = function(n)
		if mode.hardcamp.checkpoint and mode.hardcamp.respawnCheese then
			mode.hardcamp.info[n].cheese = true
		end
	end,
}