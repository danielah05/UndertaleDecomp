draw_sprite(sprite_index, image_index, x, y)
anim += 0.1
if (FL_BedAmalgamEvent < 2)
	draw_sprite_ext(spr_leverkey, anim, (x + 34), (y + 32), 1, 1, 0, c_yellow, 1)
draw_sprite_part(spr_bed_dark_sheet_weird, 0, 0, 0, 46, (39 - bedy), (x + 2), ((y + 13) + bedy))
if (FL_BedAmalgamEvent > 0)
{
	bedy += 4
	if (bedy >= 30)
		bedy = 30
}
