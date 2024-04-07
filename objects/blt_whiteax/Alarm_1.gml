if (move == 1)
{
    if (axetype == 0)
        hspeed = 1.8
    else
        hspeed = -1.8
    vspeed = -3.8
    if (hard == 1)
        vspeed = -3.4
    if (scr_monstersum() == 1)
        vspeed = -3.1
    gravity_direction = 270
    gravity = 0.2
}
if (move == 0)
{
    hspeed = 0
    alarm[1] = (10 + floor(random(14)))
    move = 1
}
visible = true
