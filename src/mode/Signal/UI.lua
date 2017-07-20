	displayInfo = function(n,id)
		local color = ({"<VP>","<J>","<R>"})[id]
		ui.addTextArea(1,"<p align='center'><font size='25'>" .. color .. mode.signal.translations[mode.signal.langue].info[id][1] .. "\n</font></p><p align='left'><font size='14'>" .. mode.signal.translations[mode.signal.langue].info[id][2],n,250,110,300,181,0x324650,0x27343A,1,true)
		ui.addTextArea(2,"<font size='2'>\n</font><p align='center'><font size='16'><a href='event:close'>" .. mode.signal.translations[mode.signal.langue].close,n,250,300,300,30,0x27343A,0x27343A,1,true)
		ui.addTextArea(3,"<p align='center'><font size='20'><a href='event:info.1'><VP>•</a> <a href='event:info.2'><J>•</a> <a href='event:info.3'><R>•</a>",n,250,145,300,30,1,1,0,true)
		tfm.exec.removeImage(mode.signal.info[n].imageId)
		mode.signal.info[n].imageId = tfm.exec.addImage(mode.signal.lights[id] .. ".png","&1",375,200,n)
	end,