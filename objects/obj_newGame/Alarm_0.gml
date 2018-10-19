/// @description Delete old save, start game
// You can write your code in this editor

with(obj_gameController)
{
	// Remove the items the player has picked up
	actualUnlocks = [false, false, false]
	numKeys = 0
}

if file_exists("Save.dat")
{
   file_delete("Save.dat")
}

room_goto(rm_enemyIntegrationTest)
