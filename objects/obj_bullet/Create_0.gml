/// @description Set direction and speed
// You can write your code in this editor

event_inherited();

audio_play_sound(snd_Gun, 1, false)

dir = point_direction(x,y, mouse_x,mouse_y)

// Set the amount of time that the bullet can travel for
alarm_set(0, 20)

xSpd = maxSpd * dcos(dir)
ySpd = maxSpd * -dsin(dir)