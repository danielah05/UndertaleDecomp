if (abs((obj_heart.xprevious - obj_heart.x)) > 0.01 || abs((obj_heart.yprevious - obj_heart.y)) > 0.01)
{
    if (global.invc < 1)
    {
        global.turntimer -= 40
        dmgamt = round((dmg - ((global.df + global.adef) / 5)))
        if (dmgamt < 1)
            dmgamt = 1
        global.hp -= dmgamt
        snd_play(snd_hurt1)
        global.hshake = 2
        global.shakespeed = 2
        global.vshake = 2
        instance_create(0, 0, obj_shaker)
        global.invc = global.inv
    }
}
