var adiff = angle_difference(angle, point_direction(x,y,obj_player.x,obj_player.y)),
	lineOfSight = 
	!obj_gameController.playerInvisible && //player isn't invisible
	(adiff < viewBreadth/2 && adiff > -viewBreadth/2) && //within cone of vision
	!collision_line_tiles(x,y,targetObj.x,targetObj.y,tilemap_collision) && //line of sight unblocked by tiles
	!collision_line(x,y,targetObj.x,targetObj.y,obj_wallParent,false,true); //line of sight unblocked by walls
	

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