rew += 1
if (rewed == 0 && rew > 95)
{
    rewed = 1
    vsp = obj_blackbox_pl.vspeed
}
if (rewed == 1)
{
    vsp -= 0.4
    if (vsp >= (-maxrw))
    {
        obj_blackbox_pl.vspeed = vsp
        obj_plusbomb.vspeed = vsp
    }
}
if (global.turntimer < 1)
    instance_destroy()
