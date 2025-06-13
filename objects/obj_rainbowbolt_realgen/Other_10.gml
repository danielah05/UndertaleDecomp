if (l_buffer <= 0)
{
	if (o_o == 0)
	{
		with (obj_vsflowey_shaker)
			instance_destroy()
		shk = instance_create(0, 0, obj_vsflowey_shaker)
		shk.shakex = 3
		shk.shakey = 3
	}
	if (o_o == 0)
		o_o = 1
	else
		o_o = 0
	if (o_o == 0)
		this_hit = lithit
	if (o_o == 1)
		this_hit = lithit2
	if (lh > 0)
	{
	}
	jr[lh] = audio_play_sound(this_hit, 70, false)
	audio_sound_pitch(jr[lh], 0.6)
	audio_sound_gain(jr[lh], 0.44, 0)
	with (obj_rainbowbolt_realgen)
		l_buffer = 1
	if (global.osflavor != OSFlavors.PC)
	{
		with (obj_rainbowbolt_realgen)
			l_buffer = 2
	}
	lh += 1
}
