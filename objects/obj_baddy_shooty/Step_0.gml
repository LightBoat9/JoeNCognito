lineOfSight = enemy_lineOfSight()
//show_debug_message(lineOfSight)

switch(state){
	case turret.idle:
		if lineOfSight {
			state = turret.shooting	
		}
		break;
	case turret.shooting:
		if !lineOfSight {
			state = turret.checking
			break;
		}
		
		angle_target = point_direction(x,y,obj_playerParent.x,obj_playerParent.y)
		
		//do shoot stuff
		break;
}