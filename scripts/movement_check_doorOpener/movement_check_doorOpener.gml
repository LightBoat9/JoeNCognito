//works for either horizontal or vertical checking.
//not intended for either in particular.

//pass 1: unlockable doors
//don't need list; unlikely there'll be 2 doors to collide with at the same time
with instance_place(argument0,argument1,obj_door){
	if(obj_gameController.numKeys > 0 || obj_gameController.infiniteKeys){
		obj_gameController.numKeys = max(obj_gameController.numKeys-1, 0) 
		instance_destroy()
	} else {
		return false;	
	}
}

//pass 2: default movement check
return movement_check_default(argument0,argument1);