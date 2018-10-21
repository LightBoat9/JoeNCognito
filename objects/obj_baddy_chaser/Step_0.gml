//using dv to show movement direction
var dv = movement_application(xSpd,ySpd);


switch(state){
	case chaser.pathing:
		if (!audio_is_playing(snd_helicoptGrabber) && obj_gameController.soundOn){
			audio_play_sound(snd_helicoptGrabber, 1, false)
		}
		if (dv[0]!=0 || dv[1]!=0) then angle_target = point_direction(0,0,xSpd,ySpd)
		break;
	case chaser.chasing:
		if (!audio_is_playing(snd_helicoptGrabber) && obj_gameController.soundOn){
			audio_play_sound(snd_helicoptGrabber, 1, false)
		}
		angle_target = point_direction(x,y,obj_playerParent.x,obj_playerParent.y)
		break;
}


var daMax = (state = chaser.sweeping)?sweepSpd: rotSpd,
	da = angle_difference(angle,angle_target)*0.5;

da = min(ceil(abs(da)), daMax)*sign(da) //absolute ceiling/min

if abs(da) < daMax then angle = angle_target
else angle -= da;

if da = 0 and state = chaser.sweeping {
	show_debug_message("sweeper step")
	
	switch(sweepDir){
		case 0: //initialization
			sweepDir = 1
			angle_target = angle + sweepBreadth/2
			break;
		case 1: //first sweep
			sweepDir = -1
			angle_target = angle - sweepBreadth
			break;
		case -1: //second sweep -> you're done
			sweepDir = 0
		
			//interaction with chaser.pathing
			if x = xstart and y = ystart {
				path_clear_points(motionPath)
				state = chaser.idle
				angle_target = angle_start
			} else {
				motionPlan_pointOfInterest(xstart,ystart) //pathfind back to starting position
				state = chaser.pathing
			}
			break;
	}
	show_debug_message(string(angle)+"->"+string(angle_target))
	
}