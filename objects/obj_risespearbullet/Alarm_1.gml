visible = true
if (type == 0)
{
    image_yscale = 1
    vspeed = -1
}
if (type == 1)
{
    image_yscale = -1
    y -= 150
    vspeed = 1
}
snd_play(snd_spearappear)
