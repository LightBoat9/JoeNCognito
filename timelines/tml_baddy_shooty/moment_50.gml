if audio_is_playing(laserCharge) then audio_stop_sound(laserCharge)
if obj_gameController.soundOn then audio_play_sound(snd_laser, 1, false);
enemy_laserCast()