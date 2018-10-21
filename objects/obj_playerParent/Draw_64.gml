
// Gun GUI
if(obj_gameController.hasGun)
{
	gunPos = [32, obj_gameController.cam_height - sprite_get_height(spr_gun) * 4]
	draw_sprite_ext(spr_gun, 0, gunPos[0], gunPos[1], 1, 1, 0, c_white, 0.2)
	if obj_effectTimer.alarm[2] > 0 {
		draw_set_alpha(0.5)
		draw_sprite_part(spr_gun, 0, 0, 0, 
			sprite_get_width(spr_gun) - sprite_get_width(spr_gun) * obj_effectTimer.alarm[2] / (cooldown_gun*30), 
			sprite_get_width(spr_gun), gunPos[0], gunPos[1])
		draw_set_alpha(1)
	}
	if obj_gameController.canShoot {
		draw_sprite(spr_gun, 0, 32, obj_gameController.cam_height - sprite_get_height(spr_gun) * 4)
	}
}

// Coat GUI
if(obj_gameController.hasCoat)
{
	coatPos = [32, obj_gameController.cam_height - sprite_get_height(spr_coat) * 6]
	draw_sprite_ext(spr_coat, 0, coatPos[0], coatPos[1], 1, 1, 0, c_white, 0.2)
	if obj_effectTimer.alarm[1] > 0 {
		draw_set_alpha(0.5)
		draw_sprite_part(spr_coat, 0, 0, 0, sprite_get_width(spr_coat) - sprite_get_width(spr_coat) * obj_effectTimer.alarm[1] / (cooldown_invisible*30), sprite_get_height(spr_coat),  coatPos[0], coatPos[1])
		draw_set_alpha(1)
	}
	if obj_gameController.canCoat {
		draw_sprite(spr_coat, 0, coatPos[0], coatPos[1])
	}
}

// Projector GUI
if(obj_gameController.hasProjector)
{
	projPos = [32, obj_gameController.cam_height - sprite_get_height(spr_projector) * 8]
	
	draw_sprite_ext(spr_projector, 0, projPos[0], projPos[1], 1, 1, 0, c_white, 0.2)
	if obj_effectTimer.alarm[3] > 0 {
		draw_set_alpha(0.5)
		draw_sprite_part(spr_projector, 0, 0, 0, sprite_get_width(spr_projector) - sprite_get_width(spr_projector) * obj_effectTimer.alarm[3] / (cooldown_sound*30), sprite_get_height(spr_projector), projPos[0], projPos[1])
		draw_set_alpha(1)
	}
	if obj_gameController.canProjector {
		draw_sprite(spr_projector, 0, projPos[0], projPos[1])
	}
}

// Keys GUI
for (i = 0; i < obj_gameController.numKeys; i++) {
	draw_sprite_ext(spr_key, 0, obj_gameController.cam_width - 64 - 64 * i, obj_gameController.cam_height - 64, 2, 2, 0, c_white, 1)
}

// Draw stamina bar
// Background
draw_set_color(make_color_rgb(142, 102, 0))
draw_rectangle(sbar_position[0], sbar_position[1], 
	sbar_position[0] + sbar_width, 
	sbar_position[1] + sbar_height, false)
// Overlay
if obj_gameController.canSprint {
	draw_set_color(make_color_rgb(255, 255, 0))
}
else {
	draw_set_color(make_color_rgb(255,69,0))
}
draw_rectangle(sbar_position[0], sbar_position[1], 
	sbar_position[0] + (sbar_width * obj_gameController.stamina/obj_gameController.staminaMax), 
	sbar_position[1] + sbar_height, false)
// Outline
draw_set_color(make_color_rgb(41, 21, 0))
draw_rectangle(sbar_position[0], sbar_position[1], 
	sbar_position[0] + sbar_width, 
	sbar_position[1] + sbar_height, true)
draw_set_color(c_white)
	