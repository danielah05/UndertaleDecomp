for (i = 0; i < (wd / 2); i += 1)
{
	if (draw_getpixel((x + (i * 2)), (y + (line * 2))) == c_white)
		instance_create((x + (i * 2)), (y + (line * 2)), obj_blkpxlgrav)
	if (myvapor == 0)
	{
		if (draw_getpixel((x + (i * 2)), ((y + (line * 2)) + 2)) == c_white)
			instance_create((x + (i * 2)), ((y + (line * 2)) + 2), obj_blkpxlgrav)
	}
}
if (myvapor == 0)
	line += 1
line += 1
if (line > (ht / 2))
{
	instance_destroy()
	return;
}
alarm[0] = (1 + myvapor)
if (myvapor > 1)
	snd_play(snd_chug)
