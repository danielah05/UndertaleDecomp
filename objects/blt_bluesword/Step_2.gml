if (global.turntimer < 1)
{
    global.turntimer = -1
    global.mnfight = 3
    instance_destroy()
}
if instance_exists(obj_heart)
{
    if (abs((obj_heart.x - x)) < 12)
    {
        g = 1
        friction = 0.1
        hspeed = -2
    }
    else if (g == 1)
        friction = -0.3
    if ((obj_heart.y - y) > (sprite_height / 2))
        y += 4
    else if ((obj_heart.y - y) < (sprite_height / 4))
        y -= 4
}
