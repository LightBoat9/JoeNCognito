/// @description Set stopping point
// You can write your code in this editor

event_inherited()

dx = mouse_x-x
dy = mouse_y-y

dir = point_direction(0,0,dx,dy)
xSpd = maxSpd * dcos(dir)
ySpd = maxSpd * -dsin(dir)