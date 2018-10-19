/// @description Set speed, motion, image_angle, angle

//input reading
var vectX = keyboard_check(ord("D")) - keyboard_check(ord("A")),
	vectY = keyboard_check(ord("S")) - keyboard_check(ord("W")),
	walkSpd = 3,
	sprintSpd = 6;

//sprinting checks a few things but does not necessarily subtract from stamina
sprinting = (keyboard_check(vk_lshift) && 
	obj_gameController.canSprint);

//show_debug_message(string(obj_gameController.stamina) + ", "+string(sprinting))

//setting spd
xSpd = vectX * (sprinting? sprintSpd: walkSpd);
ySpd = vectY * (sprinting? sprintSpd: walkSpd);
//ternary operator ? choses either sprintSpd or walkSpd based on sprinting

//mouse look
angle = point_direction(x,y,mouse_x,mouse_y)