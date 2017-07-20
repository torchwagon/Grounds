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
		
		local id = tfm.exec.addImage("15c6ee6324d.png","&0",120,100,n)
		system.newTimer(function()
			tfm.exec.removeImage(id)
		end,5000,false)
	end,
