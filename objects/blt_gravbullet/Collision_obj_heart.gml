if (green == 0)
    scr_damagestandard_x()
if (green == 1)
{
    instance_destroy()
    snd_play(snd_heal_c)
    if (global.hp < global.maxhp)
        global.hp += 1
    with (obj_vegetoid)
    {
        if (eat == 1)
        {
            ate = 1
            mercymod = 90
        }
    }
    with (obj_parsnik)
    {
        if (eat == 1)
        {
            ate = 1
            mercymod = 90
        }
    }
}
