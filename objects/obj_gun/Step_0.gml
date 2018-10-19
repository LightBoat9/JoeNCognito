/// @description Pick up gun
// You can write your code in this editor

// actualUnlocks: 0-hasGun, 1-hasCoat, 2-hasProjector
// If the player doesn't have the gun then pick it up...
// The gameContoller changes the player sprite
if(!obj_gameController.actualUnlocks[0])
{
	if(place_meeting(x,y,obj_playerParent))
	{
			obj_gameController.actualUnlocks[0] = true
			instance_destroy()
	}
}

