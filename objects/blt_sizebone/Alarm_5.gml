if (instance_exists(OBJ_WRITER) == false)
{
    with (blcon)
        instance_destroy()
    instance_create(0, 0, obj_unfader)
    alarm[6] = 50
    snd_play(snd_txtasg)
}
if (instance_exists(OBJ_WRITER) == true)
    alarm[5] = 2
