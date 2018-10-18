/// @description Initialize movement and angle
// You can write your code in this editor

movement = Movement.idle;
image_angle = 0;

invisible = false

xSpd = 0
ySpd = 0

tilemap_collision = layer_tilemap_get_id(layer_get_id("layer_collision_tiles"))

sprinting = false;