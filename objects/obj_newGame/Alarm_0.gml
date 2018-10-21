/// @description Delete old save, start game
// You can write your code in this editor

with(obj_gameController)
{
	// Remove the items the player has picked up
	ini_open("Saving")
	ini_write_string("Level", "currentRoom", rm_mainMenu)
	ini_write_real("Items", "hasGun", false)
	ini_write_real("Items", "hasCoat", false)
	ini_write_real("Items", "hasProjector", false)
	ini_write_real("Items", "numKeys", 0)
	ini_close()
}

room_goto(rm_enemyIntegrationTest)
