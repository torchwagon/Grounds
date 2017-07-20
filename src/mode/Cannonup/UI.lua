	uiprofile = function(p,n)
		ui.addTextArea(1,"\n\n<font size='13'>\n" .. string.format(system.getTranslation("profile"),mode.cannonup.info[p].round,mode.cannonup.info[p].victory,mode.cannonup.info[p].death),n,300,100,200,150,0x0B282E,0x1B282E,1,true)
		ui.addTextArea(2,"<p align='center'><font size='20'><VP><B><a href='event:close'>"..p.."</a>",n,305,105,190,30,0x244452,0x1B282E,.4,true)
	end,