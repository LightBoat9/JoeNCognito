//projects a sound that alerts all enemies within its radius
//todo: spawn visualization of sound

var xx = argument0,
	yy = argument1,
	radius = argument2;

with obj_baddy_chaser {
	if (state = chaser.idle or state = chaser.pathing) and point_distance(x,y,xx,yy) <= radius {
		motionPlan_pointOfInterest(xx,yy)
		state = chaser.pathing
	}
}

var pulse = instance_create_layer(xx,yy,layer,obj_soundPulse);
pulse.radius = radius