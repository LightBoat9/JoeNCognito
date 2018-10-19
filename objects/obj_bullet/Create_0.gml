/// @description Set direction and speed
// You can write your code in this editor

event_inherited();

dir = point_direction(x,y, mouse_x,mouse_y)

// Set the amount of time that the bullet can travel for
alarm_set(0, 20)

xSpd = maxSpd * dcos(dir)
ySpd = maxSpd * -dsin(dir)