if (con == 1)
{
    nowx = x
    nowy = y
    image_speed = 0.25
    if (image_index >= 7)
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
if (con == 4)
{
    x = ((nowx + random(3)) - random(3))
    y = ((nowy + random(3)) - random(3))
}
if (con == 5)
{
    con = 6
    vspeed = -6
    alarm[5] = 15
    alarm[6] = 5
}
if (y < global.idealborder[2])
{
    y += 6
    if (vspeed < 0)
        vspeed = (-vspeed)
}
if (y > ((global.idealborder[3] - sprite_height) + 5))
{
    y -= 6
    if (vspeed > 0)
        vspeed = (-vspeed)
}
if (global.turntimer < 1)
{
    global.turntimer = -1
    global.mnfight = 3
    instance_destroy()
}
