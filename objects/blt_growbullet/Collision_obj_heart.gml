if (blue != 3)
    scr_damagestandard(blue, 0, 0, 0, 0)
else
{
    if instance_exists(obj_woshua)
    {
        obj_woshua.mercymod = 200
        obj_woshua.clean = 2
    }
    if (global.hp < global.maxhp)
    {
        global.hp += 1
        if (global.hp > global.maxhp)
            global.hp = global.maxhp
    }
    snd_play(snd_power)
}
instance_destroy()
