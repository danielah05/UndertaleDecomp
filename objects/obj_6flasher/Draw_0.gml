if (frame == 0)
{
    draw_set_alpha(1)
    draw_set_color(c_white)
    ossafe_fill_rectangle(-10, -10, 999, 999)
}
if (frame == 1)
{
    draw_set_alpha(0.75)
    draw_set_color(c_white)
    ossafe_fill_rectangle(-10, -10, 999, 999)
}
if (frame == 2)
{
    draw_set_alpha(0.5)
    draw_set_color(c_white)
    ossafe_fill_rectangle(-10, -10, 999, 999)
}
if (frame == 3)
{
    draw_set_alpha(0.25)
    draw_set_color(c_white)
    ossafe_fill_rectangle(-10, -10, 999, 999)
}
if (frame == 4)
    instance_destroy()
frame += 1
draw_set_alpha(1)
