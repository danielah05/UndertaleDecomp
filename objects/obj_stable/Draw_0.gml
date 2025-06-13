draw_sprite(sprite_index, 0, x, y)
if (open == 2)
	draw_sprite(sprite_index, 1, x, y)
if (open == 1)
{
	dist = distance_to_object(obj_mainchara)
	if (dist < 20)
	{
		disto = (10 / (dist + 1))
		if (disto > 1)
			disto = 1
		draw_sprite_part_ext(spr_redacted_a, 0, 0, 0, 40, 20, (x + 10), (y + 10), 1, 1, c_white, disto)
	}
}
if (con == 1 && instance_exists(OBJ_WRITER) == false)
{
	con = 2
	open = 1
}
if (con == 3 && instance_exists(OBJ_WRITER) == false)
{
	con = 4
	open = 2
	snd_play(snd_noise)
	with (mysolid)
		instance_destroy()
}
