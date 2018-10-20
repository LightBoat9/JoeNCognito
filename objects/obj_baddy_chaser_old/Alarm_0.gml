/// @description stop stun but also go home

// Inherit the parent event
event_inherited();

motionPlan_pointOfInterest(xstart,ystart) //pathfind back to starting position
state = chaser.pathing