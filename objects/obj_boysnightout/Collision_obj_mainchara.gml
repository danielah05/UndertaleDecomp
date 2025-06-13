if (global.interact == 0 && con == 0)
{
	songpos = audio_sound_get_track_position(global.currentsong)
	songpitch = audio_sound_get_pitch(global.currentsong)
	songgain = audio_sound_get_gain(global.currentsong)
	caster_stop(global.currentsong)
	global.interact = 1
	con = 1
}
