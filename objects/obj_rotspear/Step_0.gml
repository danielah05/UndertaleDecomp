if (deactivate == 0)
{
    if (image_alpha < 1)
        image_alpha += 0.2
}
if (deactivate == 1)
{
    image_alpha -= 0.2
    if (image_alpha < 0.3)
        instance_destroy()
}
xoff = lengthdir_x(25, image_angle)
yoff = lengthdir_y(25, image_angle)
if (image_alpha >= 0.8)
{
    if collision_line((x - (xoff / 2)), (y - (yoff / 2)), (x + xoff), (y + yoff), obj_heart, true, false)
        scr_damagestandard_x()
}
if (global.turntimer < 1)
    instance_destroy()
