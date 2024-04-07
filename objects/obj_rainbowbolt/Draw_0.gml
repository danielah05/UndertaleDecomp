draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha)
if (image_alpha > 0.8)
{
    draw_set_color(c_white)
    ossafe_fill_rectangle(bbox_left, bbox_top, bbox_right, (bbox_bottom - 1))
}
non = 1
