
// Gun GUI
if(obj_gameController.hasGun)
{
	draw_sprite_ext(spr_gun, 0, 32, room_height - 66 * 2, 1, 1, 0, c_white, 0.2)
	if obj_effectTimer.alarm[2] > 0 {
		draw_set_alpha(0.5)
		draw_sprite_part(spr_gun, 0, 0, 0, 30 - 30 * obj_effectTimer.alarm[2] / (cooldown_gun*30), 24, 32, room_height - 132)
		draw_set_alpha(1)
	}
	if obj_gameController.canShoot {
		draw_sprite(spr_gun, 0, 32, room_height - 66 * 2)
	}
}

// Coat GUI
if(obj_gameController.hasCoat)
{
	draw_sprite_ext(spr_coat, 0, 32, room_height - 34 * 3, 1, 1, 0, c_white, 0.2)
	if obj_effectTimer.alarm[1] > 0 {
		draw_set_alpha(0.5)
		draw_sprite_part(spr_coat, 0, 0, 0, 32 - 32 * obj_effectTimer.alarm[1] / (cooldown_invisible*30), 32, 32, room_height - 34 * 3)
		draw_set_alpha(1)
	}
	if obj_gameController.canCoat {
		draw_sprite(spr_coat, 0, 32, room_height - 34 * 3)
	}
}

// Projector GUI
if(obj_gameController.hasProjector)
{
	draw_sprite_ext(spr_projector, 0, 32, room_height - 39 * 5, 1, 1, 0, c_white, 0.2)
	if obj_effectTimer.alarm[3] > 0 {
		draw_set_alpha(0.5)
		draw_sprite_part(spr_projector, 0, 0, 0, 30 - 30 * obj_effectTimer.alarm[3] / (cooldown_sound*30), 59, 32, room_height - 39 * 5)
		draw_set_alpha(1)
	}
	if obj_gameController.canProjector {
		draw_sprite(spr_projector, 0, 32, room_height - 39 * 5)
	}
}

// Keys GUI
for (i = 0; i < obj_gameController.numKeys; i++) {
	draw_sprite_ext(spr_key, 0, room_width - 64 - 64 * i, room_height - 64, 2, 2, 0, c_white, 1)
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
	