if (FL_ShowerCurtainAmalgamEvent == 1)
	mode = 2
if (FL_ShowerCurtainAmalgamEvent >= 2)
	mode = 2
if (mode == 0)
{
	dist = caster_load("music/sfx_disturbing.ogg")
	caster_pause(global.currentsong)
	caster_loop(dist, 0.7, 0.7)
	pit = 1
}
