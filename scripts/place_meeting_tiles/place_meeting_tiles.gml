var xx = argument0,
	yy = argument1,
	collisionMap = argument2,
	
	x1 = xx - sprite_get_xoffset(mask_index) + sprite_get_bbox_left(mask_index),
	y1 = yy - sprite_get_yoffset(mask_index) + sprite_get_bbox_top(mask_index),
	x2 = xx - sprite_get_xoffset(mask_index) + sprite_get_bbox_right(mask_index),
	y2 = yy - sprite_get_yoffset(mask_index) + sprite_get_bbox_bottom(mask_index),
	
	left = tilemap_get_at_pixel(collisionMap, x1, y1),
	right = tilemap_get_at_pixel(collisionMap, x2, y1),
	up = tilemap_get_at_pixel(collisionMap, x1, y2),
	down = tilemap_get_at_pixel(collisionMap, x2, y2);

//show_debug_message(string(x1)+", "+string(y1)+", "+string(x2)+", "+string(y2))
//show_debug_message(string(left)+", "+string(right)+", "+string(up)+", "+string(down))


return 
	(!tile_get_empty(left) && left !=-1) || 
	(!tile_get_empty(right) && right !=-1) || 
	(!tile_get_empty(up) && up !=-1) || 
	(!tile_get_empty(down) && down !=-1)