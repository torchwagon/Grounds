	eventNewPlayer = function(n)
		if not mode.godmode.info[n] then
			mode.godmode.info[n] = {
				usedNails = 0,
				roundSha = 0,
				deathSha = 0,
				deathMice = 0,
				cheeseMice = 0,
				title = "Shammy",
			}
		end

		for k,v in next,{66,67,74,78,80,86} do
			system.bindKeyboard(n,v,true,true)
		end

		tfm.exec.chatMessage("<ROSE>" .. system.getTranslation("welcome"),n)
		
		local id = tfm.exec.addImage("15ca3f4a200.png","&0",5,150,n)
		system.newTimer(function()
			tfm.exec.removeImage(id)
		end,10000,false)
	end,