//projects a sound that alerts all enemies within its radius
//todo: spawn visualization of sound

var xx = argument0,
	yy = argument1,
	radius = argument2;

with obj_baddy {
	if !disabled and point_distance(x,y,xx,yy) <= radius and script_exists(soundScript)
		then script_execute(soundScript,xx,yy)
}

var pulse = instance_create_layer(xx,yy,layer,obj_soundPulse);
pulse.radius = radius