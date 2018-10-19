/// @description Shoot gun
// You can write your code in this editor

// If the player picked up the gun and it isn't on cooldown,
// allow the player to shoot and disable the player's ability
// to use the gun again until the cooldown is complete
if(obj_gameController.hasGun && obj_gameController.canShoot)
{
	// Give the bullet a layer to be created on
	instance_create_layer(x,y,layer_get_id("Character_Layer"), obj_bullet)
	
	//show_debug_message(instance_exists(obj_bullet))
	
	obj_gameController.canShoot = false
	
	// Set the cooldown
	with(obj_effectTimer)
	{
		alarm_set(2, other.cooldown_gun*30)
	}
}