if obj_gameController.playerInvisible then {
	invisIterator = invisIterator+1 mod 360
	
	shader_set(shade_invis)
	shader_set_uniform_f(invisUniform, invisIterator)
}

draw_sprite_ext(sprite_index,image_index,x,y,1,1,angle,c_white,1)
shader_reset()