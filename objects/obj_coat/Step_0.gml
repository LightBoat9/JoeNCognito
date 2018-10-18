/// @description Pick up coat

//actualUnlocks: 0-Gun, 1-Coat, 2-Projector
if(!obj_gameController.actualUnlocks[1] && obj_gameController.actualUnlocks[0])
{
	if(place_meeting(x,y,obj_playerParent))
	{
			obj_gameController.actualUnlocks[1] = true
			instance_destroy()
	}
}

