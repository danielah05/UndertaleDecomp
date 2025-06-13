s_buffer += 1
draw_set_color(c_black)
ossafe_fill_rectangle(x, y, (x + 40), (y + 60))
if (open == 1)
{
	if instance_exists(s1)
	{
		with (s1)
			instance_destroy()
		with (s2)
			instance_destroy()
	}
	if (ox < 20)
	{
		ox += 2
		c_sound = 0
		s_sound = 0
	}
	if (ox >= 20)
		ox = 30
}
if (open == 0)
{
	if (instance_exists(s1) == false)
	{
		s1 = instance_create(x, (y + 40), obj_solidsmall)
		s2 = instance_create((x + 20), (y + 40), obj_solidsmall)
	}
	if (ox > 0)
	{
		ox -= 2
		o_sound = 0
	}
	if (ox < 0)
	{
		ox = 0
		if (s_sound == 0)
		{
			snd_play(snd_elecdoor_shutheavy)
			s_sound = snd_sparkle1
		}
	}
}
anim += 1
if (ox < 20)
{
	draw_sprite_part(spr_darkelevator_l, 0, ox, 0, (20 - ox), 60, x, y)
	draw_sprite_part(spr_darkelevator_r, 0, 0, 0, (20 - ox), 60, ((x + 20) + ox), y)
	if (type == 1)
	{
		draw_sprite_part(spr_megadoor_l, 0, ox, 0, (20 - ox), 60, x, y)
		if (red == 1)
			draw_sprite_part(spr_megadoor_red, floor((anim / 5)), ox, 0, (19 - ox), 12, x, (y + 12))
		if (yel == 1)
			draw_sprite_part(spr_megadoor_yellow, floor((anim / 5)), ox, 0, (19 - ox), 12, x, (y + 25))
		draw_sprite_part(spr_megadoor_r, 0, 0, 0, (20 - ox), 60, ((x + 20) + ox), y)
		if (blu == 1)
			draw_sprite_part(spr_megadoor_blue, floor((anim / 5)), 0, 0, (17 - ox), 10, ((x + 23) + ox), (y + 13))
		if (gre == 1)
			draw_sprite_part(spr_megadoor_green, floor((anim / 5)), 0, 0, (17 - ox), 10, ((x + 23) + ox), (y + 26))
	}
	if (type == 2)
	{
		draw_sprite_part(spr_door_redkey, 0, ox, 0, (20 - ox), 37, x, y)
		draw_sprite_part(spr_door_redkey_r, 0, 0, 0, (20 - ox), 37, ((x + 20) + ox), y)
		if (red == 1)
		{
			w = (13 - ox)
			if (w < 0)
				w = 0
			draw_sprite_part(spr_door_redkey_brightl, floor((anim / 5)), ox, 0, w, 15, (x + 7), (y + 18))
			w = (15 - ox)
			if (w < 0)
				w = 0
			draw_sprite_part(spr_door_redkey_brightr, floor((anim / 5)), 0, 0, w, 15, ((x + 20) + ox), (y + 18))
		}
	}
}
draw_sprite(spr_door_edge, 0, (x - 4), (y - 3))
if instance_exists(obj_mainchara)
{
	if (point_distance((x + 20), (y + 60), (obj_mainchara.x + 10), obj_mainchara.bbox_top) > 50)
	{
		if (open == 1)
			caster_play(snd_elecdoor_close, 1, 1)
		open = 0
	}
	if (point_distance((x + 20), (y + 60), (obj_mainchara.x + 10), obj_mainchara.bbox_top) < 40 && shouldopen == 1)
	{
		if (open == 0)
			caster_play(snd_elecdoor_open, 1, 1)
		open = 1
	}
}
