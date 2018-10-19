var adiff = angle_difference(angle, point_direction(x,y,obj_playerParent.x,obj_playerParent.y));

return 
	!obj_gameController.playerInvisible && //player isn't invisible
	(adiff < viewBreadth/2 && adiff > -viewBreadth/2) && //within cone of vision
	!collision_line_tiles(x,y,targetObj.x,targetObj.y,tilemap_collision) && //line of sight unblocked by tiles
	!collision_line(x,y,targetObj.x,targetObj.y,obj_wallParent,false,true); //line of sight unblocked by walls