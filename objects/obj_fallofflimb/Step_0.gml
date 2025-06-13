image_angle += aa
if (y > (room_height + 40))
{
	if (instance_exists(obj_shaker) == false)
	{
		snd_play(snd_impact)
		scr_shake(3, 3, 2)
	}
	instance_destroy()
}
