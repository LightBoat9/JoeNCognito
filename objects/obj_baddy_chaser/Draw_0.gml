/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_red)
draw_baddy_viewRange(angle,viewBreadth,60)
draw_set_color(c_white)

draw_sprite_ext(sprite_index,image_index,x,y,1,1,angle,c_white,!disableFlicker)

draw_path(motionPath,x,y,true)
//draw_line(x,y,obj_playerParent.x,obj_playerParent.y)