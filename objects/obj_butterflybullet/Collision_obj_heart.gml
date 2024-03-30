if (green == 0)
    scr_damagestandard(0, 3, 0, 0, 0)
if (green == 1)
{
    if instance_exists(obj_whimsalot)
    {
        global.msg[0] = scr_gettext("obj_butterflybullet_102")
        obj_whimsalot.mercymod += 40
    }
    if (global.hp < global.maxhp)
        global.hp += 1
    snd_play(snd_power)
    instance_destroy()
    pop = scr_monstersum()
    if (pop == 1)
        global.turntimer = 20
}
