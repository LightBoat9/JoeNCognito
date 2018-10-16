/// @description Keep track of player state

if(hasCoat == true)
{
	if(instance_exists(obj_player))
	{
		with(obj_player)
		{
			instance_change(obj_playerCoat, false)
		}
	}
	
	else if(instance_exists(obj_playerGun))
	{
		with(obj_playerGun)
		{
			instance_change(obj_playerCoat, false)
		}
	}
}
else if (hasGun == true)
{
	if(instance_exists(obj_player))
	{
		with(obj_player)
		{
			instance_change(obj_playerGun, false)
		}
	}
}
