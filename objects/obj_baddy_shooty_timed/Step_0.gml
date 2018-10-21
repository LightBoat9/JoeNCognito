if disabled then exit;

lineOfSight = enemy_lineOfSight()
//show_debug_message(lineOfSight)

switch(state){
	case turret.idle:
		if lineOfSight {
			timeline_index = tml_baddy_shooty;
			timeline_position = 0;
			timeline_running = true;
			timeline_loop = true;
			state = turret.shooting
		}
		break;
	case turret.shooting:
		if !lineOfSight {
			state = turret.checking
			timeline_index = tml_baddy_shooty;
			image_index = 0;
			timeline_running = false;
			timeline_loop = false;
			break;
		}
		
		angle_target = point_direction(x,y,obj_playerParent.x,obj_playerParent.y)
		break;
}
