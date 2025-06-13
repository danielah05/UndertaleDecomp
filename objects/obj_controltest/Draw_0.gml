z_index = 0
x_index = 0
c_index = 0
buffer -= 1
if (buffer < 0)
{
	if control_check(InteractButton)
		z_index = 2
	else if (z_index == 1)
		z_index = 3
	if control_check_pressed(InteractButton)
	{
		if (fun == true)
		{
			image_index += 1
			caster_play(s_snare, 1, 1)
		}
		z_index = 1
	}
	if control_check(CancelButton)
		x_index = 2
	else if (x_index == 1)
		x_index = 3
	if control_check_pressed(CancelButton)
	{
		if (fun == true)
		{
			image_index += 1
			caster_play(s_kick, 1, 1)
		}
		x_index = 1
	}
	if control_check(MenuButton)
		c_index = 2
	else if (c_index == 1)
		c_index = 3
	if control_check_pressed(MenuButton)
	{
		if (fun == true)
		{
			image_index += 1
			caster_play(s_cymbal, 1, 1)
		}
		c_index = 1
	}
	if keyboard_check_pressed(ord("R"))
	{
		if (fun == true)
		{
			image_index += 1
			caster_play(s_cuica, 1, 1)
		}
	}
	if keyboard_check_pressed(ord("E"))
	{
		if (fun == true)
		{
			image_index += 1
			caster_play(s_cuica2, 1, 1)
		}
	}
}
draw_sprite_ext(spr_test_zbutton, z_index, 80, 30, 2, 2, 0, c_white, 1)
draw_sprite_ext(spr_test_xbutton, x_index, 140, 30, 2, 2, 0, c_white, 1)
draw_sprite_ext(spr_test_cbutton, c_index, 200, 30, 2, 2, 0, c_white, 1)
if (fun == true)
	draw_sprite(sprite_index, image_index, x, y)
else
{
	draw_set_color(c_green)
	draw_circle((x + 16), (y + 16), 16, 1)
	draw_circle((x + 16), (y + 16), 14, 1)
	draw_circle((x + 16), (y + 16), 12, 1)
	draw_set_color(c_black)
	draw_circle((x + 16), (y + 16), 17, 1)
	draw_circle((x + 16), (y + 16), 15, 1)
	draw_circle((x + 16), (y + 16), 13, 1)
}
draw_set_color(c_white)
for (i = 0; i < 6; i += 1)
	draw_rectangle((borderl - i), (borderu - i), (borderr + i), 300, true)
if obj_time.left
	x -= 3
if obj_time.right
	x += 3
if obj_time.down
	y += 3
if obj_time.up
	y -= 3
if (x <= borderl)
	x = borderl
if (x >= (borderr - 32))
	x = (borderr - 32)
if (y <= borderu)
	y = borderu
if (y >= 240)
{
	global.to_joyconfig = 1
	room_goto(room_settings)
}
