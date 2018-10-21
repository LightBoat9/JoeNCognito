/// @description Toggle Deaths
// You can write your code in this editor

// Open the "Options" file and under the "Cheats" section,
// set noDeaths value based on button's state.
// Then close the file.
ini_open("Options")

if(image_index == 0)
{
	ini_write_real("Cheats", "noDeaths", true)
	obj_gameController.noDeaths = true
}
else
{
	ini_write_real("Cheats", "noDeaths", false)
	obj_gameController.noDeaths = false
}

ini_close()