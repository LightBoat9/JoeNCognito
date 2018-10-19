/// @description Toggle Sprint Cheat
// You can write your code in this editor

// Open the "Options" file and under the "Cheats" section,
// set infiniteSprint value based on button's state.
// Then close the file.
ini_open("Options")

if(image_index == 0)
{
	ini_write_real("Cheats", "infiniteSprint", true)
	//obj_gameController.infiniteSprint = true
}
else
{
	ini_write_real("Cheats", "infiniteSprint", false)
	//obj_gameController.infiniteSprint = false
}

ini_close()


