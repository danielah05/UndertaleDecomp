draw_sprite(sprite_index, image_index, x, y)
if (side == 1)
{
    draw_set_color(c_white)
    ossafe_fill_rectangle((((x + 2) + sprite_width) + 1), (y + 6), (((x + 22) + sprite_width) + 1), (y + 28))
}
if (side == 2)
{
    draw_set_color(c_white)
    ossafe_fill_rectangle((((x + 2) - sprite_width) - 1), (y + 6), (((x + 22) - sprite_width) - 1), (y + 28))
}
