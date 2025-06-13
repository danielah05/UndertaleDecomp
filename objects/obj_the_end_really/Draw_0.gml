timer += 1
if (type == 0)
{
	draw_sprite_ext(spr_undertaletitle, 0, 0, -60, 2, 2, 0, c_white, 2)
	if (timer == 1)
		caster_play(noise, 1, 1)
}
if (type == 1)
{
	if (photo_alpha <= 1)
		photo_alpha += 0.04
	draw_sprite_ext(spr_friendphoto, 0, 140, 50, 2, 2, 0, c_white, photo_alpha)
	if (death == 1)
		draw_sprite_ext(spr_charaphoto, 0, 140, 50, 2, 2, 0, c_white, photo_alpha)
}
if (timer >= 120)
{
	draw_set_color(c_white)
	scr_setfont(fnt_maintext)
	if (death == 1)
		draw_set_color(c_red)
	if (type == 0)
		draw_text_transformed(205, 260, string_hash_to_newline(scr_gettext("the_end")), 5, 4, 0)
	if (type == 1)
		draw_text_transformed(205, 300, string_hash_to_newline(scr_gettext("the_end")), 5, 4, 0)
}
if (timer >= 200 && dogamt == 0)
{
	dogamt = 1
	if (death == 0)
		caster_loop(song, 0.9, 0.9)
	if (death == 1)
		caster_loop(mus_prebattle1, 1, 0.2)
}
if (timer >= 220 && death == 1)
	timer = 210
if (timer >= 1320 && dogamt < 2)
{
	dogamt = 2
	dog = instance_create(640, 380, obj_npc_marker)
	dog.depth = -4
	if (type == 1)
		dog.y = 420
	dog.image_speed = 0.2
	dog.visible = true
	dog.sprite_index = spr_tobdogl
	dog.hspeed = -1
	dog.image_xscale = 2
	dog.image_yscale = 2
}
if (timer >= 1668 && dogamt < 3)
{
	dogamt = 3
	dog.hspeed = 0
	dog.sprite_index = spr_tobdogl_still
	dog.image_speed = 0.05
}
if (timer >= 3686 && dogamt < 4)
{
	dogamt = 4
	dog.sprite_index = spr_sleepdog
	dog.y += 8
}
