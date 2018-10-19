/// @description Toggle Keys cheat
// You can write your code in this editor

// Open the "Options" file and under the "Cheats" section,
// set infiniteKeys value based on button's state.
// Then close the file.
ini_open("Options")

if(image_index == 0)
{
	ini_write_real("Cheats", "infiniteKeys", true)
	//obj_gameController.infiniteKeys = true
}
else
{
	ini_write_real("Cheats", "infiniteKeys", false)
	//obj_gameController.infiniteKeys = false
}

ini_close()
