	eventKeyboard = function(n,k,d,x,y)
		if k == 32 then
			tfm.exec.movePlayer(n,0,0,true,0,mode.sharpie.flyPower,true)
			tfm.exec.displayParticle(3,x,y)
		end
	end,
