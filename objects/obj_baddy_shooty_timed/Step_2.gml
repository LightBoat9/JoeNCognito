/// @description Insert description here
// You can write your code in this editor

var da = angle_difference(angle,angle_target);
da = min(abs(da),rotSpd)*sign(da)

//show_debug_message(string(da))

if abs(da)<rotSpd then angle = angle_target
else angle-=da

if da = 0 and state = turret.checking {
	if angle = angle_start {
		state = turret.idle	
	} else {
		angle_target = angle_start	
	}
}