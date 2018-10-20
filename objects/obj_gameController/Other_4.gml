/// @description Keep track of player state

// Checks the "Options" file for the options the user has chosen.
// Updates the variables in gameController based on the file.
// If the variable doesn't exist in the file, use 1 or 0 as the default
ini_open("Options")
soundOn = ini_read_real("Volume", "soundOn", 1)
musicOn = ini_read_real("Volume", "musicOn", 1)
infiniteKeys = ini_read_real("Cheats", "infiniteKeys", 0)
infiniteSprint = ini_read_real("Cheats", "infiniteSprint", 0)
allUnlocks = ini_read_real("Cheats", "allUnlocks", 0)
noDeaths = ini_read_real("Cheats", "noDeaths", 0)
ini_close()

// If the "All Unlocks" cheat is turned off, set player to the proper object based on 
// items that have been picked up. Else if the cheat is on, change player to playerCoat 
// and give player all items.
if(!allUnlocks)
{
	hasGun = actualUnlocks[0]
	hasProjector = actualUnlocks[1]
	hasCoat = actualUnlocks[2]
	
}
else
{
	hasGun = true
	hasCoat = true
	hasProjector = true
}



