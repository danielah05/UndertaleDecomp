if (active == true && heal == 0)
    scr_damagestandard(BulletType.Normal, 3, 0, 0, 0)
if (heal == 1)
{
    snd_play(snd_power)
    if (global.hp < global.maxhp)
    {
        global.hp += 6
        if (global.hp > global.maxhp)
            global.hp = global.maxhp
    }
    if (FL_UnusedMadjickSoundHandle != 0)
    {
        caster_free(FL_UnusedMadjickSoundHandle)
        FL_UnusedMadjickSoundHandle = 0
    }
    caster_resume(all)
    global.turntimer = -1
    global.mnfight = 3
    global.myfight = -1
    with (object_index)
        instance_destroy()
}
