draw_set_circle_precision(24)
offon += 1
if (offon > 2)
    offon = 0
if (offon == 0)
    draw_set_color(c_red)
if (offon == 1)
    draw_set_color(c_orange)
if (offon == 2)
    draw_set_color(c_yellow)
image_alpha += 0.334
if (image_alpha > 6)
    draw_set_color(c_white)
draw_set_alpha(image_alpha)
draw_circle(x, y, 60, 1)
draw_set_alpha(1)
if (image_alpha > (8 + bonus))
{
    instance_create(x, y, obj_spinbullet_huge_gen)
    instance_destroy()
}
