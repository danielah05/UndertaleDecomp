rot = direction
deg = degtorad(rot)
x1 = (x + (r * cos(deg)))
y1 = (y - (r * sin(deg)))
x2 = x
y2 = y
scr_depth()
draw_set_color(c_black)
if (shadowy < goaly)
    shadowy += shadowspeed
draw_rectangle(x1, (shadowy + 8), x2, (shadowy + 14), false)
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, direction, c_white, image_alpha)
draw_set_color(c_red)
draw_line(x1, y1, x2, y2)
if (y1 > (goaly - 2))
{
    if collision_rectangle(x1, (shadowy + 8), x2, (shadowy + 14), obj_mainchara, 0, 1)
        event_user(2)
}
if (y1 >= (goaly + 9))
    event_user(3)
if (active == false)
{
    image_alpha -= 0.05
    if (image_alpha < 0.1)
        active = 2
}
if (active == 2)
    instance_destroy()
