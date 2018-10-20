//put in a tile layer & a motionPlan

var motionPlan = argument0,
	tileLayer = argument1,
	tilemap = layer_tilemap_get_id(tileLayer),

for(var j=0;j<tilemap_get_height(tilemap);j++){
	for(var i=0;i<tilemap_get_width(tilemap);i++){
		var tile = tilemap_get(tilemap,i,j);
		
		if !tile_get_empty(tile){
			mp_grid_add_cell(motionPlan,i,j)	
		}
	}
}

return motionPlan