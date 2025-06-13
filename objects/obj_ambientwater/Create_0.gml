event_user(0)
played = 0
if (caster_is_playing(global.currentsong) != 1)
{
	qr = 0
	if (global.plot > 105 && room == room_water3)
		qr = 1
	if (qr == 0)
	{
		global.currentsong = caster_load("music/ambientwater.ogg")
		caster_loop(global.currentsong, 0.8, 1)
	}
	else if (FL_WaterfallGenocide == 0)
	{
		global.currentsong = caster_load("music/waterfall.ogg")
		caster_loop(global.currentsong, 0.8, 1)
		if (scr_murderlv() >= MurderLevel.Lv8PapyrusKilled && FL_SparedSpecific == 0)
			caster_set_pitch(global.currentsong, 0.13)
	}
	else if (FL_SparedSpecific == 0)
	{
		global.currentsong = caster_load("music/toomuch.ogg")
		caster_loop(global.currentsong, 1, 1)
	}
	else
	{
		global.currentsong = caster_load("music/waterfall.ogg")
		caster_loop(global.currentsong, 0.8, 1)
	}
}
