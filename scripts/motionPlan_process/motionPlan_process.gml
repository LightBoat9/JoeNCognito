var motionPath = argument0

if path_get_number(motionPath) > 0 {
	var planned = false
	
	do{
		var dx = to_x-x, dy = to_y-y,
			mag = sqrt(sqr(dx)+sqr(dy));
	
		if mag <= walkSpd {
			x=to_x
			y=to_y
		
			path_iter++
		
			if path_iter>=path_get_number(motionPath){
				path_clear_points(motionPath)
				xSpd = 0
				ySpd = 0
				
				break;
			} else {
				to_x = path_get_point_x(motionPath,path_iter)
				to_y = path_get_point_y(motionPath,path_iter)
			}
		} else {
			//show_debug_message(string(dx)+", "+string(dy))
		
			xSpd = round((dx/mag) * min(walkSpd,abs(dx)))
			ySpd = round((dy/mag) * min(walkSpd,abs(dy)))
			
			//show_debug_message(string(xxSpd)+", "+string(yySpd))
			
			planned = true
		}
	} until planned
	
	return planned
}

return false