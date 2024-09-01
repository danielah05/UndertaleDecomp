if (on == 1)
{
    if (amt <= 1)
        amt += 0.05
    if (y < 0)
        y += 1
    else
        on = 0
}
if (on == 2)
{
    if (amt > 0)
        amt -= 0.05
    if (y > ystart)
        y -= 1
    else
        instance_destroy()
}
if (reverse == 0)
    siner += 1
else
    siner -= 1
draw_set_color(c_white)
draw_set_circle_precision(8)
draw_set_alpha((0.5 * amt))
for (i = 0; i < 12; i += 1)
{
    draw_set_color(old_make_color_hsv(((i * 20) + siner), 255, 255))
    draw_circle((x + (sin((((i * 10) + siner) / 20)) * 40)), ((y + (cos((((i * 10) + siner) / 20)) * 20)) + 140), 3, 0)
}
draw_set_alpha((0.4 * amt))
for (i = 0; i < 24; i += 1)
{
    draw_set_color(old_make_color_hsv(((i * 20) + siner), 255, 255))
    draw_circle((x + (sin((((i * 10) + siner) / 20)) * 80)), ((y + (cos((((i * 5) + siner) / 20)) * 60)) + 140), 6, 0)
}
draw_set_alpha(1)
draw_sprite(sprite_index, image_index, x, y)
