/// @description End invisibility

// End the player's invisibility and continue through the rest of the cooldown
obj_gameController.playerInvisible = false
alarm_set(1, 200)
