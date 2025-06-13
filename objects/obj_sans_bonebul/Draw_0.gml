siner += 1
z_h = (sin((siner * z_b)) * z_a)
y = (yinit + z_h)
if (type == 0 || type == 1)
{
	event_user(10)
	if (width > 0)
	{
		if (type == 0)
			image_blend = c_white
		if (type == 1)
			image_blend = c_soulblue
		draw_sprite_part_ext(spr_s_bonebul_top, 0, le, 0, width, 6, (x + le), y, 1, 1, image_blend, 1)
		if (type == 0)
			draw_set_color(c_white)
		if (type == 1)
			draw_set_color(c_soulblue)
		ossafe_fill_rectangle(((x + 2) + rc_le), (y + 5), ((x + 8) - rc_cut), (global.idealborder[3] - 6))
		if (width > 0)
		{
			if collision_rectangle(((x + 2) + rc_le), (y + 5), ((x + 8) - rc_cut), (global.idealborder[3] - 6), obj_heart, 0, 1)
				event_user(2)
		}
		draw_sprite_part_ext(spr_s_bonebul_bottom, 0, le, 0, width, 6, (x + le), (global.idealborder[3] - 6), 1, 1, image_blend, 1)
	}
}
if (type == 2)
{
	event_user(10)
	if (width > 0)
	{
		draw_sprite_part(spr_s_bonebul_top, 0, le, 0, width, 6, (x + le), (global.idealborder[2] + 6))
		draw_set_color(c_white)
		ossafe_fill_rectangle(((x + 2) + rc_le), (global.idealborder[2] + 11), ((x + 8) - rc_cut), y)
		if (width > 0)
		{
			if collision_rectangle(((x + 2) + rc_le), (global.idealborder[2] + 11), ((x + 8) - rc_cut), y, obj_heart, 0, 1)
				event_user(2)
		}
		draw_sprite_part(spr_s_bonebul_bottom, 0, le, 0, width, 6, (x + le), y)
	}
}
if (x < 0 && hspeed < 0)
	instance_destroy()
if (x > 640 && hspeed > 0)
	instance_destroy()
