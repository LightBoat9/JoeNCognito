/// @description Change Sprite, End Game
// You can write your code in this editor

if(!obj_gameController.noDeaths) && dead = false {
	sprite_index = spr_playerDead
	audio_play_sound(snd_playerDeath, 0, false)
	// Go back to main menu
	alarm_set(0, 30)
	
	dead = true
	xSpd = 0
	ySpd = 0
}