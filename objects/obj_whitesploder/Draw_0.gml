splode += 1
draw_set_color(c_white)
for (i = 0; i < 16; i += 1)
{
    alp = ((splode / 12) - (0.06 * i))
    if (alp < 0)
        alp = 0
    if (alp > 1)
        alp = 1
    draw_set_alpha(alp)
    ossafe_fill_rectangle(0, ((room_height / 2) - (8 * (i + 1))), room_width, ((room_height / 2) - (8 * i)))
    ossafe_fill_rectangle(0, ((room_height / 2) + (8 * (i + 1))), room_width, ((room_height / 2) + (8 * i)))
}
draw_set_alpha(1)
