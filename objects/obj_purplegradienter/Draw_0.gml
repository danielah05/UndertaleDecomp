ac = (1.5 + sin((siner / 20)))
siner += 1
draw_set_alpha(1)
for (i = 0; i < 10; i += 1)
{
    draw_set_alpha(((0.8 - (i / 16)) * amt))
    draw_set_color(c_purple)
    ossafe_fill_rectangle(-10, (room_height - ((i * i) * ac)), (room_width + 10), (room_height - (((i + 1) * (i + 1)) * ac)))
}
draw_set_alpha(1)
if (fade == 1)
{
    amt -= 0.03
    if (amt < 0.05)
        instance_destroy()
}
