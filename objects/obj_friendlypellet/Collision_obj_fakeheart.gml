if (global.invc < 1)
{
    global.hp -= 19
    snd_play(snd_hurt1)
    global.hshake = 8
    global.shakespeed = 1.5
    global.vshake = 2
    instance_create(0, 0, obj_shaker)
    global.invc = 30
    obj_floweybattle1.conversation = 10
    obj_friendlypellet.attackyou = 3
    if instance_exists(OBJ_WRITER)
    {
        with (OBJ_WRITER)
            instance_destroy()
    }
    if instance_exists(obj_blconwdflowey)
    {
        with (obj_blconwdflowey)
            instance_destroy()
    }
}
