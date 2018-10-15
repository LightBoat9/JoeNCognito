/// @description Pick up gun

if(instance_exists(obj_player))
{
	if(place_meeting(x,y, obj_player))
	{
		with(obj_player)
		{
			instance_change(obj_playerGun, false)
		}
		obj_gameController.hasGun = true
		instance_destroy()
	}
}