global.awfultest += 1
if sprite_exists(global.awfultest)
{
	for (ir = 0; ir < 40; ir += 1)
		draw_sprite_ext(floor(global.awfultest), ir, ((ir * 2) + 1), ((ir * 2) + 1), 2, 2, 0, c_white, 1)
}
else
	ricardo = global.awfultest
scr_setfont(fnt_main)
draw_set_color(c_soulblue)
draw_text(100, 400, string_hash_to_newline(ricardo))
draw_sprite(spr_undynex_face_damage, 0, 200, 200)
