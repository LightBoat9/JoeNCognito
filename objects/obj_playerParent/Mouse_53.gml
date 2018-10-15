/// @description Shoot gun
// You can write your code in this editor

if(obj_gameController.hasGun = true && obj_gameController.canGun = true)
{
	instance_create_layer(x,y,layer, obj_bullet)
	obj_gameController.canGun = false
	alarm_set(2, 250)
}