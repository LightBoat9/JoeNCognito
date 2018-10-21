/// @description Toggle Sound
// You can write your code in this editor

// Open the "Options" file and under the "Volume" section,
// set soundOn value based on button's state.
// Then close the file.
ini_open("Options")

if(image_index == 0)
{
	
	ini_write_real("Volume", "soundOn", true)
	obj_gameController.soundOn = true
}
else
{
	ini_write_real("Volume", "soundOn", false)
	obj_gameController.soundOn = false
}

ini_close()