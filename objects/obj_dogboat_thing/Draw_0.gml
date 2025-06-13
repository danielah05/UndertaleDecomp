adjust = 0
if (sprite_index == spr_dogboat && image_index < 1)
	adjust = 1
draw_sprite(sprite_index, image_index, x, (y + dogy))
cc += 0.1
draw_sprite(spr_dogboat_cover, cc, x, y)
rman.y = (((y + dogy) - 17) + adjust)
rman.x = (x + 20)
if instance_exists(snapper)
{
	snapper.x = (x + 56)
	snapper.y = (((y + dogy) - 8) + adjust)
}
if (lapbg == 1)
{
	tilex += bgspeed
	if (tilex > -20)
	{
		tile_layer_shift(1000000, -240, 0)
		tilex -= 240
	}
	tile_layer_shift(1000000, bgspeed, 0)
}
view_yview_set(0, 0)
