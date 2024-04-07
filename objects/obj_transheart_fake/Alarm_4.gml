if (visible == true)
    visible = false
else
{
    visible = true
    claps += 1
    snd_stop(snd_noise)
    snd_play(snd_noise)
}
if (claps < 2)
    alarm[4] = 2
