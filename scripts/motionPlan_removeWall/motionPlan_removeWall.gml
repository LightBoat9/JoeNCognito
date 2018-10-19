//call when doors get removed
var x1, y1,
	x2, y2;

with argument0 {
	var xx = x - sprite_get_xoffset(sprite_index),
		yy = y - sprite_get_yoffset(sprite_index);
	
	x1 = xx+sprite_get_bbox_left(sprite_index)
	y1 = yy+sprite_get_bbox_top(sprite_index)
	x2 = xx+sprite_get_bbox_right(sprite_index)
	y2 = yy+sprite_get_bbox_bottom(sprite_index)
	
	x1 = floor(x1/32)
	y1 = floor(y1/32)
	x2 = floor(x2/32)
	y2 = floor(y2/32)
}

//should be: parent of all pathfinding enemies
with obj_baddy_chaser {
	//show_debug_message("Clearing "+string(xx)+", "+string(yy)+" on motion plans")
	
	mp_grid_clear_cell(motionPlan,x1,y1)
	mp_grid_clear_cell(motionPlan,x2,y1)
	mp_grid_clear_cell(motionPlan,x1,y2)
	mp_grid_clear_cell(motionPlan,x2,y2)
}
