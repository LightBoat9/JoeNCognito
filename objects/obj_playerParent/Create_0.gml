/// @description Initialize movement and angle
// You can write your code in this editor

movement = Movement.idle;
angle = 0;

xSpd = 0
ySpd = 0
sprinting = false

tilemap_collision = layer_tilemap_get_id(layer_get_id("layer_collision_tiles"))