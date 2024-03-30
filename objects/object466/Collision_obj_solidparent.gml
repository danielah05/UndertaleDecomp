if (falling == 999)
{
    x = xprevious
    y = yprevious
    hspeed = 0
    vspeed = 0
    bonk = 1
    with (obj_rollsnowgen)
        alarm[0] = 10
    instance_destroy()
}
