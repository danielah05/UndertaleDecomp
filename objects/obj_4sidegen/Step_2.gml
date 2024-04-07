if (global.turntimer < 1)
{
    global.turntimer = -1
    global.mnfight = 3
    if instance_exists(obj_undyneboss)
        global.mnfight = 4
    instance_destroy()
}
