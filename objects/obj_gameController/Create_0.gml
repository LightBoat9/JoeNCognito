// Keep track of what items the player has available
hasGun = false
hasCoat = false
hasProjector = false
// Keeps track of what items the player has picked up
// This is necessary for the player to revert back to the proper
// state when cheat codes are turned off.
actualUnlocks = [hasGun, hasCoat, hasProjector]

// Keep track of the abilities the player can use
// If cooldown is complete, these variables are true)
canCoat = true
canShoot = true
canProjector = true
canSprint = true

playerInvisible = false

numKeys = 0
staminaMax = 50
stamina = staminaMax

// Keeps track of choices in options menu
soundOn = true
musicOn = true
infiniteKeys = false
infiniteSprint = false
allUnlocks = false
noDeaths = false

currentRoom = rm_mainMenu

cam = camera_create()
surface_resize(application_surface, cam_width, cam_height)
window_set_size(cam_width, cam_height)
camera_set_view_size(cam, cam_width, cam_height)
camera_set_view_target(cam, obj_player)
camera_set_view_speed(cam, 5, 5)
camera_set_view_border(cam, cam_width/2, cam_height/2)
view_enabled = true
view_camera[0] = cam
view_visible[0] = true
window_center()