if (speed > 10)
{
    snd_stop(snd_hurt1)
    snd_stop(snd_impact)
    if (slam_pain == 1)
    {
        if (global.hp > 1)
            global.hp -= 1
    }
    snd_play(snd_hurt1)
    snd_play(snd_impact)
    s_s = instance_create(0, 0, obj_sans_shaker)
    s_s.intensity = floor((speed / 3))
}
