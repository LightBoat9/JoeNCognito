/// @description Open door

if(obj_gameController.numKeys > 0 || obj_gameController.infiniteKeys)
{
		obj_gameController.numKeys = max(obj_gameController.numKeys-1, 0) 
		instance_destroy()
}
