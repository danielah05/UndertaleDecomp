con = 0
if (FL_TruePacifist == true && FL_PlotOver == 2)
{
	if (caster_is_playing(global.currentsong) != 1 && FL_TruePacifist == true)
	{
		global.currentsong = caster_load("music/reunited.ogg")
		caster_loop(global.currentsong, 1, 1)
		instance_destroy()
		return;
	}
}
if (FL_PlotOver == 0 || FL_PlotOver == 2)
{
	instance_destroy()
	return;
}
else
{
	global.hp = global.maxhp
	global.currentsong = caster_load("music/reunited.ogg")
	FL_TruePacifist = true
	FL_SMSConvoParameters = 1
	FL_ToggleFinalBeam = 0
	global.plot = 999
	with (obj_toriel_friendc)
		direction = 0
	with (obj_sans_friendc)
		direction = 0
	with (obj_asgore_friendc)
		direction = 180
	with (obj_alphys_friendc)
		direction = 180
	global.interact = 1
	con = 0.1
	alarm[4] = 140
	blk = 1
	d_blk = 1
	global.screen_border_alpha = 0
}
