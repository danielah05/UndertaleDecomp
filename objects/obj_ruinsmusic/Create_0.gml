event_user(0)
if (caster_is_playing(global.currentsong) != 1)
{
	if (FL_RuinsGenocide == false)
	{
		global.currentsong = caster_load("music/ruins.ogg")
		caster_loop(global.currentsong, 1, 1)
	}
	else
	{
		global.currentsong = caster_load("music/toomuch.ogg")
		caster_loop(global.currentsong, 1, 1)
	}
}
