/// @description Shoot gun
// You can write your code in this editor

if(obj_gameController.hasGun && obj_gameController.canShoot)
{
	instance_create_layer(x,y,layer_get_id("Character_Layer"), obj_bullet)
	//show_debug_message(instance_exists(obj_bullet))
	obj_gameController.canShoot = false
	with(obj_effectTimer)
	{
		alarm_set(2, 250)
	}
}

