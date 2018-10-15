/// @description Set speed, motion, direction, angle

if(keyboard_check(ord("A")))
{
	if(keyboard_check(ord("W")))
		movement = Movement.diagUpLeft;
	else if(keyboard_check(ord("S")))
		movement = Movement.diagDownLeft;
	else
		movement = Movement.left;
}
else if(keyboard_check(ord("D")))
{
	if(keyboard_check(ord("W")))
		movement = Movement.diagUpRight;
	else if(keyboard_check(ord("S")))
		movement = Movement.diagDownRight;
	else
		movement = Movement.right;
}
else if(keyboard_check(ord("W")))
	movement = Movement.up;
else if(keyboard_check(ord("S")))
	movement = Movement.down;
else
	movement = Movement.idle;

if(movement != Movement.idle)
{
	vspeed = 3;
	speed = 3;
}

// Check to see if a wall exists in that direction
wallRight = instance_place(x + (hspeed + 10), y + 0, obj_wallParent);
wallLeft = instance_place(x - (hspeed + 10), y + 0, obj_wallParent);
wallUp = instance_place(x + 0, y - (vspeed + 10), obj_wallParent);
wallDown = instance_place(x + 0, y + (vspeed + 10), obj_wallParent);

image_angle = point_direction(x,y,mouse_x,mouse_y)

switch(movement)
{
	case Movement.idle:
		vspeed = 0;
		hspeed = 0;
		break;
	case Movement.right:
		direction = 0;
		
		if(wallRight != noone)
		{
			hspeed = 0;
		}
		break;
	case Movement.diagUpRight:
		direction = 45;
		
		if(wallRight != noone || wallUp != noone)
		{
			hspeed = 0;
			vspeed = 0;
		}
		break;
	case Movement.up:
		direction = 90;
		
		if(wallUp != noone)
		{
			vspeed = 0;
		}		
		break;
	case Movement.diagUpLeft:
		direction = 135;
		
		if(wallLeft != noone || wallUp != noone)
		{
			hspeed = 0;
			vspeed = 0;
		}
		break;
	case Movement.left:
		direction = 180;
		
		if(wallLeft != noone)
		{
			hspeed = 0;
		}
		break;
	case Movement.diagDownLeft:
		direction = 225;
		
		if(wallLeft != noone || wallDown != noone)
		{
			hspeed = 0;
			vspeed = 0;
		}
		break;
	case Movement.down:
		direction = 270;
		
		if(wallDown != noone)
			{
				vspeed = 0;
			}
		break;
	case Movement.diagDownRight:
		direction = 315;
		
		if(wallRight != noone || wallDown != noone)
		{
			hspeed = 0;
			vspeed = 0;
		}
		break;
}
