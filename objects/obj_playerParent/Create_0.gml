/// @description Initialize movement and angle
// You can write your code in this editor
angle = 0;

xSpd = 0
ySpd = 0
sprinting = false

tilemap_collision = layer_tilemap_get_id(layer_get_id("layer_collision_tiles"))

tileLayerFurniture = layer_get_id("layer_collision_tiles_furniture")
tilemap_furniture = layer_tilemap_get_id(tileLayerFurniture)



invisIterator = 0 //iterator for invis shader
invisUniform = shader_get_uniform(shade_invis,"iter")


if !instance_exists(obj_gameController) then instance_create_layer(0,0,layer,obj_gameController)
if !instance_exists(obj_effectTimer) then instance_create_layer(0,0,layer,obj_effectTimer)


// Stamina bar dimentions
sbar_width = 192
sbar_height = 32 
sbar_position = [32, obj_gameController.cam_height - 64]