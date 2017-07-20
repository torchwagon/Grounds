	generateMap = function()
		local groundProperties = {[0] = {.3,.2},[4] = {20,.2},[5] = {.3,.2},[6] = {.3,.2},[7] = {.1,.2},[10] = {.3,0},[11] = {.05,.1},[3] = {5,20}}
		local groundDecorations = {[0] = {0,4,5},[4] = {1,42,51},[5] = {1,2,4,12,18,20,32,42,46},[6] = {0,1,2,3,4,5,11,42},[7] = {7,8,9,10},[10] = {42,103,118},[11] = {51,106},[3] = {}}
		local newGround = "<S L=\"%s\" H=\"%s\" X=\"%s\" Y=\"%s\" T=\"%s\" P=\"0,0,%s,%s,0,0,0,0\" />"
		local newDecoration = "<P P=\"%s,0\" X=\"%d\" Y=\"%d\" T=\"%d\" />"
		local object = "<%s X=\"%s\" Y=\"%s\"/>"
		local objects = {hole="T",mice="DS",cheese="F"}

		local mapHeight = math.random(1500,3000)

		local grounds = {}
		local decorations = {}
		for i = 1,math.ceil(mapHeight/180) do
			local T = table.random({0,4,5,6,7,10,11,table.random({4,5,6,10,3})})

			local H = T==3 and math.random(10,20) or math.random(40,100)

			local Y = (#grounds > 1 and grounds[#grounds].Y < 320 and math.random(230,310) or math.random(300,350)) or math.random(290,350)

			local X,L
			repeat
				X = (#grounds > 1 and (grounds[#grounds].X + ((math.random(-1,1) * 30) + 200)) or math.random(50,300))
				X = X < 60 and 100 or X > mapHeight - 100 and mapHeight - 300 or X
				L = T==3 and H or math.random(40,math.ceil(mapHeight/18))
			until (X - (L/2)) > 50 and (X + (L/2)) < mapHeight - 50

			local properties = groundProperties[T]
			grounds[#grounds + 1] = {X=X,Y=Y,L=L,H=H,string.format(newGround,L,H,X,Y,T,properties[1],properties[2])}

			if T ~= 3 and math.random(20) < 10 then
				local decoList = groundDecorations[T]
				decorations[#decorations + 1] = string.format(newDecoration,table.random({0,0,0,math.random(0,1),1}),X - math.random(-((L/4)+1),((L/4)+1)),Y - (H/2),table.random(decoList))
			end
		end
		
		local cheeseX
		local foo = function()
			for k,v in next,grounds do
				if (cheeseX + 10) > (v.X - v.L/2) and (cheeseX - 10) < (v.X + v.L/2) then
					return false
				end
			end
			return true
		end
		repeat
			cheeseX = math.random(200,mapHeight - 500)
		until foo()

		grounds[#grounds + 1] = {X=0,Y=0,L=0,H=0,string.format(newGround,200,40,100,380,2,.3,.9)}
		grounds[#grounds + 1] = {X=0,Y=0,L=0,H=0,string.format(newGround,300,40,mapHeight - 150,380,6,.3,.2)}

		tfm.exec.newGame(string.format("<C><P G=\"0,%s\" F=\"%s\" L=\"%s\" /><Z><S>%s</S><D>%s%s%s%s</D><O /></Z></C>",table.random({math.random(7,12),10,11,9}),table.random({0,1,2,3,4,5,7,8}),mapHeight,table.concat(grounds,"",function(k,v) return v[1] end),string.format(object,objects.hole,mapHeight - 30,360),string.format(object,objects.mice,10,365),string.format(object,objects.cheese,cheeseX,math.random(280,340)),table.concat(decorations)))
	end,
