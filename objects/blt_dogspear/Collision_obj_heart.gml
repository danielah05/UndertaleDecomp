bb = 1
if (blue == 1)
{
    if (obj_heart.xprevious != obj_heart.x || obj_heart.yprevious != obj_heart.y)
        bb = 1
    else
    {
        bb = 0
        blut = 2
    }
}
if (global.invc < 1 && bb == 1)
{
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
