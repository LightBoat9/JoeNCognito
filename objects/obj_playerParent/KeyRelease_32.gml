/// @description Use Cloak
// You can write your code in this editor

if(obj_gameController.hasCoat && obj_gameController.canCoat)
{
	
	obj_gameController.playerInvisible = true
	obj_gameController.canCoat = false
	with(obj_effectTimer)
	{
		alarm_set(0, 120)
	}
}