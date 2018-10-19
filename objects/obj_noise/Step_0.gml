/// @description Stop projection
// You can write your code in this editor

// If the distance to the stopping point is larger than 5,
// Move the projection towards the stopping point with
// a speed of 5
if point_distance(x, y, stopPoint_x, stopPoint_y) > 5
{
   move_towards_point(stopPoint_x, stopPoint_y, 5);
}
else 
{
	speed = 0;
	image_alpha -= .1
}
