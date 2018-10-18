/// @description Toggle Keys cheat
// You can write your code in this editor

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
