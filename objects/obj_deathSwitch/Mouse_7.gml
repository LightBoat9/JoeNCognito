/// @description Toggle Deaths
// You can write your code in this editor

ini_open("Options")

if(image_index == 0)
{
	ini_write_real("Cheats", "noDeaths", true)
	//obj_gameController.noDeaths = true
}
else
{
	ini_write_real("Cheats", "noDeaths", false)
	//obj_gameController.noDeaths = false
}

ini_close()

