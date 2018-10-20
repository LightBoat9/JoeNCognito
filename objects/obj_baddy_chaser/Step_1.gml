event_inherited()
xSpd = 0
ySpd = 0

var lineOfSight = enemy_lineOfSight();

switch(state){
	case chaser.idle:
		if !disabled && lineOfSight {
			state = chaser.chasing
			motionPlan_pointOfInterest(obj_playerParent.x,obj_playerParent.y)
			alarm[1] = 15
		} else break;
	case chaser.chasing:
		if !lineOfSight {
			alarm[1] = -1
			motionPlan_pointOfInterest(obj_playerParent.x,obj_playerParent.y)
			state = chaser.pathing
		} else if !motionPlan_process(motionPath){
			//refresh path
			motionPlan_pointOfInterest(obj_playerParent.x,obj_playerParent.y)
			alarm[1] = 15
		}
		
		break;
	case chaser.pathing:
		if lineOfSight {
			state = chaser.chasing
			motionPlan_pointOfInterest(obj_playerParent.x,obj_playerParent.y)
			alarm[1] = 15
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