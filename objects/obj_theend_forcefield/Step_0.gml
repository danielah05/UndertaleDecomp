if (ended == 0 && FL_CoreForcefieldOff == false)
{
    timer += 1
    if (timer > 1800 && global.interact == 0)
    {
        with (ff)
        {
            with (solid1)
                instance_destroy()
        }
        ended = 5
        snd_play(snd_impact)
        FL_CoreForcefieldOff = true
    }
}
if (ended == 5)
{
    with (ff)
        image_alpha -= 0.1
    if (ff.image_alpha < 0.1)
    {
        with (ff)
            instance_destroy()
        ended = 6
    }
}
