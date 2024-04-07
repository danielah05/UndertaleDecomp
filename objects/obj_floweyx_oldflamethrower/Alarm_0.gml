if (num < 6)
{
    xx = lengthdir_x(165, image_angle)
    yy = lengthdir_y(165, image_angle)
    fl = instance_create((x + xx), (y + yy), obj_floweyx_flame)
    fl.direction = image_angle
    alarm[0] = 3
    num += 1
}
else
{
    alarm[0] = 50
    num = 0
}
