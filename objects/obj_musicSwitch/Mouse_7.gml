/// @description Toggle Sound
// You can write your code in this editor

// Open the "Options" file and under the "Volume" section,
// set musicOn value based on button's state.
// Then close the file.

audio_stop_all()

ini_open("Options")

if(image_index == 0)
{
	ini_write_real("Volume", "musicOn", true)
	obj_gameController.musicOn = true
}
else
{
	ini_write_real("Volume", "musicOn", false)
	obj_gameController.musicOn = false
}

ini_close()
