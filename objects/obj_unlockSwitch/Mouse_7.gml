/// @description Toggle Unlock Cheat
// You can write your code in this editor

// Open the "Options" file and under the "Cheats" section,
// set allUnlocks value based on button's state.
// Then close the file.
ini_open("Options")

if(image_index == 0)
{
	ini_write_real("Cheats", "allUnlocks", true)
	obj_gameController.allUnlocks = true
}
else
{
	ini_write_real("Cheats", "allUnlocks", false)
	obj_gameController.allUnlocks = false
}

ini_close()
