if (num < 7)
{
    if (side == 0 && on == 0)
        image_angle += 8
    if (side == 1 && on == 0)
        image_angle -= 8
    if (side == 0 && on == 1)
        image_angle -= 8
    if (side == 1 && on == 1)
        image_angle += 8
    xx = lengthdir_x(165, image_angle)
    yy = lengthdir_y(165, image_angle)
    fl = instance_create((x + xx), (y + yy), obj_floweyx_flame)
    fl.direction = image_angle
    fl.speed = 7
    alarm[0] = 2
    num += 1
}
else
{
    if (on == 0)
        on = 1
    else
        on = 0
    alarm[0] = 30
    num = 0
}
