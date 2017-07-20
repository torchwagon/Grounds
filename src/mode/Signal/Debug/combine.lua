modulePath = string.match(debug.getinfo(1).source:sub(2),"(.-\\)Debug")
require (modulePath:match("C:(.-\\)src") .. 'sys')

tree = {
	getFolder("Translations"),
	getFile("Data"),
	getFile("Maps"),
	getFolder("Settings"),
	getFile("UI"),
	getFile("Init"),
	getFolder("Events"),
}

setFile()
