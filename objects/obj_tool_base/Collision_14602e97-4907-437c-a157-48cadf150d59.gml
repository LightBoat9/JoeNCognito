/// @description Insert description here
// You can write your code in this editor
with obj_gameController{
	actualUnlocks[other.unlockIndex] = true
	switch(other.unlockIndex){
		case 0:
			hasGun = true;
			break;
		case 1:
			hasProjector = true;
			break;
		case 2:
			hasCoat = true;
			break;
	}
}

instance_destroy()