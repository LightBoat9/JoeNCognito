//put in a tile layer, get a motion plan
var tileLayer = argument0,
	tilemap = layer_tilemap_get_id(tileLayer),
	motionPlan = mp_grid_create(
		layer_get_x(tileLayer),
		layer_get_y(tileLayer),
		tilemap_get_width(tilemap),
		tilemap_get_height(tilemap),
		tilemap_get_tile_width(tilemap),
		tilemap_get_tile_height(tilemap)
	);

for(var j=0;j<tilemap_get_height(tilemap);j++){
	for(var i=0;i<tilemap_get_width(tilemap);i++){
		var tile = tilemap_get(tilemap,i,j);
		
		if !tile_get_empty(tile){
			mp_grid_add_cell(motionPlan,i,j)	
		}
	}
}

return motionPlan