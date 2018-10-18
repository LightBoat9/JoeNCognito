/// @description Use voice projector
// You can write your code in this editor

if(obj_gameController.hasProjector && obj_gameController.canProjector)
{
	
	
	instance_create_layer(x,y,layer_get_id("Character_Layer"), obj_noise)
	obj_gameController.canProjector = false
	with(obj_effectTimer)
	{
		alarm_set(3, 750)
	}
}

