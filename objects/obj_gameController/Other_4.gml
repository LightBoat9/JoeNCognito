/// @description Keep track of items, options, and location

// Checks the "Options" file for the options the user has chosen.
// Updates the variables in gameController based on the file.
// If the variable doesn't exist in the file, use 1 or 0 as the default
ini_open("Options")
soundOn = ini_read_real("Volume", "soundOn", true)
musicOn = ini_read_real("Volume", "musicOn", true)
infiniteKeys = ini_read_real("Cheats", "infiniteKeys", false)
infiniteSprint = ini_read_real("Cheats", "infiniteSprint", false)
allUnlocks = ini_read_real("Cheats", "allUnlocks", false)
noDeaths = ini_read_real("Cheats", "noDeaths", false)
ini_close()

ini_open("Saving")
currentRoom = ini_read_real("Level", "currentRoom", rm_mainMenu)
numKeys = ini_read_real("Items", "numKeys", 0)
actualUnlocks[0] = ini_read_real("Items", "hasGun", false)
actualUnlocks[1] = ini_read_real("Items", "hasCoat", false)
actualUnlocks[2] = ini_read_real("Items", "hasProjector", false)
ini_close()

// If the "All Unlocks" cheat is turned off, set player to the proper object based on 
// items that have been picked up. Else if the cheat is on, change player to playerCoat 
// and give player all items.
if(!allUnlocks)
{
	hasGun = actualUnlocks[0]
	hasCoat = actualUnlocks[1]
	hasProjector = actualUnlocks[2]
	
}
else
{
	hasGun = true
	hasCoat = true
	hasProjector = true
}

if(musicOn)
{
	if (room == rm_level1) 
		audio_play_sound(snd_lv1, 2, true)
	else if (room == rm_level2){
		audio_stop_sound(snd_lv1)
		audio_play_sound(snd_lv2, 2, true)
	}else if(room == rm_level3){
		audio_stop_sound(snd_lv2)
		audio_play_sound(snd_lv3, 2, true)
	}else if(room == rm_level4){
		audio_stop_sound(snd_lv3)
		audio_play_sound(snd_lv4, 2, true)
	}
		
}