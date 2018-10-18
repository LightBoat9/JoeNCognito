//call when doors get removed
var xx = -1, yy = -1

with argument0 {
	xx = floor(x/32)
	yy = floor(y/32)
}

//should be: parent of all pathfinding enemies
with obj_baddy_chaser {
	show_debug_message("Clearing "+string(xx)+", "+string(yy)+" on motion plans")
	mp_grid_clear_cell(motionPlan,xx,yy)
}
