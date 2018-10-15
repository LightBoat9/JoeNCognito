/// @description Pick up gun

with(obj_player)
{
	instance_change(obj_playerGun, false)
}
obj_gameController.hasGun = true
instance_destroy()
