var lineOfSight = enemy_lineOfSight();

switch(state){
	case chaser.idle:
		if lineOfSight {
			state = chaser.chasing
		} else break;
	case chaser.chasing:
		if !lineOfSight {
			state = chaser.pathing
			motionPlan_pointOfInterest(chase_x,chase_y) //investigate last known position of player
			break;
		} else {
			chase_x = targetObj.x
			chase_y = targetObj.y
			
			var dx = chase_x-x,
				dy = chase_y-y,
				mag = sqrt(sqr(dx)+sqr(dy));
			
			
			//xSpd = round((dx/mag) * min(walkSpd,abs(dx)))
			//ySpd = round((dy/mag) * min(walkSpd,abs(dy)))
			xSpd = clamp(dx,-walkSpd,walkSpd)
			ySpd = clamp(dy,-walkSpd,walkSpd)
			
			break;
		}
	case chaser.pathing:
		//actually seeing the player overrides everything
		if lineOfSight {
			path_clear_points(motionPath)
			state = chaser.chasing
			break;
		}
		
		//when chaser reaches a path location it'll get a nice look around before settling
		if !motionPlan_process(motionPath){
			xSpd = 0
			ySpd = 0
			show_debug_message("sweeper start")
			state = chaser.sweeping
			sweepDir = 0
		}
		break;
	case chaser.sweeping:
		if lineOfSight {
			state = chaser.chasing
		}
		break;
}