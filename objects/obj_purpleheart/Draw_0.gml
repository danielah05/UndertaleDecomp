draw_set_color(c_purple)
if (type == 0)
{
    for (i = 0; i < yamt; i += 1)
        draw_line((xmid - xlen), ((yzero + (yspace * i)) + yoff), (xmid + xlen), ((yzero + (yspace * i)) + yoff))
}
draw_sprite(sprite_index, image_index, x, y)
