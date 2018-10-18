/// @description Go to first room
// You can write your code in this editor
with(obj_gameController)
{
	event_perform(ev_create, 0)
}

if file_exists("Save.dat")
{
   file_delete("Save.dat")
}

room_goto(room0)
