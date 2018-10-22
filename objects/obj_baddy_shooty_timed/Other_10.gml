/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

timeline_index = tml_baddy_shooty;
image_index = 0
timeline_running = false;
timeline_loop = false;
if audio_is_playing(laserCharge) then audio_stop_sound(laserCharge)
state = turret.idle
