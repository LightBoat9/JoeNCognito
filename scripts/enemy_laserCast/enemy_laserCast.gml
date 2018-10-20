//creates the Cool Laser and does the things with it

var xx = x, yy = y, //todo: actually align it to the barrel of the laser turret

	laser = instance_create_layer(xx,yy,layer,obj_laserCast),
	
	dx = dcos(angle),
	dy = -dsin(angle),
	horizontal = true,
	slope = 0,
	length = 1,
	dsign = 0;

if dx = 0 && dy = 0 {
	return collision_point_tiles(xx,yy,tilemap_collision)	
} else if abs(dx)<abs(dy) {
	horizontal = false
	slope = dx/dy
	length = abs(dy)
	dsign = sign(dy)
} else {
	slope = dy/dx
	length = abs(dx)
	dsign = sign(dx)
}

var ex = xx, ey = yy;

for(var i=0;(ex>=0 && ex<=room_width && ey>=0 && ey<=room_height);i++){
	var xxx = xx + (horizontal? i: i*slope) * dsign,
		yyy = yy + (horizontal? i*slope: i) * dsign;
		
	if collision_point_tiles(xxx,yyy,tilemap_collision) || collision_point(xxx,yyy,obj_wallParent,false,true) break;
	else {
		ex = xxx
		ey = yyy
		
		with instance_place(xxx,yyy,obj_playerController){
			event_user(0)
		}
	}
}

//setup visual for laser
with laser {
	xTo = ex
	yTo = ey
}