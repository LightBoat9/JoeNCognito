//todo: obfuscate the mp creation to an enemy manager
event_inherited()

state = chaser.idle

//idle - checking for line-of-sight to player; receptive to other hints of player prescence

//chasing - direct line of sight to player
chase_x = 0
chase_y = 0

//checking - pathfinding to point of interest
motionPlan = tilemap_to_mp(tileLayer)
motionPath = path_add()

path_iter = 0
to_x = 0
to_y = 0