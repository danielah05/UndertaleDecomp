ts = 0
on = 0
if (room == room_fire_preshootguy4)
{
	if (FL_CompletedShootPuzzle4 > 0)
		on = 1
}
if (room == room_fire_conveyorlaser)
{
	if (FL_CompletedShootPuzzle3 > 0)
		on = 1
}
if (room == room_fire8)
{
	if (FL_CompletedShootPuzzle1 > 0)
		on = 1
}
if (room == room_fire9)
{
	if (FL_CompletedShootPuzzle2 > 0)
		on = 1
}
alarm[0] = 1
