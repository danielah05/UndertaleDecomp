if (con == 1)
{
    nowx = x
    nowy = y
    image_speed = 0.25
    if (image_index >= 3)
    {
        image_speed = 0
        con = 2
        alarm[4] = 10
    }
}
if (con == 3)
{
    con = 4
    alarm[4] = 15
}
if (con == 4 || shake == 1)
{
    x = ((nowx + random(3)) - random(3))
    y = ((nowy + random(3)) - random(3))
}
if (con == 5)
{
    alarm[5] = 1
    sprite_index = spr_nofacedog_rocket
    image_speed = 0.334
    con = 6
}
betty = distance_to_point((obj_heart.x + 8), (obj_heart.y + 8))
if (global.turntimer < 1)
{
    global.turntimer = -1
    global.mnfight = 3
    instance_destroy()
}
