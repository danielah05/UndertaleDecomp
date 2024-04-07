if (conversation == 1)
{
    t = 0
    with (obj_monsterkidtrigger1)
        instance_destroy()
    obj_townnpc_monsterkid1.hspeed = 6
    if (obj_mainchara.y < (obj_townnpc_monsterkid1.y + 10))
        obj_townnpc_monsterkid1.vspeed = 2
    global.plot = 104
}
