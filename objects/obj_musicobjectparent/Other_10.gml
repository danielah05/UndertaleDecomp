if (caster_is_playing(global.currentsong) != 1 && FL_TruePacifist == true)
{
	global.currentsong = caster_load("music/reunited.ogg")
	caster_loop(global.currentsong, 1, 1)
	instance_destroy()
	return;
}
