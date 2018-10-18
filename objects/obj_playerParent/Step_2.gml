/// @description movement application
var dv = movement_application(xSpd,ySpd);

//movement application returns the vector of actual change, dv
//as long as |dv| != 0, and we're sprinting, we can/should subtract from stamina
if (dv[0] != 0 && dv[1] != 0) and sprinting 
then with obj_playerController{
	stamina--
} else with obj_playerController{
	stamina++	
}