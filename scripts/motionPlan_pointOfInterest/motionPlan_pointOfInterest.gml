//builds a path to a given point of interest

mp_grid_path(motionPlan,motionPath,x,y,argument0,argument1,true)
	
path_iter = 0
to_x = path_get_point_x(motionPath,0)
to_y = path_get_point_y(motionPath,0)