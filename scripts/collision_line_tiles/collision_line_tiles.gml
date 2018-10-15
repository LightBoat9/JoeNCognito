var x1=argument0,
	y1=argument1,
	x2=argument2,
	y2=argument3,
	collisionMap=argument4;

//build a line equation from p1 to p2
var dx = x2-x1,
	dy = y2-y1,
	slope,
	length,
	dsign,
	horizontal = true;

//show_debug_message(string(dx)+", "+string(dy))

if abs(dx)<abs(dy) {
	horizontal = false
	slope = dx/dy
	length = abs(dy)
	dsign = sign(dy)
} else if dx != 0 && dy != 0 {
	slope = dy/dx
	length = abs(dx)
	dsign = sign(dx)
} else {
	return collision_point_tiles(x1,y1,collisionMap)	
}


for(var i=0;i<=length;i++){
	var xx = x1 + (horizontal? i: i*slope) * dsign,
		yy = y1 + (horizontal? i*slope: i) * dsign;
		
	if collision_point_tiles(xx,yy,collisionMap) return true
}
return false