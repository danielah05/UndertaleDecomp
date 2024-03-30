image_alpha += 0.05
image_angle -= rotspeed
if (rotspeed > 0)
    rotspeed -= 2
if (rotspeed == 0 && speed < 1)
{
    timer += 1
    if (timer == 5)
    {
        speed = 8
        friction = -0.3
        direction = image_angle
        image_angle = direction
    }
}
if (fade == 1 && speed >= 7)
{
    timer += 1
    if (timer >= 22)
        deactivate = 1
}
xoff = lengthdir_x(25, direction)
yoff = lengthdir_y(25, direction)
if (rotspeed == 0 && deactivate == 0)
{
    if collision_line((x - (xoff / 2)), (y - (yoff / 2)), (x + xoff), (y + yoff), obj_heart, true, false)
    {
        if (global.hp > 1)
        {
            scr_damagestandard_x()
            if (global.hp <= 0)
                global.hp = 1
        }
        else
            global.hp = 0
    }
}
if (deactivate == 1)
{
    image_alpha -= 0.25
    if (image_alpha <= 0)
        instance_destroy()
}
if (global.turntimer < 1)
    instance_destroy()
