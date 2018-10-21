/// @description Travel to the next room, save important variables.


with(obj_gameController)
{
	ini_open("Saving")
	ini_write_real("Level", "currentRoom", room0)
	ini_write_real("Items", "numKeys", numKeys)
	if (actualUnlocks[0]) {ini_write_real("Items", "hasGun", true)}
	if (actualUnlocks[1]) {ini_write_real("Items", "hasCoat", true)}
	if (actualUnlocks[2]) {ini_write_real("Items", "hasProjector", true)}
	ini_close()
}


room_goto(room0)
