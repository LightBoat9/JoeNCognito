/// @description Pick up coat


with(obj_playerGun)
{
	instance_change(obj_playerCoat, false)
}
obj_gameController.hasCoat = true
instance_destroy()

