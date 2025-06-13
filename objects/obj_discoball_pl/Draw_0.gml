soundtimer -= 1
swaptimer -= 1
if (swaptimer < 0)
	sprite_index = spr_discoball_pl
if (active == true)
{
	for (i = 0; i < maxlaser; i += 1)
	{
		xx = ((x + lengthdir_x(160, (rot + (laserdist * i)))) + 20)
		if (xx > global.idealborder[1])
			xx = global.idealborder[1]
		if (xx < global.idealborder[0])
			xx = global.idealborder[0]
		yy = ((y + lengthdir_y(160, (rot + (laserdist * i)))) + 30)
		if (yy > global.idealborder[3])
			yy = global.idealborder[3]
		if (yy < global.idealborder[2])
			yy = global.idealborder[2]
		if (laser[i] == 1)
		{
			if (type == 0)
			{
				draw_set_color(c_soulblue)
				bb = 1
			}
			else
			{
				draw_set_color(c_white)
				bb = 0
			}
		}
		else if (type == 0)
		{
			draw_set_color(c_white)
			bb = 0
		}
		else
		{
			draw_set_color(c_soulblue)
			bb = 1
		}
		if (yy > global.idealborder[2])
		{
			draw_line_width((x + 20), (y + 30), xx, yy, 3)
			if collision_line((x + 20), (y + 30), xx, yy, obj_heart, true, true)
			{
				if (bb == 0)
					event_user(11)
				if (bb == 1)
				{
					if (abs((obj_heart.xprevious - obj_heart.x)) > 0.01 || abs((obj_heart.yprevious - obj_heart.y)) > 0.01)
						event_user(11)
				}
			}
		}
		else if (laserno > 0)
		{
			laser[i] = choose(1, 2, 3)
			if (i > 0)
			{
				if (laser[i] == 3)
				{
					if (laser[(i - 1)] == 1)
						laser[i] = 2
					else
						laser[i] = 1
				}
			}
			if (i == 0)
			{
				if (laser[i] == 3)
				{
					if (laser[(maxlaser - 1)] == 1)
						laser[i] = 2
					else
						laser[i] = 1
				}
			}
		}
	}
	rottimer -= 1
	if (rottimer < 0)
		rot -= rotspeed
	if (rot < -180)
	{
		laserno += 1
		rot += 360
	}
}
draw_sprite(sprite_index, image_index, x, y)
