if (hspeed > 0)
	draw_sprite_ext(spr_bullet_test_l, image_index, x, y, 1, 1, 0, c_white, image_alpha)
if (hspeed < 0)
	draw_sprite_ext(spr_bullet_test_r, image_index, x, y, 1, 1, 0, c_white, image_alpha)
if (vspeed > 0)
	draw_sprite_ext(spr_bullet_test_d, image_index, x, y, 1, 1, 0, c_white, image_alpha)
if (vspeed < 0)
	draw_sprite_ext(spr_bullet_test_u, image_index, x, y, 1, 1, 0, c_white, image_alpha)
