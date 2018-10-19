var radius = argument2,
	angle = argument0,
	breadth = argument1,
	
	a1 = angle-breadth/2,
	a2 = angle+breadth/2;

draw_line(x,y,x+dcos(a1)*radius,y-dsin(a1)*radius)
draw_line(x,y,x+dcos(a2)*radius,y-dsin(a2)*radius)