/// @description Reset some GC vars, go to room0
// You can write your code in this editor

with(obj_gameController)
{
	actualUnlocks = [false, false, false]
	numKeys = 0
}

if file_exists("Save.dat")
{
   file_delete("Save.dat")
}

room_goto(room0)
