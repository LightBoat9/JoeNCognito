/// @description Pick up gun

if(instance_exists(obj_playerGun))
{
	if(place_meeting(x,y, obj_playerGun))
	{
		with(obj_playerGun)
		{
			instance_change(obj_playerCoat, false)
		}
		obj_gameController.hasCoat = true
		instance_destroy()
	}
}