siner += 1
draw_set_color(c_black)
maximum = (room_height / 40)
draw_set_alpha((0.3 + (sin((siner / 15)) * 0.1)))
ossafe_fill_rectangle(-10, -10, (room_width + 10), (room_height + 10))
for (i = 0; i < maximum; i += 1)
{
    draw_set_alpha((i / maximum))
    ossafe_fill_rectangle(-10, (i * 40), (room_width + 10), ((i * 40) + 40))
}
draw_set_alpha(1)
