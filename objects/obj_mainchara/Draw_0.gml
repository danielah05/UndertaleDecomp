if (inwater == 0)
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha)
if (inwater == 1)
{
	draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width, (sprite_height - 5), x, (y + 5), 1, 1, c_white, image_alpha)
	if (obj_mainchara.image_index == 1 || obj_mainchara.image_index == 3)
	{
		snd_play(snd_splash)
		mp = 0
	}
	draw_sprite(spr_waterripple, 0, x, y)
}
if (room == room_water_waterfall3)
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_black, image_alpha)
	
// DECOMP CODE

if (instance_exists(obj_decomp_console) && (obj_decomp_console.show_collision || obj_decomp_console.show_triggers))
{
	draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_red, c_red, c_red, c_red, false);
}


