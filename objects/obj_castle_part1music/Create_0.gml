event_user(0)
played = 0
if (caster_is_playing(global.currentsong) != 1 && FL_DatedAlphys < 12)
{
	if (scr_murderlv() < MurderLevel.Lv16MettatonKilled)
	{
		global.currentsong = caster_load("music/endarea_parta.ogg")
		caster_loop(global.currentsong, 1, 0.85)
	}
	else if (FL_EarlyStoryProgressCounter < 17)
	{
		global.currentsong = caster_load("music/smallshock.ogg")
		caster_loop(global.currentsong, 1, 0.6)
	}
	else
	{
		global.currentsong = caster_load("music/prebattle1.ogg")
		caster_loop(global.currentsong, 1, 0.2)
	}
}
