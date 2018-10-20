/// @description load options
ini_open("Options")
soundOn = ini_read_real("Volume", "soundOn", 1)
musicOn = ini_read_real("Volume", "musicOn", 1)
infiniteKeys = ini_read_real("Cheats", "infiniteKeys", 0)
infiniteSprint = ini_read_real("Cheats", "infiniteSprint", 0)
allUnlocks = ini_read_real("Cheats", "allUnlocks", 0)
noDeaths = ini_read_real("Cheats", "noDeaths", 0)
ini_close()