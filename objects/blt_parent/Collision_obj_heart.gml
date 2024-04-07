if (global.invc < 1)
{
    dmgamt = round((dmg - ((global.df + global.adef) / 5)))
    if (dmgamt < 1)
        dmgamt = 1
    global.hp -= dmgamt
    if (global.hp < 0)
        global.hp = 0
    snd_play(snd_hurt1)
    global.hshake = 2
    global.shakespeed = 2
    global.vshake = 2
    instance_create(0, 0, obj_shaker)
    instance_destroy()
    global.invc = global.inv
    if (global.battlegroup == 22)
    {
        if (global.hp < 1)
            obj_torielboss.sprite_index = spr_torielboss_mouthcover
    }
}
