/// @description Pick up Item
// You can write your code in this editor

audio_play_sound(snd_pickUp, 0, false)

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