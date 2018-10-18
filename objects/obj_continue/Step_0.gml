/// @description Disable if not paused game
// You can write your code in this editor

if (!file_exists("Save.dat"))
{
	image_alpha = 0
}
else
{
	image_alpha = 1
}


