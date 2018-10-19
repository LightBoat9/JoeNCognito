/// @description Pick up projector

// actualUnlocks: 0-hasGun, 1-hasCoat, 2-hasProjector
// If the player has the coat but doesn't have the projector then pick it up...
// The gameContoller changes the player sprite
if(!obj_gameController.actualUnlocks[2] && obj_gameController.actualUnlocks[1])
{
	if(place_meeting(x,y,obj_playerParent))
	{
			obj_gameController.actualUnlocks[2] = true
			instance_destroy()
	}
}

