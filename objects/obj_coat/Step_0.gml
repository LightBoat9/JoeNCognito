/// @description Pick up coat

// actualUnlocks: 0-hasGun, 1-hasCoat, 2-hasProjector
// If the player has the gun but doesn't have the coat then pick it up...
// The gameContoller changes the player sprite
if(!obj_gameController.actualUnlocks[1] && obj_gameController.actualUnlocks[0])
{
	if(place_meeting(x,y,obj_playerParent))
	{
			obj_gameController.actualUnlocks[1] = true
			instance_destroy()
	}
}

