/// @description Pick up gun

with(obj_player)
{
	instance_change(obj_playerGun, false)
}
obj_gameController.actualUnlocks[0] = true
instance_destroy()

