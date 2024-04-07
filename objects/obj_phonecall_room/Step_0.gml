if (t == 1 && instance_exists(OBJ_WRITER) == false)
{
    exception = 0
    if (exception == 0)
        instance_destroy()
    global.interact = 0
    if (room == room_fire8)
    {
        snd_play(snd_switchpull_n)
        obj_bluelaser_o.active = 2
        instance_destroy()
    }
}
