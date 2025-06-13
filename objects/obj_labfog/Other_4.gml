fansfx = caster_load("music/deeploop2.ogg")
if (FL_EndogenyEvent == 1)
{
	if (room == room_truelab_fan)
		caster_loop(fansfx, 0.5, 3)
	if (room == room_truelab_cooler)
		caster_loop(fansfx, 0.3, 3)
}
if (room == room_truelab_fan)
	caster_pause(global.currentsong)
