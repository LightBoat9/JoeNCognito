lineOfSight = enemy_lineOfSight()
//show_debug_message(lineOfSight)

switch(state){
	case turret.idle:
		if lineOfSight {
			alarm[1] = shootCastTime
			state = turret.shooting
		}
		break;
	case turret.shooting:
		if !lineOfSight {
			state = turret.checking
			alarm[1] = -1
			break;
		}
		
		angle_target = point_direction(x,y,obj_playerParent.x,obj_playerParent.y)
		break;
}