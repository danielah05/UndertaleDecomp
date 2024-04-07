if (global.invc <= 1 && f_timer == 0)
{
    snd_play(snd_hurt1)
    global.hshake = 2
    global.shakespeed = 2
    global.vshake = 2
    instance_create(0, 0, obj_shaker)
    global.invc = 15
    global.hp -= 7
    if (global.hp <= 1)
        global.hp = 1
}
