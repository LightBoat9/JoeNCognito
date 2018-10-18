/// @description Pick up gun
// You can write your code in this editor

if(!obj_gameController.actualUnlocks[0])
{
	if(place_meeting(x,y,obj_playerParent))
	{
			obj_gameController.actualUnlocks[0] = true
			instance_destroy()
	}
}

