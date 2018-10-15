/// @description Use voice projector
// You can write your code in this editor

if(obj_gameController.hasProjector = true && obj_gameController.canProjector = true)
{
	
	
	instance_create_layer(x,y,layer, obj_noise)
	obj_gameController.canProjector = false
	alarm_set(3, 1000)
}