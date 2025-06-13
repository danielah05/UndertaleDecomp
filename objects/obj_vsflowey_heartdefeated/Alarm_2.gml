instance_create(0, 0, obj_gameoverbg)
alarm[3] = 80
if (ll > 2)
{
	if (global.osflavor <= OSFlavors.Mac)
		game_end()
	else
	{
		caster_stop(all)
		force_black_screen = 1
		alarm[3] = -1
		alarm[4] = 150
	}
}
else
{
	gm1 = caster_loop(gmusic, 0.45, 1)
	caster_set_panning(gm1, 0.25)
	gm2 = caster_loop(gmusic, 0.45, 1)
	caster_set_panning(gm2, 0.5)
	gm3 = caster_loop(gmusic, 0.45, 1)
	caster_set_panning(gm3, 0.75)
}
