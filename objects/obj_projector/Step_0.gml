/// @description Pick up projector

if(instance_exists(obj_playerCoat && !obj_gameController.allUnlocks))
{
	if(place_meeting(x,y,obj_playerCoat))
	{
		if(obj_gameController.actualUnlocks[1] = true)
		{
			obj_gameController.actualUnlocks[2] = true
			instance_destroy()
		}
	}
}
