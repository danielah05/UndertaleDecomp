if (global.turntimer < 1)
{
    global.turntimer = -1
    if (global.mnfight == 2)
        global.mnfight = 3
    instance_destroy()
}
