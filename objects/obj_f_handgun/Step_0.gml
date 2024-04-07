if (con == 2)
{
    image_speed = 0
    hspeed = 0
    snd_stop(mus_sfx_a_target)
    snd_play(mus_sfx_a_target)
    con = 2.1
    alarm[4] = 8
}
if (con == 3.1)
{
    snd_stop(mus_sfx_a_bullet)
    caster_play(mus_sfx_a_bullet, 0.75, (1 + random(0.15)))
    hf = instance_create(x, y, obj_f_handfork)
    hs = instance_create(x, y, obj_f_shotflame)
    if (side == 0)
    {
        hf.image_xscale = 1
        hf.hspeed = 16
        hf.friction = -0.2
    }
    if (side == 1)
    {
        hf.image_xscale = -1
        hf.hspeed = -16
        hf.friction = -0.2
        hs.image_xscale = -0.5
    }
    image_index = 25
    image_speed = 1
    con = 3
    alarm[4] = 2
}
if (con == 4)
{
    con = 5
    alarm[4] = 6
}
if (con == 6)
{
    con = 7
    alarm[4] = 20
}
if (con == 8)
    instance_destroy()
