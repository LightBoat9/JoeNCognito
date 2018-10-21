/// @description Return to previous save
// You can write your code in this editor

ini_open("Saving")
continueTo = ini_read_real("Level", "currentRoom", room0)
ini_close()

room_goto(continueTo)
