if (hurt == false)
	siner += 1
else if instance_exists(parent)
	x = parent.x
else
{
	hurt = false
	fall = 1
}
if (fall < 3)
{
	grchange -= 1
	if instance_exists(parent)
	{
		curgr = parent.graze
		if (prevgr != curgr)
			grchange = 7
		prevgr = curgr
	}
	x_color = c_white
	if (grchange > 0)
		x_color = merge_color(c_white, c_red, (grchange / 10))
	draw_sprite_ext(sprite_index, image_index, (x + 94), ((76 + y) + (sin((siner / 7)) * 3)), 2, 2, rot, x_color, alpha)
	draw_sprite_ext(spr_tsunderplanehat, image_index, (154 + x), ((90 + y) + (sin((siner / 7)) * 3)), 2, 2, rot, c_white, alpha)
}
if (fall == 1)
{
	pl = instance_create(((x + 60) + random(60)), ((y + 60) + random(60)), obj_planeexhaust)
	pl.depth = choose(-1, 1)
	gravity = 0.08
	gravity_direction = 270
	x += (sin(siner) * 2)
	rot -= 0.75
	scr_setfont(fnt_plain)
	draw_set_color(c_black)
	draw_sprite(spr_blconsm, 0, ((xstart + 160) + random(5)), ((ystart + 20) + random(5)))
	draw_text(((xstart + 190) + random(2)), ((ystart + 30) + random(2)), string_hash_to_newline(scr_gettext("obj_tsunderplane_body_152")))
	if (y > (160 - sprite_height))
		fall = 2
}
if (fall == 2)
{
	instance_create(0, 0, obj_flasher)
	caster_play(mus_explosion, 1.2, 0.7)
	scr_shake(5, 5, 2)
	fall = 3
}
if (fall == 3)
{
	rot -= 1
	g = random(0.3)
	draw_sprite_ext(spr_planeexplosion, 0, (x + 90), 240, ((3.5 - (alpha * 1.8)) + g), ((3.8 - (alpha * 2)) + g), 0, c_white, alpha)
	draw_sprite_ext(spr_tsunderplanehat, image_index, (160 + x), ((90 + y) + (sin((siner / 7)) * 3)), 2, 2, rot, c_white, alpha)
	alpha -= 0.03
	if (alpha < 0.05)
		instance_destroy()
}
if (fall == 0 && instance_exists(parent))
{
	if (parent.graze > 0)
	{
		grgr = (parent.graze - 1)
		if (grgr > 3)
			grgr = 3
		draw_sprite_ext(spr_tsunderplane_blush, grgr, ((x + 94) + (sin((siner / 7)) * 2)), ((76 + y) + (sin((siner / 7)) * 4)), 2, 2, rot, c_white, (0.7 + (sin((siner / 4)) * 0.1)))
	}
}
