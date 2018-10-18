/// @description Stop projection
// You can write your code in this editor

speed = 0

if(image_alpha <= 0)
{
	instance_destroy()
}
else
{
	image_alpha -= .1
}
