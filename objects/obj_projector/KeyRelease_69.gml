/// @description Pick up gun

if(instance_exists(obj_playerCoat))
{
	if(place_meeting(x,y, obj_playerCoat))
	{
		obj_gameController.hasProjector = true
		instance_destroy()
	}
}