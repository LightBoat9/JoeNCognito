/// @description Keep track of player state

ini_open("Options")
soundOn = ini_read_real("Volume", "soundOn", 1)
musicOn = ini_read_real("Volume", "musicOn", 1)
infiniteKeys = ini_read_real("Cheats", "infiniteKeys", 0)
infiniteSprint = ini_read_real("Cheats", "infiniteSprint", 0)
allUnlocks = ini_read_real("Cheats", "allUnlocks", 0)
noDeaths = ini_read_real("Cheats", "noDeaths", 0)
ini_close()

if(instance_exists(obj_playerCoat))
{
	if(playerInvisible)
	{
		obj_playerCoat.image_alpha = 0.5
	}
	else
	{
		obj_playerCoat.image_alpha = 1
	}
}


if(!allUnlocks)
{
	hasGun = actualUnlocks[0]
	hasCoat = actualUnlocks[1]
	hasProjector = actualUnlocks[2]
	
	if(!hasGun && !hasCoat && instance_exists(obj_playerCoat))
	{
		with(obj_playerCoat)
		{
			instance_change(obj_player, false)
		}
	}
	else if(hasGun && !hasCoat && instance_exists(obj_playerCoat))
	{
		with(obj_playerCoat)
		{
			instance_change(obj_playerGun, false)
		}
	}
	else if(hasCoat)
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
	else if (hasGun)
	{
		if(instance_exists(obj_player))
		{
			with(obj_player)
			{
				instance_change(obj_playerGun, false)
			}
		}
	}
	
}
else
{
	hasGun = true
	hasCoat = true
	hasProjector = true
	
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


