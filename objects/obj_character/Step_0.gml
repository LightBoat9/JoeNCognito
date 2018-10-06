/// @description Set speed, motion, direction, angle
// You can write your code in this editor

if(keyboard_check(vk_left))
{
	if(keyboard_check(vk_up))
		movement = Movement.diagUpLeft;
	else if(keyboard_check(vk_down))
		movement = Movement.diagDownLeft;
	else
		movement = Movement.left;
}
else if(keyboard_check(vk_right))
{
	if(keyboard_check(vk_up))
		movement = Movement.diagUpRight;
	else if(keyboard_check(vk_down))
		movement = Movement.diagDownRight;
	else
		movement = Movement.right;
}
else if(keyboard_check(vk_up))
	movement = Movement.up;
else if(keyboard_check(vk_down))
	movement = Movement.down;
else
	movement = Movement.idle;

if(movement != Movement.idle)
{
	vspeed = 3;
	speed = 3;
}

wallRight = instance_place(x + (hspeed + 10), y + 0, obj_wallParent);
wallLeft = instance_place(x - (hspeed + 10), y + 0, obj_wallParent);
wallUp = instance_place(x + 0, y - (vspeed + 10), obj_wallParent);
wallDown = instance_place(x + 0, y + (vspeed + 10), obj_wallParent);

switch(movement)
{
	case Movement.idle:
		vspeed = 0;
		hspeed = 0;
		break;
	case Movement.right:
		direction = 0;
		image_angle = 0;
		
		if(wallRight != noone)
		{
			hspeed = 0;
			//x -= 1;
		}
		break;
	case Movement.diagUpRight:
		direction = 45;
		image_angle = 45;
		
		if(wallRight != noone || wallUp != noone)
		{
			hspeed = 0;
			vspeed = 0;
		}
		break;
	case Movement.up:
		direction = 90;
		image_angle = 90;
		
		if(wallUp != noone)
		{
			vspeed = 0;
			//y += 1;
		}		
		break;
	case Movement.diagUpLeft:
		direction = 135;
		image_angle = 135;
		
		if(wallLeft != noone || wallUp != noone)
		{
			hspeed = 0;
			vspeed = 0;
		}
		break;
	case Movement.left:
		direction = 180;
		image_angle = 180;
		
		if(wallLeft != noone)
		{
			hspeed = 0;
		}
		break;
	case Movement.diagDownLeft:
		direction = 225;
		image_angle = 225;
		
		if(wallLeft != noone || wallDown != noone)
		{
			hspeed = 0;
			vspeed = 0;
		}
		break;
	case Movement.down:
		direction = 270;
		image_angle = 270;
		
		if(wallDown != noone)
			{
				vspeed = 0;
				//y -= 1;
			}
		break;
	case Movement.diagDownRight:
		direction = 315;
		image_angle = 315;
		
		if(wallRight != noone || wallDown != noone)
		{
			hspeed = 0;
			vspeed = 0;
		}
		break;
}
