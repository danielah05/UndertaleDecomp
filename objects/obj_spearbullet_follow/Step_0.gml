image_alpha += 0.05
image_angle -= rotspeed
if (rotspeed > 0)
    rotspeed -= 1
if (rotspeed == 0 && speed < 1)
{
    snd_play(snd_arrow)
    move_towards_point((obj_heart.x + 10), (obj_heart.y + 10), 3)
    friction = -0.3
    image_angle = direction
}
xoff = lengthdir_x(25, direction)
yoff = lengthdir_y(25, direction)
if (rotspeed == 0 && deactivate == 0)
{
    if collision_line((x - (xoff / 2)), (y - (yoff / 2)), (x + xoff), (y + yoff), obj_heart, true, false)
        scr_damagestandard_x()
}
if (deactivate == 1)
{
    image_alpha -= 0.1
    if (image_alpha <= 0)
        instance_destroy()
}
