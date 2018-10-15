var lineOfSight = !collision_line_tiles(x,y,targetObj.x,targetObj.y,tilemap_collision);

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
		
		//ideally what'll happen here is the chaser will investigate a point of interest,
		//then go back to its spawn position
		if !motionPlan_process(motionPath){
			if x = xstart and y = ystart {
				path_clear_points(motionPath)
				state = chaser.idle
			} else {
				motionPlan_pointOfInterest(xstart,ystart) //pathfind back to starting position
			}
		}
		break;
}