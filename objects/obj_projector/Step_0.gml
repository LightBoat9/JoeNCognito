/// @description Pick up projector

if(!obj_gameController.actualUnlocks[2] && obj_gameController.actualUnlocks[1])
{
	if(place_meeting(x,y,obj_playerParent))
	{
			obj_gameController.actualUnlocks[2] = true
			instance_destroy()
	}
}

