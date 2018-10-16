/// @description Use Cloak
// You can write your code in this editor

if(obj_gameController.hasCoat = true && obj_gameController.canCoat = true)
{
	
	image_alpha = 0.5
	obj_gameController.canCoat = false
	with(obj_effectTimer)
	{
		alarm_set(0, 120)
	}
	
	invisible = true
}
