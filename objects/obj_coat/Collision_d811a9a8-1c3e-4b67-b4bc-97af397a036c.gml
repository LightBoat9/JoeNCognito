/// @description Pick up coat


with(obj_playerGun)
{
	instance_change(obj_playerCoat, false)
}
obj_gameController.actualUnlocks[1] = true
instance_destroy()


