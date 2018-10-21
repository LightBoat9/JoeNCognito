/// @description movement/sprite application
var dv = movement_application(xSpd,ySpd),
	ds = 0.5;

//movement application returns the vector of actual change, dv
//as long as |dv| != 0, and we're sprinting and infinteSprint isn't on, we can/should subtract from stamina
if (dv[0] != 0 || dv[1] != 0) {
	if !obj_gameController.infiniteSprint and sprinting {
		image_speed = 2
		ds = -1;
	} else image_speed = 1
} else {
	image_speed = 0	
}


with obj_gameController {
	stamina = clamp(stamina+ds, 0, staminaMax)
	
	//toggle logic;
	//if stamina is fully depleted canSprint turns off til it refills
	if stamina = 0 then canSprint = false
	else if stamina = staminaMax then canSprint = true
}

var gun = false,
	coat = false;
	
with obj_gameController{
	gun = hasGun
	coat = hasCoat
}

if gun {
	if coat then sprite_index = spr_player_GunANDCoat
	else sprite_index = spr_playerGun
}else{
	if coat then sprite_index = spr_playerCoat
	else sprite_index = spr_player
}