if (side == 0)
{
	if (con == 0)
	{
		con = 1
		alarm[4] = wait
	}
	if (con < 2)
	{
		if (eo == 0)
			draw_set_color(c_red)
		if (eo == 1)
		{
			draw_set_color(c_yellow)
			snd_play(snd_credit_s)
		}
		if (eo == 2)
			draw_set_color(c_black)
		draw_sprite(spr_exclamationpoint, eo, (global.idealborder[0] + 12), (global.idealborder[2] + 40))
		eo += 1
		if (eo > 2)
			eo = 0
		draw_set_color(c_red)
		draw_rectangle((global.idealborder[0] + 5), (global.idealborder[2] + 5), (global.idealborder[0] + len), (global.idealborder[3] - 5), true)
		draw_rectangle((global.idealborder[0] + 6), (global.idealborder[2] + 6), ((global.idealborder[0] + len) - 1), (global.idealborder[3] - 4), true)
	}
	if (con == 2)
	{
		con = 3
		snd_play(snd_break2)
		alarm[4] = 14
	}
	if (con == 3)
	{
		repeat (4)
			instance_create(((global.idealborder[0] + random((len - 6))) - 6), 0, obj_sided_fire)
	}
	if (con == 4)
		instance_destroy()
}
if (side == 1)
{
	if (con == 0)
	{
		con = 1
		alarm[4] = wait
	}
	if (con < 2)
	{
		if (eo == 0)
			draw_set_color(c_red)
		if (eo == 1)
		{
			draw_set_color(c_yellow)
			snd_play(snd_credit_s)
		}
		if (eo == 2)
			draw_set_color(c_black)
		draw_sprite(spr_exclamationpoint, eo, (global.idealborder[1] - 38), (global.idealborder[2] + 40))
		eo += 1
		if (eo > 2)
			eo = 0
		draw_rectangle((global.idealborder[1] - 5), (global.idealborder[2] + 5), (global.idealborder[1] - len), (global.idealborder[3] - 5), true)
		draw_rectangle((global.idealborder[1] - 4), (global.idealborder[2] + 4), ((global.idealborder[1] - len) + 1), (global.idealborder[3] - 4), true)
	}
	if (con == 2)
	{
		con = 3
		snd_play(snd_break2)
		alarm[4] = 14
	}
	if (con == 3)
	{
		repeat (4)
			instance_create(((global.idealborder[1] - random((len + 6))) - 8), 0, obj_sided_fire)
	}
	if (con == 4)
		instance_destroy()
}
