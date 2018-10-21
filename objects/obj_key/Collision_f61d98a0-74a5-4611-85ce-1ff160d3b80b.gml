/// @description Pick up key

audio_play_sound(snd_pickUp, 0, false)
obj_gameController.numKeys += 1
instance_destroy()
