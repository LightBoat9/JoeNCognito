//todo: obfuscate the mp creation to an enemy manager
event_inherited()

angle = image_angle
angle_target = angle
angle_start = angle

image_angle = 0

/////////////////////////////
//The State Machine (variables)
state = chaser.idle

//idle - checking for line-of-sight to player; receptive to other hints of player prescence

//chasing - direct line of sight to player
chase_x = 0
chase_y = 0

//checking - pathfinding to point of interest
motionPlan = tilemap_to_mp(tileLayer)
mp_grid_add_instances(motionPlan,obj_wallParent,false)

motionPath = path_add()

path_iter = 0
to_x = 0
to_y = 0

//sweeping - look left, then right to make sure you didn't miss anything
sweepDir = 0
//sweepBreadth: full breadth of sweep
//note: first sweep = half breadth, second sweep = full breadth
//example: rotate right 30 degrees, then rotate left 60 degrees

