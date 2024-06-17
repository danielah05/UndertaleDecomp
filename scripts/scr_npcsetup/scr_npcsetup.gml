/// @func	scr_npcsetup(movement_type)
/// @desc	Script to setup NPC
/// @arg	{real}	movement_type	Movement Type ID
function scr_npcsetup(_movement_type)
{
	halt = 0
	myinteract = 0
	stopped = 1
	movementtype = _movement_type
	facing = -1
	if (movementtype == 2)
	    facing = Direction.Down
}
