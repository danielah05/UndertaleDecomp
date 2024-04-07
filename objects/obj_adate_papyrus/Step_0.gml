if (con == 1)
    vspeed = 0
if (con == 2)
{
    snd_play(snd_arrow)
    vspeed = -16
    gravity = 1
    con = 3
}
if (con == 3)
{
    if (vspeed >= 0)
        depth = 80
    if (y >= ((obj_adate_trashcan.y + 10) - sprite_height))
    {
        snd_play(snd_impact)
        gravity = 0
        vspeed = 0
        y = ((obj_adate_trashcan.y + 10) - sprite_height)
        con = 4
    }
}
