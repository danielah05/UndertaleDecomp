if instance_exists(obj_mainchara)
{
	if (check == 1 && obj_mainchara.inwater == 1)
	{
		if (active == true)
			snd_play(snd_noise)
	}
}
check = 0
