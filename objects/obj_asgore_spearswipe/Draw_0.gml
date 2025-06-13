if (image_index >= 5 && image_index < 6)
{
	if (type[curamt] == 1)
	{
		draw_set_color(c_soulblue)
		ossafe_fill_rectangle(global.idealborder[0], global.idealborder[2], global.idealborder[1], global.idealborder[3])
	}
	if (type[curamt] == 2)
	{
		draw_set_color(c_orange)
		ossafe_fill_rectangle(global.idealborder[0], global.idealborder[2], global.idealborder[1], global.idealborder[3])
	}
}
draw_sprite_ext(spr_asgore_swipe_nospear, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1)
if (type[curamt] == 0)
	image_blend = c_red
if (type[curamt] == 1)
	image_blend = c_soulblue
if (type[curamt] == 2)
	image_blend = c_orange
draw_sprite_ext(spr_asgore_swipe_spear, image_index, x, y, image_xscale, image_yscale, 0, image_blend, 1)
