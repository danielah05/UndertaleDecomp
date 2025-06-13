if (rando == 0)
{
	garfield /= 1.02
	randofactor /= 1.1
	if (randofactor < 3)
	{
		randofactor = 3
		finalrando += 1
	}
	if (finalrando > 12)
		randofactor = 2
	if (finalrando > 30)
		randofactor = 1
	garfield -= 1
	if (finalrando > 120)
		randofactor = -1
	if (kingrando == 1)
		caster_set_pitch(obj_papyrus4.computersound, (3 / ((garfield / 20) + 2.5)))
	alarm[0] = randofactor
	gg = floor(random(7))
	if (gg == 0)
		mygrey = 16711680
	if (gg == 1)
		mygrey = 65535
	if (gg == 2)
		mygrey = 65280
	if (gg == 3)
		mygrey = 8388736
	if (gg == 4)
		mygrey = 4235519
	if (gg == 5)
		mygrey = 255
	if (gg == 6)
		mygrey = make_color_rgb(255, 100, 100)
	if (randofactor == -1)
	{
		kingrando = 0
		if (y < 120 || y >= 160)
			mygrey = 255
		else
			mygrey = make_color_rgb(255, 100, 100)
	}
}
