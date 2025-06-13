if (d == 0)
	scr_depth()
if (fun == false)
{
	myinteract = 0
	if (speed == 0)
	{
		image_index = 0
		image_speed = 0
	}
	if (speed > 0)
	{
		image_speed = 0.2
		if (image_index == 1 || image_index == 3)
			snd_play(snd_undynestep)
	}
}
if (fun == 3)
{
	if (image_index == 1 || image_index == 3)
		snd_play(snd_undynestep)
}
if (FL_AnimationIndex == 5)
	sprite_index = spr_undynea_starku
if (FL_AnimationIndex == 6)
	sprite_index = spr_undynea_starkl
