/// @description Use Cloak
// You can write your code in this editor

// If the player picked up the coat and it isn't on cooldown,
// allow the player to go invisible and disable the player's ability
// to use the coat again until the cooldown is complete
if(obj_gameController.hasCoat && obj_gameController.canCoat)
{
	
	obj_gameController.playerInvisible = true
	obj_gameController.canCoat = false
	
	// Sets the cooldown for invisibility duration and when the player
	// can resuse the ability
	with(obj_effectTimer)
	{
		alarm_set(0, other.cooldown_invisible*30)
	}
}
