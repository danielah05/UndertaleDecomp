draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, image_alpha)
if (flasher == 1)
{
    fl += 0.2
    draw_set_alpha(fl)
    draw_set_color(c_white)
    ossafe_fill_rectangle(-10, -10, 999, 999)
    draw_set_alpha(1)
    if (fl > 1.2)
        flasher = 2
}
