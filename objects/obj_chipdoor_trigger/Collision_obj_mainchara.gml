if (room == room_fire7 && FL_CompletedShootPuzzle1 == 1 && FL_CompletedShootPuzzle2 == 1 && global.plot < 133 && global.interact == 0 && con == 0)
{
	global.interact = 1
	caster_pause(global.currentsong)
	con = 1
	alarm[4] = 30
}
if (room == room_fire_walkandbranch2 && FL_CompletedShootPuzzle3 == 1 && FL_CompletedShootPuzzle4 == 1 && global.plot < 164 && global.interact == 0 && con == 0)
{
	global.interact = 1
	caster_pause(global.currentsong)
	con = 1
	alarm[4] = 30
}
