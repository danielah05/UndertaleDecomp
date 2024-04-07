if (global.invc < 1)
{
    dmgamt = round((dmg - ((global.df + global.adef) / 5)))
    dmgamt = 4
    if (global.plot > 110)
    {
        if (global.hp <= 10)
            dmgamt = 3
    }
    if (dmgamt < (global.maxhp / 7))
        dmgamt = floor((global.maxhp / 7))
    global.hp -= dmgamt
    snd_play(snd_hurt1)
    global.hshake = 2
    global.shakespeed = 2
    global.vshake = 2
    instance_create(0, 0, obj_shaker)
    global.invc = (global.inv * 2)
    if (global.battlegroup == 22)
    {
        if (global.hp < 1)
            obj_torielboss.sprite_index = spr_torielboss_mouthcover
    }
}
