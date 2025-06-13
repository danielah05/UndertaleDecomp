myinteract = 0
read = 0
image_xscale = 1
image_yscale = 1
if (global.plot == 0)
	instance_destroy()
active = true
if (FL_TruePacifist == true)
	active = false
if (active == true)
{
	idealvolume[0] = 1
	idealvolume[1] = 0.001
	curvol1 = caster_get_volume(global.currentsong)
	curvol2 = caster_get_volume(global.currentsong2)
	crumblebaby = audio_sound_get_track_position(global.currentsong)
	audio_sound_set_track_position(global.currentsong2, crumblebaby)
}
