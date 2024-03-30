if (type == 0)
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, (1 * image_alpha))
if (type == 1)
{
    draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_gray, (0.7 * image_alpha))
    draw_sprite_ext(spr_mmbul_left_bright, image_index, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha)
}
if (type == 2)
{
    draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_gray, (0.7 * image_alpha))
    draw_sprite_ext(spr_mmbul_right_bright, image_index, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha)
}
if (type == 3)
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, (1 * image_alpha))
