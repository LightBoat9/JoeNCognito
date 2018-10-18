/// @description movement application
var dv = movement_application(xSpd,ySpd),
	ds = 1;

//movement application returns the vector of actual change, dv
//as long as |dv| != 0, and we're sprinting and infinteSprint isn't on, we can/should subtract from stamina
if ((dv[0] != 0 || dv[1] != 0) && !obj_gameController.infiniteSprint) and sprinting then ds = -1;

with obj_gameController {
	stamina = clamp(stamina+ds, 0, staminaMax)
	
	//toggle logic;
	//if stamina is fully depleted canSprint turns off til it refills
	if stamina = 0 then canSprint = false
	else if stamina = staminaMax then canSprint = true
}